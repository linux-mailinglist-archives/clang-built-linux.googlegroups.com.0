Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBK7M7KCAMGQE3MTIU2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4F7380F27
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 19:41:00 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id o6-20020a5b06460000b02905004326697dsf2931221ybq.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 10:41:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621014060; cv=pass;
        d=google.com; s=arc-20160816;
        b=BKAWSJdiEPgMEE2DyaSoR6d0RFagiJSPxGnXGcATaIthuRPSfiegfjjG5aaXlg890+
         8QKQYonw/YBVFxKmXt5KLLn6yxQr5WMLkJHzbVCPnJvX8lX1mIe1p3SfzMg93n3gD/8m
         5ZXy5gnHJeKJE7TP9eHLCVpVAOwy+tN4F+wmmqPx8CmJd/b6FtDbP82l42O2FsnoWsUu
         W8JGvpXsH7CtMKfKZw5wQ0BkB59v8mTNeGsoMkBwexeC2X9RwL1wAeYQXjQAoo7/qVqK
         ljVB85ISzAwk5xxPepLSxsgTVJJL29uoXGuosfLwiuKUXHW9z0IF2aiiz4z/v9It2jC4
         jmMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=GRHf9ujhF/gROTPLKHBb8GNzX87lKY6BoYxziPifTUk=;
        b=UUWjpNg6ajX/qjmBAQuT55s3iDDz5+z7VzfaPraYArCYOHBotMaacMsrzTdes8/j2t
         MreZtxgEGTc4l7WCWVZAdSJemLEBscqo9Cc5IKGXUzgz0+OXZP4HtyED43rWYxCPXiFm
         HIC0M+zsFUZg2jx5uijJT3rij+vZ2yIYpcf8QTAJnRD/QXQkiTvXtp85OgySrVT3k1A2
         GvJ63rU2Jp9d9/Qcwr4fVWB9poh+OFdKfUOhx5iL3w2FIxDRyhIXSg65wtHsJTfcdmaB
         dlFjJGLLEPnEYnRG4Xon3FjBQ4Bfi4fWKgkGjIQ6VaNC3faGAKzg+u332q8yjJwb3Xqt
         506A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gIt3oB13;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GRHf9ujhF/gROTPLKHBb8GNzX87lKY6BoYxziPifTUk=;
        b=iPXyr0nFfOBKFYt6vPvJgmPvvruGVdQ8ffD4QUmZcAXev007gulEFQU7TUi0c0/zgo
         LHTDEjhPKsrxfkLIIjgj26NblZcO7mqocdGl4xVz7MOPXDheZjJJIKjULPmWJWRSJAa9
         oGaXj2cZON2dorBLYaNTtI9HpIJC5+g9fLNTFHw7jyd8mN8x0er8H8mNGkXiq16FB2rH
         WGwqV0q2TkCcOs9SWgS4GKZMHBXr9odfpWSwZ0ZS/7qwOeLrBdc+vTveR6fq9Zhj6dH8
         5iKjb3xG9XTsoRO+Oo/tYjZ7InzDLSzIxNJnNYDS0P1j5hPEd3TNYKyu3eRYxai1+rBd
         FoHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GRHf9ujhF/gROTPLKHBb8GNzX87lKY6BoYxziPifTUk=;
        b=dRr2d/G/pCeS3kfGJL3rGr6nvAQs/NN0/Y2Xx/fIhdsxxnayzkm/wyd5Xh3MdqYMpp
         gfkrIMGTML/sKOoiVONNnotfZctFl9u7N6GBhe8KRn9PlOxYCORNd/zE7566AUNniHrw
         hZGJ5495P9H0UTC/bXswyWl0tDrdba4YNwcuQAK54pI4quI2BT1TcaEl2nS4oi4yc7oS
         LYY6uItfwJ9rywa67kKsz53f6CsDd4FMXZJa1/dqW8oFHPG85k+O6zGPne6RQiVGYDPD
         PGkw4cYtb3TGzP5arX5flGmoe9Qea0XXnPkHEzSwNin8XQdeiRujtuwEIw/xVvZHxYpn
         sW5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532h4Cl+EE3z8TG9wHlia4W+WKFmeLNqWVfA1cD7yfi3C18kgBI3
	3wh674CQWWVAaO4YhLPoiU4=
X-Google-Smtp-Source: ABdhPJz8OWM1t+/C7T/c0FuGAUbcBeNdzPgLWJbWoUsg1srUKEnUGRCBkpjB417vrUdRkZggZwddxg==
X-Received: by 2002:a5b:5c7:: with SMTP id w7mr64213552ybp.164.1621014060039;
        Fri, 14 May 2021 10:41:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:1342:: with SMTP id 63ls4660160ybt.8.gmail; Fri, 14 May
 2021 10:40:59 -0700 (PDT)
