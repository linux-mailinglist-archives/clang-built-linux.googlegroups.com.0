Return-Path: <clang-built-linux+bncBC6JD5V23ENBBHVI3X5QKGQE3S3B7GQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 4917F2817D0
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Oct 2020 18:23:59 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id l22sf276050lji.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Oct 2020 09:23:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601655838; cv=pass;
        d=google.com; s=arc-20160816;
        b=msohpHsm59Mk/BXQAs/hgW5qxIgKNFzcWpN26x09kI+7vaMoFOJ4zLlwTnL8M0gvFv
         nOvtA3y9/mGqNb1mGKZCggC/xW2PfGOLs7QRv/E7X0H9hkf7dkNI4crJ4DmNyKg0hTQU
         imT0NV7apCx2x0eXkhPr8CsnCA5CsZK1P5Vg3IjtgayrwpLR8JGwuu3woIGOV112S6R8
         bEkqcrF4ZQ4kbb5tNmOPpB6mp839+w3oHw7QtF+UudriS3N78WB+98FxK1/lKqiq6I3l
         +Uzp5l78pSRoQdBnMbJaD/10VMKbWH5YBmJQApmxnExgTlNyT/a9YN8IYD0mBx/hjZWM
         dEYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=gRd6smPBZ7ExXgDbQmz7mEv0n7HDqj+O5cdtpLJBXtc=;
        b=CqXKWDyi2HewM3qD3L+rifScJ8P6babX7JkMBdA+JOMySdNQX02Bglm7OYZGu5wRT+
         JwWPujkClO67FMHhhfRG3G5eSntQnD97nGsnKCJeChhsNYNZqHH4wR2sGGxXys/Ha/o8
         gZ+frZAVf1SQbXS38kAl0Soh3s6U+fnaoHemYFHw4ufjsMKBwubszgViBnrFR1jrTwMd
         101orRYBm6JAcEKA46A/TSkwtkIwoSorJQ4rEklRPocpMoupytYJ/x1J3qQlh+SRX3A5
         90oRq2dwC1IaNrchxUbIPB9P6GTbLmVt8O02gyFA2KMtcnRnpMa9wS4b3t5iEXHEPnFh
         cKlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.66 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gRd6smPBZ7ExXgDbQmz7mEv0n7HDqj+O5cdtpLJBXtc=;
        b=mLw55USaEUuJum5GpOIIJhgLxHciJxWPYrp4uZ2zfzvX90NY/w1I3SwDqsWRxdD7H+
         B30mfs5cANOFwz/LDkbLk0HBUwnwKOVhJc2VaLuN+S5rlODrQlZAhNE++LFmqBALBAgO
         JhdiyW5PZ02QUa+DwzzSySK210BudUdkY4pZL1WdQiPH2f91CXMdHDCrlPUHNhfQeCgT
         hnzZS8oODg6jQv2nSz2WZ3+V3FU3fpKF4nlLEMO6FvUNLi6+zBlrYv/aRyeyZ5VMJbjc
         5182Mt9nIbbhNx/4e3Jm+TkmFy0le0vBIZlK3+hSL9GCeSDcAfNCNvs/NZjsfRNJEkWK
         GA1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gRd6smPBZ7ExXgDbQmz7mEv0n7HDqj+O5cdtpLJBXtc=;
        b=T2mDsjsJtS3k1J2P4y1lilyphETiZnUZVyao9PAllcEX4bzCJVpzB6uaW+EsgXbI31
         ba37XlJUfBsnAY4nqY+gUmZ6V3eg+1R8TZ9Pi8GpC3BGKfzPU1SO/MQTwQUAJLwco873
         I1Qv+PbRkkj1UkDLG6FMPe40sb5tkVYFxXxpdfrfH8ZVpDHtiuaeFHua3Lk+AhYl8Oom
         WijJznaLX1KQh5u+2PjYRv+1GHdHwm/j2Zw3lobdE7XlD1I7EgplnSQQ8gch6N92JQpg
         SqGzFH63XOJbTDLIUMj8zuwpbuDKOuIzGsi987dgCK5dwrMGend7HKdDT0P4a4huWLTI
         Bu4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5338WBzie2rd3VQaqDrcKMCwMVsSSsiCbyRCU74jIV4fFFAHgSmW
	69nahYyStLvs8hDVfNt4QhY=
