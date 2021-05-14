Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIHO7KCAMGQEPIKHFXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 53652380F32
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 19:45:06 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id i13-20020a4ad68d0000b0290204d5557d50sf91866oot.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 10:45:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621014305; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jt39G5d6Wq63PK82SReQkLiVUeWJRpiPzHCG//h8/5VLF8yiCNYWzcQBrZB74XbJiF
         NrIr7NDsphKri93mkWJcEayxNC0RCwJV0t56L8LQG84KRGcwWGtRnUMjHZ6ba7GcBpFa
         bE5SpzCMree3A4ucA7jvjYT8t8/7kQez81cBRgYuab2tBdLspHU9weNethFifjCvkRKt
         EzApAxQL6xD2n8EOQH4aeXmyx0zHiKiTOcvBRXZDxHRDhkWyzQf5gyjd5Srk2Qse8Szx
         JEaJTyUYwk5lspw8VeH6I5u+eLOJu3PqOXv8eXYWlhgrinpgTrQ8gsebEqOTtCSWGdQN
         mcRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=zkSyvuCPBJdUwBl1bpboF59x96DFpXvYSiaM78q+Sxc=;
        b=wuCb+8B7Iu8HaH6ZLRPXYUb8JzjsJZExrngByT0AULRjOGwH3XVgN9fgo7+M8OGSBk
         dgxZHHV/gUryv8GK/uL8OIbGrObo1rCOUu1LnK6xLYpcEA7l3uCqZb3dZO96gGOOs862
         yCytdSQe0W7iZAuNyBbkZceYoJ5XTsfOE8WcBXc6f1B6JCSeayMK4/uD/VKWpCcMFbT9
         z2DeoyKNjBMdjnUagneYqgSq6ZUyQDWmw6HxH4bdDb9gT9tcpkoseguz4YdPwUYwIQA7
         LlsvfFMKltw2ipwXKOhc0weTXMQpSFURxr7k3yjRnhlI0/I2WTAUZVj5WuVwf3i0wNo0
         Meyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Y+L4WCeH;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zkSyvuCPBJdUwBl1bpboF59x96DFpXvYSiaM78q+Sxc=;
        b=tRtcqi+xjiVCnRhIpHn9unY27XUEmaa5rGWLCjRWdxt8I0+PkIRfAJ21eGQFnrkkl+
         LKCRlZeVjpaF0J3SeEMw6E1Vo0lkvGcOLfg4JDcZwXt1Aa5SdfnPR5AiBc/euJzNcvNw
         kHnSQpaZVTH0dAlkwADs5HjOVzqt+vZJVoWX0ac5Q/TnXta8QNATF70ahqTPDvlAQXB+
         F3PRhWZwXzxPyHcOsq8HAUnLIqaQfRkLoeUmzVHkn7Ina8WodbO599IJSs3XUinJ/XlT
         Uvf8V7UEc4ErI9qfU1/nk7pQynS2yEVpaAYnSQnCarUpFBaJkQo2WvbnxvEL9lnamSJz
         ZClQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zkSyvuCPBJdUwBl1bpboF59x96DFpXvYSiaM78q+Sxc=;
        b=PiTyBDn5l0ipHL5kGq2KyRWSxzX8AKLHHkM85rFaL+UqKeTg+mUNOscPUuCglU8z6u
         rcdaDsZ8aodecJumYw4lGUSahv1tA/d9g8romSvXzIdDVHnZa1VO4gOZlj5JPaIoP8Mo
         iSQSnBDc2TzH7aO3L2prM1X+aDxf+My9n8h/ld8t+Rbc+mY8xJmuEWLvaUcgYWOC5jBx
         2kI715gzzw9uRh87HHY3TjuYaKl3z8Jvtn5wKmh0WBo5bn6dK8af4cfVHBaI9QvFvDx2
         RW3ECZ6WfKyxzG83Of3UWwVXxvLgqZ1R90CGk/b/bKzbRJP/Lr6xtQuhasEmD53eQgrq
         povw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314I2bOUkOWbbo9t9gKbXoLOOXvHWg87XQyKQulhhgIHUYf+0l4
	ldHLbc13S9vnYe7adcOr1d4=
X-Google-Smtp-Source: ABdhPJygslO0zOBvRpG9m0bDwKEq5jVF4YsjH9Aw8FrLSkmpO1xcXFN7G5Z7Yz3SjApR7PJ77IiTDw==
X-Received: by 2002:a05:6830:2243:: with SMTP id t3mr27241973otd.142.1621014304908;
        Fri, 14 May 2021 10:45:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5c8d:: with SMTP id a13ls2791140oti.0.gmail; Fri, 14 May
 2021 10:45:04 -0700 (PDT)
