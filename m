Return-Path: <clang-built-linux+bncBCT4VV5O2QKBBUEWUD5AKGQEDJWHICA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 13198254EBC
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 21:36:50 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id g13sf4741718pju.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 12:36:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598557008; cv=pass;
        d=google.com; s=arc-20160816;
        b=mlxaDaTE5dQ27bl9zbYyKdWY96ZAMISERq6kN+kYc2jT0urp4w0oOUSQBfKLUfr3uI
         0pXaycJblGkXTx0B/+w2W0yGh7A49BpfWqdV/2gQUiTkxjjihFfcnVceX5piOqtJ4TOn
         t12I21vTSY5iLv0sLp93TqxiDWaLSDYj53HnOIwliz+w+7/x+mh6Mu3yre/OeJ4xvXAj
         uzV0cPwhJ13spQYmJB0983Pl/ZWgY7ZNgYjBugnj/fHh9RHH8QuMlu2yD/dDZQfzD0eG
         wcr1aohdqpR+UG7L+E4pYEloVMCJejVia1gOqL1O4jXAMt7kWJlxNdZ4FRrQeNgRHGbH
         uszA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=1NnAsU3CLOROlPKYE4GIka5VnabIevOw0BBBvEyw9wY=;
        b=j7iIkinrotreRGyFr9TDHP8KEwSY8WWk4mvjY5EDAce8sOo8Ua7jUC7VPmIUkfe8OP
         6kfoGYdZZWTEud3+8ZIptZGr35Cm/ta28+yYfN0+vuLW5wxLm5HHHLx7tFMVpC+NsNOs
         coyiRnRPygFeW+BSWmJVtCBArGjuXqoAXrwFbSvQJPIgRxXtEeLZ80kZwEWNGF0LYPjb
         Teth4NvjDQeRD7M0zGYaMG8LBoEoFg2wlZVwzv5b3Gw3zNzBEvNVHwj+Hp0BKazUu9+W
         vFXTKqzfjJTpEuKLhId1ewA//Oi0GjCM6CQZ+YwXGwO/jTFhyrKRA8qc4VzHL9NVU2bU
         FGuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YpIanO7z;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1NnAsU3CLOROlPKYE4GIka5VnabIevOw0BBBvEyw9wY=;
        b=fyJzokRMvlkRI+Aneg4TLHcwPgJTAs3RLKg1hP+lKRfwJWN0cA2sW+QHR1KG6CUNI/
         TMO6orfab1/7LlzmXiHbsrC2DHdpabSiD0EhEutMtOydzVXhz9DjLuMSQKd0K7PtQ1Ai
         /Ct6FiKoUKapIimO5ma0USZY32xho+sCGbp6LIn6N6CeeT63SvFCbF64euiOZWg1wmke
         +EKXaxMVbxoOkDq5jQdvbJAHETYB6oq4jOg2VR9B2MzuhX3BEzn2k7ThUnSSCyHj5D8S
         LGIPGgr+z7Tw5k5tW6+M9e6LNw635Ak9GzmswPd4eEBfrt7fEZW6fTOS6RQUdIGvv3IR
         17fA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1NnAsU3CLOROlPKYE4GIka5VnabIevOw0BBBvEyw9wY=;
        b=UfdG7LRCu/JGKXeOnCaTgXMgAZUVZZG+eelMfOM/A1xuUlujtdyOQDE8a1uRVE6YTx
         VzQ4ZpVpyMsNuBZLm2Ed78HKvGHvs9yQGXM/KR018eMaGrAtWAiMoB9eKKoeuSxbOaer
         eHYU17eRRTiO88Q/VRro3tJVh7q9PUQjmIxXRjLVRfzFUsq40Z75ZUmRwKFkA+FrbqV8
         Uea+3Dir7O6WqLpsEDIWx346Qk+iYrI6I0QrXzmmf3SuOF6TCvFS9S3lnj7Zack+Bo42
         46uBDSr/zPGiWg5ly4pGoAsQge2bEJkJbz8FRCPwIgelDuwj+D2tw//5+1+5u6+k4OKd
         3B7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1NnAsU3CLOROlPKYE4GIka5VnabIevOw0BBBvEyw9wY=;
        b=iY/U5bTna+niFZlD73MU7WzZHWzydqAgjMYy8mxRKvxjGalg9qz2gfxYHtDJr53NOV
         khsaF7sNUgANb4b7TsKNBh7bcKylFSq1KGR7Qa4SD/kn3zQzict4ogZ+eytYlfelenP1
         bvcIHjDeRxC7BI8ixQoaYRALwV1EV5BJ87UWCY4xu5Z95ezRMrXpjafDWKqdPg3CeCwF
         LvygaxjBcmyB1Tv/i8LjFxBKpiYDHS7ISPPF9O+1IVZAIOPhg1OLq+ce+2VkIdeSOhzk
         wbnGPnIkel2r9oyAkY9P2xm1753FQg8gjY7inQnlJ/JK7N5TN4l3TLAUMB6Z3jpNXY4U
         LR1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531XssKy6aBpZGMAdftvY/6fflVf25Jd72RXUdinbDCGeAz8QDaj
	RRyJHv+Bq0onAgqix079ftk=
X-Google-Smtp-Source: ABdhPJwj3HEBsgV7/2hEmPCYBffuQOBIWn4OdOPcVF7VIxG7ou+5fls0NoUGCGGQL+2PGS2UXjHzKA==
X-Received: by 2002:a17:90a:d908:: with SMTP id c8mr407782pjv.4.1598557008764;
        Thu, 27 Aug 2020 12:36:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:82c5:: with SMTP id u5ls1698736plz.2.gmail; Thu, 27
 Aug 2020 12:36:48 -0700 (PDT)
