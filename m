Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBDGC4TWAKGQE7HHYNEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 232E7CCD3B
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Oct 2019 01:02:38 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id w16sf20143338ioc.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Oct 2019 16:02:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570316557; cv=pass;
        d=google.com; s=arc-20160816;
        b=p7HA7S93/37Chx/gwRRfE6Lsv6JiHWRbRU/Gc4pOWj52slzOsJSwpnw8ZuXolpVkQj
         FJk0S2eVWdDhzP76K/OyIk3+UqeLpj+6kLJRHaZvAyCdIFD1Rc/KPymZdiU6iQyBzvfk
         xxlME4sOYKshapWT7pU8kEFpjeDmyzFX8M63ejs5cNBzHiOUmB5zxwRDqZL+PDrEWbfX
         1pAEzDmZG6CcReXay4csJV8xjezDxoWe4fQRb5zNUAPVXDejZ0B5H1AmzZPE+kLeetQY
         Fubg/xHYUN27fz+iPA5YPGZGcv1U2dJBhmCL0gQXVlgL/bJfa+iVFfYA5uBk5K+v80NM
         HS0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=CCrVOUggqsZYylQhDN2MlJdZRLCVhsAdLinBRp+aDtU=;
        b=C2/sZvDpFHb1Jse5LHK+Wotoj8ZSMqlgIbeEce8M2a6NB8hwd/5aGqLRbnDJBT6VX9
         fGRymrYFnw1gfQT5qWcDr7JCs8qtS0BkqIYQCY/aPioHrBmbvu8Hx+wRS+NNytXHjF8e
         Czt/FBa9k9g+vsD57oB6a3D6/09yPff8SMcLLd2WFwTk/FlVeU2uE5AcENgKLZKwbA/Y
         Teg1nzLDI9L18J2O7OrK5cOmGwzjjAyYnywvGMS7BSOZYrKhPDd+tWcFL8D6BMSfzoLT
         lDZkp3dXdjibADmKSYny2hUfD93FSYYVJJeXbsv0rmYJucV/f5ZdOttFp3asAaY9gRCQ
         eOsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zv+p98PC;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CCrVOUggqsZYylQhDN2MlJdZRLCVhsAdLinBRp+aDtU=;
        b=TG6MOxyNu0TKKt0k+LO2SzEtQ7w2fwrdkmRihO9aF0gkpD/0ngmNxv8fvk+ZzhLlbm
         qzhixIu+115xoGEzX2yBH1qXal3jb69ClfhlCMdEDHLswA/nqXqXjxdgE8uiuZ03dSk6
         MQ9ozqxY86o1RC9uCsv3Xyn+wPBOw79/wZRjCJCNE29nSnzjhbD0pwoeqp/D8drSXSrL
         vJW+ZHuDXEnGNZG5eUOUkww0m+YGy3dVvuRVha20gSbmF3LrJmc5a3UwOIjEk9vL5mKY
         ky28vvYU2K76Fu85x6kOBAMprtDTO48g5ZvvIOQxqdH4MONnXCfoNhFNYOqrVWJyilZG
         M9sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CCrVOUggqsZYylQhDN2MlJdZRLCVhsAdLinBRp+aDtU=;
        b=sSmmEZl6IgKj72G5jd1n/V4MGWZflDk+2j8lxyrbiZZn1ZxELv1LXJimMeEWFkjuvD
         /2cchlHMRcuRJiUobw1Ei6mku5830zPtJvuVwZBSGGPjSEV/mSK6jIzekdk2s9KmCu2P
         9cJCXjYuqjzZ/Psx/yyCNtFoDeg4Papjbsp3+P7rfskY2lEpjI4FEyCxT3p6LYbwktLP
         qvsX4k4XQioLblr/VN8v83JEzO7wRISD6ROZpvx73YcUXp1h4FcaZtKJE/aXOvVoKfUj
         qDmxo8ufPo7frPhyCvCCj4CWYZuCypZ/Ra7V+s2tayrrasMbNbCrUNCzo4zKnFVtnF1r
         jg1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUzNrYy++xeZ0uOHhfk/fjTpa09lp6sIL63HqvGBMpveSYALg+Z
	D9H9ziZONIx/pEDL59hWp/M=
X-Google-Smtp-Source: APXvYqwRDNFSyDsgKQbVKhZRw5rbOm80oEH87EuGFhdf2c9pEmZHsU5beATkQPSvYfHXnwX6EAs4wQ==
X-Received: by 2002:a6b:e512:: with SMTP id y18mr7379013ioc.4.1570316556791;
        Sat, 05 Oct 2019 16:02:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:998a:: with SMTP id t10ls3169942ilk.9.gmail; Sat, 05 Oct
 2019 16:02:36 -0700 (PDT)
