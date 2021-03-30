Return-Path: <clang-built-linux+bncBC7M5BFO7YCRB3XAR2BQMGQEMYPURGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 084B734F4DE
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 01:12:48 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id i22sf10881uaq.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 16:12:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617145967; cv=pass;
        d=google.com; s=arc-20160816;
        b=TQJMzbtDn028ASqQinXVQ+OLkSnhOAZ+FMR8GhC9ztIS5EqVkiBEEY6drc1IAWLLMu
         SzJHkQQjRVlUY/Von1R/b+9sVhmi+EsTMcnoqsIncA0YyFBMv01Xbmjc8NqXDMBnkPin
         HGFErs2XyEleQ7dp0MEY2J6KA18Ti4Dou4SRr+PernlB146gfg2QChp7qIF3q8CoSLkN
         vw6DYs29oCRBLknw0D63yGwlJsliuLmsbQxNWNy6uMLO4zuLSE00Wfdccq2fSOlaBX5z
         RgQXgyBwTVAaPLS2tQHAoN4uKtYIaH2Jhr8Ld6wAN2Lyk+VQa6xzbQb54tgv86gzsEhR
         1Lvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=hWQI2HM0o1G6x+Hf4vposyAOiZ1BfGRkjugY114Wc7k=;
        b=tSbm/x4GWGRnwNGHxOMsNvVrHvrbreL6iI80pu2nZzd2a2w+2UxLe1XwhAtK4bgcqK
         dVSmo1FodCa/4KO7557cszK4p16MDqD3QvJrACVWSsAtmcHWfr7NkXQZRW7z/1DZM+TV
         uhDwvBBn0DgJuTLR8DkEAsfhF6CKSqOVhDONH7l/AZkhc+okpiyOh/FvEcv6nLzfwSD/
         WFRSLgGHQzdW1OGGAwLa0dkfWRm3miLqxi7wul17MWXqd8CGHfcCbES2UYVcx8LRI+Lh
         fwFnMnH1jbb7t97jAcM3d3R6A26dukNDeFmIJPHLM0imK+gUDkV6ciMFilGEayJ3cH5X
         olMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Af/h9+ax";
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::32e as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hWQI2HM0o1G6x+Hf4vposyAOiZ1BfGRkjugY114Wc7k=;
        b=PCC3+WDosrB+f7kvtYjAIGFC+mjRaivaws751wW/AbvdkdV04zppwQ0POWhvHtzun1
         VF62mGzMq40ACJH7iXWHw+ObyKWGPM+lIaQQO8fkRDeOH7b+lhdmy3IhFYbip4Wc1e7Z
         W5W3gZOzG8lNw6JmC/OXLIdwxFqO6z8m5FBS4h0Z0cL4yA4ZDBjUp/fkVIzrJTx0oVr2
         b7qTd8NopKfhbK8DIEWJZHE1eCTo+BxWdREMR2cGhx6jB//cEhGMWK6PIr+aefDiGggf
         zEeu1ZFonsJ8LTLg739hvYnBZtH6Ve2K+DfGYnuP/pN1qPiUxrDJ7omxsHpGrnZ4zkAl
         eQlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hWQI2HM0o1G6x+Hf4vposyAOiZ1BfGRkjugY114Wc7k=;
        b=eQoiU+CxSmAwaHD/G78lNnPlL/iyEch4TaNc6+5DXCYXvr9syZ+3/NdXX/6cooZMK6
         oDaRE3lOsVgPtMoJ0dcuNRFgtoXIzabm39EBG/zSw44Iyzol36otCAwBKSvIE8GisVq9
         hPsNw5O+EbTQ5vw32Iye/78NWSC5KXWV143t7P7MmkjW9WFLk01ehS8FfnZfvqzKol3X
         7dcNeJIHqPu0xduYoHjiZ6MEW8LV1Ev9vlXIfqUeHWnqAQk3sPWzFbJi2nMjLsLYt5K+
         1mvpdKZczBnlZuQwguJcbCibmjYJkfFWime2flBRqtlPHY2DN5V3a5mLOyElNcbmhsBz
         NLHA==
X-Gm-Message-State: AOAM5304KTLP8xHuCK0aVJG6NRACwl7YKpwxWpwA8PMb9GGAc7F7bwkr
	PG70Qj3jJJSOGPW7YfdWwaw=
X-Google-Smtp-Source: ABdhPJwDTx3r2Q1kqmZnMwVpktzP33SjEvif+YirtBRaoHqGsJZn5kFHV1oZ3ouwKu7KVDZfG0EQ5A==
X-Received: by 2002:ab0:30a3:: with SMTP id b3mr126789uam.0.1617145966895;
        Tue, 30 Mar 2021 16:12:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2f46:: with SMTP id v67ls31029vsv.5.gmail; Tue, 30 Mar
 2021 16:12:46 -0700 (PDT)
