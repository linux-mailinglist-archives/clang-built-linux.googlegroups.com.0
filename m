Return-Path: <clang-built-linux+bncBDUIPVEV74KRBEPE7OCAMGQE5SIMVLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 37288381371
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 23:56:34 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id l2-20020adf9f020000b029010d6bb7f1cbsf280931wrf.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 14:56:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621029394; cv=pass;
        d=google.com; s=arc-20160816;
        b=pCc0p6aS+q7v05GvlCBLLPy5t6j/0D3/crPiiFE3BWaICGXCRgacfgR6/VYIWidWTt
         pDIFbGMUonbFrNhfc4nnJiWRHx0DocTm+u8TUpELamY2y7+ecTHqx9Aboh97w//i31OV
         qTzuMyP5MZDiFgeQO6y9+GXsMdm5vBOlbZcw8CmklKft/emk+PbrpWxB3z2crmxoXeyJ
         e6yvYT7qmwK9yNXaBudMOQoB1LvGGn3XR39+TQep/rTsz0/AlVxHp1bLsvnYRrr9QP04
         5gDU7pGfmTqP6BMc8L4Ba66Iz0fGqpeaXW3vCm5STMJ/wmPBjlCaILl5Ha4MhdphQoV0
         b67A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=e+ypaVtDmne5tUTn61i9X9hRMYnei0QetjVYmf0SDpA=;
        b=s9b31Zdn2uq6eFilZkSqx4h9OvZVg1dTGquQ14UQhdv5UYLMIsadZQ5xX40uyNaXzr
         Fg2tIyWyObTzZDRNhMK5M0LjqtN6moyKn385rDs+UsHsgND870lhsdMmbFzyS3Q9V/6I
         T/v9fxgFHPFsEyX+Tgdzym07Rec1VUSLmJmFkqBNOCnE04wrenqHLta5eK/MGlY2JhpY
         xqMD7fI5doJ0l7kpOh6ZYILavqoID+4ORWqNPW0DdcSlsuqLAPxQwoPe7JE+vqAkB2S8
         2ylHhAPYN7D4jtf31FNv9IKzPTJMot2yMp0x0KNMz6wJkr9z027fZALxDEb1tjW6vip6
         /9Dw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RNmz0J1a;
       spf=pass (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::52d as permitted sender) smtp.mailfrom=luzmaximilian@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e+ypaVtDmne5tUTn61i9X9hRMYnei0QetjVYmf0SDpA=;
        b=rCiggEDIcEyKKQHsvBcmGo7u2Tr85JLZluzq/oGcuaDuVub2MYjPYSLUaByubXJGLN
         kKjMOvDdns96win2Gl4fAwOrt8StDPYPpN115etlqST4q7K4h8Qsvs/gIEU64OPtSBko
         WlJ9rG/2Jd11+rDiTrFrDR/p6uTR+1A7hK1ASlRopXFKtGhSKRriGMxx8GfJObwQLlTh
         L4xE69R9ar4fXWnysRs180E5gC8OvN6ph53bi18f/9lQoKVs6OUEBN+sd/u/ZJcS5syG
         wTqOKvyhg/P42W+sUf/Y1nYoiTqcE5cRC3eO2qeT4LTXD+F0eYgAAYjV3oYXQo41oebO
         e76w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e+ypaVtDmne5tUTn61i9X9hRMYnei0QetjVYmf0SDpA=;
        b=oJegdn46MSuLqFLdhbF0gKkiGqVPC1kEQEezzDcoQoTJ30hk7VH9xjovC/zILm+Eaq
         +ZUlDHe+sNsl8JxmFlYor/Qpd2nujOrranBiiLHudV7b6Fi/LrH+6jDdznmQS3pl0Bjm
         yzDZQpXsXeWE1dXH1uz7fk0cw9qAJpLvRLMY3RIEeuRjyOpVsI7+51zE8DkOyHRJRqar
         OZzD0gOay97rnoDpPkZ/tQjDtDUaqgnZ+ElXatjqVZCrNZ84hTs9D2hy6CVsfztVeDbS
         pxliDtd6TC5naRJYeORn4hy0VhwONlmKYFLnqEc8WPNtthBWRk0uwEmYM0d6GZw/5bJa
         9jbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=e+ypaVtDmne5tUTn61i9X9hRMYnei0QetjVYmf0SDpA=;
        b=Sf4jdl+i9TDZM2ilDG/pzze1bzu7rgj5FV1CV3jHtagpE6J5L+COtYYt3uOLDdRZiZ
         1pmxs/27fElshH7aMJIb4XS4GkuGhhTQ3/Bv7an/9OasJmx0HZ1UMmh49StDJTWweldP
         bX2WzsyQ284AWrIKdFdNeg9Yoz3Sj2V0oNVcKXx8UG+4otEwcwt+yjEvFzxbVQIH4wac
         oxNK2BqaLzT0kuF4EGIj5VWPgro2tvbEQurMXT84VDNZ4LJgb39ucQi5zKwKur8PHbVv
         mydbCbE1RH6vbyLnvWORxgdyFn/4iTGCb3SwzdI5Q4vt+HtjaP1UL5ytDSk5qcNnWaLA
         y9ZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530QNsqwyRYzM+DClk6HVhJSnzBcO2co240+3JL6aMyAvT+TWufn
	2MsSrMADA5hrZ6QUhQxpThU=
