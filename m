Return-Path: <clang-built-linux+bncBC27HSOJ44LBBZMP56BAMGQEOQPRU6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C5A34851C
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 00:14:46 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id m71sf856800lfa.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 16:14:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616627685; cv=pass;
        d=google.com; s=arc-20160816;
        b=lkKE/dd/4by/8437qHoTiu2jUNJbIJyxulNHAL+neRJ0w23lxslGHUGyfZlcFg2Ie6
         Uv7He/cB1BR9AQzygb5M0LdjaDVL9695coKdMNxzr8Mhvy9lCHNZdSjMEqhmD0SeCKH6
         sSVpGkJVDPC6/4Ex9T8YATW2MJsOI0D/+IyKI2JBXXYMSJObCxWBaPOMSZ//E0i8RXzT
         7bzdmXGuUHreugSPJ4MLk9D0z7ud1WpNPs+hQpDkopo8rEgFkDV6sxOaaZHZrNQWySQR
         798yZWpvHxa6Eg9COVVZbuflP0n4Y2vEKGidLVVJI16yO83z/ethLKLEZOHERttXXdtq
         1aDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=Cc2scvTXi/2xyjBVYnQntqW8N03qF+iftjVDNW/iyUg=;
        b=Aq/uByU7wMYveUhSBHahsoTWzEbhGryQIv/s6q346Nv0rJbbmvvlMvpx17Ys57/+6F
         8pZVz8yIP62cf60Q4KMttXEmAtfTPSmS1FuH1eH3sZlIqtBIRR4FsB+0Q1EUJ3aJE/R4
         SUxWBBXiR71bfmF0FUxQJrW96ywLO5CJZp8UiO+WctfuSgn9A+0euo+YM924rSKmbhZu
         OPrXdz6lHSmox6f1mx3YUDlvr1iFiprMHibSrHYrx0dDRemrULihou6pWwXupJ8FIIyI
         CeKzM6ihH1xwt6Tze2d7y1k68NcMNJvgZyqYc9iE9bwP0/2+nX1J4DqN3FBaichTg1Cv
         MsKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Cc2scvTXi/2xyjBVYnQntqW8N03qF+iftjVDNW/iyUg=;
        b=RdlcFduAfpPbQNsUh+6id9X8aHVfCpLwlb3PhoaYSL+hddSctcw64j5gm4Q5+h0eB4
         mJugyH23nnRYWVXI1BY2VMPtt4uTRBhDWwYQgckOpl+1tPhTNefZPNQ7DaA9q0ethGNy
         ostAW8UVFwhCApZKb5H7q6/CtY0B3mWthCdhT1mTM7yLHHggPVA3EnDyh7AvKoIaZppO
         zXoryNCjBfQ2Wc9VnK07aV/J3oKqNzPjOFn5gan38zRy+lU3oV0IVBW/lnWFVIMPo4Z6
         oarPtki64jUoX2FRee5zD8PNoH0G7BrEafPtvK0pbSPbS6InbxxvJk6DaUT/0tty/19/
         qwaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cc2scvTXi/2xyjBVYnQntqW8N03qF+iftjVDNW/iyUg=;
        b=RfU+xZ0/EDuy7BT/rBSuQBpbBDZPH1Vu8/CjzxcECwL6hWO40daAsJxem0LUUJne0K
         /6zFrIZE0pQpD8WkRE9hc7NmA2moZIRtwyZcShtuRKp9qDhVGE/uVlr0IlNEAJmh57jK
         GKFbINv6NpzEdEQr1PRwLpImQo1N+7WEBA4cWYYy5LHwYwtHqZlig2ODSg9V2VE3odFu
         TFPPtjCg31erMJ+HmwUDFGZFiVG5iGpKmFPQVbgZWTCe5kOmhHE6M6aB2Bs+Zjwp6uzZ
         uC+oJJXZNqHD9yCbG/pgG3MjzBvjYxwKWXxdIIW0PjKcz+c+F/bwjIAikveVMUdhqrid
         aO9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532d/qx3xmp/IeenRfI91JJwjmrETkpkN8xwGMNWdFf6e2F1/v6T
	lWvq9XMEsLXOqhPv86dc/WI=
X-Google-Smtp-Source: ABdhPJwTTbVsU+mt/o5uCDcBewNndIkmPnbKxWdhzLkosBypwYwgpLhKms4I2/6EHAJnVGM8hqiuug==
X-Received: by 2002:a05:6512:33ca:: with SMTP id d10mr3230296lfg.170.1616627685859;
        Wed, 24 Mar 2021 16:14:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b54d:: with SMTP id a13ls837023ljn.3.gmail; Wed, 24 Mar
 2021 16:14:44 -0700 (PDT)
