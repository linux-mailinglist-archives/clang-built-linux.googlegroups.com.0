Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMGU7OCAMGQEXA74HZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D3F3812CA
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 23:22:57 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id q187-20020a6b8ec40000b0290431cccd987fsf93424iod.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 14:22:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621027376; cv=pass;
        d=google.com; s=arc-20160816;
        b=HNXYkTUfFLAP8mhukyYg8cG3tfeooM0s0F/VnOotnToCRB5M6pzYzrps8py4xkBcpu
         PUqku/YuWQllFJRBrYhpq9NOs9oiP3brJkp6xkZPvZZ+VQI21ZQe9bHXqxTuarBAJ6Bw
         NDhtbWsIhcDywx+yO0g94s7DhZJ4Bm+olU6lp3DZrgVM0mhdRYkJlgpD16F7oUeLhaYb
         ghQt8JghQlSkmVRu/kFD5iHRiPboZKlqPUUeEW7gNSJsuXT8WVSUB9p+SwuFV60gIibw
         U6hoMtpGQq4Jar0J+Vc6Ot0ldie0GHH5LoZP3VsN92usm85OgZ5+v1+a+097snDmPq4S
         2Tkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=HUdlato/OU3+4GaHqf7y/YloVKhiZZHuixi8cNadVBs=;
        b=xJHBp1NNwu36MmywTEBP8hS2SOmaboqpF6m5HhgwGnZqBAT385yRkfmnoRzWPGFBLp
         08tmTlowpQTY6bI9lr9HrLSJrzamfJWbDx5uHp8oezwOPzF3VlL3/+QAnjHmOIWr3hi0
         HlAKNyf2kAqVnYP9dAIyzaOiFfDJHK4OBmwLandiYNktQzBkdYw3pGymosWHyNQULNCz
         D0RDWmPMv9JlLF89YDoyRhJvXtmnuA/EJhQ1cmWhJFu1cjqiAf49rUOgaARyJqZYYbwW
         nTymJjVRPhhcXsN1z/x6hE3vJr2dqxPuz5vCcx0b5T7FE4XsZlMUV9+UOCyPVErGKi8h
         nwtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NasdIl1l;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HUdlato/OU3+4GaHqf7y/YloVKhiZZHuixi8cNadVBs=;
        b=CgMRjnrE1z6hjLmRirbClt2HKrDwlxr7TQwAbVHVbVcejQGGi3y4J0x84EFl+R4Vk4
         fbMouKhedrUEXPcLXWp1uHPPjjXiOZa9Kd711TpvFB4gSsN0iLQd1R6tyEQ7FVhXBcIh
         az8IWRfO9hm6KfG0/bu3GbDazJzz8+AMQr7kiTDOTWJaM8BPVIYn3oNkHEXLaAL5mQTJ
         bL64N4nVjFbboU1e1CTDwzSEj3IJpqLG1TKr1EdVmJOnqqlhi2pIRbq+UVW5E2KCRzVW
         r54IDC4L0+BGvwBkqatHSCsvKu0gRhDeV4Iq8fdxFFg3repe2XKPkulzm4mzOEik/HWZ
         KiPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HUdlato/OU3+4GaHqf7y/YloVKhiZZHuixi8cNadVBs=;
        b=kMURRVfDBBoaIWFfK7L/YTQqoVx3+S+MsGO5e+Jkn4vafk7cfUzyKUpKzmbiaU2pX1
         asbVJ4zzcbMFKT7lnGBComUolMzPBEX8mb/sYjN468+wd2cNi5wjpJwgzsVNlFMwgZgK
         3vlGLKT8MwuZ0LNlpKvHreU3OZrcmC5mOL0W2g+dbUlArpU5zMIxM6LVPqVLOeqetUY3
         u6Es+7bVgfBM4q0nUGGSXxn3zkHcSKe6Ec6UUCMgZ7EHvMbUTbSS9b0Crlv9oVdEGZlv
         hEKcSWm5eMk5f1NKMdjKBNPGw6yr0sN0hcp57ORqdcMPXQ4wg89RcgeHq9sb3+t9jGXn
         SgYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ipIBxDOnFBCt3ZIju9T9LiJ5w/nV4CrarnBxV/ILDZQIBUXK+
	Z5aZbZESwC5inowod1kt46E=
