Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFGG232QKGQEA5NN6QI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4A51CB701
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 20:21:10 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id u7sf1923835pga.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 11:21:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588962069; cv=pass;
        d=google.com; s=arc-20160816;
        b=QeRsAIZCAdm79kjXZjY2LQB1M20TSlhGkqUwkavb8hJ/sk1VCSosOHEcCQchLRA1rS
         gk0oo8UuyMRoT9gnt7oAhNR+1BSC+D/G8iMq2qyympppsfi5k51THVjcMerOhMTSMM5o
         uB8LQQjNvc2qQtQkMQZsbaKgOPbmw/tFau0CyODC0/cAVV808fhaql5uukQqkkwmVVD7
         PQG4hyrJpjZmuZQnx0niqv7Z8fSGQJuVHEO4KtGPeu3gDXtmhnAXW+391czt1KWN60Xt
         d7NM4ysZS6EK7qC6rpG1Gfpqcvb/wwj62JKdSIZI+2Z+JyrvXvqEefKG94rzjv9reYYK
         4svg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=g0+5hxF+H9BwqN6p7X8H2Qm0jgO7jvV1hqiNDZaf2M0=;
        b=LdoNM5yR9vKqccR7SJyfkVp3deEbyc3/bdFeyr+KNWmmjDBfuF1iT2/Lzn0pzs3zou
         +dIbfW0aExSzA18uIVefyJHWh37pAW9zXYiGlP7EOfDXdpruBpDnmQhw3HUJrExovWh/
         TL4y9Inq5Vt3qOndZmhH7YdbE6P16FX5pFRTNIfZ7bNvjsoV79452rGW58fZjf6KPx1R
         UTFU8tNwoKssE9Bb2vqbpxPR+Zn8tCOqvERaHlTexeA6RTCr2FtdW1Be70BM03S8x1/2
         NMWL1UdbFlYnZJeKPnvOMcf3wV/j1Lle3IR94t3Q1yHxTNKREzz3pc6v3DGjX8oJpVTo
         g1qQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XvYm4YU9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g0+5hxF+H9BwqN6p7X8H2Qm0jgO7jvV1hqiNDZaf2M0=;
        b=lqh8KpzHA1I79iI6hEAmycuWAcPpsTZ60XoEaD/ZtO1EoRzbhvacaCxntLrU+Vdrhw
         bMKBwCjYctcCsAbDuirhyxzgwnnZVWn0jFSAol6aGbufT/4IujD9epbuC9HlfanUTeqO
         KvcS9kz+SYqhP2OYJlltpkhTUs+in+n0aKfwsnWF4bt794+SFhYzl28/W3apXth6SBlV
         rcpw+9p1Kpp25dpDVuHz8JIq+n0DThnlXZIAMM5mngc7wdjqrP2x356LwdcgIhX9vWei
         lakQAfh8ZiAf+33sbJOk8xoi1JLRWq4jieW3k/VGHLf7ycW9vcYQJlGL5BXQTtfZRRZ3
         AZYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g0+5hxF+H9BwqN6p7X8H2Qm0jgO7jvV1hqiNDZaf2M0=;
        b=omjqx8Kww9gXpMLaD6UOUCtTwyXWjCO0z4TYyzimdWwBQ4WE2ppkpcPZdAxin/IHN/
         rFjgjxNnhSKT969z4WKuhdT8mFV/3rSX4f58UCgIq9KS/VmiZR5v9VJX2Uf9S1AV1YdS
         YvkvO/tVQkGk9g7yNXWKKeUdg6RJe83dWvvPOQ4Dk7dSMvIomS3NmOUEpfSmm/zIN6ql
         aJEMbi1WWu6FsNpYBKpQLlIDKqBaj2RUFhNjJWdlcNdbt7YZ2gOu3XepI/rgzawIS2WQ
         0Dil2DzdH2B5kxNrdq+YUQZd0LqBVMlG/pZHNLZL+V9tNFprOx0YEkmGb0rZ1N2PS1n8
         omTQ==
X-Gm-Message-State: AGi0PubOJ3sT/wjXHkcdbwG8ow4Tlj79SazOH1Uy3oaZSb4t8ww+QkL3
	kNwlmWzqUXvbWGLMi1VieE0=
X-Google-Smtp-Source: APiQypIqVCo532vi5nCcY7TbdfO4aguqaNQM6wsjcCUGsGQwgRETdsepOqtKAJNwDpoAar5QfL7STg==
X-Received: by 2002:a17:902:bd89:: with SMTP id q9mr3556417pls.161.1588962068983;
        Fri, 08 May 2020 11:21:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:370c:: with SMTP id u12ls12672842pjb.2.gmail; Fri,
 08 May 2020 11:21:08 -0700 (PDT)
