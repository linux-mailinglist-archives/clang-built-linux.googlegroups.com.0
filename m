Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBIWZ5KHQMGQE3IROCMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 859AD4A757D
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Feb 2022 17:09:07 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id q24-20020a5d8358000000b006133573a011sf15462839ior.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Feb 2022 08:09:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1643818146; cv=pass;
        d=google.com; s=arc-20160816;
        b=PVFYAUWC84vGgW5LllkpEFHsl8bkWKH/ow3OVqxtkpmcnOx3tlDS4Bl9nU+RmKtjJI
         FS+y+Vxy3cwP43uydW1AFhyDgJ+ClX052GdtTkaFZnsOSi0ULdAILiSgvirtqkYV0pqs
         dONnu++ph1MxZZakfZP39cbA8IIYOlyUwxcwVtVozUQiDvzmdAP2htTgOz0uuDoHcgfT
         hygEIlA0V9zSCF/B+lOF1yTAk5MgaCnyEiHWiE4ygxpiLmMPEjzNm+1gqaPV9H3BX44w
         OMeAa2jnXYM9jp+3/QumdM5xAagPOVgeITwW/wPqirYlqAAYKwjtHnWt6EWotq7dgqTU
         B7TA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xQpC5eTafseEinWQXBTY0fg5RDIct/JYrx3WqIJTVFQ=;
        b=nnGhpXxGKYMI6u1KvMD6v4MXW4x9U8WwIv3xMvIHVnIxPH3nl7L6M8jOGkELdO81Mn
         xS88FFKGX1o/3pFyvKw4o3vWnobg/b4FdNyzS0ThUuwc8SfIV6LUiLcx1hBOLUHPKS4M
         oFTKfBtbSqiLEqMw9nMCa6kDifLwfeGT0MrYw0dfxKXFluqePMtuWhtX1D1xgug5Qikd
         ojcrNLgQ/ppkrHfe+sbYW4TGHrYdsqn3q74LvIddWuTOtPEIEt1xp9KrjLM6Hm6WFS9E
         btsfUo29chdSW7dv6hTB7dp6BpN20rYMrFtRJv5ruwwoSvzTcikeSn6wEGMRuEHrV1GG
         CL8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="lQg/DOsL";
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xQpC5eTafseEinWQXBTY0fg5RDIct/JYrx3WqIJTVFQ=;
        b=TUGpGH8WxPAIpOgZFvgKzO1TFBUKxy/WGkr5zR9D5gvVo3HH/VLs56auUJrQYkyM3A
         kla9TYOV8OX6nq0McKZWUYMKRcoHIKutZfHHELkMUCHT8BagjhD7ZVbTqxFn17mlUjiR
         /KblQdCCMl6dUZxGIFcPtDx4b+sZbjQINeaY2nihkt4OnPQGllgvYr4N/AjnuChpWylA
         +Ioz/HQA7OAvsTwZvTb81Zs71ZUkKCIVBVZ3+lf74j3KKw9RbRjGvzO2sOjxQ4yV7QRe
         Tcz8666BxDdVxj73vypKrId6d71HSmWnxAgaX8tDBSQo9voYX164j4zGOtMP8bX1zWRk
         N4Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xQpC5eTafseEinWQXBTY0fg5RDIct/JYrx3WqIJTVFQ=;
        b=SoXyjl5tPVBnVFFfXNviIcridO+YjulsvZ4K+hCNskU6HgqRzRJZQFpbb6cErJgD2p
         kbpzHjoohexSaqMtBez5pLkaH6MDwNIerdKiFHsQCNz62q2puXy0lYZYIFINSn/D0Ovj
         Z38wlyaFuxfLxEoTHCnBQ/6kqiAmhJJjiqSWUGZHbQTWVj6Rrms2iG/LRCfsHNK1a1j0
         3Kr63RCQ3rXHtkTv95sG4yJdP5D/Jgzeb25l073YSN9MH7g1kBWCLY3eWYuNS79+EyvP
         BUJYpUuG08zefBZ5O2kB+IMLkNwTbmpT1BlNkvLCG7PFSD/RR5pp9y8fBNgZw0o74D7o
         N57A==
X-Gm-Message-State: AOAM53134w9MHKd9nLpsn4mmohdopJQCxMucitxxG51DJhD0iOmVC1he
	lGo/v+QFGKVdvk7hCHG13HQ=
X-Google-Smtp-Source: ABdhPJwgooGwnNNwgd6Nk6cAx6oO5MqKNL+gAC3xGuDkoVMhNeVOjm8NCcXKZmWnM6xqF9lPzFlCQQ==
X-Received: by 2002:a05:6638:1118:: with SMTP id n24mr16565789jal.217.1643818146282;
        Wed, 02 Feb 2022 08:09:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:160d:: with SMTP id x13ls3078135iow.0.gmail; Wed,
 02 Feb 2022 08:09:05 -0800 (PST)
