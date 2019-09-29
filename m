Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBN7GYPWAKGQEP4AEFTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF4EC18DF
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 20:08:55 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id w8sf3399209wrm.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 11:08:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569780535; cv=pass;
        d=google.com; s=arc-20160816;
        b=DVwwG+WRUPDe0tBuT2KTjPbVuR8qUl/fQZisi9vfz6A+Dx0wqzCFzi8P5CxEjAF6of
         zPmBME7yenjpK2cLeUI3bKcIh/KHwykd9Hp3NOP6M4beRdEu2oOA4HPesjuQ2UdtU7rj
         k9qF1whjFRJukHLmWj78dQK07m9/m3d+sl45yfFv8cYw7X/qTvM2ppBa0ckhXW5WIPIn
         FTOUy521a4eFY5NG7nC8/3T09wjjxMlrK2WUSvEuzjb3YL85ryE/AZIQZ0KQnsINFT5N
         DA0fUmiuHbv01kVi3u4DP4ExlWQqJS6x4H08Tco9HIO3DGoSc3CY++tG3h2hldTrSBmn
         Fz4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=REWaqe8e5Vk+kd7JqBFjGCAx9ORwVD0ZkPmr0NZ2J5I=;
        b=WngZMwmCOcna6VIfuyxzsLW2l8S35KHtsuP/FRFzf/KyyUtG8h+pGalq7l3gI0n2Sl
         jtu05g6qGc0wGsX2vrQWkcyB5/tBlsqINI5uEINvt8pWyQVxBuvqbfEzMujqF2DJRE+J
         Q8CEJiBeZn6SyCUJLYWDj5bYmQhqM/FjguMQ3h4eVdtgJnSkWpNiddFpZ2AJYDuqdKAx
         HVa8uZijktQMg09WwUJ03MJfFi1jDgX4es/QWJ4uPjAd2YkdwDIJjV+S/YvMYJmlsZLZ
         KLrctM+sVNb8NxjMwae6LDsSMcVgqjgP/HOKrDqKSpXFj4emvQtx719RkP3QH0exVtMo
         KsbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lGlRE8qP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=REWaqe8e5Vk+kd7JqBFjGCAx9ORwVD0ZkPmr0NZ2J5I=;
        b=OR3obCccnMvdp8wOXl2Yt+l0KBTfspmrXLlut2StM9ojZl8PU/k/huFXPyi4uINKhr
         c6mUFv8rTskd7SqnbDlRwkA5MKPN6nkvrmti1FF04+6T1YHv8i3O/l7Xa6Ja0qU3skT1
         Te//MMhcP5Sz9vHOMlG7MbZ3SE0QSPKBEcqwfZbdpPnNJdbhScluOvBqsRpXjaRCnhBy
         /wlpZPxgKdZrAJV/fW1rvcGWpSxeFpERSM6AGDOSxcpZsLlohs3ihjKCmFtPS7xyCGQT
         kY+UvKe0s/UO0K9We2Ph4B5qjqFsucDxQLvn2nRmKobi1sWqskdJ7azaeANyGRAcSTpT
         suIw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=REWaqe8e5Vk+kd7JqBFjGCAx9ORwVD0ZkPmr0NZ2J5I=;
        b=EWrMvXx30DdGr6h9qQ0X/mBcveyiE9w5lwpieyy+LzmFyQGxF/dLYlr6rFP//CGZi3
         1TqYMs/dqTQLxbuyrOJ5apadhwfEzXW63znF+8diQOGu5cNmhgzs42fHcDYqIx24PIKp
         TWU/J5vQteV4Lsn+UpX/pcg8zlmnEHhTiapLXS1kSbVDhBB04Hbp4qa7txhpT1P4zv7N
         vt77cWRH7hx1fARJzZm4Rm9ycb0Ive1xhIyYWg39Go7xIgjjFS03iOPZEn5pdYrbW7ee
         eCkZLo8B3rwts4jfcnKYtEcosnJbDqH4zKlyHMvidS9BNIHcf3Ox9XqT1aYxiQodAqmQ
         9FJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=REWaqe8e5Vk+kd7JqBFjGCAx9ORwVD0ZkPmr0NZ2J5I=;
        b=mo1FEMGI+/+8nYkqIsEtIu9LHvMpaX0+iFGnsYnbepjGfFMN0mRcVFYaIWQ0c5iayf
         ESeSZ974Rw0eGppEwiRmMXA5wuDOFVBkVHsrAxdh7Ga8oOMNGxiJRscCvIIHO6PaPHaB
         GTW5r6Rdoxm0vCHelTeAAuU99xVlSqYJgyVtC7EiK48tJDXMbXCLEnYw1zJ4tV8pRI3+
         pKoNGc+rVIvTplohKvumotAkVBInK6Qtgcte5yyl2CZXrCcZPy5OErJaXYtP6oSxOKAm
         DNzBWmqKuiR1sH/KxLWq5uJV4PHzgrCbBxvaKpWTdUQvYT+ThC/RFpdCieu6+VRv5UUq
         VLmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVLI2eWI3T0NZfujRehP5zRjxzr7CrVj4cUWt/piDjzbMciQGk0
	KH+A/cYFvaavwUEJYR7I0eE=
X-Google-Smtp-Source: APXvYqy9BocNcrg+PMMtgA8gWJnS4QbS30vl8UWcFxsmxVOfhgXs88fg+kiTjlMn5HAq8EE3ISjt5w==
X-Received: by 2002:adf:ea10:: with SMTP id q16mr10972928wrm.356.1569780535332;
        Sun, 29 Sep 2019 11:08:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9dc8:: with SMTP id g191ls4145100wme.2.gmail; Sun, 29
 Sep 2019 11:08:54 -0700 (PDT)
