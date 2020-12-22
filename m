Return-Path: <clang-built-linux+bncBCDLTY6MVIERBQGIQX7QKGQESOOEDMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6D92E04A0
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 04:13:06 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id f27sf8849746qkh.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 19:13:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608606785; cv=pass;
        d=google.com; s=arc-20160816;
        b=FJafQCYWBe5zDV2seiBfCPayK3BPgdmH9yMUxAqBYZALOcobm9lRyosS6BaRNaR69i
         afKZkfiT11tq/S03UqZq8TcT+p2YBfcNh8RqzU/ED7mNkv536l6XPblK6sNOkbrU9xVc
         wyxjZLxpczNOV7CJH6kF6d3ZMO4TwR2ocj20vuIMunh4+CvkFTYgr6GtuLjwzsSd+6hs
         /I4HRF4nzMLrRvWeULQ+GO0hyfOsQaEFP7IDWViBHrPxbalPwGS5mHxvq13DBxlGNNBv
         aI2Vfe4Fb+6x+KZLwy+FrzH5D2bFYg/LgjFBqfuy7e0E6F0g0yFhh6+iuRBL/D4m/G7X
         +yHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=YYcrbMZ80yf6FQTfj7yACP8U0mXvTPAUNg24POJVLak=;
        b=N0/Jmo95zkqTcOjk8dgO4GdSFiLK245xAipqXWVF1kkrgb5jaD6WQH+YaoUX6XyDSj
         dKfCLO835yze2gKcdEDcZ1XRJ9F+JKCqyNJiIYjgHyBXt7EzNZH7zu1B52zAwoy0P3xX
         Q5oZcpqFvDtvA/gGaEB55WzrhaWvH0vXFwyRjqmrJb2l6E/JaDRhxHvI1gkzNzboQ2ah
         12pVSbS/Al20NreYMLI+aFXPiMbCLXq0+UWCsLDADisbN9kmY2xayfZWusAYlHZA2MQP
         Z6hxKC2/Lv8mk0OsS4uBnP+YU9LgAqJZwsFCsb1rbMDFVJdXzm+bDU3+q+6VPWIR7lXI
         pWSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b=DrCYH2SJ;
       spf=pass (google.com: domain of npitre@baylibre.com designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=npitre@baylibre.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YYcrbMZ80yf6FQTfj7yACP8U0mXvTPAUNg24POJVLak=;
        b=JMDXMP/hcqe2gjRghEnWJ8thHG+g5NK/gq1U7rzjRnBiYq01uTbsguHP8h+jj8vRxO
         CFgyYrmacSrIKHj6Wft/gN0yAGLM0pHkB6GBx7CEBON2ekKNOB+4Wp2WBD1qEC5Bjfgj
         VT0GR9rfd+DHCrcikGoyyD/8QLndCfwV21k8rC+wNerHbfBxH7b8U6AIHdJCG7WS2kiA
         oASyyCjJs8dGAKlOjb7K+/oJ7PshKoEha1ffdoTWOUAs7r/fN/cXe2vadIjTK+pVvbzC
         B1gpl12NOPvbZZe1Hty3ewHufigOdcDCQtLrbtBSl3sH5K5EhbLa0Gj2DAMt4Zw/fURn
         NaQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YYcrbMZ80yf6FQTfj7yACP8U0mXvTPAUNg24POJVLak=;
        b=GMs/5UCqsINCR1axJCG+UU4u2SWkJ4+xOM/9YdAV5ReNnpUfEiQDUTunPRqBMSxGsx
         g4ftVrHakIRS2WDcL3/g5GuPli56UDVD+UTfu6sE5wtcAHbBEs8HHLznWfyq926Ybq9h
         UHQs465m4YfEboz2NlldUXeeE74vzRnLSzTA5hNuUu4Kgz9EjZZIAMQuZWkBQpF51BiB
         LT3N5SukqubJWrty9/aQnz3drORKZdgDqPIKJDji2mM77YVxzmx9vqIed9WnjzMyfuLC
         ZjEawBh3IqqPSedddj2a4h6G/qUXSj/0Tw+qzyNY8EdW0ylPMoepKUPJnb0Q7k4YAGYa
         OVbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532B6C5fNePYn+ZPZOv5OqhIMJBNRn6M/FqMMh+q6Ov2DQAR+VYD
	wCjjYcKVzZSBWM1MIx0kZwk=
X-Google-Smtp-Source: ABdhPJzD5ejgUat9TAb6CTvOPAOTFh7XpRPU8U4oE72pNki5gXWvXaP53BF/uHrwT1QO1K4PgZNS2g==
X-Received: by 2002:a05:622a:354:: with SMTP id r20mr19258084qtw.317.1608606785111;
        Mon, 21 Dec 2020 19:13:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:c001:: with SMTP id u1ls20336764qkk.1.gmail; Mon, 21 Dec
 2020 19:13:04 -0800 (PST)
X-Received: by 2002:a37:9d0e:: with SMTP id g14mr19805238qke.125.1608606784628;
        Mon, 21 Dec 2020 19:13:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608606784; cv=none;
        d=google.com; s=arc-20160816;
        b=MBDF9oKO4o9hy1cwCptHrun7LE5fiOo9FT2QtyunMpXq4I0NKx36hiyPU6C4evVsz3
         y/jm9O+/9TaqVADHy0rkFqxcHAJf3oBviwCxf8fA4y6T0842QeHdRV0yaX/RNzdOF/DC
         wSpf7OrL3AgZAoIWGzWW+Bms1DqTiE9EqxfLIBQ0HqbQ/LEkIrc6Y8Uj4wkTG64/FhdJ
         mKn1Y8H4ZsnUcjoWEHG173LHlxPPA7BCzYsVbbgkrx3k5L2ZmbkssSqe8LX1ug0h107U
         6eXetcyWkMdjz0RY82jiswzS4g1RFNYY/Q/dF+OV8IzkHZ+dVLqKfILSIZDf6+O1qlIn
         WiVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:dkim-signature;
        bh=m05zgiVp7vEyQC1XJrHfLcHgUliHm1rlFtZRMu57ZTY=;
        b=zs/vDvGOKB7CqAunqSLvwKULGeAcS1coF3eXdkj9DQzGkAw4bz4RuK6Jw+jQNdojE2
         8/5Ca/pCwiahlUngvWTALNm1I5MgYMb24+urXtctvZGq5OiACddVbHCyb/qLZP92IRYH
         RwWySYTytoAXQ9zRzZUXck0r4S3pefW29auJPGXFfI1403s6ohh4gLbLJJp0kFh8MQGz
         CXSDgr5Y97A9v1IGIqStjvW0dj5xN23EqQTASXNiOo0NodOlGEQ8pDhPvEgzP08864Wp
         iCZoOTe8lTi0ciGqeUJ4U/X/TKxzlIsEDv6qj6E4nYl7bDfbG52l7LVOzZUvHA/K2XjK
         ovyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b=DrCYH2SJ;
       spf=pass (google.com: domain of npitre@baylibre.com designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=npitre@baylibre.com
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com. [2607:f8b0:4864:20::72f])
        by gmr-mx.google.com with ESMTPS id f21si1702203qtx.5.2020.12.21.19.13.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Dec 2020 19:13:04 -0800 (PST)
Received-SPF: pass (google.com: domain of npitre@baylibre.com designates 2607:f8b0:4864:20::72f as permitted sender) client-ip=2607:f8b0:4864:20::72f;
Received: by mail-qk1-x72f.google.com with SMTP id v126so6323037qkd.11
        for <clang-built-linux@googlegroups.com>; Mon, 21 Dec 2020 19:13:04 -0800 (PST)
X-Received: by 2002:a37:a950:: with SMTP id s77mr20614114qke.122.1608606784306;
        Mon, 21 Dec 2020 19:13:04 -0800 (PST)
Received: from xanadu.home (modemcable076.50-203-24.mc.videotron.ca. [24.203.50.76])
        by smtp.gmail.com with ESMTPSA id d84sm3976584qke.47.2020.12.21.19.13.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Dec 2020 19:13:03 -0800 (PST)
Date: Mon, 21 Dec 2020 22:13:02 -0500 (EST)
From: Nicolas Pitre <npitre@baylibre.com>
To: Nathan Chancellor <natechancellor@gmail.com>
cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, 
    Nick Desaulniers <ndesaulniers@google.com>, linux-i3c@lists.infradead.org, 
    linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] i3c/master/mipi-i3c-hci: Fix position of __maybe_unused
 in i3c_hci_of_match
