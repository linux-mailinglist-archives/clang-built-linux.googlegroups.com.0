Return-Path: <clang-built-linux+bncBCT4VV5O2QKBBHEYUD5AKGQEWXGQAEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8602E254ED4
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 21:40:13 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id y17sf784886pfp.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 12:40:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598557212; cv=pass;
        d=google.com; s=arc-20160816;
        b=QhgDo4xQWBoC2JA2JAXASKiAZUOBpmGPDD4a//DWeDFtunhAsKQeRwcFfadeD1pxcs
         FJIwOTQbzqnBorDB69teqRx6YUk0evxZAm0aB0Z6duInT8Au+6KeBlFsehExnpF0jHfp
         uvu/dGKPv8jjnliBkUTR/PWdqkGEuEOPPCd7re4NxhPZLICZYz584uFzyPPwnkiP1uzD
         mIAwMbnAY9JxNlIXqPOOPnMzlbW2Ac3NQ0AxIbE13RKlX8qrHnZkh6K70XcE0MQHuZm4
         Ry4nWohJVbkHrPSNS94N/dJrkzaSJygzUKcaRG2LmYuxfbHaaVz7m/U7o+5HrB3CveHn
         1e7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=tWxnTNkpcKs+AnYRw8U0DHSnTpLlZ9l/DlAWVMjWDfc=;
        b=cMVeaK1OO0I03NtfI9jPLOV/eWdlMgvxkarVAE4D9ZnUx/Yeyn0vA2HZ0ZCcg40vJm
         F2rqtG6uyELtCtZEaIAeItz/IfYVQ1XCgEOeejXo6vVcElXLlNRxMYwGQ/7/BIGBJ/A7
         hZZfhPweLPKlrIdoLj19dW8QvQqHvGuvUZ3ORZ0WFyvnI7j04S7DaYD/zO+pgW6s6xEW
         HsKnLP4Obnb+ZgaHKxPMXi2QZRAKr0lswwO5PqxLpE3atwvZtYc0TJ1SAu4gwcc2My+q
         QL4aZojf+XACFJncjMutHPtkGg/ZDKgyqaLY1AzP04iyqn/KdmfFjZ4QjYOx2A3LQQC2
         +7rw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jD6rxi6R;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tWxnTNkpcKs+AnYRw8U0DHSnTpLlZ9l/DlAWVMjWDfc=;
        b=ViOvK/rD4hLyImCdy8F7ss6yAs4znXFLmqEy/vtRCpoqeMpobqQchXj4Mo6W0mL6yW
         pOqer3Ix8HEbyqFj7YExx7Wxf+vmQX8HtMNH8GevKo2NpgBYDuKI+1Huk16tQ17VFrmL
         sryM5Q1VanrKkPiSgUArmi/+VH0jZJOwcyg8xYaSSeZasd01cFIHZ0RCanUv3ey0ugHZ
         LbRvWalgjTR0fWw7Em9NNdaABrUklUt3Ob1g3HrZ92Fe1+5B9y+8aTjz9dbKTg+umzm2
         gIUuwXrTGsYlIkVLPG0v5wM+Lgp1TgT3JkIeNIVYroPZToYEvSxRdLY+B8n+mwkgMYff
         4WXw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tWxnTNkpcKs+AnYRw8U0DHSnTpLlZ9l/DlAWVMjWDfc=;
        b=Wvq4m6fExpTk9M6DHIX122Zzk/2QrbU3KsbzasD+CMBdF6EpRUm7u9hWjB2HtrtiB/
         5R5GIiYJqFE2aK/nVbdgeo+sb96Vok3YsFh80SwG9H2zSdvyC9yuuRqtUeNg6s1T3xZA
         /HAj5iG/kejAXTNmPPpHUqfNAq3nuj7pBD7Oq5CLyZIZVqzB6J4DtjBybTdw176OsCuy
         8QeSg6FzEM8ZDdXQCgLpuNlY/YPP3C/2UKnN4lYAZsfYJtFpyppIGcqIS//vIFy883tb
         kYl5kcwoQrq6tf/wZtgyA0mkzIjxZJrXFmAbk3OBDp3Y0P8zF8N6jj2awZmnEa19UIcd
         kM3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tWxnTNkpcKs+AnYRw8U0DHSnTpLlZ9l/DlAWVMjWDfc=;
        b=jrCg+n8y5Qz+bR6+TETVrKeatJjH41XcSFgelYmLtIae8cIQOvw0h0CjeJgYXmbvwR
         P8qA8EXHfD01TWtI9Wq8+IY6ifjDFUrzdh4hhgXYMfbK8+5ulS4DW65vCUtkXsFeomvy
         Pxk4mj0Uf29jV14ij2xncnra4TdeCWfL5v3f2UbKQ9G2jr99MXRP92b3jvQWW76MbP2E
         9dR0PhndTJtDxgNi37tfkDXqRWsY3ylmT3pkVKLcKiWoM0gBl+k4Q5s/kWhV2SuZjG3r
         mQ3hlIhSQI4Qe5DteNBW6y9uDkJ3xb0VwQ0kD+DUKv+B7y7mCJxiQiQrYe/vZ9DSDRwL
         kZpg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530G5fv0P/SPHsD/d431NRHsjo71N8ieIDbUSuOuckeqgS8HIz1/
	5U/SgCIe9tBmxfPmNjy18mA=
