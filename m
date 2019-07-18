Return-Path: <clang-built-linux+bncBC5L5P75YUERBT5XYLUQKGQEB5KHNCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 157AC6D1D0
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 18:18:24 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id e8sf13793966wrw.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 09:18:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563466703; cv=pass;
        d=google.com; s=arc-20160816;
        b=CK67yps4CAcPVyRvNKhPj9EEvi6b7/xA0s7jy9rJO5updr9Ljq3YthLlbNl/JHmc1o
         UClrkVoUczQmEHdPbc0MHamrg9N7aOT6p7fAgpZdWJfTTPFXYi4YBwzLjmevmsEZqq2a
         C5AWs2K7mZqvi3KFuJ+eLJp7Jmtr/5+mb3tF7K3E5qvbRA1uWD76ZsVZCT6aw2oNGhem
         kkMcaEojEF1dMBu5bcYDGxvHPfknbtK0GSroq9MH72nIaT5p43+ZXPE42eFFI3Xa7sgA
         bkig0pQKBJvghTecldm2ElOJCNKuJ/CnMIu8y4bj61+GG2/2Pxdci0sKvTWDlSXYD1/u
         v5og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=rmax3Y0u5qOGtABqMWDFTQFXGLT5dJVk7LTK7PNqlHo=;
        b=N12RskULFKtoNXlDD6cZzB+rk8nVOCt4h/WAXZ5Og0NqHG1C3YqIlQsQOYX6wTgjwW
         Ncsw1Su1qHR2zwNHWS+j4shKKTqWICbxWAGzUwOsq2439uGeofdd4GZQ0HIJYMKGJiq0
         BjHzzRcbPWUJjni0Ixtw+jKuH5qHYOZf4nz/4KNyAUJGogvJkCPl3rOxQw5Ux2fpMcsu
         2z0s0dVy5DLQU9e736P9lkykOHmU3Glc8yCMdLiGvZ7Cka9u4TZ3a+sMTqYnDBfJBTN2
         M4OAPNYmImC76pcKGKNB/YGRcyVg49bRuf0UFEFBkObkw79Hd7owG7V8cwmRxsFq9O2I
         3k8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of aryabinin@virtuozzo.com designates 185.231.240.75 as permitted sender) smtp.mailfrom=aryabinin@virtuozzo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=virtuozzo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rmax3Y0u5qOGtABqMWDFTQFXGLT5dJVk7LTK7PNqlHo=;
        b=iOFE6a2PjR2Hqcm1ThQRvoJzkRT480jh0XkLuKNQnRQwWADmuT/oh8yFpPDaBz8qN1
         bQB9WlrUl6rGntqWqdnwlTtrZGnaF7173ywFBhwP/AeV5tjujqMMl/Rh9uCPqCDuH3H7
         S1eqy9kjw5wVPvTZI3UgA0CiaBxyyLT61ur8juCXWb9Ds0VzFyr+DlIIZQG3L9OOEBNf
         hRR1iKlUm48U9yj/ajKZBaTgYd/prsjTM/Q2WudYr2joPh6zyMH4qzgEVXrwE/oejn/s
         IL3uHhKYJd+9CZgyVlFN4F3mFwPLzdhl5hFmLYOG8ahZ9Vs6ZBG8i9yg1I1+teArD1JE
         wnGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rmax3Y0u5qOGtABqMWDFTQFXGLT5dJVk7LTK7PNqlHo=;
        b=jte3EACdMQrgYoK6nWH7tpYhIxlzqnIGOW8hgwWvu0fRS2H8IadhC79ZkcUco3dXyq
         MhwJ1LOdujcsmiY/ut22G6kLuYuO3HUarxWIH66fiiFFX3mjRIKWba30PgeEaHgnaQX3
         PggYeW6LtttQ3Pm6nekWtodg+OClgF7tLO66DS1DyOtTOPFKdkemqFwW7gFQfTFBgRzs
         Af8aT5g07oo7dI8jK9SgCK4k6hVAawBOeu7hjK214SCC6wVFqFk8AP6KghmKUWwIzU94
         Ctfy2k44KP8d3XkKdDlrjm5bEe2k5Poqn10+FFL2gsPFlkzhbUcW2dueGx33XJbL3ujm
         wfnQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXAREBXvJKqkZfA67A4HvtGodQLSqTqYpEl4YXMhVC36jPRdgri
	VPYh6CZqmoLLpZ6dpQxbz8Y=
X-Google-Smtp-Source: APXvYqz3m6dY5giDD4BoWPEKmtkweylwrjIKWvPsUj2IsmXowPbsZn2ZnAnNBSXMoYGkhhbk8pqR4A==
X-Received: by 2002:adf:ea45:: with SMTP id j5mr87031wrn.11.1563466703838;
        Thu, 18 Jul 2019 09:18:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c05a:: with SMTP id u26ls10677280wmc.4.canary-gmail;
 Thu, 18 Jul 2019 09:18:23 -0700 (PDT)
