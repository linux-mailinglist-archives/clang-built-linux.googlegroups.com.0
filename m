Return-Path: <clang-built-linux+bncBDUIPVEV74KRB6UO7KCAMGQELGWUD7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 9928A380BB3
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 16:21:46 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id j33-20020adf91240000b029010e4009d2ffsf10304971wrj.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 07:21:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621002106; cv=pass;
        d=google.com; s=arc-20160816;
        b=emDOHr68FEXL0Kw5i0Ioj4kjp3FFPqZzBb+v21N+3QFM5NbSQolIbw2k6nmj2ExXP0
         +U0WmblRQ4U38yFSiVv684e68cqxZ/CbOM7qLNpUobAWRm9uFhOa/GFZVoylHyg7eVbn
         N5bj5YxWJGN2Kw/AaMn8tVUro4xVV8NcJXR3jBib3sgZafYw3xrP9csf5yJrQ6K+Ypjj
         bdRK8wvsZjz20vm1sdxXPvM95rkwZcaruNN3gvpYffODBwRNhtjhAARG1CHDExplTFfV
         5pqGxoFhJcVkAmQQs6HXQV6TcUO2MSuk0yP0vSAwp8NeWP4FZ2PCSe0Cm5iBIorNRuWl
         XPdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=838u7/260jMFUrZ5XeB9SWpY3YsA+F6VBEjMZ2dEnX4=;
        b=OU0ms7r2Jgehig46kRC5dMBUaAo8R/xIiKFfs5MmdesOxTq54br5plQEg1J/NU5cbP
         O7f2H2PvjtjdyhlMn5XipLDE1PE8x4tsYYMLLC9jWz+P14ec41de2MQK2X3xfiD2aDFK
         LCy477de1ob68IGhjt1xtG9rpGJ92ed4AP25sIbEs6y1uCoz3uhS1MlObWFuJy2KyjZK
         dfdH9DPQQWOFy2HIvPDddQaS5dxjtvEsvqPCkM8tOf2RtVS3DDs7v/lkHuDHdefwiuj7
         HU7JTxg8MbCcwvZXpV0xXOfW5EixJ/OqOmSFHrzEIA2jxx9B0xD+hcresk0JSdgKAmHD
         OzMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bCub7K+F;
       spf=pass (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=luzmaximilian@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=838u7/260jMFUrZ5XeB9SWpY3YsA+F6VBEjMZ2dEnX4=;
        b=Di3xvAm8pV0VLM4QYQ+klPETxfeUliKLJkPB8fO3AsTQ3ZbfHApUM/qIfU7KmecltA
         L6+XaZKPYfHV34cRV1OzGhDm3by71MvuHnTUl7fcbGMszaMYDRyLdjk8w04HdrkOwpzy
         0bpDzdOwjPeVET9FQbLkHvypIIW3AzcVqLOQZFYOt4rLeZJZmUn/7EMM5hLTFSOkO/+c
         lYusj+LtyydkIepIwSuhvt2Xb/acfiWdgXVqx3BNv5f14bGnvnEt8gHoW4Vlg/ctx2Hw
         8ThBsXgAOHCqhzCWbQ3mOOS1TB+1Jn4wvuTt170rUfC2ZMDWCTyeM6dzGLMW+1lAU051
         Qohw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=838u7/260jMFUrZ5XeB9SWpY3YsA+F6VBEjMZ2dEnX4=;
        b=PR6OZur8jU7kCdoievxW0wXK1vVHthemayfkqJDd7rL2Vjci4shtwBBlN49V3SriDS
         KD7/pfMXZivWhVYgJ1njW2NAuDCu3ZpHsvkScmRNPP495hH+EbfZ8/SzcbNpin0I3PRH
         V4xlT4pz/obMMcvFSEJTg2nX1/S2Z3t0U7LIbKbrpj18/zYOOPOv/UTn+mlErfZvU8Sx
         ycJazVhZsJ8GfUARaIwszYRfY6uX3oiJmX9vWZmBnOk+nDcfDhh8F09Fs6WowPykbbqH
         dJK+WJtj/NdPk24jJ5Ehi8YeVbtPSXaMyoy1KvPbLatIZzOyB+R1A7W3+A3DNMVD1NEf
         eE4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=838u7/260jMFUrZ5XeB9SWpY3YsA+F6VBEjMZ2dEnX4=;
        b=o2bWXeIMDmeBEwVvTK1+S9QBhHE9weiey+IsSxPFHfsw7A7shldkwGhXH0MGLFh9ur
         8PYuSfT1Q9XXHClbk80p6quR8qGPQwH9j03ydEzhLfDixGDBSmOmNgQEDLQqRlFoEPVw
         Fzu1f//trHTyyA5C9CPURZYMwM37x9N/n/+SHuoeuEma3F7PIg4tBLFC0oo88my1JPqA
         dDoDDfgW8kBtTymM/t3tKeEqnhJIc7JzBLhgTKLekwyjQyaknDMEa/6flkzMKniXIR2H
         RENZM4jNuu2s7ROg2scgZwYG5akO5svqEP7jjCBrfb7huJAwgm/ig8t4GJMz9jeeALnn
         nU+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531MA8T3gz3vEHOimi9T7yLRaz1g/944rsQMvC6rqhHbvUglPyVD
	rKR132dtz65QhCoCxnAJvOc=
X-Google-Smtp-Source: ABdhPJxZNiZWp/oyWGLAklkuHqJjjT7CvFhNyDXxO+YEV8J+3u2gkcpCb4vCokKAeL0vg+CwpbKAbg==
X-Received: by 2002:a5d:4b04:: with SMTP id v4mr7977635wrq.92.1621002106348;
        Fri, 14 May 2021 07:21:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2c4:: with SMTP id 187ls2230805wmc.2.gmail; Fri, 14 May
 2021 07:21:45 -0700 (PDT)
X-Received: by 2002:a1c:638b:: with SMTP id x133mr9937231wmb.182.1621002105429;
        Fri, 14 May 2021 07:21:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621002105; cv=none;
        d=google.com; s=arc-20160816;
        b=ZuHjj/xkDtXSKPIkOkoGqCnLa+19xMK70rwZX1WfW/kELudvoimgFouVruCngWzf5/
         LAtedU5r/WWSnwKDuGCaPTKJdAz7z/YNiZFEhqDFQ418AXrDLLMzlGQOmv/1zAI9AcI7
         +FIe1deijvXa0WSht8WiXTMK/aEJbzg0yllZoelUv5FTh6GLPH4pZV28NEDR8kWx0OLa
         thia5zrfRQZyNbRLIVrHAtm10uJFq7VQ2Hyel/EUgaBcJ27xWwQP0eX7sKkrqAVzCFZ/
         Y4p4r5zRKujRv7YMSSK2E7orS/SxJPLOSE/Vli1HjG1ddu322Sk2XRsiX3tAK5Q0ylar
         mbQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=W6EGw5FDEXhr6iHG779poa/gfRiLcSiy2g55pqc2Xpo=;
        b=hCFte2taU6o9auPtl6sirYnfSncNpCJiV1X4GLpZB4f+R9HuOMDBmgKkARdio0atFY
         6cypxo7K1cqlZsRZ4SsLqJhSipbenGcSCbVAYBW+VkF11ArVobORy+xyDrydmv/0mjMg
         Ibw9rAB08n2eRk6A9z7uBqR9NH2sy60L0jKE7l17VV15WJXVJMqXnGxFvi6GsZRrErQE
         E36g5h/jcZrnhSfnA9/MWsvxWlKtyqtGO+2lIK42JbFXs/Cc7qmTbsh1zOQgEMouRUt9
         4KJ6seXmdqBUnn8+/WR3NYfs6U+7+n9RipWrPWU5q3h1CARA3s8ItkkBQZlnDPp1EOKi
         +0BQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bCub7K+F;
       spf=pass (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=luzmaximilian@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com. [2a00:1450:4864:20::330])
        by gmr-mx.google.com with ESMTPS id e4si271671wrj.5.2021.05.14.07.21.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 May 2021 07:21:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) client-ip=2a00:1450:4864:20::330;