X-Received: by 2002:a2e:9793:: with SMTP id y19mr3422570lji.374.1616627684816;
        Wed, 24 Mar 2021 16:14:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616627684; cv=none;
        d=google.com; s=arc-20160816;
        b=dOgUYCp1gVmPTvjjNq8UjFdTT4niYUiLqMJczzEVEVD6TYoSPT5DYJ8tNj6sjCg7c0
         /BsedZ7w3qzOaL+2JfGTcUGki+Uom4+DKpmzlnkPN8SFC9IJd2VS8DWvk8RzXc8wbe/S
         l0PGLc5P9g8PgyMeyxUCFQI8wXSH+OD5KnEYdnbbrPLV4P3lzr9e+BGKEBRoZU2FB+PO
         2rS7qeM91Da6IsAqs02KNNyRbkz6FPb06mcu7ezs9/4VPekqZ8v8ztzjH2589ZjWZ1pN
         MOKy1juwOyeIyUx8Sb/m+dzo1rs+qq0pvdBJmbSlqjr0fQ74H02FaArugbIFukjM7e0v
         4iPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=FgbI/2k1kgLGAYXkJv3a/Ccnki8W1dIiiQq1qJdiviY=;
        b=mKKWPS7KiodyCtRqb9DAKaPWApeDvtuJPdlYyMyq5/ORbTS4MyB64Yv/s4VxngUBDe
         OS236GIME7g3foqKEwIThzWx7Y/0Wb9GBxp6kwF5/Wa6r0iWsya88DNpu9G01oaDXg0c
         vVjL2GihaQh8u31ea6+Ey6M0mL5E1Z1tPdXib23dHLlNCwleRYnPSfa3ji77+dtBj727
         lAMm/hcxF3UAcm/3q13pqiwoiXu8yOzAKiI4OMYkDPlQ9hPOn6pMUlPaDJXnCfeTOirP
         O9gYdlrK98k7hdaxHc1CH4Ck6WFdvRi6OG3blfpsYrSbTMgz27UuUjkDR90Gnlto+SG3
         jwyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id c17si167899ljn.7.2021.03.24.16.14.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Mar 2021 16:14:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-223-zjCwL4CNMgSnfl37WyP4uA-1; Wed, 24 Mar 2021 23:14:41 +0000
X-MC-Unique: zjCwL4CNMgSnfl37WyP4uA-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Wed, 24 Mar 2021 23:14:41 +0000
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.012; Wed, 24 Mar 2021 23:14:40 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Arnd Bergmann' <arnd@kernel.org>, Russell King <linux@armlinux.org.uk>
CC: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <nathan@kernel.org>,
	"Nick Desaulniers" <ndesaulniers@google.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] ARM: delay: avoid clang -Wtautological-constant warning
Thread-Topic: [PATCH] ARM: delay: avoid clang -Wtautological-constant warning
Thread-Index: AQHXH+dwZysyW/ACIU21groL09xJy6qTxo9A
Date: Wed, 24 Mar 2021 23:14:40 +0000
Message-ID: <caf7e56984c347da9e342e89ce530748@AcuMS.aculab.com>
References: <20210323132031.2858996-1-arnd@kernel.org>
In-Reply-To: <20210323132031.2858996-1-arnd@kernel.org>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=aculab.com
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

From: Arnd Bergmann
> Sent: 23 March 2021 13:20
> Passing an 8-bit constant into delay() triggers a warning when building
> with 'make W=1' using clang:
> 
> drivers/clk/actions/owl-pll.c:182:2: error: result of comparison of constant 2000 with expression of
> type 'u8' (aka 'unsigned char') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
>         udelay(pll_hw->delay);
>         ^~~~~~~~~~~~~~~~~~~~~
> arch/arm/include/asm/delay.h:84:9: note: expanded from macro 'udelay'
>           ((n) > (MAX_UDELAY_MS * 1000) ? __bad_udelay() :              \
>            ~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~
> arch/arm/mach-omap2/wd_timer.c:89:3: error: result of comparison of constant 2000 with expression of
> type 'u8' (aka 'unsigned char') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
>                 udelay(oh->class->sysc->srst_udelay);
>                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> Shut up the warning by adding a cast to a 64-bit number. A cast to 'int'
> would usually be sufficient, but would fail to cause a link-time error
> for large 64-bit constants.

Adding 0u probably has the desired effect - without any side effects of a cast.

	David


> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/include/asm/delay.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/include/asm/delay.h b/arch/arm/include/asm/delay.h
> index 4f80b72372b4..1bb6417a3a83 100644
> --- a/arch/arm/include/asm/delay.h
> +++ b/arch/arm/include/asm/delay.h
> @@ -81,7 +81,7 @@ extern void __bad_udelay(void);
> 
>  #define udelay(n)							\
>  	(__builtin_constant_p(n) ?					\
> -	  ((n) > (MAX_UDELAY_MS * 1000) ? __bad_udelay() :		\
> +	  ((u64)(n) > (MAX_UDELAY_MS * 1000) ? __bad_udelay() :		\
>  			__const_udelay((n) * UDELAY_MULT)) :		\
>  	  __udelay(n))
> 
> --
> 2.29.2

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/caf7e56984c347da9e342e89ce530748%40AcuMS.aculab.com.