X-Received: by 2002:a05:6830:15c7:: with SMTP id j7mr9096682otr.179.1621014304551;
        Fri, 14 May 2021 10:45:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621014304; cv=none;
        d=google.com; s=arc-20160816;
        b=Fby4vqIZ9fkG99ciG6raWZ6unS3YULY4yq0hgyxrUV73OtvL6e/s9bqXSizX1cb4pI
         yMZ3Dg1dJ2OLIM73joTiJGBUavEzhzzBE4pW/b6jIGMX8rzkvbq+ek8yslTJZSU4ccW1
         RUnhSklqtjnsYAHWNAAxZw7WY2RYp+R2bZob2dXYpPz4SUkwnVdMdttQcwUoc378isIx
         eAJ0EwzWS7SW1ZhQ9g79S4oXMvkiQktjPH8TR14MbLiG5fbJwDm9PyHvCQXY5vStnPtd
         2QNF7QDJg6EsrlIALvrbkxYCC6PdLMbZ3vL5TRGqyNJQ+BXVjUVk6qzzhK3o8X0RZX+1
         01LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=QLY3Vtt6BQqpBuTSwu/HCIOjCBuLqltLHJXdoqlalIE=;
        b=I/xywb+WEVOpSClqye6LTqYEnyJl4+DpsjfppuYLpkuiUbeyzcD2bD64rNwqFUSeHa
         7BN6VvAQmAAG1veDWZyTrGG7V4/l8TThGCeBFgAwOw5ybrZUlSN+kKvkWsNV1m++NLL6
         BrmqsjK57nBTL/rYsdhiE4OuTmu4PHRscSqJCvb+Yxw6YfahAdySaIxzYyeWw4E8vSkc
         dFFVYRea2pThavsTfYgmeQnE0Vk7ITTeS2uO1L/gvshAHuLt1WJu5+u5JzqPbJngCy89
         l/++m9FeTYDdcOOt3SFlxnBc5Ffl/hOLD5DbWyqW1lOXjU/+5mm3yt+x7I7Is26cHehd
         Ej3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Y+L4WCeH;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 88si566879otx.3.2021.05.14.10.45.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 10:45:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2B734613D6;
	Fri, 14 May 2021 17:45:03 +0000 (UTC)
Subject: Re: [PATCH] iio: si1133: fix format string warnings
To: Arnd Bergmann <arnd@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 =?UTF-8?Q?Maxime_Roussin-B=c3=a9langer?= <maxime.roussinbelanger@gmail.com>,
 Jean-Francois Dagenais <jeff.dagenais@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Lars-Peter Clausen <lars@metafoo.de>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210514135927.2926482-1-arnd@kernel.org>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <7afc367b-8103-9d48-1bfe-d505d86553b9@kernel.org>
Date: Fri, 14 May 2021 10:45:02 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210514135927.2926482-1-arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Y+L4WCeH;       spf=pass
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

On 5/14/2021 6:59 AM, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang complains about multiple instances of printing an integer
> using the %hhx format string:
> 
> drivers/iio/light/si1133.c:982:4: error: format specifies type 'unsigned char' but the argument has type 'unsigned int' [-Werror,-Wformat]
>                   part_id, rev_id, mfr_id);
>                   ^~~~~~~
> 
> Print them as a normal integer instead, leaving the "#02"
> length modifier.
> 
> Fixes: e01e7eaf37d8 ("iio: light: introduce si1133")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Indeed, use of %hx and %hhx have been discouraged since commit 
cbacb5ab0aa0 ("docs: printk-formats: Stop encouraging use of unnecessary 
%h[xudi] and %hh[xudi]").

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>   drivers/iio/light/si1133.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iio/light/si1133.c b/drivers/iio/light/si1133.c
> index c280b4195003..fd302480262b 100644
> --- a/drivers/iio/light/si1133.c
> +++ b/drivers/iio/light/si1133.c
> @@ -978,11 +978,11 @@ static int si1133_validate_ids(struct iio_dev *iio_dev)
>   		return err;
>   
>   	dev_info(&iio_dev->dev,
> -		 "Device ID part %#02hhx rev %#02hhx mfr %#02hhx\n",
> +		 "Device ID part %#02x rev %#02x mfr %#02x\n",
>   		 part_id, rev_id, mfr_id);
>   	if (part_id != SI1133_PART_ID) {
>   		dev_err(&iio_dev->dev,
> -			"Part ID mismatch got %#02hhx, expected %#02x\n",
> +			"Part ID mismatch got %#02x, expected %#02x\n",
>   			part_id, SI1133_PART_ID);
>   		return -ENODEV;
>   	}
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7afc367b-8103-9d48-1bfe-d505d86553b9%40kernel.org.
