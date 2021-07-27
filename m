Return-Path: <clang-built-linux+bncBD3JNNMDTMEBBO5OQKEAMGQEEMBUYZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 95ECB3D840C
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 01:31:09 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id v6-20020a170902d686b02901019f88b046sf236461ply.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 16:31:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627428668; cv=pass;
        d=google.com; s=arc-20160816;
        b=bOO5I01ICmQ02L31rVRlt2MuZfTJiYfy4vcBVmoWH1vhF7oqYLvN1HKJfp3IkNEI+b
         3NKUwlT399GoD4EcHSWspb5RMQoLRTmtzBeAUUmqYgVAPIV9EMy9d1w97CrbZSndAczQ
         AgkrthVUgE41x4H4PC6aNN1y31nQ5P+2n3ijCEiGTSf+BJvd8UmvaQM1M88rfieRuD0Z
         pVm4Y1fn4dBT/KAAvSvgUNsUrRkq38ZYTTWL1C+91sTAF2ns7cs6NasNFVcrJcZVEVj+
         P4fACyp5XO3hwmVIUSOSNaVwSymKvajzNJzRX+TFKcmquTkjVM8DI/AF7aN+pE6O3lJT
         8kVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=lsuIlBrongLE8kEKYgVG0HA1XZyfrIf54Gl7s1ZaXFU=;
        b=RtJ2K7HZxMIG1f0oFH3mFdfBDBGrRhRCHRTNF7IfJkEelJrWAEvasgpKmHvtBGxe74
         /ZRZBRPEN7NLgocgW1nW0asuG3KI4J84EK1O/i7xgP5zTgBVtnQAaK8MjBJEVaiXA/i+
         ToSQwuCCS3ACBP8BWEn564X9PTg0AHCosOFTDnXCOgBYCj4ZMlrKwwqZeb8sXE8JPjUZ
         VpYnS14tpWehqelE/9pROvO7iWFcvFf1ysOuFevVDtRqV6uPn8JIlff76JtOE+sFdynf
         VrGLzcHCIRq6cyAxl9+Gnb686uPJm+GdBD/bM2xsVDs0sU1ptQfr9un0xY1TrrXw9Kv5
         9d3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.216.41 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lsuIlBrongLE8kEKYgVG0HA1XZyfrIf54Gl7s1ZaXFU=;
        b=o79CrTXBQd+pyC5n+n5vjATb4zu20Y7CYxd0q+rTjbWHtmHh6zL3nRe3nXvqfCZSC2
         O1AouZWWxVqXCPhCo0yeH5sWbkzGKyR00biLhw6GW9tg8ejgM4KdnxyXCd9aeFyBVOL+
         vtGAXyI3kQjJqqQraYbTRXVHcedguFJKLL2zTcqU6TM0JUlSnbK1OpOBHT+cZ1V/NKEC
         Kwaw61i8v+5QF7kwLZbhbXK30i2JuZIRCP8/5pUfcKb05GT9MGYe+1dVNOUtDhOZ4oY8
         Aw4ocaKbXqhpRxPO4+eEf/Mt1oC2n8EMQWIAUKTuz8jErEVMhSU54wBAkfJH5jBee0Y/
         O2ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lsuIlBrongLE8kEKYgVG0HA1XZyfrIf54Gl7s1ZaXFU=;
        b=OCgxtUVkTeUpgppJt3fNn8Hmt4e/7IzUNSMa5aJgNzzbHd84Nks+RcSZOzarsC51Hi
         bUM7FqnUbEtgNaTLHYRmpMr0M25zIrCZUQHKClC2fT4lY84awOQ7C42D6xJCBXTqXYhJ
         OHoUytPJ1+txM9HO09drddGh4QQfFtRQqV6CB2uJWxPqPo/wOyFNHM9qjzuwwnzAG2Ku
         g4faTPatw3GME8lmxWwRnCEvktvA5f/bgCcmZm27es4HXCJmzJzdMevvIOkWlfuKlIJt
         H5hCeC+5K7CU2HL0tKWG12WfPC3qzM3Mx/6MebY91kvClVbewCzkxoMcxZiWoli7+xcw
         WkxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533UpnI/yZg7RfMJpRZrohowJOqR9OTDKJXKQoC/zNF0xo9Es9TK
	JisWKn3hLZ1plu5r4LEUGII=
X-Google-Smtp-Source: ABdhPJzRoxrFUAxpbjYpjwyfQxMYL7k7frbKn7qdtEmMannyExWU7rn4qElM1/T5ElbfA0avtUmbZQ==
X-Received: by 2002:a17:902:7d8f:b029:116:4b69:c7c5 with SMTP id a15-20020a1709027d8fb02901164b69c7c5mr21035435plm.58.1627428668038;
        Tue, 27 Jul 2021 16:31:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e23:: with SMTP id d35ls257225pgl.5.gmail; Tue, 27 Jul
 2021 16:31:07 -0700 (PDT)