X-Received: by 2002:a92:cf05:: with SMTP id c5mr3701469ilo.251.1570316556370;
        Sat, 05 Oct 2019 16:02:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570316556; cv=none;
        d=google.com; s=arc-20160816;
        b=o28To9fQ4RujJO8fU9XzWIyhckm1o9wpNJA8/lmEyczOtyfZEHdyCDeaeAFEo5rhsG
         HNeLt2vA+4T+0HJGtLDuovX5UYTdHiEY5fwTwMPtvTwlKeZbLh5qAP3vYJuQ9mo+YCqy
         nyzKaJumZe1FzQriT5QMmSbnSgjGlswXimgbj3/AF9Pqek2twHMFS/6gfcf5HuT4cuqm
         lSn5ry/9T6oVWUDlzdj7XXk1u8bk5jGBOHU9nGQ8yGwwxlB+16EloLIPSqZx7S74OUIQ
         Ag8vc9lE28hsu91Hd7tOKDgY7qXOzhg4aUmk7UX3PIDey/d950Jq7jV+g1mNCTklINNn
         XBAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Fm791THcRlJhnY+aw3YWchnqtEUJ8JRRu53vzKRCUKI=;
        b=wMqUqjjiHJpj0ikb85C+j9J1OJyahztzBBfHsfkJbJJUGx8BrsFxVQRF+Y/Vz6ecHm
         XX/Ng/tKT9zF8eK3PGXHBBlb+USBwnDMILBVuJI0AqP4InG9Ngj9eIugUwuwEwp69vAj
         sNS70o88oOlIzwOE9VUNzuhEWcaNj1+WlMDVx/o6M6kW8Q4P6P7a7ZtdOQ01b3Qel54k
         yhOfwB1xgk35egYU5Ab0WM7oJ4zleXus41HNRphntP0WpJljKI63PqR7RFs3qJ1YZHu+
         APbGs/PvaDIdZRzcwdIGbkH7bYG97nlI9OPHFK5UldBflj5bqurrt76uEazfujQUF1+r
         mrUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zv+p98PC;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b206si399654iof.0.2019.10.05.16.02.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Oct 2019 16:02:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4B3CE20862;
	Sat,  5 Oct 2019 23:02:35 +0000 (UTC)
Date: Sat, 5 Oct 2019 19:02:34 -0400
From: Sasha Levin <sashal@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH AUTOSEL 4.14 08/23] ARM: 8875/1: Kconfig: default to
 AEABI w/ Clang
Message-ID: <20191005230234.GD25255@sasha-vm>
References: <20190929173535.9744-1-sashal@kernel.org>
 <20190929173535.9744-8-sashal@kernel.org>
 <20190929180852.GA901024@archlinux-threadripper>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190929180852.GA901024@archlinux-threadripper>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=zv+p98PC;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Sun, Sep 29, 2019 at 11:08:52AM -0700, Nathan Chancellor wrote:
>On Sun, Sep 29, 2019 at 01:35:18PM -0400, Sasha Levin wrote:
>> From: Nick Desaulniers <ndesaulniers@google.com>
>>
>> [ Upstream commit a05b9608456e0d4464c6f7ca8572324ace57a3f4 ]
>>
>> Clang produces references to __aeabi_uidivmod and __aeabi_idivmod for
>> arm-linux-gnueabi and arm-linux-gnueabihf targets incorrectly when AEABI
>> is not selected (such as when OABI_COMPAT is selected).
>>
>> While this means that OABI userspaces wont be able to upgraded to
>> kernels built with Clang, it means that boards that don't enable AEABI
>> like s3c2410_defconfig will stop failing to link in KernelCI when built
>> with Clang.
>>
>> Link: https://github.com/ClangBuiltLinux/linux/issues/482
>> Link: https://groups.google.com/forum/#!msg/clang-built-linux/yydsAAux5hk/GxjqJSW-AQAJ
>>
>> Suggested-by: Arnd Bergmann <arnd@arndb.de>
>> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>> Reviewed-by: Arnd Bergmann <arnd@arndb.de>
>> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
>> Signed-off-by: Sasha Levin <sashal@kernel.org>
>> ---
>>  arch/arm/Kconfig | 5 +++--
>>  1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
>> index cf69aab648fbd..f0080864b9ce8 100644
>> --- a/arch/arm/Kconfig
>> +++ b/arch/arm/Kconfig
>> @@ -1595,8 +1595,9 @@ config ARM_PATCH_IDIV
>>  	  code to do integer division.
>>
>>  config AEABI
>> -	bool "Use the ARM EABI to compile the kernel" if !CPU_V7 && !CPU_V7M && !CPU_V6 && !CPU_V6K
>> -	default CPU_V7 || CPU_V7M || CPU_V6 || CPU_V6K
>> +	bool "Use the ARM EABI to compile the kernel" if !CPU_V7 && \
>> +		!CPU_V7M && !CPU_V6 && !CPU_V6K && !CC_IS_CLANG
>> +	default CPU_V7 || CPU_V7M || CPU_V6 || CPU_V6K || CC_IS_CLANG
>>  	help
>>  	  This option allows for the kernel to be compiled using the latest
>>  	  ARM ABI (aka EABI).  This is only useful if you are using a user
>> --
>> 2.20.1
>>
>
>Hi Sasha,
>
>This patch will not do anything for 4.14 because CC_IS_CLANG is not
>defined in this tree. The Kconfig patches that make this symbol possible
>were not merged until 4.18. I would recommend dropping it (unless Nick
>has an idea to make this work).

I've dropped it from 4.14 and older, thanks!

-- 
Thanks,
Sasha

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191005230234.GD25255%40sasha-vm.
