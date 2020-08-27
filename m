Return-Path: <clang-built-linux+bncBCT4VV5O2QKBBLGYTX5AKGQEW3Q6U5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6A5254086
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 10:17:49 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id s19sf3204308ioc.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 01:17:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598516268; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y6CVZYhg1eh8NQecV0iXOxPBLF8/vg24pzNUtBe/6ds6tBxaTA0g8tEKr69EUuy+rc
         BuFiBmXx82fmndVU2B6gFyx5FqPsGjCJyilfHGG+rqhlAbbxMIFTqho+XNCotM2QoHiH
         FZpmTCtJKkg0UJCP4WFpRSfnauy7Gzr9bTmORUr0GgLnWVikcFVd50D+vG5l9+sV1bKd
         MzAKGSXzp139vL2K8bRSO0OUEx0INDFrflsCTHCvBQhH0V46gwF/oF57JSCXjPSF4ep5
         qS0RKp64cQBWwq8Z8OG/OR3ub62mrqnCggvNabQKpTucdl0U+ac7otzAJ+xNtcdHxfny
         f8mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=i5pXUAucN8dfAz204B2RMz26GWzhyK/jdz+6zyTWw38=;
        b=Z06C/fYdALrm9PKKPONNk20nSBQ9rWhOwBsI1dwT3tBRy9ttFV1bdd0PSr2cFY5AEB
         St1WI90cZ8BgfcnHREIkq+KEyp2AtZbBbQRcgw+x0XdFEC6Vhwl7RM2/ny1zHgQw5K0+
         Wyx8y21NoGxeM2a4SGO0DswEehrEGSo0SXkgiBLno60X5LDOYCocxnAzdiIQmHGk6I6u
         ZGeZpHUn1hJEOohxzfwkARfAKepOkEqknwr1D5ehdqlOjovLQBOmXAdrEMPe/fdMy2sc
         8woEYnLkWukw3td79cX1ir/EVF2ba1tlGwy543BWFg/yHkGs4GanZErmC+0aM3j48VCQ
         vjTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cYRyCH+s;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i5pXUAucN8dfAz204B2RMz26GWzhyK/jdz+6zyTWw38=;
        b=LmMtCAiQg8Xy25+nNBwBn6J4BSZq/QidLpaGBU/oYdvxKgiqCz3mwsgL2eB/LBnoxz
         qQhJ76XlcAvlwwPmypOxd2Q/bQiyg9jmKu1hfV1x15Jt1gzFj0zQYUuEjwq6aYlAFDbD
         Dam1BFWw5N1DmvfFivuaO9H4kmuu6Khm12sZLeXHLeyesnLiLJ42+rDOYz1KW68uTsVp
         tz589n0XHwN6u5GXgMrYvKlek3snVzJCllbeUrK9yB8IRxOu2JT+t4Of3B3YZR7Ibw9h
         iUrnz8fNm3kP3EiP0x1o4l04EzhFgG3jfQhFMJavXjStePvFiHf6KTU9IbxbshqS5df/
         aFXQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i5pXUAucN8dfAz204B2RMz26GWzhyK/jdz+6zyTWw38=;
        b=WaxOhnq061v2+Ai/Ddle4K3Kl2zsR3ea3H5jYjQGhka3E6cG5tEWaDMtun2rlfFLMd
         oi3OzK1QBJOaA4MaGxZy6kTJ4wnrQHQOzMGD1MMe7j6K9QRn/nqbfPuqnZBh1pqtaQDH
         3tu9DQKuEox6MlfcIrGVzTL2lNvp2iGT+nsBBt1GTy2iQt7e2InAbe8Jt778xQAVev4K
         FfIjsalT6YpaJBYw9sWIECgZDyH5Vqi/W6juF4Z5YnualrrxM9qExjiYAb9Rgenaj7nc
         zZAlHRzFH6v4azedOb1Tzr1ycRF0Vuf/xmWRC0NOOOjDe/LZiNXXdO3zoJQq71yVHEX4
         L3Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i5pXUAucN8dfAz204B2RMz26GWzhyK/jdz+6zyTWw38=;
        b=X7a6Mg1PqlnmVlNrzkjJfb/4mlcIacChT8nPy3Ca4muDtGuO974PKxyjOiaGv2RCTw
         NtT1VWHIpvZTTf5naP90urjmrmlGOjpKKWWfNZwQGnGySSp8HR5ztW14enPrvkBHRLgh
         PQTM+4nD15KPX7EZo1eq5GKSbxNZphcyIBqvKHvvW6uYgKHWJnE7S18UBncza5FCefgs
         o6vEnRjBrutmQg2ID9hHgxPl2ycL4aKV9ct2ywwWcqCVPvXOH773jYATUYCTH3j3jglu
         LqNa+hC83uFqPYawoodGPonHTZIjitrtczqIMThEnJefPI9iFVayfW9WzpY5c0mtB/L/
         5oiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532NNWL+fhvO1MR3jVQCGnx9o7ArmCV0grn5rskeaTvkAPhXzWZj
	7chz5vbfLc0348PUkQCQABU=
