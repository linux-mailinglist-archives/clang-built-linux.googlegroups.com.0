Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBZFHU37AKGQE5LHENTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A742CE538
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 02:41:58 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id t17sf3222208qtp.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 17:41:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607046116; cv=pass;
        d=google.com; s=arc-20160816;
        b=GEtxMaHoAeKpP34d//ksCSoaImlPdl9gx5C6g6svdsW0QMDqGpC4td/Eyo77/Q1j4q
         XYDCFp1rThF7/dPqt+bTQ1IrvxplZtVjxxQprSOsmNAY0lKDDIJECgZNFKnTlbDEQW/P
         YzdkfvE2BfUtlG06h9U8OAiMWoJY8cgzOPMcXe/431QbQhe90PVnl9Xd+fakJZK95+An
         BjKlLsX48l8IhGrES0Sp8KvmKd4YVlxY5PPcbYfWIjyipjLnQwVobMuXaTwrfeHx80B0
         a7yTzxKvM7MtaevRVHbeg0sJHvHn+kUdu1U4RmMido6cdfEWSsSZmTZJujGSGKN2lfHq
         SOzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=/Cd7w9TCanlVH9NBPwrXJ5oFRfRfthqNLnhEKL1OvFU=;
        b=CZYvChi8ZhU3BpeDIQCKGC4R5yMaaMKNNrKxjW3/za7RYNK2/CZ+RnGjPOviJFS75h
         xUoT1fZ6q1LQXiyUlbhX1nW9HOHTU/gGrzHZVSIidkPSyYAls/TZrOZNGFD0N/cQsVsT
         0JDWKIFkzbU0p7WeQGgmKrbsYjOoT0ZakwGwB5/4t0I3BKBlpfX4zkpXCel16VNEB+kE
         tgh6QDPN5IQufYta8fIg7gpnpTcsjrNefALAUoSU+ZNz+73+mEE/FK76I6cGq01My70D
         Sor9uHKFipybynV+q2+Ta2Ur/pl/ImlZHybh8aU5wBceeqslve6sOXmQ8Ud0o3TZBwyA
         iwuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@roeck-us.net header.s=default header.b="M/TkRbHe";
       spf=softfail (google.com: domain of transitioning linux@roeck-us.net does not designate 67.222.33.93 as permitted sender) smtp.mailfrom=linux@roeck-us.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/Cd7w9TCanlVH9NBPwrXJ5oFRfRfthqNLnhEKL1OvFU=;
        b=lN6Sy+hdZeiwD93F6UO8c016DPj++XoV9pIJK191P767Fe283EEXLMc9Rc9Jm5HwPf
         YcbJqI22pqLexVm4gCsImkQv3uTZyTIAoTIrCrERQd5eZWCtucCi7QWYTQHikxPuK1xg
         cOAXeoaOR3Pt+9PvzWaPLzXdiDBr12ZBcAK5y7v435+XqJyxRJlcitGtUT/BoL0OJrgs
         899SKyHoQcx3joZtzb3NdyXR8e8j1PgZAglso8Cf4Z7oi1qOkqxXAjUtV+5EgMLsBRBG
         mgS61z8ssz8Gmr72Nd1oHjT8TcY4T2ePv1/iktLUNuTH8DjaV0U4VnzNRMPGnpamgiLu
         XYPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/Cd7w9TCanlVH9NBPwrXJ5oFRfRfthqNLnhEKL1OvFU=;
        b=PpGgrOxr2g4KyDYuRHLgiMkxIfR4xJm3jq+ajGZDLMrWsioAjOWJjQn4GcOVADxEAg
         P2WtrUwOoBo+H+mmFlKN9bbQrVUsH8zdTBdlBJAwDQb3/debIbUp07hFNhYjrNuPK/Bl
         Azc1ADYyK8hOZHlZ1Oudr1r2iboYzR9sAoOjB8Ky5YYFbRAuyMJ9/JW3sOjq4gePSSkf
         R+KF1eZIfTmthQV4oV1S/NbNZMjUMiT6YWFUSPBosXW4f6/1leWkqD7edKquG4Jdd8C3
         MMyu37jAw4Xo+m55RxvHhB8UjuQWU7yrkENgpmXw1yOw2PrWvQ0c9hGEhhxjeWnlwIot
         DCqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/lAqI7DycpLD40asjlYLqi9gxp/zO9BMPJK7misB8YIS0FrX6
	4CZg0R3arN8TkQx1p3a4WpI=
