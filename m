Return-Path: <clang-built-linux+bncBC6JD5V23ENBBUF3R2FAMGQERK5DWSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 093C540EAEE
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Sep 2021 21:41:06 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id s10-20020a056808008a00b00268c82cc7a0sf31294522oic.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Sep 2021 12:41:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631821265; cv=pass;
        d=google.com; s=arc-20160816;
        b=F91ZcbRcb1tl1P6orqcKslOp/nnX8/dK9Fe12jE4z4hFRYqkdEhWCvdXB3qj7MBLDa
         4jeFGQYeHTywaDuyrRS/IM9DL5/HI+bD0sGuPXVfWidNsfw4drK8mQfnpYwVGVQ5dftt
         Ycyqu4sEYY4n+st6VfFlonCRKYgqGNlZmc/a2llUO9yGzYimXPc967F0/W1RRTrCR1/9
         3H5DyNLZoYns6L9Fc+lFbLfn87BfrdE+CmwfG35f4yYxK777WxmMUAZQMtJIjFbwZDLB
         JzgmE7S6TEWCmSqaq08YIo9afiO+9E2aeUK0y/xuV4dyI4/qEbIuQlc5/z0u/lI3siCG
         uqJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=9jaMrMPvawh1c5fdYQd90NiINAcjSEYstEvuLt5SX+o=;
        b=JStF/05TAVXXXpHbxHYIYHYapbyf1r3ji5lWs/qex3t3+HkJ4kQPUKKY0I2Jl1SBkE
         xMjV0eW3GAGBSA7qMLJ0dAiygwgjIZFDOjLxDxTRxJlnf1wYZvEg9tGqbklXGYerFFBz
         cH86/faqFyYDLOXtpx2MYMP7HVHV95fTP0HIb0XPKDeRssP1YuKbgcW6xtw/5d7pBvK7
         YlIcq3j859y8x97V+bzzll4/tyl5FCqCBN4r2oQiE+ffhOw1QXLCK+DWAfbpBRl4aHDr
         682bIESLg3HEaXK7W0ey/Oh2FI6bfvVrBScUGfZHht/RY9/VelaKC1vGYsh7VOdMf5sV
         vH/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=o8SNT7EN;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9jaMrMPvawh1c5fdYQd90NiINAcjSEYstEvuLt5SX+o=;
        b=EEEYG7afa0hX/ohmmI9OIPgEH7upThqAeJhxsr/IEXRgR7zo2toa9b18g/z0lLb18i
         40Kc7UTUjRiJf2DrEeTDC4NyKlJ8UA9txVZg4zvoyF9nYkRjnqBN4uN6J5MS8ZY5H92A
         thmOMZVETymhwNxsJF/Xh+qXh43hc5XE3kt4kprbfwkAxcniqcIHJX/DeJJLHzv6pKX8
         Kz6uT0wEH26E+wn9dHaDa8xZbzAtPXSSPGPztodmpMYYara48Mp3ylIdArI9OPn5CeG/
         p6yrNbfDtyC0dx262jrR5yi1VWE9OIqR+tXFtjaBEVFR50QgSniGWNWIguQpq4z4RsN4
         g0Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9jaMrMPvawh1c5fdYQd90NiINAcjSEYstEvuLt5SX+o=;
        b=MpRV6AQBS8DPDjVsrjjQijVvLsb5DlRX85CbcY9UL98GuxE3WY7Zf3peEkQ/iClsiy
         N3S4eslftXjRjG4uGEM0I3dfT/U/aIWsewXYzbf6F7urbvBAMYk5qsivZJWVo/e67mCx
         SJlGu5XzhZJP+bmLcRCOHeEEKzQ8LTPHorKZwL4TL1BMGntFAOVZUB3ld5VR6QbN/s69
         TG9PJTglnFPpCI+e4ryvMxFa4tUMIFSb1i6o69pjq7U/IPVaELYaKHWRCFo7mu4tRSyO
         B4W8OVvDak7ebCkxuOTWFnqG8g1UhJlnIsYtOnccTmYDJiYpUXqd3GDEIHX7VCYxis5O
         +F+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532n/WKVmWz7CeAEi7wgPgy5fb/0L2De0VeHvIlh5o6xv6uKqrVm
	p1Vsxw2cH3qlGeUnAm7Ysro=
X-Google-Smtp-Source: ABdhPJzp9i6UxsDDuwAHF2Gdlixo3DybH+kWJT+1/HPkUlGfeG9aCUB7bay3wo4CK9cSrTq0A8rZQQ==
X-Received: by 2002:a05:6808:11c3:: with SMTP id p3mr10800193oiv.23.1631821264784;
        Thu, 16 Sep 2021 12:41:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1208:: with SMTP id 8ls2484507ois.10.gmail; Thu, 16 Sep
 2021 12:41:04 -0700 (PDT)
