Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZV67SDQMGQEJOYBFDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id C10F73D6846
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 22:47:36 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id s16-20020a170902b190b029011aafb8fbadsf7855128plr.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 13:47:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627332455; cv=pass;
        d=google.com; s=arc-20160816;
        b=miUbac6C8eGxv6rf/VBbUpkY8aMGoAQIn428JhHWUN7gtUB9wJIzG5uVB/2kktRuQ5
         ONZA8k886K75PdqEmxLMdAVRJ2zsB6K2o2ajTowMlbs4XhA4RgL5el8UosTk21Uix3BS
         1jOxQ6djw1EgXv5QTY5AbnvpPN7UXA21kqC3u6ToxnkPFYsiP7YFdDXjFuR2OorhzyRG
         SU5Wk9vamMIh/6hs8ehs1KNXTmXnDRtr3pNxIwQc6BDj32aC2MPMuIKAvjAXpC0ZmtU8
         MBjkRtYZjRfITWXv+XrMl775X0f1jw2UUi+p1LzAfDAR2ahAoFhmb6N+ph2XB0GKkdj+
         r48g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:cc:references:to
         :subject:sender:dkim-signature;
        bh=e/1mfKMBNhZCm26evcUFo7EAsmDm4wUeHH3EGh/RvHo=;
        b=V2UhdckvKYRdCgCVHTe3IfP0KX0+xuCyFYsJ9v8iOsp/hdXdbRzdNJhmVssbuCLfS6
         PRGQe7dfvrVnkr7R0DJfouHpGcBPooV/0TquMDYrcvhjy7oXc5H/GfFLpasLycHI3ySA
         LzCpPLC+78Le5dQV1kxk2TBqAOU8vR0HOalTM5Hcv9hgGbgddzEVl8o78F7FnBDWluRD
         GI05fjC9yIjf7tlK9QfN2I4kCYohnx97+EFKqmmESzGALiD2JLJzxOLLgdx1o3djmP/J
         lTt99w8mQUY4DhnZ7cHqy6Z8eMjlCEPPqF3UsYJe1Mvob7HB8AQlXDvI7lfhWDLLYQDY
         fF4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TY4ayUm5;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e/1mfKMBNhZCm26evcUFo7EAsmDm4wUeHH3EGh/RvHo=;
        b=kQVC7DXfW2p2THNXYF+lpfiZ6WvBwETRWC5kmaV+9k2NzJQnws8QO2plJXQjswqtCy
         NcscKa6wYWnKotYsYnA0SGyafJrA2uWFWKGl0IR14cJ4ZzuZ2jrdSXOQWiNsTNYbo2yp
         3n3ROMksXUlAYfwLiYy/7htARV/A9N9PJa2fqGvmBIVpCowrq1wEWks9p4YOqCsPExhC
         Mtkp1hTsOR0dq8u9FgtkfOT6/MrjTefUwLt0iUiEDvmEJj1wYor22j7Nrh3Dr3VnNpVy
         fNzImibW0JfWYVnnBuzYIps2mHJeBjUqidsuXXD0pltHIQwykZwrKDxcRLkGuhOoqQ4T
         OiUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=e/1mfKMBNhZCm26evcUFo7EAsmDm4wUeHH3EGh/RvHo=;
        b=DuU0Lr1aPi3Oo4JoBPi4RqTVFcDbHX5ojhDxtiSRcE3ficnGATDRsc5JiV08nAyW5d
         IlBaDlowsP20pQgsofpLlSR76g8VLvZnwFUcsLzZt6W92t0w1QtD5gRCRGA8oOmNgEYd
         VD4kSQglTefboSGkSF//1J2flk4pfQfIFCbdh0saATHmkPQoLCrLbCY1+y0dQvIwGnUp
         5NJLTPB6YWlUqIPtQ9HCpIIulW7+Jzq4pUpXr/tsJ0ETRWPQA0FRLq5Kk67nAX4ut7Xb
         t9JEWGCfO9tMkLX0bSGxj/v1fpmIKPgu25T4/jpowmxt2dsC9VhXUKz6/xo2L8t8rORy
         LgvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533yh6P2WcRnez8soKBmnYbEvMj5bWbW7jfuYfj9FQqVilk+KKc/
	tfuCcOwFLNk266WbK1lJNk8=
X-Google-Smtp-Source: ABdhPJxsutLX68gR8YXD0cukxW7lh89oaW+WE9UWoL7hp9Svnhlygnybq31Zo19YPqSkIc1XDtgP3A==
X-Received: by 2002:a63:593:: with SMTP id 141mr19905288pgf.133.1627332455025;
        Mon, 26 Jul 2021 13:47:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1796:: with SMTP id s22ls8318501pfg.7.gmail; Mon,
 26 Jul 2021 13:47:34 -0700 (PDT)