X-Google-Smtp-Source: ABdhPJwtx+mCIQ+H5Uz3XKyz8Ppy+3SVqfoykYZm9yfny3whriIX14RchYoQVFW8TlLQUeBMQdl9xQ==
X-Received: by 2002:a6b:ec17:: with SMTP id c23mr3626902ioh.186.1598516268628;
        Thu, 27 Aug 2020 01:17:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:d90f:: with SMTP id r15ls239942ioc.8.gmail; Thu, 27 Aug
 2020 01:17:48 -0700 (PDT)
X-Received: by 2002:a5d:995a:: with SMTP id v26mr15962292ios.176.1598516268280;
        Thu, 27 Aug 2020 01:17:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598516268; cv=none;
        d=google.com; s=arc-20160816;
        b=wqFX1eKhE3MVGAuyEho4YczWFKAPqjbbUUFIFO1b2wmQBhLSGruL6VXbWmnyFS8y0e
         /V2jHEc0ftar6VD71p8+osSDiw2Wngv+wFa6AP0GqPwSyzLly6CrFbwHi64748WzwcNp
         egqggpO3apylvM7UJMai/0ehKVTYwhHKdN7nC4moIgXTcM3dQl6bi27HGbQpiWAADRE2
         W1OvbGY/i4JIF4Sg6FJ4ZZKUHRrM8UGReJHXi9cJC+7cf64p2XVlt0t1U7Tj7S3/4+pS
         98S9z72soQ65fWOw0IAcvZ4KKUwO5uh+nrgLI/UkgYZCkr8LAq1UQ+qqx1NrjiIhLof/
         /Kfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bJ9yElb+Acw29JzFUwuSZa0RXTXvyJf8yxtdy5mxBOE=;
        b=c41SePIfnLVE6a41h6c4wBAJYUNopJw9cV9xoT3vew8xilWBKtEsuGmJ2tklprhuGl
         2Tt45AwmzH1x7b0qIhaOrbsle6eLDkD9EWTGKT58izi2RBAVmZEea3e0SY4WBaoIcBRF
         5aBTZ9TedrUCETl3UH+YHX1KLMFNWNNcJ/Ow0bIVeRfTPI5UQitCdav56ek9KyLUGU82
         69a7rPX+zgMJO+GjxPIKsMBcJQYwregeCeTTzUdT6nx/ZJi+owm6spC3ynw5yzuPl3aw
         2rU1/qssM7o5eUy1vjKhl4/kw3kBi+DQNWTeDkaC3ngP/g5mC2zHTOxiKUPOdLTFuZza
         uYqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cYRyCH+s;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id j127si77179iof.4.2020.08.27.01.17.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 01:17:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id d19so2808965pgl.10
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 01:17:48 -0700 (PDT)
X-Received: by 2002:a63:f24a:: with SMTP id d10mr13608822pgk.4.1598516267600;
 Thu, 27 Aug 2020 01:17:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200827062804.16730-1-krzk@kernel.org>
