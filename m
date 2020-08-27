Return-Path: <clang-built-linux+bncBCT4VV5O2QKBB5UXUD5AKGQE5UOPTHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F37254ED2
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 21:39:35 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id b189sf5228820pfa.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 12:39:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598557174; cv=pass;
        d=google.com; s=arc-20160816;
        b=TUfjH7ysg8PYJfYhEIWpZiChIgShs5dRY+1UxyiH3rlNAeQe7nxxcynH+OkUcjvLPX
         4J9enyZDBP1HYYwulT8HtRazxz9OGXcekJMIRY+gDY4RYDze1OL8vz9w8Ohpun0xwU0R
         R2LHwDgrruvw5+CVBOo2hw1mTlWIEKVg5KY1skw9gT02EuBjfLoE8mlXPjDPsTZfRBQw
         6yoawKAeM7aa4LiW4nu98LfgElTSuPnd/SKaRY8jP437JnZnH4exLAu0NXgufD356gEn
         WOzDc7wO1pB+7rY+kJnGTZ5TxwG78DM1kAOg1gaJNLwaVcGuRfmy/I3bqLySAsXE05uf
         7ryg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=xytOeqd4pe4bvUucvoHk4KNrejdWGkmn4poIbriJY/0=;
        b=dZ7WXgfAGTcBbWFvdBdGLzngvFbAf/sI2UgBeJGyDrd1d5yqNmRYcFe2OsQBgDO56c
         6aRKi7WVzL+fpM93vB57L70bextFCWKknBfJzVbUjYJc9QbhhJZeh9AiF0887EDdSlMq
         aN0khuHy2XJPXYftScfXagKgIDHhucFbkBBjWjTeZFaRoo30M5nou1rcTkXFbGgBbW8U
         RSwiy30awDv4pdUv+iPYvQwo3PAPIX3kdipx5G8UGxeJ/n+hFXXwnQ6oQDvMnBE2ODbq
         Mb8rEnmi6FImkhJmioLn7aAT6hyfwCpAZx5RRlM+abiIOr3nwKUnUllQu319z22hDf3u
         bqMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LbdSMOEN;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xytOeqd4pe4bvUucvoHk4KNrejdWGkmn4poIbriJY/0=;
        b=IBgrImF3Km7TH0Gmuc0ZeC7PeGE5bRfBYKCWNUOTA4E3uG6vknaXwtqvLNunCm2VVL
         EuIutXlB1krFKJ2/ZMfBt68HQtbQK4+jNAhcVHfRLE9UA7AaxBY9104S4WIRKWC6tPrO
         ZWRoA9K60YUr1SOtlHMdguIgGpFoKmWmcwjXCDXX3SLQuAQWtC06ny53G8jQ3u79tS2l
         SxnyL0KKfLuVG4iJlmwKyabECrnM78C3x8pcy/07W03aguGBYXjnBAgTgILyQ9NCpgc6
         x7NtQYytvWITpgXqfVAqYtiaCzhix7zCfTmm/xjdW/k+wSHNPG2XobxmWdaQsj1D7Zs1
         X8Vw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xytOeqd4pe4bvUucvoHk4KNrejdWGkmn4poIbriJY/0=;
        b=YwpuGEkm+xfGHvXAA+uZaV5O1lI2WnmuD1Y6TXo+XDeCcqKPcHslYMqX5W0D3eD4Xm
         TLdON+se3ScbdxFw2T/EtBVFIfZVJvVCACrFiPZ6/PnZMyKwrj5DlXz7Q5AjMjG/wjbV
         uqM+4hcqqWXdCqSVi1CkJ+cefKNLumJKl2hO8Tg3bpzPzKBKfvymWX5ESrEZFyeC7y/F
         o6kcaoTOq8Yf2loQRT1bY0LjrCE/2BMoLke1sLJS2BuD8UBcM2Nx8WKcBa7Hokx+YuuU
         5KslVfCQ86qU0JlzzKGU4iPzH0tx3Mt9LM8IfUkkqIzNGEtw1Puvc2W4g1wDW8WvoPeA
         kZEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xytOeqd4pe4bvUucvoHk4KNrejdWGkmn4poIbriJY/0=;
        b=WjPfYcfXR8sNdieVwqYNXPDwp4T2sBziVBgZIA4IM37KPzB3VHTi/f8MShyGNQ8VVz
         CLGPUkhPubJ+h50pY68vezHqtdv4VlpAOCHunGRvKuj8jYRMqSLU87pOErWHTiM5JZ+g
         p1L0UXu7tatEZ+uAwGQCnpymJod7pR5DNDt3c1cuDybJLiTKAjVRxNpzj99ko/+CiMXw
         L9/LeVykLRuDKCIcrLEzvQD30jkAWSRERT/1jt7L2RRluy9FYQDrNaDM8nqteUEyWPeT
         xFr+9cJV/rbmSOyrnX/4ClwPJ5ff1yhk5Fmh8W24q4MgtDE35MmtRp6gI6u0AAn1R1hh
         M1Aw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tuw17jBJgJ9APDq36E9fa4MWxADvmWSzDrwzTLdcrDDpVXlvS
	lAR48IF1gYJ/hgwhK1ZBtyI=