X-Google-Smtp-Source: ABdhPJwLwZ0WKLY8JUAHtzyfQBIuOvq7hjQg5wSkd/S9ZqBce047FHkWXCVgNHdA2WFSEF9SFNASZg==
X-Received: by 2002:ad4:4661:: with SMTP id z1mr2383895qvv.19.1607046116703;
        Thu, 03 Dec 2020 17:41:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6790:: with SMTP id b16ls2693190qtp.7.gmail; Thu, 03 Dec
 2020 17:41:56 -0800 (PST)
X-Received: by 2002:ac8:668c:: with SMTP id d12mr6618252qtp.352.1607046116355;
        Thu, 03 Dec 2020 17:41:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607046116; cv=none;
        d=google.com; s=arc-20160816;
        b=C37FUsAJqsbELibkodJOPAH05SEl4cdoUxVtwVJUN363ChL9EQfksvkCXQnQQDdzzp
         bXjeAWB+1LojOuKFxiBab0LB+ku6OhTGGO+rYqv0RqDOwHSsWYi6lqmCaP+WM49igCAT
         0WHenkPEQm1eSL/mZ3psumO0i8AzCqExZKo2ZTWdfWlr7k4KFtb0xKVTxW1hKYAa3UZ1
         tNVwGBSm2RhBdydIyQLI+tI5Xa+HDzVke6wqnxfo7929q25JP+9nxvjjJmLIsrvVT9kW
         6O6wXcRljOhzw1ONzwKq9ihNxR+3vkxFoyW1FS6gefuZArNOmk5ua7c0Qny3NzOe6Vrl
         vQAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=RKrDXpnvOKnYa9s4QNbszpbo311dk42G28a9T0DPdbM=;
        b=S5JB36HB3oz73LtoXFTTbUr1l3dobBDpeMmuvRF4kbGrgDkqMvhv9EcczLP7vij0YK
         kYE/SrkGf4tKBb25ZhjYuojt8ivAKPucvVQJq/cPhNyKb6BbfwcWOXz/qVLTVWzWrRgj
         vb4GITZ/dpyR/XG0LDNJ+J1rzyuzMlbSZdCjVUhQh4oBuLis4ux0nYWxVAS5N96xocgn
         NHNxSms94lAxPbzl+DyCrlKe32qfabNvivGW0xCP9QaL5U8WliqqG4DlmwOs4+Yodcc/
         lV6mPBtGVkBY7qHjLM+dwnmjKWztmuLu6gNeo9QFe+2c3iUt8fzuWypv3MP+AmAI6OzW
         cs7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@roeck-us.net header.s=default header.b="M/TkRbHe";
       spf=softfail (google.com: domain of transitioning linux@roeck-us.net does not designate 67.222.33.93 as permitted sender) smtp.mailfrom=linux@roeck-us.net
Received: from gproxy8-pub.mail.unifiedlayer.com (gproxy8-pub.mail.unifiedlayer.com. [67.222.33.93])
        by gmr-mx.google.com with ESMTPS id n21si256850qkh.0.2020.12.03.17.41.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Dec 2020 17:41:56 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning linux@roeck-us.net does not designate 67.222.33.93 as permitted sender) client-ip=67.222.33.93;