X-Google-Smtp-Source: ABdhPJwyXhLY8nXwgQmnGtmkh1flqj8sM6ks6N80bogDB2kax6ojxqJ9xSl0RCy94S8izLsoKyRThw==
X-Received: by 2002:a05:600c:293:: with SMTP id 19mr52052306wmk.144.1621029394023;
        Fri, 14 May 2021 14:56:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:9b95:: with SMTP id d21ls152143wrc.0.gmail; Fri, 14 May
 2021 14:56:33 -0700 (PDT)
X-Received: by 2002:a5d:6b52:: with SMTP id x18mr14639153wrw.11.1621029393181;
        Fri, 14 May 2021 14:56:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621029393; cv=none;
        d=google.com; s=arc-20160816;
        b=xlJkI/pv8AhCOjl3O6PTuK3i4a6dlw614KxufW+Qitn2EF3SJrsPOKW2UBsM/XvCoM
         Sqc4OAnXCha7r20Drb5yxkT4nVKIK7UTu8lO64cYN9waoSVkRpBB/MBijfd5tarBtQTF
         RehuyceT8UnuDdyrNyzF23lGP3clF+DIkHqdZttwub4nP+n7TCgOW4/5ZMup/fNdgI8Z
         JbGq7AKqU7axGrB70IEmm+6t5eSjBlggmY1IjxTXDA5IoY+vtF8NaSP8Xl3P+cNXGs64
         LcmJvMkuY9ysFmtvN1HeY48ciHcbnlnugVhFa7OCcPWGXlpeOlM9hRMBSdTSVdnY5R1E
         U/ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=61B9WevOpoQNzFK6pLWh/9kRzelEclfMSAISHfMU93Y=;
        b=HsI+PU6hutBNq5bNzFT4GSDB4gZ7Mr8C4bpRN5F7sl+4OoqYQdfSp7gRG56zz8Ps+p
         cZ46P1iVf4nq8j5+qz1nhy7EJJ1f2WbNJDPzIxdGfvOVpQ9YuXOI77ML7hBTClhEYBii
         HsBUKxeOg4ioiBCAcqEJZLCPr5SZRMz2e0BVBCmYxF3/366wIik3SSJRxicRX6YM0k4P
         CWJ6I498ItYdt8xDxh7oO3vDBFj5p9aPSXFrNb3mVyfeey+JUiQS/wtz9bv8bEUbEhC9
         tXMEbhSH9cieJIj67dtK6MTu38tjdolRU7AqghvxM1gywdZ+CMg+KyC4a2akiqGpyKeB
         MfxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RNmz0J1a;
       spf=pass (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::52d as permitted sender) smtp.mailfrom=luzmaximilian@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com. [2a00:1450:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id o11si80261wmc.0.2021.05.14.14.56.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 May 2021 14:56:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::52d as permitted sender) client-ip=2a00:1450:4864:20::52d;