X-Received: by 2002:a05:600c:c9:: with SMTP id u9mr15043298wmm.98.1569780534889;
        Sun, 29 Sep 2019 11:08:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569780534; cv=none;
        d=google.com; s=arc-20160816;
        b=MeKzTg415p46fYyGTAzk21N+92uwAE67G99ujDoIlgEEedb40fK8cYJXvY1a+//lDr
         cmBoG1OdomKK5hsehQw2hbNfrT10DNQxUUxfTO8r9SGdxyOmNFNHLQ6nvtmgJyDiOjPE
         vpjys235pz/qAYeOrCY8oNQHwvUjbnGjGc7sF+2Hdgakg51ylHqG8VAuBQa0I9BodHNO
         oLPcfs/8W61xfDMnJMu0dEh1mFPzGWGwMxhiR3Lnt/VQ6237huMszdp/qkTfJRqV7kjC
         JMXF+/5txzCUSjg39erk1Fyhh9XdPGfs3IKrfQsT78RCTnI5+YUM6TSbyZXuw/uJHTN1
         u/Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Q7Nt4+duQpotUrg9cZce+XjSv5bPAauflILLelR5rNY=;
        b=xIhgL0SXxPKWlaJcWbdngGm7S47GoAahZm8GxTcNrFkc/d806RirCmQVoO7h054Tfx
         8ZlegOl+uiqCJF3upSdNt0SheA9ooA3HS0RNA6mQaQfHvuaSAQDQlSoN/IwjWH3pJFIw
         1rx3Rc0dh9IlgZnp4C+iY0QX8kF1cGLvjtz6XkxojrmgTKpdu/6yna/aDNKIg+jDW5oU
         UyNYaLDMCaqaxXOKWMDVZWMl6POlV5CKkgcwaol+ZDz+50AohKTUnQI2SlJa4oi3h4lf
         rEwFc/Vi/avyhfIAN60cqSg267eUftg9pqU57fDW6VQeX0yq2ifq6r70V0Q2Ed9mxwvh
         bT2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lGlRE8qP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id p12si523838wmg.0.2019.09.29.11.08.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Sep 2019 11:08:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id q17so8471843wrx.10
        for <clang-built-linux@googlegroups.com>; Sun, 29 Sep 2019 11:08:54 -0700 (PDT)
X-Received: by 2002:adf:e442:: with SMTP id t2mr9030685wrm.87.1569780534389;
        Sun, 29 Sep 2019 11:08:54 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id i1sm26645189wmb.19.2019.09.29.11.08.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Sep 2019 11:08:53 -0700 (PDT)
Date: Sun, 29 Sep 2019 11:08:52 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sasha Levin <sashal@kernel.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH AUTOSEL 4.14 08/23] ARM: 8875/1: Kconfig: default to
 AEABI w/ Clang
Message-ID: <20190929180852.GA901024@archlinux-threadripper>
References: <20190929173535.9744-1-sashal@kernel.org>
 <20190929173535.9744-8-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190929173535.9744-8-sashal@kernel.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lGlRE8qP;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Sep 29, 2019 at 01:35:18PM -0400, Sasha Levin wrote:
> From: Nick Desaulniers <ndesaulniers@google.com>
> 
> [ Upstream commit a05b9608456e0d4464c6f7ca8572324ace57a3f4 ]
> 
> Clang produces references to __aeabi_uidivmod and __aeabi_idivmod for
> arm-linux-gnueabi and arm-linux-gnueabihf targets incorrectly when AEABI
> is not selected (such as when OABI_COMPAT is selected).
> 
> While this means that OABI userspaces wont be able to upgraded to
> kernels built with Clang, it means that boards that don't enable AEABI
> like s3c2410_defconfig will stop failing to link in KernelCI when built
> with Clang.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/482
> Link: https://groups.google.com/forum/#!msg/clang-built-linux/yydsAAux5hk/GxjqJSW-AQAJ
> 
> Suggested-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Arnd Bergmann <arnd@arndb.de>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> Signed-off-by: Sasha Levin <sashal@kernel.org>
> ---
>  arch/arm/Kconfig | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index cf69aab648fbd..f0080864b9ce8 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -1595,8 +1595,9 @@ config ARM_PATCH_IDIV
>  	  code to do integer division.
>  
>  config AEABI
> -	bool "Use the ARM EABI to compile the kernel" if !CPU_V7 && !CPU_V7M && !CPU_V6 && !CPU_V6K
> -	default CPU_V7 || CPU_V7M || CPU_V6 || CPU_V6K
> +	bool "Use the ARM EABI to compile the kernel" if !CPU_V7 && \
> +		!CPU_V7M && !CPU_V6 && !CPU_V6K && !CC_IS_CLANG
> +	default CPU_V7 || CPU_V7M || CPU_V6 || CPU_V6K || CC_IS_CLANG
>  	help
>  	  This option allows for the kernel to be compiled using the latest
>  	  ARM ABI (aka EABI).  This is only useful if you are using a user
> -- 
> 2.20.1
> 

Hi Sasha,

This patch will not do anything for 4.14 because CC_IS_CLANG is not
defined in this tree. The Kconfig patches that make this symbol possible
were not merged until 4.18. I would recommend dropping it (unless Nick
has an idea to make this work).

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190929180852.GA901024%40archlinux-threadripper.