X-Received: by 2002:a17:902:d917:: with SMTP id c23mr3605974plz.49.1588962068582;
        Fri, 08 May 2020 11:21:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588962068; cv=none;
        d=google.com; s=arc-20160816;
        b=LVwEcgr2TtKr4toQ2ifngyCTZR0QuNFZkNbxjK+qVXvSCER90TZoGvQTNT4xW2ij69
         qzhTiuVE+bGhIdUBPPLB4y59LUhVBinUcm8244wjJFdthj2z6Vwr5zEh3bXoJsIZUAmS
         I+gYQWDloYggp+QoqCvggHFktnuwAKpFNAaYSWB2DO76lTGq6PTbIk6egRgs2i7M3emz
         jx5zypnZYJ45JNCVJYAUBZWnuoWdivWQYOJuuumuSxz6rCc5+QqAqSw8znYcr/5UfqDk
         +MeioTk5bsLfO95y+5wc1o04/AzUzAofmo5IoNKCLMHOxLLbvY9ojOcHQqo9bpI0BiML
         /C+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MtptXvN0u1ghf1Y0NDnybYTwzJTfjGhpiEoFrpWGk6w=;
        b=vdnVHr1pu6l9aQtoYriwqphkL+8uaQo/nUjPEO9uiaLJFciLmJKXm2fAk6dvuqI7QI
         ap7N8ArLiFZgw3VrAJOh9iXW7qjDh76MKJQEQ7/WkDi9Vgx2xpj9gqjHuwzzRgsk3GMP
         FhOKaBeaLzg4OcOIcTKp2sgPzSNRw9KV1yAevzuQc1Q7zWnQPhWyX2YBEuFEbwOTYBq5
         IuxyTnejkXGI4fuMA9DfEskrx2VwK80XtJ0EUDv8dpWdTqUDW/BU5HNJC0kKuDgszS7S
         o1yzVA9MD7I79wgdwifkHbZhXkE3paWFH/Br6+asVI1mHqxSlyn+5/MjUenODPnhS2v5
         uZqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XvYm4YU9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id l10si92437pgh.3.2020.05.08.11.21.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 May 2020 11:21:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id 145so1349865pfw.13
        for <clang-built-linux@googlegroups.com>; Fri, 08 May 2020 11:21:08 -0700 (PDT)
X-Received: by 2002:a62:146:: with SMTP id 67mr4260150pfb.169.1588962067915;
 Fri, 08 May 2020 11:21:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200505142408.1113763-1-arnd@arndb.de>
In-Reply-To: <20200505142408.1113763-1-arnd@arndb.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 8 May 2020 11:20:56 -0700
Message-ID: <CAKwvOdmQ8pzxGdNEJ=eG+rRFK1J4Xg6738dYvdZSqf0u0gtscw@mail.gmail.com>
Subject: Re: [PATCH] iio: adc: ad7476: fix clang -Wpointer-bool-conversion warning
To: Arnd Bergmann <arnd@arndb.de>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Dragos Bogdan <dragos.bogdan@analog.com>, 
	Beniamin Bia <beniamin.bia@analog.com>, Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
	Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XvYm4YU9;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, May 5, 2020 at 7:24 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Checking the pointer value of st->chip_info->convst_channel is pointless
> since this this an array inside of a struct: even if st->chip_info is NULL,
> the pointer is non-zero. Clang warns about this:
>
> drivers/iio/adc/ad7476.c:312:40: warning: address of array 'st->chip_info->convst_channel' will always evaluate to 'true' [-Wpointer-bool-conversion]
>         if (st->convst_gpio && st->chip_info->convst_channel)
>                             ~~ ~~~~~~~~~~~~~~~^~~~~~~~~~~~~~
>
> I could not come up with a sane way to check whether the entry
> is valid, so just remove the check and keep the behavior as it
> is today but without the warning.

Me too. Thanks for the patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Fixes: 3a6af93dd66e ("iio: adc: ad7476: Add IIO_CHAN_INFO_RAW for AD7091R")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/iio/adc/ad7476.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/iio/adc/ad7476.c b/drivers/iio/adc/ad7476.c
> index e9984a38fc4c..4e816d714ad2 100644
> --- a/drivers/iio/adc/ad7476.c
> +++ b/drivers/iio/adc/ad7476.c
> @@ -309,7 +309,7 @@ static int ad7476_probe(struct spi_device *spi)
>         indio_dev->num_channels = 2;
>         indio_dev->info = &ad7476_info;
>
> -       if (st->convst_gpio && st->chip_info->convst_channel)
> +       if (st->convst_gpio)
>                 indio_dev->channels = st->chip_info->convst_channel;
>         /* Setup default message */
>
> --
> 2.26.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505142408.1113763-1-arnd%40arndb.de.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmQ8pzxGdNEJ%3DeG%2BrRFK1J4Xg6738dYvdZSqf0u0gtscw%40mail.gmail.com.
