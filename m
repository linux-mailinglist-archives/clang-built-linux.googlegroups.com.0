Return-Path: <clang-built-linux+bncBDF57NG2XIHRBAP5RGCAMGQEHY6XBGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A44368E36
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 10:00:02 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id z3-20020a67d2830000b029021f3739c660sf6331397vsi.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 01:00:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619164801; cv=pass;
        d=google.com; s=arc-20160816;
        b=obiLElTUY06bSSwtaepAmxlBKS4wG2efhhxoGrrpm1az9AwxNgFhn5DEz28LxSGTJ3
         WzKeex/Oh5opbfiXSHXnkcNvu6iV/57YWat9+5y6rbiqddVGHExIXAlDTqCUBfFYYQWU
         x2wz+TavH48nIE63yeD+zMNSk0x09daCTSP0/Bm0/xpT5ffjYlLhQRcSdiea5Nuz0hGA
         TBEIhsoTn2Cai0CzDEcfhQhIuI8wIisr2RYJOkiVcpb7o4Uks02XbgFuQZ9qwfqU+n81
         W2eWQgaXkIu/0SicPejSrZ3uNUfop8aTKGj/rq60kX04e6AWSp9bjGX0hQILKJVy65Iu
         ykvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=QDzAQkMomHuOYC2X1qMGyCqj4bAsboSpP73l9lK5GrY=;
        b=VTkLiW1qJDdeUnMsVfiLAT54pzdkYIMIUOHOsHY/7W3kM2s5pQVPayRCYgEfJ3pN18
         LdPpHgDqy3XPDgU6SCJ4mNl24ZQqr1POXfTrso/djyJ+mYyhc2uo1o3U+suCoTqjqc/M
         n8fZRwQmQBlHViwUu8s6P1wz3nbtfPrFIPozSLLgQ/ZnbFx6Vx7hudqV1lqpIU2o7lyx
         w+huXs5mr98VO4TOtHVpaAbmramSoZBdxak3dX+bkaDz0U2AMsZ/rZ7o4Hg+abHx4+w+
         LrxGpcB2JN32VI3JJ9m4DxtEpGbgiMWFPEteiOAhLCydR3hJmmxlVzxoq7u9sgnpri+7
         Joew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="GxfOAh/M";
       spf=pass (google.com: domain of ulf.hansson@linaro.org designates 2607:f8b0:4864:20::e33 as permitted sender) smtp.mailfrom=ulf.hansson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QDzAQkMomHuOYC2X1qMGyCqj4bAsboSpP73l9lK5GrY=;
        b=ARgXE4UTjKnkGWMz3vDuJi07WDGv1DoI4VUJWmCOWi1LudBkYsN1TRtSvru5iaimqi
         WubnfS/zrVVKcXUl/hIGT+8m+DKVQX0cLUj/HsbUxWqytXzk+YfP/ktICobB92kRUext
         M1Gni/bQcCuelR6he2iGG1cFw00kaTWd+3JIO1Y9zJa5IVm5P3yPPPNhymu+ifDbjebV
         Ss4njvnXhT1BHO4cIzHwxFjpTCnUloIhfdhUjTfsOXnh4L2iZFxe6GB/U7I9i8gt9XX0
         FDpG9NM2Nt6r/rpsL8xxxmonDTn2tlhLiWVo/CqCeAXVGvv5M5Xj/C9dCirO2u6a97E3
         MqTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QDzAQkMomHuOYC2X1qMGyCqj4bAsboSpP73l9lK5GrY=;
        b=lEtXQ1ZD2/e460utd83y621myvs2QtKzyfYNNp1tY/PbxUTSZPyTEbQXoVS3EJgQx4
         +TfrXg8WbF0gSfNP29rn6PNE4dlQOIOcLl16X52iorul5jBUCbzP50VmFelB1G26xX3k
         d1Ec8w5O0xCXrFoLhfXszSYgPZthcMuPiI7Ec9Tc8aFq2EKHm+C2009zTijM4PiycZXM
         N3b3s65dfpd9O3Hwo38e6V3wG78voYixt8QSf9Pm7B6BAjwkHOfrkPgw7dhX5eKDuVA4
         pZdK06RQrs+VH2X8ABJCXlRxTc7ME6FkCxdmg94PjHNWLDqPhxB0KAY1A1ttQfV47I+0
         CADQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Tf5WsgxPFKTgboG/yQJMPGpL1sG7qcMqc+avNuWcZsbMC0CaF
	H+FfW5YtUoXbzaq+a/hRcRE=