X-Received: by 2002:a05:6808:144c:: with SMTP id x12mr1199188oiv.144.1631821264400;
        Thu, 16 Sep 2021 12:41:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631821264; cv=none;
        d=google.com; s=arc-20160816;
        b=zhWqhEPLca5NHfUMKSA7v8CTlrOcPf/KZTr+9blMUL9BtK2NaxSJAxGIQd62eZxsUk
         mxI86dw6bS+6PoITt9XLy+ckx+d66pIN7i7SWtsbYu6c18wsRl/Wqr+kEc5gD6qH3W6d
         UP78shCKJuXSuUkqY8CxGHZ/OXKWTA3fg+c85/CdBKgkBKC8uQvZgJh+BlNX3QRB2YVj
         vZXL4eoNI05nGnqv0Le5M7cS2ZXqXoBxjRpy0qf9uCDY/KpOzl5ClbIW13EUjvAwkuSN
         PJ3K9AkIzQVatEUn0RMk7NRvtCzUYQbpj4rdjHQhsxQX59o7ZrU8FLdb7x8kIf0ksQks
         LJbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=u4b81XawQ+I/8LXScsO0xmjBruhZzDZfWaqH9rq+v1U=;
        b=eSu6Mjsc4ZLiniTbvS/W4IMQb3b7GLg5XN6wkaW3kWpIYQZtwGszvqKbvWgfS5SVG1
         o2geSw5EmhaSSw+YQgqOHyB4yUDZoMTBwuL28uGVYnsGsapN0TcIoivZ38ItqWMFTp2h
         lnrkjL+j8NGsijBZEmnQAaeq4J2YngYj1LEPbAkzLU5g8Z0l44Lgc3ynFGtUBNpWn4uF
         mWf8IQwjinRNZiqHI6o9ul+A5v5yiVc8nkas2xVnYsQb1VK4TK4z5yIM7La8qnmdEBDK
         FhbMgm3Rmls4cYBxEOQtXLREr64qW+KzxUK+eMhe4vxIm49C57A4du1wYWI047RjIo8x
         skPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=o8SNT7EN;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id bf14si453301oib.0.2021.09.16.12.41.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Sep 2021 12:41:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A609B61216
	for <clang-built-linux@googlegroups.com>; Thu, 16 Sep 2021 19:41:03 +0000 (UTC)
Received: by mail-pf1-f179.google.com with SMTP id j6so6942791pfa.4
        for <clang-built-linux@googlegroups.com>; Thu, 16 Sep 2021 12:41:03 -0700 (PDT)
X-Received: by 2002:a63:841:: with SMTP id 62mr6376041pgi.354.1631821263269;
 Thu, 16 Sep 2021 12:41:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200827185829.30096-1-krzk@kernel.org> <20201002162353.GA5870@kozik-lap>
