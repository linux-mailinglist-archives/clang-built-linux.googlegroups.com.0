Return-Path: <clang-built-linux+bncBDR5N7WPRQGRBEURZ77AKGQEND7OXPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 633182D7F58
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 20:29:24 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id l22sf6052954iom.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 11:29:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607714963; cv=pass;
        d=google.com; s=arc-20160816;
        b=jPLKKRbT0y+wamQZj4aKgqmAxg38TdTEdrsCB9JaVM3ClFkMTY8jz/6ICXkeLyr/4R
         tC7azBq6AWVH6GTlLwYddfnaIuZ7KoJ7nwDTHckJ9o62wtXp/0RTklUTowR9edVOLa2a
         HPXfQUH8QosdCr87mOdOUDvYfKjJf8UlHw4o2WaJvTNEI3ZFAD4svFynb2Bl9HjYzIJ/
         1Kf1hj53Ue7m03+zsSTvN2OLn7MSyePC5UVjm1dWnxN3tecQyYWCx8yUK75JBKFfzNq3
         pVasaUsPkg1XDhdfzktb1LPGofqDJKoRfDTeGnYiN7cWXoD5XoDVHkBiS1nj7knF/zgZ
         0rUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=bVQCCcZ7wRgoLaUs8+TzQzh6H7LRKOSht1PXuezvyVA=;
        b=BigiIGMWnj3G6jYidoTrzbNMBn0Yao5x2kFhYCrBVk9ICrLDllve/Xf/C0Qig6a/Nc
         eat+vFg0Ck/m+Ax09OrhfcdVYRdsEzWzAQbyWXEeqDt2NZ+uK/t6YqOd83nJwrxwIlxk
         mYW2bge4vfMhf2e3MMmgmXBSDgi/I5YQx+gSnB4WBaRwKnDbQD6libd4Whe0Bg3U+Znm
         0MHcih7LL7tuIqXZgvLKEVwJSYbLKiaXB6guRB/tVI1O5t2dgDflSxTbXwsVNMUHmI/g
         qoKgPklXt+OiKjdtcN8dxksjG9VtRCIjlfvkw0OIPoKVOwRh3wkTOPZ7aIO/RLvehkut
         VhAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=LIRRdEIS;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=axboe@kernel.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bVQCCcZ7wRgoLaUs8+TzQzh6H7LRKOSht1PXuezvyVA=;
        b=VZwtsS/M+WgGdqJvLZAX/081fAu6vRCSg7sRk2ZG7xqt8QT3kuYFf8XY/NwwuTVqW3
         VL9bwd/Tg8RiNhHlZ7CSb65wnvJSVwbAUd8vMm8E2k3pns7Hz7Aty/SeR5uogLB2ZW95
         GRI4S2iV6njN7XOldTlBh5xIQK1vB6AjGRe0Mw32GA2qznmx57/JUO+Ppdb0RAQvRPYS
         3T6+zBfhWkOfwcdfdh5tYshNYasLNW3t0Uo353e1BZ2j+S6rsF7yygMGP/ZrF2dO1d23
         W9SW5QFW/s/DHib3Eq4q4fkBt5kCZj/soq6eB25ILVH2CAW5/cvWNvdUQC72riZmOVHE
         l/EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bVQCCcZ7wRgoLaUs8+TzQzh6H7LRKOSht1PXuezvyVA=;
        b=jRRErQYMpk5ajqKKDSdzh4cWP8zRi0ffprdrrcveixEEI8Mvem68aLaaLebcwpENCF
         Q52RgUieOmWdYzELrhVLHZw8mxsy2vyYut3XV345+KJhebA1hxfRoJfVpW4bXc44JMSQ
         acIUEzxyl1ofUAOqINLKNklIRTiv4oATdS0LBn+lktXRaoz06EPZDyW72MQ0L3fWMf6X
         natD4A6pUTx/schXnM4x0nDkFlpFvPzyqfE1QmObf4WSEtAZXoekZ5VEscj79ru3X87Z
         6I7lzwItMVnZNf08QKhE19ZyOJWgoztPjqdyKa3+aP53Wu00TJhTqAQDcNdJjItZktcD
         a6kA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531f3bYSX2atr7EwE52ytm50d1Wgi7aCDkg2/yIghyRtNRb+eFDE
	XCjTV3BmKgIgmabK7QvTEzs=
X-Google-Smtp-Source: ABdhPJycTMifH0BSFUUBsL6bZQUYfsYL6qIzwNdIMTfJfG147qfd762vsP+hpKX93R6+cJWsFAO4/Q==
X-Received: by 2002:a02:3541:: with SMTP id y1mr17207110jae.66.1607714963315;
        Fri, 11 Dec 2020 11:29:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:12d0:: with SMTP id v16ls1173785jas.11.gmail; Fri,
 11 Dec 2020 11:29:22 -0800 (PST)