X-Google-Smtp-Source: ABdhPJwVGj/fWIopqJ7XHMMPZoGOIQHVRvvkderOEkO3dTVcakxQ8MdK73d45rY1P0g9ji3qSFPgeQ==
X-Received: by 2002:a17:902:b405:: with SMTP id x5mr17237591plr.319.1598557212224;
        Thu, 27 Aug 2020 12:40:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3205:: with SMTP id y5ls1160475pgy.3.gmail; Thu, 27 Aug
 2020 12:40:11 -0700 (PDT)
X-Received: by 2002:a63:920e:: with SMTP id o14mr15709775pgd.367.1598557211571;
        Thu, 27 Aug 2020 12:40:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598557211; cv=none;
        d=google.com; s=arc-20160816;
        b=OtdX/JSxxi8ur4IPJnwE/OFb+gfqOl3xvGH3GHFuyO822XMXAE/m0VfpzY8McFhDhI
         pPMQyFIq7kuqYjrI5uHMpkzFRCtlH66Vfj0fa7K1aJPC1khDP/KhlZ9rOVxt4WkF06Or
         pt/gETepASSdEWDu3ByIFy6NF1ou3zp9TVzQ7qmkcUBGGXi0oEI2t3laGt9uQT/n+SOO
         n7ueVD1+oG6oCwTz+lO5Su94SRia3v1UtRMrnydJVZkA8w/pX1vtrOYZFJ5E6hgSCV7A
         x6WipEoHXOn5Bhtf+pnqMUGHDOLb6+mINKa0Kw4/dkp+X3PTxZ0dn3Ew5kxvjgSU+Fjz
         Csqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Z5MuJjj2BRfbffbktmUArXq0jWI8OrbgvmEfcOOymls=;
        b=eAo+i3TACc7fYXlFYegdNQj9aSLZp+boFkaK41KJiNCCV5G1PVDHlGdwzvFYmZSZWv
         cs8DJtuTzpdH3LoebB4PE3mOd/5gPWTmVBcWSrI9a4SHY8tYRv+6d/OLATpWGKh5Rgrf
         lOsre706Si9XjfEHL4zQkt6qY4c+g5zZ2FQs2hSUhHBoayiRS/BE3PaOypRo0Cg4Msrq
         gufio0/lSbXSlqjaQazQHx3Ape3t4qT/tHEcRoNWpd3T1KQlIEj6X9rk+zmW0nvKLLYE
         rQCLprLC3t2+gwcCepkCILSesWjAHqyR/KdnWOVx2aMgIyerFf6+DBtM5Asb3xdyHOAB
         GWaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jD6rxi6R;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id kr1si286199pjb.2.2020.08.27.12.40.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 12:40:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id i10so4108504pgk.1
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 12:40:11 -0700 (PDT)
X-Received: by 2002:a63:ec18:: with SMTP id j24mr15213316pgh.74.1598557211293;
 Thu, 27 Aug 2020 12:40:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200827185829.30096-1-krzk@kernel.org> <20200827185829.30096-8-krzk@kernel.org>
