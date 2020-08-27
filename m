Return-Path: <clang-built-linux+bncBCT4VV5O2QKBB3UZUD5AKGQE7DG5OHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id A0CD8254EF1
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 21:43:43 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id u26sf3237782oic.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 12:43:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598557422; cv=pass;
        d=google.com; s=arc-20160816;
        b=w3bLkHHJ0DDVNNFob8CLZzTHMKIce3DJYPEVfyr6QTdvHsLpOGVMTR1L6xqz4qpidF
         4divL3vxA8nXunzgBD2yFpte3SMd9LDh2sVzm91WLsvQrbMh+wdgRVdWLE2h0dLzOvuY
         9jiWfXwoJp3wnQPYsEc4LBJRB0r+Vsx1NJolIDrjZ8ko7KRUFgvtAR8zv6tgX5qfwejC
         uGXamniboqxIn9i/pitYiEZ5RrO0/yt6rqLuzCx5EXM9putDZLmo1QwEQTtTqevN2oTS
         B+c8vMi3KiZeNQYNGUDZNhuDJ535hP4QBxs3gnDNrFgx+eW/s6KqCJMUY4M0q5byygYi
         LaRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=XPahiiyJtkERGpkuyTpL628+uYIk6SZ53Arj48btP4I=;
        b=IE8tQ4DHy/K5r4HL1mIGzH6FYUnVhdjfxwDmcNh8nVIUU7Zxv5cEqvo2NVJ2fjjlz9
         Ut6FfBBytBxpokeKfA2TrjA6hU4nMM1vTU5wNKQJZaYbWV2tXgZzZ7v8ZVPeXyX4RGQJ
         PBmd90Ln2RvqSCAGLJkFlz5QT/8U3P0YVvJhqQMhum1fDqLcTDonIsHx04tfY55jyrCP
         0D2MH8Gz9Kam9bUqjMBCbEzlLSJhBnEaJUDY/OS7t/znyRyZV5JDBZXDpTQaGRpTUsIg
         iWbZ3FQ2KjjKU2imWPjmwm9XystSo/sTv1MlJRn+F5b43FdN3XmKKNcrNxn46Pj7VgZ3
         NYlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fjahp8++;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XPahiiyJtkERGpkuyTpL628+uYIk6SZ53Arj48btP4I=;
        b=Gh2G/Zv7btpzLOx0ytTIqv5dkU8D/JzkZg6qzVvQJKDpo7JimS930GRvLDLBY4eJaZ
         v9+3QMb2mU8N6gC3GK748Jnx3THRMLw9ylfEcDMSi9bao8mbpfYW8BCgOQrS+Kb/YbuZ
         19QzxqhbV34n5GriocawFnZQb/98iNsonhEj/pENqiOoKDptW9lFFRgyGNa9iD3Ct//E
         xgaJB+9NMxlU5Law2AuiEArjaqNpGbL722WtR4Hv7292cMi/qxLDhrsTZjX/xu4NnR8U
         kpvexkYACHu42behgnby9Uz/nsSsND3nfd/HJ2kaUQxKkvYdyaO0eqVBpx8v40643c1M
         GoEw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XPahiiyJtkERGpkuyTpL628+uYIk6SZ53Arj48btP4I=;
        b=hR0wH3r3ai+6jTfX+7DDZVhYBewjDrggsQvppkS2Jpj8933LxGoAO1NwGJSkABhgdm
         ge93Z33H7GkeuTxSVyyH8LbWoNkEJ+srAtCS8yTworjmvI+ZK9nvqEqQ73kynSCcg0cV
         mpa8Cud5r4DCfxrrSY4TJM9eBPlA7Nq2XeA9R+vByK5MdLOSM13Gd+aYUZTD4Hb1DkFO
         YiCRwVDvWEPY399Mh1qVYMg48GmCKwr7aEMm4/EhtK9OzmBUtEGos8r/s+26t5p1kuPT
         m1syY9l3mO3G4fENaZMTT4w/Fkwb8zklAX/IF8v8f1lxWFDFevGTyAYy9ZdHtIkTrQ2G
         eR9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XPahiiyJtkERGpkuyTpL628+uYIk6SZ53Arj48btP4I=;
        b=LWtv6d71ghkwradGxfrvS0pkJk6ANJ7zIYxZoj31lVN2IzALvS3qy4sUNAjeN5qUBO
         99ZeZrl+SYQCihpNAJgVjYYma1c59UJJaddAMRO/SqY8FLsQhzBxnsEndFsXoG4RoOtN
         y9HDVwxPl53792hm2B7xjXvGpr/uujwYQVg/++Ol33AofDYJm+EG2ZCMzksizXg/EGYv
         uUeDY8TcL8YsU0w/tO4Upiv766jYNUzla6nOkk6L9781ajFcf4LHqHjFMBZCpJ9xl6h8
         wmop/zkCqzsuGUYCgBcl084oYhPtPfWS+peG37e/kQkFyrDQoeU1EPBMsT/FqcbDJ0OY
         g5JQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Q6uAyxTxTu4CkrQhji7G/WycEAwFktmVwDtubY7jKSs6gG0xo
	kMp3YBJdefNIDG/cgBG3jnQ=