Received: by mail-ed1-x52d.google.com with SMTP id di13so200278edb.2
        for <clang-built-linux@googlegroups.com>; Fri, 14 May 2021 14:56:33 -0700 (PDT)
X-Received: by 2002:aa7:c7cc:: with SMTP id o12mr59525984eds.291.1621029392754;
        Fri, 14 May 2021 14:56:32 -0700 (PDT)
Received: from [192.168.2.120] (pd9e5a369.dip0.t-ipconnect.de. [217.229.163.105])
        by smtp.gmail.com with ESMTPSA id d25sm4220668ejd.59.2021.05.14.14.56.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 May 2021 14:56:32 -0700 (PDT)
Subject: Re: [PATCH] [v2] platform/surface: aggregator: avoid clang
 -Wconstant-conversion warning
To: Arnd Bergmann <arnd@kernel.org>, Hans de Goede <hdegoede@redhat.com>
Cc: Arnd Bergmann <arnd@arndb.de>, platform-driver-x86@vger.kernel.org,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210514200453.1542978-1-arnd@kernel.org>
From: Maximilian Luz <luzmaximilian@gmail.com>
Message-ID: <aa141212-ce68-5f07-c656-8489ff9e7b5f@gmail.com>
Date: Fri, 14 May 2021 23:56:27 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210514200453.1542978-1-arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: luzmaximilian@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RNmz0J1a;       spf=pass
 (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::52d
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

On 14/05/2021 22:04, Arnd Bergmann wrote:
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
> before checking whether this assignment is reached. Replace the ?:
> operator with a __builtin_choose_expr() invocation that avoids the
> warning for the untaken part.
> 
> Fixes: eb0e90a82098 ("platform/surface: aggregator: Add dedicated bus and device type")
> Cc: platform-driver-x86@vger.kernel.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Thanks! This looks good to me.

Reviewed-by: Maximilian Luz <luzmaximilian@gmail.com>

> ---
> v2: use __builtin_choose_expr() instead of a cast to shut up the warning
> ---
>   include/linux/surface_aggregator/device.h | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/include/linux/surface_aggregator/device.h b/include/linux/surface_aggregator/device.h
> index 4441ad667c3f..6ff9c58b3e17 100644
> --- a/include/linux/surface_aggregator/device.h
> +++ b/include/linux/surface_aggregator/device.h
> @@ -98,9 +98,9 @@ struct ssam_device_uid {
>   		     | (((fun) != SSAM_ANY_FUN) ? SSAM_MATCH_FUNCTION : 0),	\
>   	.domain   = d,								\
>   	.category = cat,							\
> -	.target   = ((tid) != SSAM_ANY_TID) ? (tid) : 0,			\
> -	.instance = ((iid) != SSAM_ANY_IID) ? (iid) : 0,			\
> -	.function = ((fun) != SSAM_ANY_FUN) ? (fun) : 0				\
> +	.target   = __builtin_choose_expr((tid) != SSAM_ANY_TID, (tid), 0),	\
> +	.instance = __builtin_choose_expr((iid) != SSAM_ANY_IID, (iid), 0),	\
> +	.function = __builtin_choose_expr((fun) != SSAM_ANY_FUN, (fun), 0)
>   
>   /**
>    * SSAM_VDEV() - Initialize a &struct ssam_device_id as virtual device with
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/aa141212-ce68-5f07-c656-8489ff9e7b5f%40gmail.com.