Received: by mail-wm1-x330.google.com with SMTP id p14-20020a05600c358eb029015c01f207d7so1532891wmq.5
        for <clang-built-linux@googlegroups.com>; Fri, 14 May 2021 07:21:45 -0700 (PDT)
X-Received: by 2002:a05:600c:198a:: with SMTP id t10mr8954234wmq.97.1621002104925;
        Fri, 14 May 2021 07:21:44 -0700 (PDT)
Received: from [192.168.2.202] (pd9e5a369.dip0.t-ipconnect.de. [217.229.163.105])
        by smtp.gmail.com with ESMTPSA id v18sm7747958wro.18.2021.05.14.07.21.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 May 2021 07:21:44 -0700 (PDT)
Subject: Re: [PATCH] platform/surface: aggregator: shut up clang
 -Wconstantn-conversion warning
To: Arnd Bergmann <arnd@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Hans de Goede <hdegoede@redhat.com>
Cc: Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210514140556.3492544-1-arnd@kernel.org>
From: Maximilian Luz <luzmaximilian@gmail.com>
Message-ID: <219848ed-e0ce-634a-29c2-caca813b054c@gmail.com>
Date: Fri, 14 May 2021 16:21:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210514140556.3492544-1-arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: luzmaximilian@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bCub7K+F;       spf=pass
 (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::330
 as permitted sender) smtp.mailfrom=luzmaximilian@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 5/14/21 4:05 PM, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Clang complains about the assignment of SSAM_ANY_IID to