In-Reply-To: <20201222025931.3043480-1-natechancellor@gmail.com>
Message-ID: <4q7rono-ssrr-r53-2796-o6924496p0qo@onlyvoer.pbz>
References: <20201222025931.3043480-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: npitre@baylibre.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623
 header.b=DrCYH2SJ;       spf=pass (google.com: domain of npitre@baylibre.com
 designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=npitre@baylibre.com
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

On Mon, 21 Dec 2020, Nathan Chancellor wrote:

> Clang warns:
> 
>  ../drivers/i3c/master/mipi-i3c-hci/core.c:780:21: warning: attribute
>  declaration must precede definition [-Wignored-attributes]
>  static const struct __maybe_unused of_device_id i3c_hci_of_match[] = {
>                      ^
>  ../include/linux/compiler_attributes.h:267:56: note: expanded from macro
>  '__maybe_unused'
>  #define __maybe_unused                  __attribute__((__unused__))
>                                                         ^
>  ../include/linux/mod_devicetable.h:262:8: note: previous definition is
>  here
>  struct of_device_id {
>         ^
> 1 warning generated.
> 
> 'struct of_device_id' should not be split, as it is a type. Move the
> __maybe_unused attribute after the static and const qualifiers so that
> there are no warnings about this variable, period.
> 
> Fixes: 95393f3e07ab ("i3c/master/mipi-i3c-hci: quiet maybe-unused variable warning")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1221
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Acked-by: Nicolas Pitre <npitre@baylibre.com>

> ---
>  drivers/i3c/master/mipi-i3c-hci/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/i3c/master/mipi-i3c-hci/core.c b/drivers/i3c/master/mipi-i3c-hci/core.c
> index 500abd27fb22..1b73647cc3b1 100644
> --- a/drivers/i3c/master/mipi-i3c-hci/core.c
> +++ b/drivers/i3c/master/mipi-i3c-hci/core.c
> @@ -777,7 +777,7 @@ static int i3c_hci_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> -static const struct __maybe_unused of_device_id i3c_hci_of_match[] = {
> +static const __maybe_unused struct of_device_id i3c_hci_of_match[] = {
>  	{ .compatible = "mipi-i3c-hci", },
>  	{},
>  };
> 
> base-commit: 95393f3e07ab53855b91881692a4a5b52dcdc03c
> -- 
> 2.30.0.rc1
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4q7rono-ssrr-r53-2796-o6924496p0qo%40onlyvoer.pbz.