X-Google-Smtp-Source: ABdhPJzw5kZDe10BrAcnoXIG98WcFLpBezz6lEWlSl3faCEcJO6dZkKhH6Pcy/4HM6s5QU+8W0+yXw==
X-Received: by 2002:a67:6804:: with SMTP id d4mr2181084vsc.23.1619164801287;
        Fri, 23 Apr 2021 01:00:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:94c6:: with SMTP id w189ls628207vkd.0.gmail; Fri, 23 Apr
 2021 01:00:00 -0700 (PDT)
X-Received: by 2002:a1f:1c09:: with SMTP id c9mr2101735vkc.16.1619164800815;
        Fri, 23 Apr 2021 01:00:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619164800; cv=none;
        d=google.com; s=arc-20160816;
        b=ujE78weGOXkuvXiJQwqKulPBJ5an2dD8FKdNb+VvC1PAIb3Kf8ozlKxCWpzPuqzEJ9
         Nljh7i36LDYvK8ct48rLL3lNpyuJ0lTVSA3BF1p5oxYoLl1viUwEG7XZHbYaasgl2rzz
         iFngRhPIHWkaaXvZyQvUN0+JKj6ocwE1yjYXLUg+/XUOCVC6v4RHyekfWR5gvlat0pNO
         6t4RpQohxH85TA4dzseQxQo2CQMvlbBLK4qLFKjHMlaARDBJNAedS0kn7DC2fbEYdHEn
         rTuUOXqbdFrC9hHp5MP3EJU5LGWUmwSIW2j+ZJRZY8Qj4Tj2J53DDTVr3yqsMd3WYOyF
         pclg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pmtAlemk9SkQiMZDpYGCeEcDtc4HAQA190oHucpZ6SI=;
        b=JUyEBc8W4R3dUqZs7dmaBfE09G0t4sO9j+ZO7aZho0iIIjHP6Acd+c5gySfn6ZgJmG
         eZl8LYeu6acfy7MtSU/A+Yw3nA4XOmFmHe23W6Y+Q1xjD8tnU38Q6jMxF8ZER4QfxGHR
         pYkkqSs1/1R5zuMLSvSmE/KeXRpQx27FibW/4OCqfwud/bW4rV/7gagQz3+EpMB1vxtd
         m1RfXrKuWFu1F8u1vg7/GOf65vDiseCex0Crw8NKZz1N5Sysmv7j6RrcbLuLyoSOZvvd
         XjxpiohFDFgZBX4+QANYjKUc7MgevIQGoFz+GNFXv1lm4AeDCsXgDHnRYf+Rhw4hTFqp
         Un8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="GxfOAh/M";
       spf=pass (google.com: domain of ulf.hansson@linaro.org designates 2607:f8b0:4864:20::e33 as permitted sender) smtp.mailfrom=ulf.hansson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-vs1-xe33.google.com (mail-vs1-xe33.google.com. [2607:f8b0:4864:20::e33])
        by gmr-mx.google.com with ESMTPS id 27si966888vke.1.2021.04.23.01.00.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Apr 2021 01:00:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulf.hansson@linaro.org designates 2607:f8b0:4864:20::e33 as permitted sender) client-ip=2607:f8b0:4864:20::e33;
Received: by mail-vs1-xe33.google.com with SMTP id o192so8281673vsd.7
        for <clang-built-linux@googlegroups.com>; Fri, 23 Apr 2021 01:00:00 -0700 (PDT)
X-Received: by 2002:a67:e902:: with SMTP id c2mr2022417vso.42.1619164800544;
 Fri, 23 Apr 2021 01:00:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210421135215.3414589-1-arnd@kernel.org>