In-Reply-To: <20200827062804.16730-1-krzk@kernel.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 27 Aug 2020 11:17:31 +0300
Message-ID: <CAHp75Vdm2ckfDK8q_coJyFmJjftezu9j3oaEmWxRM8aJos+PXw@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] gpio: Add devm_fwnode_gpiod_get_optional() helpers
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Hans de Goede <hdegoede@redhat.com>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-input <linux-input@vger.kernel.org>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cYRyCH+s;       spf=pass
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

On Thu, Aug 27, 2020 at 9:28 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> Add devm_fwnode_gpiod_get_optional() and
> devm_fwnode_gpiod_get_index_optional() helpers, similar to regular
> devm_gpiod optional versions.  Drivers getting GPIOs from a firmware
> node might use it to remove some boilerplate code.
>

For both:
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>

> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> ---
>
> Changes since v2:
> 1. Return NULL
>
> Changes since v1:
> 1. New patch
> ---
>  drivers/gpio/gpiolib-devres.c | 71 +++++++++++++++++++++++++++++++++++
>  include/linux/gpio/consumer.h | 30 +++++++++++++++
>  2 files changed, 101 insertions(+)
>
> diff --git a/drivers/gpio/gpiolib-devres.c b/drivers/gpio/gpiolib-devres.c
> index 7dbce4c4ebdf..f8476f6a65cc 100644
> --- a/drivers/gpio/gpiolib-devres.c
> +++ b/drivers/gpio/gpiolib-devres.c
> @@ -184,6 +184,37 @@ struct gpio_desc *devm_gpiod_get_from_of_node(struct device *dev,
>  }
>  EXPORT_SYMBOL_GPL(devm_gpiod_get_from_of_node);
>
> +/**
> + * devm_fwnode_gpiod_get_optional - Resource-managed fwnode_gpiod_get_index()
> + *                                  for optional GPIO
> + * @dev:       GPIO consumer
> + * @fwnode:    firmware node containing GPIO reference
> + * @con_id:    function within the GPIO consumer
> + * @flags:     GPIO initialization flags
> + * @label:     label to attach to the requested GPIO
> + *
> + * GPIO descriptors returned from this function are automatically disposed on
> + * driver detach.
> + *
> + * This is equivalent to devm_fwnode_gpiod_get_index(), except that when no
> + * GPIO with the specified index was assigned to the requested function it will
> + * return NULL.  This is convenient for drivers that need to handle optional
> + * GPIOs.
> + *
> + * On successful request the GPIO pin is configured in accordance with
> + * provided @flags.
> + */
> +struct gpio_desc *devm_fwnode_gpiod_get_optional(struct device *dev,
> +                                                struct fwnode_handle *fwnode,
> +                                                const char *con_id,
> +                                                enum gpiod_flags flags,
> +                                                const char *label)
> +{
> +       return devm_fwnode_gpiod_get_index_optional(dev, fwnode, con_id, 0,
> +                                                   flags, label);
> +}
> +EXPORT_SYMBOL_GPL(devm_fwnode_gpiod_get_optional);
> +
>  /**
>   * devm_fwnode_gpiod_get_index - get a GPIO descriptor from a given node
>   * @dev:       GPIO consumer
> @@ -226,6 +257,46 @@ struct gpio_desc *devm_fwnode_gpiod_get_index(struct device *dev,
>  }
>  EXPORT_SYMBOL_GPL(devm_fwnode_gpiod_get_index);
>
> +/**
> + * devm_fwnode_gpiod_get_index_optional - Resource-managed fwnode_gpiod_get_index()
> + *                                        for optional GPIO
> + * @dev:       GPIO consumer
> + * @fwnode:    firmware node containing GPIO reference
> + * @con_id:    function within the GPIO consumer
> + * @index:     index of the GPIO to obtain in the consumer
> + * @flags:     GPIO initialization flags
> + * @label:     label to attach to the requested GPIO
> + *
> + * GPIO descriptors returned from this function are automatically disposed on
> + * driver detach.
> + *
> + * This is equivalent to devm_fwnode_gpiod_get_index(), except that when no
> + * GPIO with the specified index was assigned to the requested function it will
> + * return NULL.  This is convenient for drivers that need to handle optional
> + * GPIOs.
> + *
> + * On successful request the GPIO pin is configured in accordance with
> + * provided @flags.
> + */
> +struct gpio_desc *devm_fwnode_gpiod_get_index_optional(struct device *dev,
> +                                                      struct fwnode_handle *fwnode,
> +                                                      const char *con_id, int index,
> +                                                      enum gpiod_flags flags,
> +                                                      const char *label)
> +{
> +       struct gpio_desc *desc;
> +
> +       desc = devm_fwnode_gpiod_get_index(dev, fwnode, con_id, index, flags,
> +                                          label);
> +       if (IS_ERR(desc)) {
> +               if (PTR_ERR(desc) == -ENOENT)
> +                       return NULL;
> +       }
> +
> +       return desc;
> +}
> +EXPORT_SYMBOL_GPL(devm_fwnode_gpiod_get_index_optional);
> +
>  /**
>   * devm_gpiod_get_index_optional - Resource-managed gpiod_get_index_optional()
>   * @dev: GPIO consumer
> diff --git a/include/linux/gpio/consumer.h b/include/linux/gpio/consumer.h
> index 901aab89d025..7854d80b1e9a 100644
> --- a/include/linux/gpio/consumer.h
> +++ b/include/linux/gpio/consumer.h
> @@ -183,11 +183,21 @@ struct gpio_desc *fwnode_gpiod_get_index(struct fwnode_handle *fwnode,
>                                          const char *con_id, int index,
>                                          enum gpiod_flags flags,
>                                          const char *label);
> +struct gpio_desc *devm_fwnode_gpiod_get_optional(struct device *dev,
> +                                                struct fwnode_handle *fwnode,
> +                                                const char *con_id,
> +                                                enum gpiod_flags flags,
> +                                                const char *label);
>  struct gpio_desc *devm_fwnode_gpiod_get_index(struct device *dev,
>                                               struct fwnode_handle *child,
>                                               const char *con_id, int index,
>                                               enum gpiod_flags flags,
>                                               const char *label);
> +struct gpio_desc *devm_fwnode_gpiod_get_index_optional(struct device *dev,
> +                                                      struct fwnode_handle *fwnode,
> +                                                      const char *con_id, int index,
> +                                                      enum gpiod_flags flags,
> +                                                      const char *label);
>
>  #else /* CONFIG_GPIOLIB */
>
> @@ -562,6 +572,16 @@ struct gpio_desc *fwnode_gpiod_get_index(struct fwnode_handle *fwnode,
>         return ERR_PTR(-ENOSYS);
>  }
>
> +static inline
> +struct gpio_desc *devm_fwnode_gpiod_get_optional(struct device *dev,
> +                                                struct fwnode_handle *fwnode,
> +                                                const char *con_id,
> +                                                enum gpiod_flags flags,
> +                                                const char *label)
> +{
> +       return NULL;
> +}
> +
>  static inline
>  struct gpio_desc *devm_fwnode_gpiod_get_index(struct device *dev,
>                                               struct fwnode_handle *fwnode,
> @@ -572,6 +592,16 @@ struct gpio_desc *devm_fwnode_gpiod_get_index(struct device *dev,
>         return ERR_PTR(-ENOSYS);
>  }
>
> +static inline
> +struct gpio_desc *devm_fwnode_gpiod_get_index_optional(struct device *dev,
> +                                                      struct fwnode_handle *fwnode,
> +                                                      const char *con_id, int index,
> +                                                      enum gpiod_flags flags,
> +                                                      const char *label)
> +{
> +       return NULL;
> +}
> +
>  #endif /* CONFIG_GPIOLIB */
>
>  static inline
> --
> 2.17.1
>


-- 
With Best Regards,
Andy Shevchenko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHp75Vdm2ckfDK8q_coJyFmJjftezu9j3oaEmWxRM8aJos%2BPXw%40mail.gmail.com.