X-Received: by 2002:a17:90a:c906:: with SMTP id v6mr336069pjt.219.1598557008054;
        Thu, 27 Aug 2020 12:36:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598557008; cv=none;
        d=google.com; s=arc-20160816;
        b=wFjJX8dW8GjB3Nxa1MBsUswnPNcdk0f95o22vxEnAQOEIHvVsfy99PClLGmAEghosU
         xJJVJ0k3kFN5x1c2Sd8QjNkeQ2yyWXAWHNsQNINia4d1dFYBm5RrddzhTyjH61rSOfzx
         8TBlbSGYv8AELs6HS/EvquqnzmkZ0oM7xjwLPC6RcdYNa5ECmyGWGphO2qufIMR88wVF
         dcosyqt5Y5zlFXBBvPLgqgd6HJlFxxSWrz/v1GBOoh+jUCEEySZvAp20UmZxkaDdddQO
         7nmmnnYhUSbw6ZPxVyZdKxSzv4t522wRHl9uCVu5+YqQB9FBGCKUQOzA9Haa/jaqMJeE
         m/xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ke5yyqqtl8us0ow8oEZVTNWbvOyB/nHqrjexBTWQnvA=;
        b=Zp+j8+JdE662CdByTuAB60EJVK56dYy6qyee36CNJBZlauxoWCA7FGgXI+AS2eg7mj
         rq1KGXxepdE37HWots79iQkuWab2pOIFekOVKqIljJx46pHSxzfrrLsbEZm0M9cPicIj
         koRCox4xWG9LPqlodsdyO8E6VS2XHh12LMgT/Q+hqQfFvw3Rz9jhBzKdNsTRz70WM+8k
         dq1hq5De7n21dajfuQc+F3B48drtpIc2FI1EcABeWS0KudlLVvdP/ckOhxw9SxFi7ZL0
         V7J5HUlW+Y2ctntXPjv/P7GUhsGqsUaxrEsdNkxGnVwBLVpa7KJ4zZ8bcnf4W2qD6Ym4
         +hoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YpIanO7z;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id n2si311934pfo.5.2020.08.27.12.36.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 12:36:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id kx11so3126831pjb.5
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 12:36:48 -0700 (PDT)
X-Received: by 2002:a17:90a:e7cb:: with SMTP id kb11mr327752pjb.181.1598557007584;
 Thu, 27 Aug 2020 12:36:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200827185829.30096-1-krzk@kernel.org> <20200827185829.30096-3-krzk@kernel.org>
In-Reply-To: <20200827185829.30096-3-krzk@kernel.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 27 Aug 2020 22:36:31 +0300
Message-ID: <CAHp75VfFMv9kMi0skDmNVm2kdqh+PvvXJOeZzePuPfvLpGNiHQ@mail.gmail.com>
Subject: Re: [PATCH v3 02/27] Input: gpio-vibra - Simplify with dev_err_probe()
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
 header.i=@gmail.com header.s=20161025 header.b=YpIanO7z;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
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

On Thu, Aug 27, 2020 at 9:58 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> Common pattern of handling deferred probe can be simplified with
> dev_err_probe().  Less code and also it prints the error value.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>

>
> ---
>
> Changes since v1:
> 1. Remove unneeded PTR_ERR_OR_ZERO, as pointed by Andy.
> ---
>  drivers/input/misc/gpio-vibra.c | 20 ++++++--------------
>  1 file changed, 6 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/input/misc/gpio-vibra.c b/drivers/input/misc/gpio-vibra.c
> index f79f75595dd7..13c69f173620 100644
> --- a/drivers/input/misc/gpio-vibra.c
> +++ b/drivers/input/misc/gpio-vibra.c
> @@ -113,22 +113,14 @@ static int gpio_vibrator_probe(struct platform_device *pdev)
>                 return -ENOMEM;
>
>         vibrator->vcc = devm_regulator_get(&pdev->dev, "vcc");
> -       err = PTR_ERR_OR_ZERO(vibrator->vcc);
> -       if (err) {
> -               if (err != -EPROBE_DEFER)
> -                       dev_err(&pdev->dev, "Failed to request regulator: %d\n",
> -                               err);
> -               return err;
> -       }
> +       if (IS_ERR(vibrator->vcc))
> +               return dev_err_probe(&pdev->dev, PTR_ERR(vibrator->vcc),
> +                                    "Failed to request regulator\n");
>
>         vibrator->gpio = devm_gpiod_get(&pdev->dev, "enable", GPIOD_OUT_LOW);
> -       err = PTR_ERR_OR_ZERO(vibrator->gpio);
> -       if (err) {
> -               if (err != -EPROBE_DEFER)
> -                       dev_err(&pdev->dev, "Failed to request main gpio: %d\n",
> -                               err);
> -               return err;
> -       }
> +       if (IS_ERR(vibrator->gpio))
> +               return dev_err_probe(&pdev->dev, PTR_ERR(vibrator->gpio),
> +                                    "Failed to request main gpio\n");
>
>         INIT_WORK(&vibrator->play_work, gpio_vibrator_play_work);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHp75VfFMv9kMi0skDmNVm2kdqh%2BPvvXJOeZzePuPfvLpGNiHQ%40mail.gmail.com.