X-Received: by 2002:a05:6602:2c44:: with SMTP id x4mr16868858iov.111.1643818145660;
        Wed, 02 Feb 2022 08:09:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1643818145; cv=none;
        d=google.com; s=arc-20160816;
        b=wvxuZ03kzP49IFkaHp8AsjNPASRd5rRumZOzWmCEnddxFh0PcGlJyKSNsXGaKUhAF/
         gSlz3yb4WZCCt88+RPoz+imJUqSFeAK/VsKsebCy6ur3Dh07TfZUWr7MEicrqPRfxeCL
         pABsW/wxr1/bDFZUSYaUzlSNYi1Wfp4ybXjznDlxuE6thRTMSPDmPNej6uk5Tjo3gSl1
         d7VDVLMA5qSpcs6JM79fRveCulrljSunOhQGbBS6+m+j66eNzSbIz986uHkEcZLrH0VK
         ygDjELRY92ygx5kLv3hySmVsl0ZLCnvmzDmdoEagbeVVw3v9mKDJWTkZPO/LIyXjikl0
         2gKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=v6kuMWAWRh6UNWKt1To15PX+Alnw0cwwwqkktpikgvU=;
        b=JHnJTjipLBBNCBYNLHc+qNewVr1V72r/LzDxa2zEdN8FD4k4+mnzD9J/xnYEurx1GV
         xlnm5h4d8RsLdLwLWtNFwvyoQKAkTqb9mFP/a7IkpZ8IiRSV67mu8UQFk+gDLoX35DTQ
         m+ojLgJAsKcFvVkqrGA9JCMrt4q7y/Fsr/NIILxpkL8zxsdAqXapzt83Z4PlCoWOYwFx
         VT1ounHNeU2FOw0/Ru+hWkw5yfaS5U6PbIRVobjwd+0iA2QbXPahYkc1NpTM2G04mxtk
         iv8mXhcZ/EMifLikPqvEYgKEoYmG4BMF/FFhRa2VpFiRmLhCJh+V1nYi86l7l0txt9vc
         PoiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="lQg/DOsL";
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com. [2607:f8b0:4864:20::333])
        by gmr-mx.google.com with ESMTPS id i8si3168871jak.4.2022.02.02.08.09.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Feb 2022 08:09:05 -0800 (PST)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) client-ip=2607:f8b0:4864:20::333;
Received: by mail-ot1-x333.google.com with SMTP id l12-20020a0568302b0c00b005a4856ff4ceso11785449otv.13
        for <clang-built-linux@googlegroups.com>; Wed, 02 Feb 2022 08:09:05 -0800 (PST)
X-Received: by 2002:a9d:73d8:: with SMTP id m24mr17206726otk.52.1643818145370;
        Wed, 02 Feb 2022 08:09:05 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id t22sm6044586oiw.2.2022.02.02.08.09.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Feb 2022 08:09:04 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 2 Feb 2022 08:09:03 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	linux-kbuild@vger.kernel.org,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>,
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Subject: Re: [PATCH 4/5] Makefile: Enable -Warray-bounds
Message-ID: <20220202160903.GA2337834@roeck-us.net>
References: <20210818081118.1667663-1-keescook@chromium.org>
 <20210818081118.1667663-5-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210818081118.1667663-5-keescook@chromium.org>
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b="lQg/DOsL";       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::333 as
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

On Wed, Aug 18, 2021 at 01:11:17AM -0700, Kees Cook wrote:
> With the recent fixes for flexible arrays and expanded FORTIFY_SOURCE
> coverage, it is now possible to enable -Warray-bounds. Since both
> GCC and Clang include -Warray-bounds in -Wall, we just need to stop
> disabling it.
> 
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Masahiro Yamada <masahiroy@kernel.org>
> Cc: linux-kbuild@vger.kernel.org
> Co-developed-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  Makefile | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index a4aca01a4835..af22b83cede7 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1072,7 +1072,6 @@ KBUILD_CFLAGS += $(call cc-disable-warning, stringop-truncation)
>  
>  # We'll want to enable this eventually, but it's not going away for 5.7 at least
>  KBUILD_CFLAGS += $(call cc-disable-warning, zero-length-bounds)
> -KBUILD_CFLAGS += -Wno-array-bounds
>  KBUILD_CFLAGS += $(call cc-disable-warning, stringop-overflow)
>  
>  # Another good warning that we'll want to enable eventually

alpha:defconfig:

In function '__memset',
    inlined from '__bad_pagetable' at arch/alpha/mm/init.c:79:2:
./arch/alpha/include/asm/string.h:37:32: error: '__builtin_memset' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
   37 |                         return __builtin_memset(s, c, n);
      |                                ^~~~~~~~~~~~~~~~~~~~~~~~~
In function '__memset',
    inlined from '__bad_page' at arch/alpha/mm/init.c:86:2:
./arch/alpha/include/asm/string.h:37:32: error: '__builtin_memset' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
   37 |                         return __builtin_memset(s, c, n);
      |                                ^~~~~~~~~~~~~~~~~~~~~~~~~
In function '__memset',
    inlined from 'paging_init' at arch/alpha/mm/init.c:256:2:
./arch/alpha/include/asm/string.h:37:32: error: '__builtin_memset' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
   37 |                         return __builtin_memset(s, c, n);


xtensa:allmodconfig:
--------------
Error log:
In file included from include/linux/uaccess.h:11,
                 from include/linux/sched/task.h:11,
                 from arch/xtensa/kernel/process.c:21:
arch/xtensa/kernel/process.c: In function 'copy_thread':
arch/xtensa/kernel/process.c:262:52: error: array subscript 53 is above array bounds of 'long unsigned int[16]'

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220202160903.GA2337834%40roeck-us.net.