In-Reply-To: <20210421135215.3414589-1-arnd@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 23 Apr 2021 09:59:24 +0200
Message-ID: <CAPDyKFqy_yqYNjBykv7L3Cbs_bRh78O4tQdf-8+W08yRzyFNOA@mail.gmail.com>
Subject: Re: [PATCH] memstick: r592: ignore kfifo_out() return code again
To: Arnd Bergmann <arnd@kernel.org>
Cc: Maxim Levitsky <maximlevitsky@gmail.com>, Alex Dubov <oakad@yahoo.com>, 
	Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jing Xiangfeng <jingxiangfeng@huawei.com>, 
	Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, linux-mmc <linux-mmc@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ulf.hansson@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="GxfOAh/M";       spf=pass
 (google.com: domain of ulf.hansson@linaro.org designates 2607:f8b0:4864:20::e33
 as permitted sender) smtp.mailfrom=ulf.hansson@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Wed, 21 Apr 2021 at 15:52, Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> A minor cleanup to address a clang warning removed an assigned
> but unused local variable, but this now caused a gcc warning as
> kfifo_out() is annotated to require checking its return code:
>
> In file included from drivers/memstick/host/r592.h:13,
>                  from drivers/memstick/host/r592.c:21:
> drivers/memstick/host/r592.c: In function 'r592_flush_fifo_write':
> include/linux/kfifo.h:588:1: error: ignoring return value of '__kfifo_uint_must_check_helper' declared with attribute 'warn_unused_result' [-Werror=unused-result]
>   588 | __kfifo_uint_must_check_helper( \
>       | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>   589 | ({ \
>       | ~~~~
>   590 |         typeof((fifo) + 1) __tmp = (fifo); \
>       |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>   591 |         typeof(__tmp->ptr) __buf = (buf); \
>       |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>   592 |         unsigned long __n = (n); \
>       |         ~~~~~~~~~~~~~~~~~~~~~~~~~~
>   593 |         const size_t __recsize = sizeof(*__tmp->rectype); \
>       |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>   594 |         struct __kfifo *__kfifo = &__tmp->kfifo; \
>       |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>   595 |         (__recsize) ?\
>       |         ~~~~~~~~~~~~~~
>   596 |         __kfifo_out_r(__kfifo, __buf, __n, __recsize) : \
>       |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>   597 |         __kfifo_out(__kfifo, __buf, __n); \
>       |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>   598 | }) \
>       | ~~~~
>   599 | )
>       | ~
> drivers/memstick/host/r592.c:367:9: note: in expansion of macro 'kfifo_out'
>   367 |         kfifo_out(&dev->pio_fifo, buffer, 4);
>       |         ^~~~~~~~~
>
> The value was never checked here, and the purpose of the function
> is only to flush the contents, so restore the old behavior but
> add a cast to void and a comment, which hopefully warns with neither
> gcc nor clang now.
>
> If anyone has an idea for how to fix it without ignoring the return
> code, that is probably better.

Perhaps, if you can't do anything with return value, why is kfifo_out
declared like this?

>
> Fixes: 4b00ed3c5072 ("memstick: r592: remove unused variable")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Kind regards
Uffe

> ---
>  drivers/memstick/host/r592.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/memstick/host/r592.c b/drivers/memstick/host/r592.c
> index 026fadaa1d5d..615a83782e55 100644
> --- a/drivers/memstick/host/r592.c
> +++ b/drivers/memstick/host/r592.c
> @@ -359,12 +359,15 @@ static void r592_write_fifo_pio(struct r592_device *dev,
>  /* Flushes the temporary FIFO used to make aligned DWORD writes */
>  static void r592_flush_fifo_write(struct r592_device *dev)
>  {
> +       int ret;
>         u8 buffer[4] = { 0 };
>
>         if (kfifo_is_empty(&dev->pio_fifo))
>                 return;
>
> -       kfifo_out(&dev->pio_fifo, buffer, 4);
> +       ret = kfifo_out(&dev->pio_fifo, buffer, 4);
> +       /* intentionally ignore __must_check return code */
> +       (void)ret;
>         r592_write_reg_raw_be(dev, R592_FIFO_PIO, *(u32 *)buffer);
>  }
>
> --
> 2.29.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPDyKFqy_yqYNjBykv7L3Cbs_bRh78O4tQdf-8%2BW08yRzyFNOA%40mail.gmail.com.