X-Google-Smtp-Source: ABdhPJzmimoF1LNAqA6zRLEBodWF/9Ca9KCsjoP+cAImFhAKYE+9e2FiMAXrkw+PsBEdkbFD8c91Bg==
X-Received: by 2002:a19:8ad4:: with SMTP id m203mr1270845lfd.183.1601655838758;
        Fri, 02 Oct 2020 09:23:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:554:: with SMTP id 81ls1070131lff.1.gmail; Fri, 02 Oct
 2020 09:23:57 -0700 (PDT)
X-Received: by 2002:ac2:4301:: with SMTP id l1mr1077173lfh.389.1601655837566;
        Fri, 02 Oct 2020 09:23:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601655837; cv=none;
        d=google.com; s=arc-20160816;
        b=DgHM9CQvn+Tlm1EiCa2dnXB5PY+EVYnhPUBWr3BWtftQLvsbVQXDSfB2PwdhziC0t2
         QVpUUAfYNhVHmUQqDO64npOq5Od09YbguGRBm2LNKmFrZng5pgk78geOL/JNJGGJ30KI
         HyNcrJLBz+qbAJcfsztxnzAoKMsB/Tk/vXq9fvrctxajJGfPRhX6DAvhbn9k0E/STG9Z
         XwMCc40JTp7ifg8Bnlea8c/fa/e+MUiblNwj5gGacSBoD74nTaQJSo7v3+YSKjaX07nu
         RIVmBx/CP+ihj3gvyJPQlp9C43WNOGsfK/bAodBfG5cKSbxntFCx4qWpVV+wjvoffHM6
         XX7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=+MzJdC7AJYBNKP850flRQBqAg39526c7mEcoDXa1vc8=;
        b=am0ncc5TUWoYhg8lpFVSlp7w9cLscgJm7nEruyL5dKpXHHL0kOWAp/hU873AfUVBa1
         9RjodTya+lr013hveFhro0rrQbpX1QeA83wRjCaq9i2yfLG66HRIbI+8LPxH53H3AMLe
         MmXfZ3Ey63pSu2sAWZ6iLMzuzwPwaQBh70u6Mo++/klzaVN10A+NihFTvPjY1Bi7wJ5B
         2mynykhQ0m7UuTSs6z4QF+uwSwtR1vL/nZZTrV/OZXSBdpmr5UDtMM3CPTXo4iAP0f9p
         xWjYy33lb642oeL5oEBAhenaHrNavkEUXIpCgdR3x6THIWM8pSz5gQu5b3U8t5xhcEX5
         BAAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.66 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com. [209.85.208.66])
        by gmr-mx.google.com with ESMTPS id 143si37208lff.10.2020.10.02.09.23.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 09:23:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.66 as permitted sender) client-ip=209.85.208.66;
Received: by mail-ed1-f66.google.com with SMTP id b12so2243935edz.11
        for <clang-built-linux@googlegroups.com>; Fri, 02 Oct 2020 09:23:57 -0700 (PDT)
X-Received: by 2002:aa7:d15a:: with SMTP id r26mr3222326edo.181.1601655837011;
        Fri, 02 Oct 2020 09:23:57 -0700 (PDT)
Received: from kozik-lap ([194.230.155.194])
        by smtp.googlemail.com with ESMTPSA id i7sm1604495ejo.22.2020.10.02.09.23.55
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 02 Oct 2020 09:23:56 -0700 (PDT)
Date: Fri, 2 Oct 2020 18:23:53 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	Hans de Goede <hdegoede@redhat.com>,
	Bastien Nocera <hadess@hadess.net>, Sangwon Jee <jeesw@melfas.com>,
	Eugen Hristev <eugen.hristev@microchip.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org, platform-driver-x86@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3 01/27] Input: Simplify with dev_err_probe()
Message-ID: <20201002162353.GA5870@kozik-lap>
References: <20200827185829.30096-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.66 as
 permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Aug 27, 2020 at 08:58:02PM +0200, Krzysztof Kozlowski wrote:
> Hi,
> 
> Changes since v2:
> 1. Add review tags,
> 2. Fixes after review (see individual patches).
> 3. Two new patches - 26 and 27.
> 
> 