X-Received: by 2002:a67:1507:: with SMTP id 7mr171765vsv.23.1617145966229;
        Tue, 30 Mar 2021 16:12:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617145966; cv=none;
        d=google.com; s=arc-20160816;
        b=QH1Tdl4OAmbL21rpVThfSmkbPJZq+SOqw3cMJ8b1LxLMbKNi6BT+JpwLk1ENVmBoRL
         ErgRYJRW7qeRkdTFBbn3Z9OTM0z820UbtK0PypgFtta5hzYFWFcLhqNBHs86hTSefUhz
         2XGim4cFwF8VsiEDUq+ZKEzZsLQ94jJjO7bNQ8MqxXrH8cu2s3tf6q2P+qvsZgzuvt7o
         CQFc1I80ycEshnGPkNSkxyyqaX/xv6N34P9MB8SIAbiK0/pp8JoKhYyeMau6b//G+jm8
         Cld6PS9g+qOUmcdfkc1omp+hSQDzwCxANcCwZoAn2/l/bnbwkyq3pCf6DbFXQtbrpCHO
         0c9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=qDX+ejIT41EUFfKn1nuqpiCeVTQFXcUBxJeHlcbY8F4=;
        b=wbtnSCs7UchX2VxJRah88UyHVEalAkx+fZ2aXBatMI8jlfwINnMdw+Ji+XyrNB5hyJ
         WHeCS8DTQtgSK/0Wp23cjkeg2Hy8iCcCUudZxZOitkHlH4UYrhSho+qmlD4saHplyuaB
         TJ8wnIx/A++zlZOqiYjFxamMBGkVSUzktfkclg96e8IOOniUPcKEEF6ZsWpMlthddKtm
         MO0PeUo0Aol7k43h77UiRJs87VW+amThuoGYmoLTCHuotCODGcj3G7OE1xjLMhb++aAe
         PG+FrHvkrzzWfN54EoWgv7kSVcQS+DFd3q6rLvSPB+HxHSzYIm6pf5UQdsR5y4IdmhiX
         ggoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Af/h9+ax";
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::32e as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com. [2607:f8b0:4864:20::32e])
        by gmr-mx.google.com with ESMTPS id p23si24799vkm.1.2021.03.30.16.12.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 16:12:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::32e as permitted sender) client-ip=2607:f8b0:4864:20::32e;
Received: by mail-ot1-x32e.google.com with SMTP id h6-20020a0568300346b02901b71a850ab4so17197371ote.6
        for <clang-built-linux@googlegroups.com>; Tue, 30 Mar 2021 16:12:46 -0700 (PDT)
X-Received: by 2002:a9d:5911:: with SMTP id t17mr231853oth.148.1617145965706;
        Tue, 30 Mar 2021 16:12:45 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id y11sm80003oov.9.2021.03.30.16.12.40
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 30 Mar 2021 16:12:42 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 30 Mar 2021 16:12:39 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Jian Cai <jiancai@google.com>
Cc: cjdb@google.com, manojgupta@google.com, llozano@google.com,
	clang-built-linux@googlegroups.com, Jens Axboe <axboe@kernel.dk>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-block@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] blk-mq: fix alignment mismatch.
Message-ID: <20210330231239.GA18041@roeck-us.net>
References: <20210330230249.709221-1-jiancai@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210330230249.709221-1-jiancai@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Af/h9+ax";       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::32e as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On Tue, Mar 30, 2021 at 04:02:49PM -0700, Jian Cai wrote:
> This fixes the mismatch of alignments between csd and its use as an
> argument to smp_call_function_single_async, which causes build failure
> when -Walign-mismatch in Clang is used.
> 
> Link:
> http://crrev.com/c/1193732

That link does not work. You probably meant
	http://crbug.com/1193732

You'll probably want drop the link and to copy the relevant information
directly into the patch description. Generate the error with an upstream
kernel and cut-and-paste the output here.

For others, the observed error message is:

block/blk-mq.c:622:44: error: passing 8-byte aligned argument to 32-byte
	aligned parameter 2 of 'smp_call_function_single_async' may result
	in an unaligned pointer access [-Werror,-Walign-mismatch]

Thanks,
Guenter

> 
> Suggested-by: Guenter Roeck <linux@roeck-us.net>
> Signed-off-by: Jian Cai <jiancai@google.com>
> ---
>  include/linux/blkdev.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
> index bc6bc8383b43..3b92330d95ad 100644
> --- a/include/linux/blkdev.h
> +++ b/include/linux/blkdev.h
> @@ -231,7 +231,7 @@ struct request {
>  	unsigned long deadline;
>  
>  	union {
> -		struct __call_single_data csd;
> +		call_single_data_t csd;
>  		u64 fifo_time;
>  	};
>  
> -- 
> 2.31.0.291.g576ba9dcdaf-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210330231239.GA18041%40roeck-us.net.