X-Received: by 2002:a05:6a00:98b:b029:32a:d9a5:2540 with SMTP id u11-20020a056a00098bb029032ad9a52540mr24543977pfg.66.1627428667230;
        Tue, 27 Jul 2021 16:31:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627428667; cv=none;
        d=google.com; s=arc-20160816;
        b=bf0U/WU7h3+H0eZlh+FwjAUQkF2gYyFZ6Kry1jnRl9NG+u4TFSU61yYLYSAMp7x7cB
         kFqfVadKUk+4BtvS8bd6dpNXfFSxW5M7tJ7oGPqp6qbkJrobC3KBlN3+6IVbAOW86u1d
         Sv/UMKOEcSf9BVzfW6ESyn8Vi3QRayY7JW/REYRB3pAGJJwUg9MSotXvgEpJVwIrxMLk
         H3dM1UlZKW/EAHQJLaIiFKF+hAGjhzO3RNkNLfAJlQjhL3ruueGlbOjS4xhDVT3uO7RS
         EuZgO8XqxqTH7/qV1+TGGyVrbGnNREBch7yQeqH+B6E46Kt0kpP63vR/DHxxsO8ycC0p
         sAuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=cfNumURh2GjYDfPowtmTPayG3eiC6vg99u71kmeqTyM=;
        b=Ho9bjQLESOD5s9nxVysy2l6kZmftgjAq0XVvR0ICxEbGZuJCgl4GLrOHdW7tWjDU+Z
         vqkxgOMth9DAVd0y+Z2VpqUvqVv6ZsMoVL0GdkhiSjFsIhEMZvYwYLbRugM3zYaQZY6r
         lbtPyVpP0TJ0gH+BlQfb9JnRocpHrWPowNyfUxudGaZ/XnLfM+qbxIs9UggVNE2l3vcB
         yOgMpvMcxsnA7cqcD1/e851ETjBQ3wGa7DcgbL6a8GUp2AijAWdHdyeCSgAg5HqB6xhl
         SyKtdxBvCxwXdneMH/t5azo/1P14ETI5EB8E7TEPwUwwbv+X4Tml37ti4t+/ydgWNg/m
         D3nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.216.41 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com. [209.85.216.41])
        by gmr-mx.google.com with ESMTPS id p1si239191plo.3.2021.07.27.16.31.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 16:31:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.216.41 as permitted sender) client-ip=209.85.216.41;
Received: by mail-pj1-f41.google.com with SMTP id b6so2320113pji.4
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 16:31:07 -0700 (PDT)
X-Received: by 2002:a17:902:8493:b029:12c:552f:1fb1 with SMTP id c19-20020a1709028493b029012c552f1fb1mr2088759plo.26.1627428666440;
        Tue, 27 Jul 2021 16:31:06 -0700 (PDT)
Received: from ?IPv6:2620:0:1000:2004:f8ef:f6a:11cc:887d? ([2620:0:1000:2004:f8ef:f6a:11cc:887d])
        by smtp.gmail.com with ESMTPSA id j12sm4695249pfj.208.2021.07.27.16.31.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 16:31:05 -0700 (PDT)
Subject: Re: [PATCH 33/64] lib: Introduce CONFIG_TEST_MEMCPY
To: Kees Cook <keescook@chromium.org>, linux-hardening@vger.kernel.org
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Keith Packard <keithpac@amazon.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
 linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-34-keescook@chromium.org>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <9827144a-dacf-61dc-d554-6c69434708de@acm.org>
Date: Tue, 27 Jul 2021 16:31:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210727205855.411487-34-keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of bart.vanassche@gmail.com designates 209.85.216.41 as
 permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
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

On 7/27/21 1:58 PM, Kees Cook wrote:
> +static int __init test_memcpy_init(void)
> +{
> +	int err = 0;
> +
> +	err |= test_memcpy();
> +	err |= test_memmove();
> +	err |= test_memset();
> +
> +	if (err) {
> +		pr_warn("FAIL!\n");
> +		err = -EINVAL;
> +	} else {
> +		pr_info("all tests passed\n");
> +	}
> +
> +	return err;
> +}
> +
> +static void __exit test_memcpy_exit(void)
> +{ }
> +
> +module_init(test_memcpy_init);
> +module_exit(test_memcpy_exit);
> +MODULE_LICENSE("GPL");

Has it been considered to implement this test using the Kunit framework?

Thanks,

Bart.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9827144a-dacf-61dc-d554-6c69434708de%40acm.org.