X-Google-Smtp-Source: ABdhPJxF/iZ7cm+vzOFVnMGIKszknkhpzYLEENxArqmMVCk/q1MrYuxNB5gVx31pksfAM5atMUspxQ==
X-Received: by 2002:a17:902:b28a:: with SMTP id u10mr2714537plr.30.1598557174594;
        Thu, 27 Aug 2020 12:39:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d04b:: with SMTP id s11ls1162626pgi.1.gmail; Thu, 27 Aug
 2020 12:39:34 -0700 (PDT)
X-Received: by 2002:a63:1d4c:: with SMTP id d12mr15650624pgm.365.1598557174107;
        Thu, 27 Aug 2020 12:39:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598557174; cv=none;
        d=google.com; s=arc-20160816;
        b=bDxfgOb3tCPrTM0PQMqjqEnqURLqBmZmv7Uw2CqJFqe7xRxMzU+FtjBPARsElrf6ig
         7tLI1CD3lEZMYYKw4s0pPHCv0n19VtOknyIH2OI/cyWC9l9HQ3cvaVtalSgTpXQvgeKI
         nXQevcJNeEv/4RJw+pBiYimrKlnF1PkPTvLbWJ+hmKttfOv2YiytdQEyoecuyfpzmm4Y
         AhEOEryYAMD2S3h/RT1JgWtVPWXqo+uCf0wzFf5oE3O0UdAujU4nb3xftJbkQnc91dW8
         dcQAmmmk3No3/XS2fL6YMpImclhApMJIu1lj8RNaJuXQ42QEUrHKyPXHq0hQsx0ITnVi
         Qifg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NNNdt/4IjrgeOPMBhjOnJXYG1tUOBVWjd9cyVGLK4Nk=;
        b=DYOmW6xSs3G31xzGG8hOIRWHV05jHLLsPvpugHmMNKii05/qNS4zgVTc5YkNEMs7uy
         WileQENXPKrfx3j4UgbgHi+7C9QZimyy5W9h4ehU8qb53sR5dpupItxzbKvyaFxUh+gz
         zm2sp1U+mM4wpMQLRm7f2IuT1p0aFicaVAj0sqpI9f8VTmCQ0KUjWnGzztramHsDwzs9
         mf+abkFQqXmuI38ULReXpTa/Z2oMiVqKLlP0N7b9OxN2lk7hOgaT+kEw3n3br+GKVlOl
         CcRUyLYjIlDJi0r28sr/N4EJ6S/Vmzb6BLeTu6syz6bx0cIKv4sXzkRbCmMVPHstQhm4
         mFDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LbdSMOEN;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id q23si196321pls.2.2020.08.27.12.39.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 12:39:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id g207so242821pfb.1
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 12:39:34 -0700 (PDT)
X-Received: by 2002:a63:c543:: with SMTP id g3mr8366423pgd.203.1598557173833;
 Thu, 27 Aug 2020 12:39:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200827185829.30096-1-krzk@kernel.org> <20200827185829.30096-5-krzk@kernel.org>
In-Reply-To: <20200827185829.30096-5-krzk@kernel.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 27 Aug 2020 22:39:17 +0300
Message-ID: <CAHp75VfAn8oCqgXOWhsixZSs4FTkDACP3+3CgDdmQkPKQJg1aw@mail.gmail.com>
Subject: Re: [PATCH v3 04/27] Input: pwm-vibra - Simplify with dev_err_probe()
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
 header.i=@gmail.com header.s=20161025 header.b=LbdSMOEN;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
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

Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>

> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Reviewed-by: Hans de Goede <hdegoede@redhat.com>
>
> ---
>
> Changes since v1:
> 1. Remove unneeded PTR_ERR_OR_ZERO, as pointed by Andy.
> ---
>  drivers/input/misc/pwm-vibra.c | 20 ++++++--------------
>  1 file changed, 6 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/input/misc/pwm-vibra.c b/drivers/input/misc/pwm-vibra.c
> index 81e777a04b88..45c4f6a02177 100644
> --- a/drivers/input/misc/pwm-vibra.c
> +++ b/drivers/input/misc/pwm-vibra.c
> @@ -134,22 +134,14 @@ static int pwm_vibrator_probe(struct platform_device *pdev)
>                 return -ENOMEM;
>
>         vibrator->vcc = devm_regulator_get(&pdev->dev, "vcc");
> -       err = PTR_ERR_OR_ZERO(vibrator->vcc);
> -       if (err) {
> -               if (err != -EPROBE_DEFER)
> -                       dev_err(&pdev->dev, "Failed to request regulator: %d",
> -                               err);
> -               return err;
> -       }
> +       if (IS_ERR(vibrator->vcc))
> +               return dev_err_probe(&pdev->dev, PTR_ERR(vibrator->vcc),
> +                                    "Failed to request regulator\n");
>
>         vibrator->pwm = devm_pwm_get(&pdev->dev, "enable");
> -       err = PTR_ERR_OR_ZERO(vibrator->pwm);
> -       if (err) {
> -               if (err != -EPROBE_DEFER)
> -                       dev_err(&pdev->dev, "Failed to request main pwm: %d",
> -                               err);
> -               return err;
> -       }
> +       if (IS_ERR(vibrator->pwm))
> +               return dev_err_probe(&pdev->dev, PTR_ERR(vibrator->pwm),
> +                                    "Failed to request main pwm\n");
>
>         INIT_WORK(&vibrator->play_work, pwm_vibrator_play_work);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHp75VfAn8oCqgXOWhsixZSs4FTkDACP3%2B3CgDdmQkPKQJg1aw%40mail.gmail.com.