X-Received: by 2002:a1c:f415:: with SMTP id z21mr44776219wma.34.1563466703371;
        Thu, 18 Jul 2019 09:18:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563466703; cv=none;
        d=google.com; s=arc-20160816;
        b=sUICn3ukGk32ajucDjjV16nsQgYP4l6yV8tDFFvs3o5t5M2gp+xddFCvjrJmlFssqK
         wwOZISPIkKEWtT8neaqkUuipTpj4UzdVU64UZ1fwxVBsJ6JN0yzwGKUK8TqTI05ZbriA
         ftK/989Yf50eaKNXaB7auMoBTfZUXsRmLBb2D2VpqC4+6EXj0P/KKKMxt+wxnOhMSIEX
         BGqNvK8AGvSCe6ELMl7QOnvgxVqKGI5tCX9EpTwhV0EP6C9CiiVRaZ91qZqmx6MrT6I8
         UhGS63Q1oP9f5kCeEMK5y+C/PhzAAYeJniq3lCqIb85qH9s5oOGwrK7BLho4AcdxYECL
         WBlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=rpOVelOVzN9JaVDiXPCzF9/CbQ+jbgfTgz0hkiRUVx4=;
        b=wxntbu9GgWxscvv5GcuOiZmzD8P2yn1ulaNk/AeY/DYcv5Db6r4ftOKZT0pNoyWleU
         3J5rf9cBgRc4raHEGJKCVqe2pvCw1W8SFl4jgDg5qES1qFn7DuCWn/98MwXvPV2XpAMS
         8LGl0f6vqnULnSnyyBcaNrx3p1nXUUC9lRVrHIe5OuXUY+2HbW8SYu0S62/P/cTazkjo
         2GM7knYugYW0Q7/N6ICQQuENSzhkfkZPRvR4Efau9qNa74ulnwR6BRCiw4a5jzFWGbnH
         gQgbXYKwWpNuuIRoCw5aq8fd1dabaSJphnOi+U2pi4zGgCmpdCbY9rMndeEZMM4Rr7TZ
         PT1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of aryabinin@virtuozzo.com designates 185.231.240.75 as permitted sender) smtp.mailfrom=aryabinin@virtuozzo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=virtuozzo.com
Received: from relay.sw.ru (relay.sw.ru. [185.231.240.75])
        by gmr-mx.google.com with ESMTPS id y4si306974wrp.0.2019.07.18.09.18.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 09:18:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of aryabinin@virtuozzo.com designates 185.231.240.75 as permitted sender) client-ip=185.231.240.75;
Received: from [172.16.25.12]
	by relay.sw.ru with esmtp (Exim 4.92)
	(envelope-from <aryabinin@virtuozzo.com>)
	id 1ho96r-000845-Ln; Thu, 18 Jul 2019 19:18:21 +0300
Subject: Re: [PATCH] kasan: push back KASAN_STACK detection to clang-10
To: Arnd Bergmann <arnd@arndb.de>, Andrew Morton <akpm@linux-foundation.org>
Cc: Qian Cai <cai@lca.pw>, Mark Brown <broonie@kernel.org>,
 Vasily Gorbik <gor@linux.ibm.com>, Andrey Konovalov <andreyknvl@google.com>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20190718141503.3258299-1-arnd@arndb.de>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <0ee5952b-5a76-c8a5-a30a-ee3c46a54814@virtuozzo.com>
Date: Thu, 18 Jul 2019 19:18:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190718141503.3258299-1-arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: aryabinin@virtuozzo.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of aryabinin@virtuozzo.com designates 185.231.240.75 as
 permitted sender) smtp.mailfrom=aryabinin@virtuozzo.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=virtuozzo.com
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



On 7/18/19 5:14 PM, Arnd Bergmann wrote:
> asan-stack mode still uses dangerously large kernel stacks of
> tens of kilobytes in some drivers, and it does not seem that anyone
> is working on the clang bug.
> 
> Let's push this back to clang-10 for now so users don't run into
> this by accident, and we can test-build allmodconfig kernels using
> clang-9 without drowning in warnings.
> 
> Link: https://bugs.llvm.org/show_bug.cgi?id=38809
> Fixes: 6baec880d7a5 ("kasan: turn off asan-stack for clang-8 and earlier")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  lib/Kconfig.kasan | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
> index 4fafba1a923b..2f260bb63d77 100644
> --- a/lib/Kconfig.kasan
> +++ b/lib/Kconfig.kasan
> @@ -106,7 +106,7 @@ endchoice
>  
>  config KASAN_STACK_ENABLE
>  	bool "Enable stack instrumentation (unsafe)" if CC_IS_CLANG && !COMPILE_TEST
> -	default !(CLANG_VERSION < 90000)
> +	default !(CLANG_VERSION < 100000)

Wouldn't be better to make this thing for any clang version? And only when the bug is
finally fixed, specify the clang version which can enable this safely.


>  	depends on KASAN
>  	help
>  	  The LLVM stack address sanitizer has a know problem that
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0ee5952b-5a76-c8a5-a30a-ee3c46a54814%40virtuozzo.com.