Hi Dmitry,

Any comments here? Some of these nicely simplify the code or remove some
lines.

Best regards,
Krzysztof

> Best regards,
> Krzysztof
> 
> 
> 
> Krzysztof Kozlowski (27):
>   Input: gpio_keys_polled - Simplify with dev_err_probe()
>   Input: gpio-vibra - Simplify with dev_err_probe()
>   Input: pwm-beeper - Simplify with dev_err_probe()
>   Input: pwm-vibra - Simplify with dev_err_probe()
>   Input: rotary_encoder - Simplify with dev_err_probe()
>   Input: elan_i2c - Simplify with dev_err_probe()
>   Input: bu21013_ts - Simplify with dev_err_probe()
>   Input: bu21029_ts - Simplify with dev_err_probe()
>   Input: chipone_icn8318 - Simplify with dev_err_probe()
>   Input: cy8ctma140 - Simplify with dev_err_probe()
>   Input: edf-ft5x06 - Simplify with dev_err_probe()
>   Input: ektf2127 - Simplify with dev_err_probe()
>   Input: elants_i2c - Simplify with dev_err_probe()
>   Input: goodix - Simplify with dev_err_probe()
>   Input: melfas_mip4 - Simplify with dev_err_probe()
>   Input: pixcir_i2c_ts - Simplify with dev_err_probe()
>   Input: raydium_i2c_ts - Simplify with dev_err_probe()
>   Input: resistive-adc-touch - Simplify with dev_err_probe()
>   Input: silead - Simplify with dev_err_probe()
>   Input: sis_i2c - Simplify with dev_err_probe()
>   Input: surface3_spi - Simplify with dev_err_probe()
>   Input: sx8643 - Simplify with dev_err_probe()
>   Input: bcm-keypad - Simplify with dev_err_probe()
>   gpio: Add devm_fwnode_gpiod_get_optional() helpers
>   Input: gpio_keys - Simplify with dev_err_probe()
>   Input: bu21013_ts - Use local 'client->dev' variable in probe()
>   Input: bu21029_ts - Use local 'client->dev' variable in probe()
> 
>  drivers/gpio/gpiolib-devres.c                 | 71 ++++++++++++++++++
>  drivers/input/keyboard/bcm-keypad.c           | 14 ++--
>  drivers/input/keyboard/gpio_keys.c            | 25 +++----
>  drivers/input/keyboard/gpio_keys_polled.c     |  8 +--
>  drivers/input/misc/gpio-vibra.c               | 20 ++----
>  drivers/input/misc/pwm-beeper.c               | 19 ++---
>  drivers/input/misc/pwm-vibra.c                | 20 ++----
>  drivers/input/misc/rotary_encoder.c           |  8 +--
>  drivers/input/mouse/elan_i2c_core.c           |  9 +--
>  drivers/input/touchscreen/bu21013_ts.c        | 72 ++++++++-----------
>  drivers/input/touchscreen/bu21029_ts.c        | 53 ++++++--------
>  drivers/input/touchscreen/chipone_icn8318.c   |  8 +--
>  drivers/input/touchscreen/cy8ctma140.c        |  8 +--
>  drivers/input/touchscreen/edt-ft5x06.c        | 10 +--
>  drivers/input/touchscreen/ektf2127.c          |  8 +--
>  drivers/input/touchscreen/elants_i2c.c        | 22 ++----
>  drivers/input/touchscreen/goodix.c            | 40 +++--------
>  drivers/input/touchscreen/melfas_mip4.c       |  9 +--
>  drivers/input/touchscreen/pixcir_i2c_ts.c     | 38 ++++------
>  drivers/input/touchscreen/raydium_i2c_ts.c    | 30 +++-----
>  .../input/touchscreen/resistive-adc-touch.c   |  8 +--
>  drivers/input/touchscreen/silead.c            |  8 +--
>  drivers/input/touchscreen/sis_i2c.c           | 20 ++----
>  drivers/input/touchscreen/surface3_spi.c      | 13 +---
>  drivers/input/touchscreen/sx8654.c            | 10 +--
>  include/linux/gpio/consumer.h                 | 30 ++++++++
>  26 files changed, 253 insertions(+), 328 deletions(-)
> 
> -- 
> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201002162353.GA5870%40kozik-lap.