X-Received: by 2002:a5b:ad0:: with SMTP id a16mr48391206ybr.458.1621014059596;
        Fri, 14 May 2021 10:40:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621014059; cv=none;
        d=google.com; s=arc-20160816;
        b=KN0R4DPQo8VBT8Pzp1adZBkgASCprGv/4UwLENc0NOV1k0obLWqSa61WuNxdsolq19
         ouXecHVJMhhlhCcwgVH2/OLiHrPi4hTbX597UQPPVswcZ83uZV/Q9zXFVFReM6Zs6Yc6
         lvfpAFcfLHxmWwqlUyAGdSttHfTPPaUDst40SkEG5JOTgpDCWyP7PPs+myrsQn8EhWRU
         Bn1W9bcW/mCF7g+htdE++q9M+W1pwNm8Ekctytw2rYjlUD6iqlnBnSTAAR8GeZpLYx+h
         /7D0Cz3mjqZQL64SorjK7EniqPAkQABVfKldBRPrggnoB8+kVxMyz8p3NUwVny4xMdzE
         sPOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=DChU7fhnFfNyLdCUsMeUpbmTwgoFej/Di1ff3uRLMQw=;
        b=UqMjt6koIwkakcA1blpCbyDu6BX3CEX0B71/bbonB3+Rymb5NltlkNrSyQ2+Zh993h
         TWXZdxYx7fP/MhUUnH1out7me0bhuDs4znbbpdc24VQIW3CFxhkQOxp1/AntwCh6BDv/
         Grx9ILeveQVEnxbWEcb9QOCx2yg/M31EaMhND9u/0ugni4hSjEmwI/wpwWqHfWf6n4bZ
         g1TEavtPzSrX64A9kJJhzXUX7fJGqk7aqLajD60WZtxptbTO6VUuvMEmYMj06P3Js05m
         wxB8CECBxqWiAF1CULkXerjYxr5i3CmgFK2/vTzpkpdMhjLOj9k1QJgiagFc4OMZNDOY
         TEwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gIt3oB13;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r9si556079ybb.1.2021.05.14.10.40.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 10:40:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CFB6461442;
	Fri, 14 May 2021 17:40:57 +0000 (UTC)
Subject: Re: [PATCH] HID: i2c-hid: fix format string mismatch
To: Arnd Bergmann <arnd@kernel.org>, Jiri Kosina <jikos@kernel.org>,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Julian Sax <jsbc@gmx.de>
Cc: Arnd Bergmann <arnd@arndb.de>, Hans de Goede <hdegoede@redhat.com>,
 Douglas Anderson <dianders@chromium.org>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Xiaofei Tan <tanxiaofei@huawei.com>, Coiby Xu <coiby.xu@gmail.com>,
 linux-input@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210514135901.2924982-1-arnd@kernel.org>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <84b20dcb-b063-b2b0-b2dc-1a1befbc334c@kernel.org>
Date: Fri, 14 May 2021 10:40:56 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210514135901.2924982-1-arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=gIt3oB13;       spf=pass
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

On 5/14/2021 6:58 AM, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang doesn't like printing a 32-bit integer using %hX format string:
> 
> drivers/hid/i2c-hid/i2c-hid-core.c:994:18: error: format specifies type 'unsigned short' but the argument has type '__u32' (aka 'unsigned int') [-Werror,-Wformat]
>                   client->name, hid->vendor, hid->product);
>                                 ^~~~~~~~~~~
> drivers/hid/i2c-hid/i2c-hid-core.c:994:31: error: format specifies type 'unsigned short' but the argument has type '__u32' (aka 'unsigned int') [-Werror,-Wformat]
>                   client->name, hid->vendor, hid->product);
>                                              ^~~~~~~~~~~~
> 
> Use an explicit cast to truncate it to the low 16 bits instead.
> 
> Fixes: 9ee3e06610fd ("HID: i2c-hid: override HID descriptors for certain devices")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>   drivers/hid/i2c-hid/i2c-hid-core.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/hid/i2c-hid/i2c-hid-core.c b/drivers/hid/i2c-hid/i2c-hid-core.c
> index 9993133989a5..f9d28ad17d9c 100644
> --- a/drivers/hid/i2c-hid/i2c-hid-core.c
> +++ b/drivers/hid/i2c-hid/i2c-hid-core.c
> @@ -990,8 +990,8 @@ int i2c_hid_core_probe(struct i2c_client *client, struct i2chid_ops *ops,
>   	hid->vendor = le16_to_cpu(ihid->hdesc.wVendorID);
>   	hid->product = le16_to_cpu(ihid->hdesc.wProductID);
>   
> -	snprintf(hid->name, sizeof(hid->name), "%s %04hX:%04hX",
> -		 client->name, hid->vendor, hid->product);
> +	snprintf(hid->name, sizeof(hid->name), "%s %04X:%04X",
> +		 client->name, (u16)hid->vendor, (u16)hid->product);
>   	strlcpy(hid->phys, dev_name(&client->dev), sizeof(hid->phys));
>   
>   	ihid->quirks = i2c_hid_lookup_quirk(hid->vendor, hid->product);
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/84b20dcb-b063-b2b0-b2dc-1a1befbc334c%40kernel.org.