In-Reply-To: <20201002162353.GA5870@kozik-lap>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Thu, 16 Sep 2021 21:40:51 +0200
X-Gmail-Original-Message-ID: <CAJKOXPdOvmuGJCF9Edw8zFfOY7r+QFc23OAgjoXtHxN65Ovh7A@mail.gmail.com>
Message-ID: <CAJKOXPdOvmuGJCF9Edw8zFfOY7r+QFc23OAgjoXtHxN65Ovh7A@mail.gmail.com>
Subject: Re: [PATCH v3 01/27] Input: Simplify with dev_err_probe()
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>, Hans de Goede <hdegoede@redhat.com>, 
	Bastien Nocera <hadess@hadess.net>, Sangwon Jee <jeesw@melfas.com>, 
	Eugen Hristev <eugen.hristev@microchip.com>, Andy Shevchenko <andy.shevchenko@gmail.com>, 
	linux-gpio@vger.kernel.org, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-input@vger.kernel.org, 
	platform-driver-x86@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=o8SNT7EN;       spf=pass
 (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=krzk@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, 2 Oct 2020 at 18:23, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Thu, Aug 27, 2020 at 08:58:02PM +0200, Krzysztof Kozlowski wrote:
> > Hi,
> >
> > Changes since v2:
> > 1. Add review tags,
> > 2. Fixes after review (see individual patches).
> > 3. Two new patches - 26 and 27.
> >
> >
>
> Hi Dmitry,
>
> Any comments here? Some of these nicely simplify the code or remove some
> lines.

Hi Dmitry,

You never shared your thoughts about this simplification. Some of
these could be redundant with Rob's work:
https://lore.kernel.org/lkml/CAL_Jsq+ajm5aiAJfQdS2+2DO1ynBDHWha_7TsA4u-2qwd87y6g@mail.gmail.com/
but I am not sure if it was merged.

On the other hand there are here also few other changes like:
>   gpio: Add devm_fwnode_gpiod_get_optional() helpers
>   Input: gpio_keys - Simplify with dev_err_probe()
which does:
8 insertions(+), 17 deletions(-)

and these:
>   Input: bu21013_ts - Use local 'client->dev' variable in probe()
>   Input: bu21029_ts - Use local 'client->dev' variable in probe()

Any comments?

Best regards,
Krzysztof



> > Krzysztof Kozlowski (27):
> >   Input: gpio_keys_polled - Simplify with dev_err_probe()
> >   Input: gpio-vibra - Simplify with dev_err_probe()
> >   Input: pwm-beeper - Simplify with dev_err_probe()
> >   Input: pwm-vibra - Simplify with dev_err_probe()
> >   Input: rotary_encoder - Simplify with dev_err_probe()
> >   Input: elan_i2c - Simplify with dev_err_probe()
> >   Input: bu21013_ts - Simplify with dev_err_probe()
> >   Input: bu21029_ts - Simplify with dev_err_probe()
> >   Input: chipone_icn8318 - Simplify with dev_err_probe()
> >   Input: cy8ctma140 - Simplify with dev_err_probe()
> >   Input: edf-ft5x06 - Simplify with dev_err_probe()
> >   Input: ektf2127 - Simplify with dev_err_probe()
> >   Input: elants_i2c - Simplify with dev_err_probe()
> >   Input: goodix - Simplify with dev_err_probe()
> >   Input: melfas_mip4 - Simplify with dev_err_probe()
> >   Input: pixcir_i2c_ts - Simplify with dev_err_probe()
> >   Input: raydium_i2c_ts - Simplify with dev_err_probe()
> >   Input: resistive-adc-touch - Simplify with dev_err_probe()
> >   Input: silead - Simplify with dev_err_probe()
> >   Input: sis_i2c - Simplify with dev_err_probe()
> >   Input: surface3_spi - Simplify with dev_err_probe()
> >   Input: sx8643 - Simplify with dev_err_probe()
> >   Input: bcm-keypad - Simplify with dev_err_probe()
> >   gpio: Add devm_fwnode_gpiod_get_optional() helpers
> >   Input: gpio_keys - Simplify with dev_err_probe()
> >   Input: bu21013_ts - Use local 'client->dev' variable in probe()
> >   Input: bu21029_ts - Use local 'client->dev' variable in probe()
> >
> >  drivers/gpio/gpiolib-devres.c                 | 71 ++++++++++++++++++
> >  drivers/input/keyboard/bcm-keypad.c           | 14 ++--
> >  drivers/input/keyboard/gpio_keys.c            | 25 +++----
> >  drivers/input/keyboard/gpio_keys_polled.c     |  8 +--
> >  drivers/input/misc/gpio-vibra.c               | 20 ++----
> >  drivers/input/misc/pwm-beeper.c               | 19 ++---
> >  drivers/input/misc/pwm-vibra.c                | 20 ++----
> >  drivers/input/misc/rotary_encoder.c           |  8 +--
> >  drivers/input/mouse/elan_i2c_core.c           |  9 +--
> >  drivers/input/touchscreen/bu21013_ts.c        | 72 ++++++++-----------
> >  drivers/input/touchscreen/bu21029_ts.c        | 53 ++++++--------
> >  drivers/input/touchscreen/chipone_icn8318.c   |  8 +--
> >  drivers/input/touchscreen/cy8ctma140.c        |  8 +--
> >  drivers/input/touchscreen/edt-ft5x06.c        | 10 +--
> >  drivers/input/touchscreen/ektf2127.c          |  8 +--
> >  drivers/input/touchscreen/elants_i2c.c        | 22 ++----
> >  drivers/input/touchscreen/goodix.c            | 40 +++--------
> >  drivers/input/touchscreen/melfas_mip4.c       |  9 +--
> >  drivers/input/touchscreen/pixcir_i2c_ts.c     | 38 ++++------
> >  drivers/input/touchscreen/raydium_i2c_ts.c    | 30 +++-----
> >  .../input/touchscreen/resistive-adc-touch.c   |  8 +--
> >  drivers/input/touchscreen/silead.c            |  8 +--
> >  drivers/input/touchscreen/sis_i2c.c           | 20 ++----
> >  drivers/input/touchscreen/surface3_spi.c      | 13 +---
> >  drivers/input/touchscreen/sx8654.c            | 10 +--
> >  include/linux/gpio/consumer.h                 | 30 ++++++++
> >  26 files changed, 253 insertions(+), 328 deletions(-)
> >
> > --
> > 2.17.1
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJKOXPdOvmuGJCF9Edw8zFfOY7r%2BQFc23OAgjoXtHxN65Ovh7A%40mail.gmail.com.