In-Reply-To: <20200827185829.30096-8-krzk@kernel.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 27 Aug 2020 22:39:54 +0300
Message-ID: <CAHp75VcHpPTAJxd9bTbEkEW=4F1FCzTzHS=DCDWnvsjjXvMV=A@mail.gmail.com>
Subject: Re: [PATCH v3 07/27] Input: bu21013_ts - Simplify with dev_err_probe()
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
 header.i=@gmail.com header.s=20161025 header.b=jD6rxi6R;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
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

On Thu, Aug 27, 2020 at 9:59 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> Common pattern of handling deferred probe can be simplified with
> dev_err_probe().  Less code and also it prints the error value.

Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>

> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Reviewed-by: Hans de Goede <hdegoede@redhat.com>
>
> ---
>
> Changes since v1:
> 1. Remove unneeded PTR_ERR_OR_ZERO, as pointed by Andy.
> ---
>  drivers/input/touchscreen/bu21013_ts.c | 17 ++++++-----------
>  1 file changed, 6 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/input/touchscreen/bu21013_ts.c b/drivers/input/touchscreen/bu21013_ts.c
> index 2f1f0d7607f8..86bd38243d6c 100644
> --- a/drivers/input/touchscreen/bu21013_ts.c
> +++ b/drivers/input/touchscreen/bu21013_ts.c
> @@ -496,12 +496,10 @@ static int bu21013_probe(struct i2c_client *client,
>
>         /* Named "CS" on the chip, DT binding is "reset" */
>         ts->cs_gpiod = devm_gpiod_get(&client->dev, "reset", GPIOD_OUT_HIGH);
> -       error = PTR_ERR_OR_ZERO(ts->cs_gpiod);
> -       if (error) {
> -               if (error != -EPROBE_DEFER)
> -                       dev_err(&client->dev, "failed to get CS GPIO\n");
> -               return error;
> -       }
> +       if (IS_ERR(ts->cs_gpiod))
> +               return dev_err_probe(&client->dev, PTR_ERR(ts->cs_gpiod),
> +                                    "failed to get CS GPIO\n");
> +
>         gpiod_set_consumer_name(ts->cs_gpiod, "BU21013 CS");
>
>         error = devm_add_action_or_reset(&client->dev,
> @@ -516,11 +514,8 @@ static int bu21013_probe(struct i2c_client *client,
>         ts->int_gpiod = devm_gpiod_get_optional(&client->dev,
>                                                 "touch", GPIOD_IN);
>         error = PTR_ERR_OR_ZERO(ts->int_gpiod);
> -       if (error) {
> -               if (error != -EPROBE_DEFER)
> -                       dev_err(&client->dev, "failed to get INT GPIO\n");
> -               return error;
> -       }
> +       if (error)
> +               return dev_err_probe(&client->dev, error, "failed to get INT GPIO\n");
>
>         if (ts->int_gpiod)
>                 gpiod_set_consumer_name(ts->int_gpiod, "BU21013 INT");
> --
> 2.17.1
>


-- 
With Best Regards,
Andy Shevchenko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHp75VcHpPTAJxd9bTbEkEW%3D4F1FCzTzHS%3DDCDWnvsjjXvMV%3DA%40mail.gmail.com.