X-Google-Smtp-Source: ABdhPJyMzfV3df4/lJQxKpz0nforJz1/zHvksHwzrQF14Cx52w3fcqDkD1sZcC/NAKfs8AJHfwmcRA==
X-Received: by 2002:a05:6808:10a:: with SMTP id b10mr313484oie.17.1598557422422;
        Thu, 27 Aug 2020 12:43:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4816:: with SMTP id v22ls876642oia.6.gmail; Thu, 27 Aug
 2020 12:43:42 -0700 (PDT)
X-Received: by 2002:aca:fd96:: with SMTP id b144mr296117oii.163.1598557422085;
        Thu, 27 Aug 2020 12:43:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598557422; cv=none;
        d=google.com; s=arc-20160816;
        b=kVM01OV/gYkMP11NU4teJ+/mgbDYS4e5CnzPjaBL/JAhziiBGv378apua10cpRNZef
         5S2fgwG7ZzdQ/SgFyaQZFGJSLFeLVz8+V7PRIKOIbOjxKNh7D3v6GSRBbNqWScpRj66w
         8T3Yb+wnFb7EuLej/liPwRfyxsFxQdk76l2/F+xuqMFhV+gW8ZYu8OwUOtLdSXtJbpvU
         8SC5K1u/4OrwMiMzCwDn/0oUyK5brIpPBihceZmk6kE7695Ge6vSylOPpufIC90Dc05f
         OzaLfRc/SCPBSjUhtjQED8+y/EecgrveoFj8V6KigEGJkjasp18M8u7q93CDLfpv9nfF
         vBtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+ukOJMscVMuC/waiDIGxLQ8Pst4V6VyjiGsP3dACBfk=;
        b=jNqLxkhD9C9/I/67yq5YVZCHDXhK5YpYJe0GTfsT/QzdeyPPIeqA6AkXrAC/q1D1+4
         fDPBBtoOiHyb0kO4xrGDORuYbTVOXyZ1PE4pjKc1UJG096mxov0VtEbuDAP/IDbiMRIW
         G1bTViQVKKZNXFy0waDzyZu7xc8GB+tLl5iVPr0xsS+8yU0vrAn7WN3gyrAldYmJfKFZ
         17yxic3DiX7IHPqn7oL+k63DOTNlgraKUea/1Jx9zeu/5YB0iNaq18afEOlgrCu/IiaY
         t/vnc0WcBbWY8CD7UJf0ijvrRiwnFxczpLVYC2Tot+kIPrWSHXL6FWn/nANCNhUiL6WQ
         CiwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fjahp8++;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id l3si238254otk.5.2020.08.27.12.43.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 12:43:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id nv17so3181174pjb.3
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 12:43:42 -0700 (PDT)
X-Received: by 2002:a17:90a:2c06:: with SMTP id m6mr383495pjd.129.1598557421274;
 Thu, 27 Aug 2020 12:43:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200827185829.30096-1-krzk@kernel.org> <20200827185829.30096-27-krzk@kernel.org>
In-Reply-To: <20200827185829.30096-27-krzk@kernel.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 27 Aug 2020 22:43:24 +0300
Message-ID: <CAHp75VfyoVN2DdwGpi9_58_v9c+ksHjYmvmeGbz64OAyhjEhsg@mail.gmail.com>
Subject: Re: [PATCH v3 26/27] Input: bu21013_ts - Use local 'client->dev'
 variable in probe()
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Hans de Goede <hdegoede@redhat.com>, Bastien Nocera <hadess@hadess.net>, Sangwon Jee <jeesw@melfas.com>, 
	Eugen Hristev <eugen.hristev@microchip.com>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-input <linux-input@vger.kernel.org>, 
	Platform Driver <platform-driver-x86@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Fjahp8++;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Aug 27, 2020 at 10:00 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> 'dev' is shorter and simpler than '&client->dev' and in few cases it