X-Received: by 2002:a05:6a00:114f:b029:340:aa57:f69 with SMTP id b15-20020a056a00114fb0290340aa570f69mr20092549pfm.28.1627332454431;
        Mon, 26 Jul 2021 13:47:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627332454; cv=none;
        d=google.com; s=arc-20160816;
        b=E9R9e1djXTOlETqS9AH54MYL1WkKZ1xNb0k+bS2XfLI9qgKDrxbgEh/7/guNAIm77u
         ANzOnb3l+nwRP7dhBRjweLW8K5FmC3XlL058C7lNspUDj12OGdYogDUy/o9KjCuFVROn
         nFdO2eyNVEhUpN2HfRfp1bqY8rVz6QMG4rcVQwlhwPX34iIIr8FZqoSrllNUxxe1gHFt
         RtiTqPJFazXz/IYyGVFcOKNUcs9zbqgzWIm7QZitCPCiMUF2F+PepeQKVyrde71J8Z2U
         PbOmrh+r+HAX2c0GNINBCsIjRgRABHpsIYJMSKnIoF6i+ZP9n2RKp3W1JsMTlPCNfjaP
         4K6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:cc:references:to:subject
         :dkim-signature;
        bh=uXMz3brywOtX3laczaGC6v27r/sAIGAAYy7l1zSuBK0=;
        b=TqDq1/0N6OcTd/UblhvKWl+QQAa9xjIrqw4/HPwaAKAgO2ptOUOljYVexofoJTPp4K
         YQkk+pGrudvO5U7NADG48vSny4a9ovigba2YCmVrMQY20Jcmnfko2ibiZ2q8HUrGbi88
         +rGVgW3WTwv7afbKW27JynKHfrhlmWxuFt7rQcaH3pRh978CB/LkLmzQLcQfAHu6y+Uv
         mP6YsWZa55h5SrrX8V8OIANJBs4Fmt8SRkwW1gNjfPyAWjMQ/SYW68ygm7LDZ0IZLaKy
         X7HEV3AVCmsqkBrfdwU6TfIpp7JNLwAFaBYZVj1wBLeuIiYiPWh/DB/qwfKR8HISq1aR
         vUgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TY4ayUm5;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t1si72382pgj.4.2021.07.26.13.47.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Jul 2021 13:47:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A567060F57;
	Mon, 26 Jul 2021 20:47:33 +0000 (UTC)
Subject: Re: [PATCH v2 1/3] base: mark 'no_warn' as unused
To: Bill Wendling <morbo@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>
References: <20210714091747.2814370-1-morbo@google.com>
 <20210726201924.3202278-1-morbo@google.com>
 <20210726201924.3202278-2-morbo@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <c965006c-88e1-3265-eb9c-76dc0bbcb733@kernel.org>
Date: Mon, 26 Jul 2021 13:47:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210726201924.3202278-2-morbo@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=TY4ayUm5;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

+ Greg and Rafael as the maintainer and reviewer of 
drivers/base/module.c respectively, drop everyone else.

Original post:

https://lore.kernel.org/r/20210726201924.3202278-2-morbo@google.com/

On 7/26/2021 1:19 PM, 'Bill Wendling' via Clang Built Linux wrote:
> Fix the following build warning:
> 
>    drivers/base/module.c:36:6: error: variable 'no_warn' set but not used [-Werror,-Wunused-but-set-variable]
>          int no_warn;
> 
> This variable is used to remove another warning, but causes a warning
> itself. Mark it as 'unused' to avoid that.
> 
> Signed-off-by: Bill Wendling <morbo@google.com>

Even though they evaluate to the same thing, it might be worth using 
"__always_unused" here because it is :)

Regardless:

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>   drivers/base/module.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/base/module.c b/drivers/base/module.c
> index 46ad4d636731..10494336d601 100644
> --- a/drivers/base/module.c
> +++ b/drivers/base/module.c
> @@ -33,7 +33,7 @@ static void module_create_drivers_dir(struct module_kobject *mk)
>   void module_add_driver(struct module *mod, struct device_driver *drv)
>   {
>   	char *driver_name;
> -	int no_warn;
> +	int __maybe_unused no_warn;
>   	struct module_kobject *mk = NULL;
>   
>   	if (!drv)
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c965006c-88e1-3265-eb9c-76dc0bbcb733%40kernel.org.