X-Received: by 2002:a05:6638:5b2:: with SMTP id b18mr17395799jar.69.1607714962608;
        Fri, 11 Dec 2020 11:29:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607714962; cv=none;
        d=google.com; s=arc-20160816;
        b=bNt61KJABhaLwSg5XG+Jp03bT5EZd8FzrXaB8G08G4XEP3EqDZm+7gefHrK8tcwI7a
         K3JNSN7Stb9G/hCNCc1XxgM2ThsTfLi7zp5H1k5zGBBHvi1gUPzmb8qgxAC52TVVknhv
         qh8CwQU8rj5lEUst5nlMuSdnGXGieYGwdbQbEOlki1/1rracF7CCuaig7E7mTsP79+Nq
         3lzjrWA7Y8LSiwL7DWgVyv70E34YL+n0wNdyc19j+/B9v5cjKtQ81ylmOA0LNtYXJKpe
         224fKZGOm9AduBA9ep+X/wzcJ4SKZg2U3MFV2hW5N24O8pHyEL4EUrR1DRb/zuYSRYiu
         NNaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=mTNRkZN78nWE7RuNU9seNWtfXw5g6UF+iM4vGdKAeyU=;
        b=R8ODaROkVT8Bx1Kt5WLK6jM7i8rovKdS1wMvt1GUEn0ENOBZtXV46LUozXn9NmWNd5
         XM15Zxazz+TTm6+iH/arGNdeQCxSHBw3hfg49wT11MQHQkkrLbaKMDbtsrrUV8S14ZZj
         jlAEMIYuwBtyUkYdYLIZwfZCwUVsFAXGjw/OQWw+e0gU1WmziwT2VD/ex8vu9SpZrQcr
         e4+orkeDsknR1X9sLvPPmTt10QYa2IVSGyQi76hOxahKnCOR3TJZncm51d4XVHOh08vZ
         IlfsYJ4yYLmr7YoG4xwOPSZwqOgrkpRFuGLWFWJB0wFlOiODelsWAl1ysfmTheTy+Ao9
         PpFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=LIRRdEIS;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=axboe@kernel.dk
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id i5si546988ilu.5.2020.12.11.11.29.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 11:29:22 -0800 (PST)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id w5so7030938pgj.3
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 11:29:22 -0800 (PST)
X-Received: by 2002:a63:525c:: with SMTP id s28mr13527317pgl.134.1607714961862;
        Fri, 11 Dec 2020 11:29:21 -0800 (PST)
Received: from [192.168.1.134] ([66.219.217.173])
        by smtp.gmail.com with ESMTPSA id gk4sm7832691pjb.57.2020.12.11.11.29.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 11:29:21 -0800 (PST)
Subject: Re: [PATCH v2] block: drop dead assignments in loop_init()
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>, Christoph Hellwig <hch@lst.de>,
 linux-block@vger.kernel.org
Cc: Hannes Reinecke <hare@suse.de>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org
References: <20201211184604.27646-1-lukas.bulwahn@gmail.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <511d884a-ed95-5e9f-0fea-b859355a6c7f@kernel.dk>
Date: Fri, 11 Dec 2020 12:29:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201211184604.27646-1-lukas.bulwahn@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623
 header.b=LIRRdEIS;       spf=pass (google.com: domain of axboe@kernel.dk
 designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=axboe@kernel.dk
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

On 12/11/20 11:46 AM, Lukas Bulwahn wrote:
> Commit 8410d38c2552 ("loop: use __register_blkdev to allocate devices on
> demand") simplified loop_init(); so computing the range of the block region
> is not required anymore and can be dropped.
> 
> Drop dead assignments in loop_init().
> 
> As compilers will detect these unneeded assignments and optimize this,
> the resulting object code is identical before and after this change.
> 
> No functional change. No change in object code.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
> v1 -> v2:
>   - replaced if block with ternary operator after Julia's style comment
> 
> Christoph, please ack.
> 
> Jens, please pick this minor non-urgent clean-up patch on your
> block -next tree on top of Christoph's commit above.
> 
>  drivers/block/loop.c | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)
> 
> diff --git a/drivers/block/loop.c b/drivers/block/loop.c
> index d2ce1ddc192d..10c7c154c114 100644
> --- a/drivers/block/loop.c
> +++ b/drivers/block/loop.c
> @@ -2304,7 +2304,6 @@ MODULE_ALIAS("devname:loop-control");
>  static int __init loop_init(void)
>  {
>  	int i, nr;
> -	unsigned long range;
>  	struct loop_device *lo;
>  	int err;
>  
> @@ -2341,13 +2340,7 @@ static int __init loop_init(void)
>  	 * /dev/loop-control interface, or be instantiated by accessing
>  	 * a 'dead' device node.
>  	 */
> -	if (max_loop) {
> -		nr = max_loop;
> -		range = max_loop << part_shift;
> -	} else {
> -		nr = CONFIG_BLK_DEV_LOOP_MIN_COUNT;
> -		range = 1UL << MINORBITS;
> -	}
> +	nr = max_loop ? max_loop : CONFIG_BLK_DEV_LOOP_MIN_COUNT;

I greatly prefer an if/else to ternary, it's a lot easier to read imho.

-- 
Jens Axboe

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/511d884a-ed95-5e9f-0fea-b859355a6c7f%40kernel.dk.