Received: from cmgw14.unifiedlayer.com (unknown [10.9.0.14])
	by gproxy8.mail.unifiedlayer.com (Postfix) with ESMTP id 6DCFB1AB028
	for <clang-built-linux@googlegroups.com>; Thu,  3 Dec 2020 18:41:55 -0700 (MST)
Received: from bh-25.webhostbox.net ([208.91.199.152])
	by cmsmtp with ESMTP
	id l06cksozPwNNll06dk4Z3F; Thu, 03 Dec 2020 18:41:55 -0700
X-Authority-Reason: nr=8
X-Authority-Analysis: v=2.3 cv=NN/7BXyg c=1 sm=1 tr=0
 a=QNED+QcLUkoL9qulTODnwA==:117 a=2cfIYNtKkjgZNaOwnGXpGw==:17
 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19 a=kj9zAlcOel0A:10:nop_charset_1
 a=zTNgK-yGK50A:10:nop_rcvd_month_year
 a=evQFzbml-YQA:10:endurance_base64_authed_username_1 a=_jlGtV7tAAAA:8
 a=EO5IJpH2gAH_pC5_PvMA:9 a=CjuIK1q_8ugA:10:nop_charset_2
 a=nlm17XC03S6CtCLSeiRr:22
Received: from 108-223-40-66.lightspeed.sntcca.sbcglobal.net ([108.223.40.66]:44140 helo=localhost)
	by bh-25.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <linux@roeck-us.net>)
	id 1kl06c-003z4m-BG; Fri, 04 Dec 2020 01:41:54 +0000
Date: Thu, 3 Dec 2020 17:41:53 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Wim Van Sebroeck <wim@linux-watchdog.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, linux-watchdog@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] watchdog: coh901327: add COMMON_CLK dependency
Message-ID: <20201204014153.GA109274@roeck-us.net>
References: <20201203223358.1269372-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201203223358.1269372-1-arnd@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - bh-25.webhostbox.net
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - roeck-us.net
X-BWhitelist: no
X-Source-IP: 108.223.40.66
X-Source-L: No
X-Exim-ID: 1kl06c-003z4m-BG
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 108-223-40-66.lightspeed.sntcca.sbcglobal.net (localhost) [108.223.40.66]:44140
X-Source-Auth: guenter@roeck-us.net
X-Email-Count: 1
X-Source-Cap: cm9lY2s7YWN0aXZzdG07YmgtMjUud2ViaG9zdGJveC5uZXQ=
X-Local-Domain: yes
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@roeck-us.net header.s=default header.b="M/TkRbHe";
       spf=softfail (google.com: domain of transitioning linux@roeck-us.net
 does not designate 67.222.33.93 as permitted sender) smtp.mailfrom=linux@roeck-us.net
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

On Thu, Dec 03, 2020 at 11:33:42PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang produces a build failure in configurations without COMMON_CLK
> when a timeout calculation goes wrong:
> 
> arm-linux-gnueabi-ld: drivers/watchdog/coh901327_wdt.o: in function `coh901327_enable':
> coh901327_wdt.c:(.text+0x50): undefined reference to `__bad_udelay'
> 
> Add a Kconfig dependency to only do build testing when COMMON_CLK
> is enabled.
> 
> Fixes: da2a68b3eb47 ("watchdog: Enable COMPILE_TEST where possible")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  drivers/watchdog/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index 8bdbd125821b..32fa6de7b820 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -631,7 +631,7 @@ config SUNXI_WATCHDOG
>  
>  config COH901327_WATCHDOG
>  	bool "ST-Ericsson COH 901 327 watchdog"
> -	depends on ARCH_U300 || (ARM && COMPILE_TEST)
> +	depends on ARCH_U300 || (ARM && COMMON_CLK && COMPILE_TEST)
>  	default y if MACH_U300
>  	select WATCHDOG_CORE
>  	help
> -- 
> 2.27.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201204014153.GA109274%40roeck-us.net.