> ssam_device_uid->instance:
> 
> drivers/platform/surface/surface_aggregator_registry.c:478:25: error: implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes value from 65535 to 255 [-Werror,-Wconstant-conversion]
>          { SSAM_VDEV(HUB, 0x02, SSAM_ANY_IID, 0x00) },
>          ~                      ^~~~~~~~~~~~
> include/linux/surface_aggregator/device.h:71:23: note: expanded from macro 'SSAM_ANY_IID'
>   #define SSAM_ANY_IID            0xffff
>                                  ^~~~~~
> include/linux/surface_aggregator/device.h:126:63: note: expanded from macro 'SSAM_VDEV'
>          SSAM_DEVICE(SSAM_DOMAIN_VIRTUAL, SSAM_VIRTUAL_TC_##cat, tid, iid, fun)
>                                                                       ^~~
> include/linux/surface_aggregator/device.h:102:41: note: expanded from macro 'SSAM_DEVICE'
>          .instance = ((iid) != SSAM_ANY_IID) ? (iid) : 0,                        \
>                                                 ^~~
> 
> The assignment doesn't actually happen, but clang checks the type limits
> before checking whether this assignment is reached. Shut up the warning
> using an explicit type cast.

I'm not too happy about this fix as (I believe) it will also shut up any
valid GCC error message in case those macros are used with non-u8 (and
non-SSAM_ANY_xxx) values.

I'll let others judge and decide what's preferred, however.

In case you're deciding to apply this, feel free to add:

Reviewed-by: Maximilian Luz <luzmaximilian@gmail.com>

Thanks,
Max

> Fixes: eb0e90a82098 ("platform/surface: aggregator: Add dedicated bus and device type")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>   include/linux/surface_aggregator/device.h | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/include/linux/surface_aggregator/device.h b/include/linux/surface_aggregator/device.h
> index 4441ad667c3f..90df092ed565 100644
> --- a/include/linux/surface_aggregator/device.h
> +++ b/include/linux/surface_aggregator/device.h
> @@ -98,9 +98,9 @@ struct ssam_device_uid {
>   		     | (((fun) != SSAM_ANY_FUN) ? SSAM_MATCH_FUNCTION : 0),	\
>   	.domain   = d,								\
>   	.category = cat,							\
> -	.target   = ((tid) != SSAM_ANY_TID) ? (tid) : 0,			\
> -	.instance = ((iid) != SSAM_ANY_IID) ? (iid) : 0,			\
> -	.function = ((fun) != SSAM_ANY_FUN) ? (fun) : 0				\
> +	.target   = ((tid) != SSAM_ANY_TID) ? (u8)(tid) : 0,			\
> +	.instance = ((iid) != SSAM_ANY_IID) ? (u8)(iid) : 0,			\
> +	.function = ((fun) != SSAM_ANY_FUN) ? (u8)(fun) : 0			\
>   
>   /**
>    * SSAM_VDEV() - Initialize a &struct ssam_device_id as virtual device with
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/219848ed-e0ce-634a-29c2-caca813b054c%40gmail.com.