X-Google-Smtp-Source: ABdhPJyGEtUwR6IZfipsu9cVU6XozbiobnyvdF0KTwXi4WuBcKUTRdsnEn/ysfWN3mh2Rnrdh+OvNQ==
X-Received: by 2002:a92:d1c4:: with SMTP id u4mr32078339ilg.286.1621027376153;
        Fri, 14 May 2021 14:22:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:4a3:: with SMTP id e3ls2568757ils.5.gmail; Fri, 14
 May 2021 14:22:55 -0700 (PDT)
X-Received: by 2002:a05:6e02:ec3:: with SMTP id i3mr32978956ilk.250.1621027375764;
        Fri, 14 May 2021 14:22:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621027375; cv=none;
        d=google.com; s=arc-20160816;
        b=KsNfgv6PVOLkL9b+jX7BdyLifNw6niAYUdHYS+kawp/4tJ3aj9zrtLPcGf4q8c9X2+
         UD5yf3T7NRv/CBa1GxmeW5VrYZgJE4aHYsbLHLz5DPmMrZMrwV+Tvdn0Wrk2Jp+TmBpc
         kL8/zMAcc9enYfN1FOubOEiGzdNjdNQTuO6ewL40ueu6/gvwNvlugs13ddm0zPxMDCqb
         YrzcOAsAPsI2Gq0HnxawRaqVPdOnMA6nqRuOoB5vNeOnIe33TV4ZBzMCd9FOcOGFavvT
         PQaQFzjXJwmRjUAC2htmJu/3ldXOJXxjClGgPHSM5vcZzRk6aTByDaaSTSw/Iu1A3LWq
         BcPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=CnETe2qI9F6c5Qm7ij/9B8nKpkO2SKZ0pVueHpeiL8E=;
        b=ermH0dnkOHdN7Fpgb74etbQApAf8tQM/fE/gvJxrSWlXEvfvwW0WjCDkCz4zq43Fmv
         J3Uu2qiGTkXMYcaI7/RAc/ZZrB8XP1h2FvMSFe+guURSU61EC9ChcFE3YsqhKgcvK5w9
         Wj5SmmzVjnEUOYbtgySLCQp/M+qJWqz27hLASgxz9w2XQUIyXaTC04hPnjzui5s5ch0o
         hGVVcUTTA8aNjcVYAYNidXjPTQt8r7OEjmhs1lCWFhVXgQo5C3OtkSh1CwXVnAPwbrpj
         DJkJhTX26jN34XHUU6TlDYmICFZ9e/IZFwcdmzvvlojPIdB8Eoi9w092MxY+BgBN9hkc
         oUng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NasdIl1l;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r20si321225ilj.3.2021.05.14.14.22.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 14:22:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9FA43613BB;
	Fri, 14 May 2021 21:22:54 +0000 (UTC)
Subject: Re: [PATCH] [v2] platform/surface: aggregator: avoid clang
 -Wconstant-conversion warning
To: Arnd Bergmann <arnd@kernel.org>, Maximilian Luz
 <luzmaximilian@gmail.com>, Hans de Goede <hdegoede@redhat.com>
Cc: Arnd Bergmann <arnd@arndb.de>, platform-driver-x86@vger.kernel.org,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210514200453.1542978-1-arnd@kernel.org>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <057b5568-c4b8-820c-3dd7-2200f61a4d58@kernel.org>
Date: Fri, 14 May 2021 14:22:53 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210514200453.1542978-1-arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=NasdIl1l;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 5/14/2021 1:04 PM, Arnd Bergmann wrote:
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

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/057b5568-c4b8-820c-3dd7-2200f61a4d58%40kernel.org.