> allows to skip line wrapping. Probe function uses '&client->dev' a lot,
> so this improves readability slightly.

Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>

> Andy Shevchenko <andy.shevchenko@gmail.com>

Suggested-by: (I suppose)

> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> ---
>
> Changes since v2:
> 1. New patch
> ---
>  drivers/input/touchscreen/bu21013_ts.c | 61 ++++++++++++--------------
>  1 file changed, 28 insertions(+), 33 deletions(-)
>
> diff --git a/drivers/input/touchscreen/bu21013_ts.c b/drivers/input/touchscreen/bu21013_ts.c
> index 86bd38243d6c..f09204091ba5 100644
> --- a/drivers/input/touchscreen/bu21013_ts.c
> +++ b/drivers/input/touchscreen/bu21013_ts.c
> @@ -411,31 +411,32 @@ static int bu21013_probe(struct i2c_client *client,
>         struct input_dev *in_dev;
>         struct input_absinfo *info;
>         u32 max_x = 0, max_y = 0;
> +       struct device *dev = &client->dev;
>         int error;
>
>         if (!i2c_check_functionality(client->adapter,
>                                      I2C_FUNC_SMBUS_BYTE_DATA)) {
> -               dev_err(&client->dev, "i2c smbus byte data not supported\n");
> +               dev_err(dev, "i2c smbus byte data not supported\n");
>                 return -EIO;
>         }
>
>         if (!client->irq) {
> -               dev_err(&client->dev, "No IRQ set up\n");
> +               dev_err(dev, "No IRQ set up\n");
>                 return -EINVAL;
>         }
>
> -       ts = devm_kzalloc(&client->dev, sizeof(*ts), GFP_KERNEL);
> +       ts = devm_kzalloc(dev, sizeof(*ts), GFP_KERNEL);
>         if (!ts)
>                 return -ENOMEM;
>
>         ts->client = client;
>
> -       ts->x_flip = device_property_read_bool(&client->dev, "rohm,flip-x");
> -       ts->y_flip = device_property_read_bool(&client->dev, "rohm,flip-y");
> +       ts->x_flip = device_property_read_bool(dev, "rohm,flip-x");
> +       ts->y_flip = device_property_read_bool(dev, "rohm,flip-y");
>
> -       in_dev = devm_input_allocate_device(&client->dev);
> +       in_dev = devm_input_allocate_device(dev);
>         if (!in_dev) {
> -               dev_err(&client->dev, "device memory alloc failed\n");
> +               dev_err(dev, "device memory alloc failed\n");
>                 return -ENOMEM;
>         }
>         ts->in_dev = in_dev;
> @@ -445,8 +446,8 @@ static int bu21013_probe(struct i2c_client *client,
>         in_dev->name = DRIVER_TP;
>         in_dev->id.bustype = BUS_I2C;
>
> -       device_property_read_u32(&client->dev, "rohm,touch-max-x", &max_x);
> -       device_property_read_u32(&client->dev, "rohm,touch-max-y", &max_y);
> +       device_property_read_u32(dev, "rohm,touch-max-x", &max_x);
> +       device_property_read_u32(dev, "rohm,touch-max-y", &max_y);
>
>         input_set_abs_params(in_dev, ABS_MT_POSITION_X, 0, max_x, 0, 0);
>         input_set_abs_params(in_dev, ABS_MT_POSITION_Y, 0, max_y, 0, 0);
> @@ -455,14 +456,14 @@ static int bu21013_probe(struct i2c_client *client,
>
>         /* Adjust for the legacy "flip" properties, if present */
>         if (!ts->props.invert_x &&
> -           device_property_read_bool(&client->dev, "rohm,flip-x")) {
> +           device_property_read_bool(dev, "rohm,flip-x")) {
>                 info = &in_dev->absinfo[ABS_MT_POSITION_X];
>                 info->maximum -= info->minimum;
>                 info->minimum = 0;
>         }
>
>         if (!ts->props.invert_y &&
> -           device_property_read_bool(&client->dev, "rohm,flip-y")) {
> +           device_property_read_bool(dev, "rohm,flip-y")) {
>                 info = &in_dev->absinfo[ABS_MT_POSITION_Y];
>                 info->maximum -= info->minimum;
>                 info->minimum = 0;
> @@ -472,50 +473,46 @@ static int bu21013_probe(struct i2c_client *client,
>                                     INPUT_MT_DIRECT | INPUT_MT_TRACK |
>                                         INPUT_MT_DROP_UNUSED);
>         if (error) {
> -               dev_err(&client->dev, "failed to initialize MT slots");
> +               dev_err(dev, "failed to initialize MT slots");
>                 return error;
>         }
>
> -       ts->regulator = devm_regulator_get(&client->dev, "avdd");
> +       ts->regulator = devm_regulator_get(dev, "avdd");
>         if (IS_ERR(ts->regulator)) {
> -               dev_err(&client->dev, "regulator_get failed\n");
> +               dev_err(dev, "regulator_get failed\n");
>                 return PTR_ERR(ts->regulator);
>         }
>
>         error = regulator_enable(ts->regulator);
>         if (error) {
> -               dev_err(&client->dev, "regulator enable failed\n");
> +               dev_err(dev, "regulator enable failed\n");
>                 return error;
>         }
>
> -       error = devm_add_action_or_reset(&client->dev, bu21013_power_off, ts);
> +       error = devm_add_action_or_reset(dev, bu21013_power_off, ts);
>         if (error) {
> -               dev_err(&client->dev, "failed to install power off handler\n");
> +               dev_err(dev, "failed to install power off handler\n");
>                 return error;
>         }
>
>         /* Named "CS" on the chip, DT binding is "reset" */
> -       ts->cs_gpiod = devm_gpiod_get(&client->dev, "reset", GPIOD_OUT_HIGH);
> +       ts->cs_gpiod = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
>         if (IS_ERR(ts->cs_gpiod))
> -               return dev_err_probe(&client->dev, PTR_ERR(ts->cs_gpiod),
> -                                    "failed to get CS GPIO\n");
> +               return dev_err_probe(dev, PTR_ERR(ts->cs_gpiod), "failed to get CS GPIO\n");
>
>         gpiod_set_consumer_name(ts->cs_gpiod, "BU21013 CS");
>
> -       error = devm_add_action_or_reset(&client->dev,
> -                                        bu21013_disable_chip, ts);
> +       error = devm_add_action_or_reset(dev, bu21013_disable_chip, ts);
>         if (error) {
> -               dev_err(&client->dev,
> -                       "failed to install chip disable handler\n");
> +               dev_err(dev, "failed to install chip disable handler\n");
>                 return error;
>         }
>
>         /* Named "INT" on the chip, DT binding is "touch" */
> -       ts->int_gpiod = devm_gpiod_get_optional(&client->dev,
> -                                               "touch", GPIOD_IN);
> +       ts->int_gpiod = devm_gpiod_get_optional(dev, "touch", GPIOD_IN);
>         error = PTR_ERR_OR_ZERO(ts->int_gpiod);
>         if (error)
> -               return dev_err_probe(&client->dev, error, "failed to get INT GPIO\n");
> +               return dev_err_probe(dev, error, "failed to get INT GPIO\n");
>
>         if (ts->int_gpiod)
>                 gpiod_set_consumer_name(ts->int_gpiod, "BU21013 INT");
> @@ -523,22 +520,20 @@ static int bu21013_probe(struct i2c_client *client,
>         /* configure the touch panel controller */
>         error = bu21013_init_chip(ts);
>         if (error) {
> -               dev_err(&client->dev, "error in bu21013 config\n");
> +               dev_err(dev, "error in bu21013 config\n");
>                 return error;
>         }
>
> -       error = devm_request_threaded_irq(&client->dev, client->irq,
> -                                         NULL, bu21013_gpio_irq,
> +       error = devm_request_threaded_irq(dev, client->irq, NULL, bu21013_gpio_irq,
>                                           IRQF_ONESHOT, DRIVER_TP, ts);
>         if (error) {
> -               dev_err(&client->dev, "request irq %d failed\n",
> -                       client->irq);
> +               dev_err(dev, "request irq %d failed\n", client->irq);
>                 return error;
>         }
>
>         error = input_register_device(in_dev);
>         if (error) {
> -               dev_err(&client->dev, "failed to register input device\n");
> +               dev_err(dev, "failed to register input device\n");
>                 return error;
>         }
>
> --
> 2.17.1
>


-- 
With Best Regards,
Andy Shevchenko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHp75VfyoVN2DdwGpi9_58_v9c%2BksHjYmvmeGbz64OAyhjEhsg%40mail.gmail.com.
