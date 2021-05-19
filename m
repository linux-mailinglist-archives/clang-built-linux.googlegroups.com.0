Return-Path: <clang-built-linux+bncBDRZXY4CYYORBO45SSCQMGQENUIWH4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC05388EB5
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 May 2021 15:12:28 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id i15-20020a6bee0f0000b029043af67da217sf7760707ioh.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 May 2021 06:12:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621429947; cv=pass;
        d=google.com; s=arc-20160816;
        b=hqfx1Sbjlumxl/uDnjASy2hvL7gIy+bAjKlQ6/SF/I6qr4vd+x5J6FFjL3neFv05dU
         8kLBgZf89QyUmZYG2BaYEtncbOVUPdZrgsyrLhnhvVW3fRrxN1UGovxYBHtwKojLSBo0
         baS4s/L0jDUuga4nmqscXU7C4Io8yZJ+XeyYxbPckI7OzRwl2Bp05lrntf5VHZ7iwber
         20KbfFu2u6wO6wrakIHRmrI7EFL/CWIw24HrfUw4/ufNbcG9o+GOv1pyCVrPXfFqbMZ+
         dTvFOBlpWbjEbHQvlontof5w7/UxWTjyRY9G/updD8EW4p64W9emqKfYZEBlDjVEJaub
         GTyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=RxqtNpJrC+Cv8rRKlzTPY0NE0fFVf+1GfmZ8RDcweYM=;
        b=E4uzmaxxb5gBWWWIIPCD1+nYamufOwaFQ+NeQp6t4bLnxWne5Mr2NjHJGyuCdxO9v/
         d07//9WPy8QjGH98Ihq4o+IDgpo3a/x4xFX4Y363ul94qYo+HAnBRlHqz01h84Np/Dmm
         i9YdtqtaEu8Pb0vakMoTdcZd5EJ6mjMH11bgIyAvDpS3YHjJVHR+m410IrXYQg/wKKtO
         fgS7ScsLYcjx1diYMyXnilI5f6FvIs/a/g29sC+OfBIBPsqbA52V/jV4QyfjNqYYh0XN
         ebT49eYEmcpHa/mSOk5glIzyDVGzNXmgv9pBEyp9PxOQQGIBcxEglsYSN7D5AW4OvWzp
         re6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="S99Bv/x3";
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RxqtNpJrC+Cv8rRKlzTPY0NE0fFVf+1GfmZ8RDcweYM=;
        b=WENiTQYATGLXRn4+/OHKUyOAidpg78Qg+fi91ToPJ2YiqufZF9/rwpd9T1c9j6Iuia
         QOQgmr1We/QPxrfxYKHG/+Dfzz8CSY/rCvpNxcihcA0ztoqZBUFTABOEVTusG/P/f6hX
         0CN11mO7i0LORzC+TX1IGlq8R9G1GApqy/GRGNeFX58FbEw0ZRIJpM+OoMFsbBMhiLk5
         4cbGGFIUeywjtWHfmhKKDL0M1oc0Y193nZxIGDO/4hk8xxgPZn3FiT0flWJbihwMs8gD
         g2vqJgPZPB6/X8rwpRO8gKMzFKs9w1Lxr5HI6B9aLbJSsrhbzbQe+wkJWWjy8ELXKQgd
         S2CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RxqtNpJrC+Cv8rRKlzTPY0NE0fFVf+1GfmZ8RDcweYM=;
        b=OfnAP4nUWPso9rrYnkIac4Ml/dONht+dD+mtNflD+ybVqKjJ40htW3VP1reCgrDzyj
         EUgt4A5BlhxLc2kdzjy863Wmf+bO9wH/zbaLTh1FbZXEJoPUfrA1vgd44ectEUDFOJnG
         KHfjPyK+x3VwLLzIN8PNBz0M0ZacXZSP0C37NQc5jDWv2OdF6BiBgzWdRqO/9Fgyx1/h
         ukdH+QiTE8qxPrVTuSMHNPTaoEtpeZVkG1UjVi02d4Di4xTJw6tvW+jgzV/Rlgt9zx3P
         FHjCD3UaijjB1SyTsGzp4ai9ObmC/h4jKR5IxPuw36W7KjbZHxuamZsLj9yNmV1zWHDt
         RS/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530KPQ0w1butFApRrrJV6PWpKed5O6ysRYf4oX65WFmzWt8fJHT2
	WzAnbb+FxYDGwcXymEds9Rk=
X-Google-Smtp-Source: ABdhPJzMhEpvTrBw+3TG7UrSrUH9o2CUNYPdjSkdSjPEDdGBc/OFCeV4Msd+TXsCi0Rx6ecQr97S1g==
X-Received: by 2002:a05:6e02:1302:: with SMTP id g2mr10208125ilr.259.1621429947827;
        Wed, 19 May 2021 06:12:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:194a:: with SMTP id x10ls2586745ilu.6.gmail; Wed,
 19 May 2021 06:12:27 -0700 (PDT)
X-Received: by 2002:a92:c149:: with SMTP id b9mr11139755ilh.195.1621429947385;
        Wed, 19 May 2021 06:12:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621429947; cv=none;
        d=google.com; s=arc-20160816;
        b=yhBPzIWh1V0NdbGGyPYzSz19WNTJSLo7sZUrzNQ1GQ5sSPlsHI6/B4fFNE83CHvojr
         9zHrg7hYTJw2D3F+tFdlu55Lv4MvCYc7ID3ExcPx8/Sfwky9Fc6P1zg7t2zzMGS0ogzS
         59d0AZkalb85fKMl5t+UbyJ0gZDTnwF6om4ztWRDHUjmAaxd8+oksLJqFi4pW3XvBtFr
         Vh1yeHRNHCY8RNjkaSUhOISzNQyLCBPFXcc6x4mOutyoPTOK+pQiEFQK6M4Yjtv6180q
         14L2DbWWbIW6Wwjm5fwIf3bOp+tCZDS+QBKcyv7Y/DoixOb+VEmpeY2WhCXhjvOR1Z4y
         4j+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=PGGZ3Ap7WMfISommx5/p4o4QgfX5H0jYWS0exbqFy2g=;
        b=TCG5qLkchF1JIVyZHS+Z6/lboDM+FjS78I9PKbm4FZeVfj0THES3XSS6nBEaDvKRtJ
         J756GNgjsbJ9Fwsosg94P7fWJ0+lo5Oi/omEp8fXFX9a2i4YqpCu0ImlBGTR5A1vGwsq
         anokqFSi0u5zz17GeqTaE648RmT4m/4T/QIW5kDHiW52Sw5TjP0aNKgUc2Fy9mw2npNN
         HN+KM/XY8JooCz/uusvLWa0swF7B/NEqwy13RnSJnirebcFNzNj/UU/oiO1RLNc12aPi
         3H5TW+4zRFq/b1c5ROR0k6NGbeSpj/JhOfUC2lMgS123+Jc84l0aGfJ8vi2sWa/u4B5a
         bOdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="S99Bv/x3";
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id l25si1182557ioh.2.2021.05.19.06.12.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 May 2021 06:12:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-183-W8r_OhMhOe2TeMvKrr_Q9g-1; Wed, 19 May 2021 09:12:25 -0400
X-MC-Unique: W8r_OhMhOe2TeMvKrr_Q9g-1
Received: by mail-ej1-f72.google.com with SMTP id m18-20020a1709062352b02903d2d831f9baso3661131eja.20
        for <clang-built-linux@googlegroups.com>; Wed, 19 May 2021 06:12:25 -0700 (PDT)
X-Received: by 2002:a17:906:c448:: with SMTP id ck8mr12531289ejb.497.1621429943750;
        Wed, 19 May 2021 06:12:23 -0700 (PDT)
X-Received: by 2002:a17:906:c448:: with SMTP id ck8mr12531249ejb.497.1621429943447;
        Wed, 19 May 2021 06:12:23 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id n17sm15690961eds.72.2021.05.19.06.12.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 May 2021 06:12:23 -0700 (PDT)
Subject: Re: [PATCH] [v2] platform/surface: aggregator: avoid clang
 -Wconstant-conversion warning
To: Arnd Bergmann <arnd@kernel.org>, Maximilian Luz <luzmaximilian@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, platform-driver-x86@vger.kernel.org,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210514200453.1542978-1-arnd@kernel.org>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <86f09344-7e88-bad0-282d-d76df5be333b@redhat.com>
Date: Wed, 19 May 2021 15:12:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210514200453.1542978-1-arnd@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="S99Bv/x3";
       spf=pass (google.com: domain of hdegoede@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

Hi,

On 5/14/21 10:04 PM, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Clang complains about the assignment of SSAM_ANY_IID to
> ssam_device_uid->instance:
> 
> drivers/platform/surface/surface_aggregator_registry.c:478:25: error: implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes value from 65535 to 255 [-Werror,-Wconstant-conversion]
>         { SSAM_VDEV(HUB, 0x02, SSAM_ANY_IID, 0x00) },
>         ~                      ^~~~~~~~~~~~
> include/linux/surface_aggregator/device.h:71:23: note: expanded from macro 'SSAM_ANY_IID'
>  #define SSAM_ANY_IID            0xffff
>                                 ^~~~~~
> include/linux/surface_aggregator/device.h:126:63: note: expanded from macro 'SSAM_VDEV'
>         SSAM_DEVICE(SSAM_DOMAIN_VIRTUAL, SSAM_VIRTUAL_TC_##cat, tid, iid, fun)
>                                                                      ^~~
> include/linux/surface_aggregator/device.h:102:41: note: expanded from macro 'SSAM_DEVICE'
>         .instance = ((iid) != SSAM_ANY_IID) ? (iid) : 0,                        \
>                                                ^~~
> 
> The assignment doesn't actually happen, but clang checks the type limits
> before checking whether this assignment is reached. Replace the ?:
> operator with a __builtin_choose_expr() invocation that avoids the
> warning for the untaken part.
> 
> Fixes: eb0e90a82098 ("platform/surface: aggregator: Add dedicated bus and device type")
> Cc: platform-driver-x86@vger.kernel.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Thank you for your patch, I've applied this patch to my review-hans 
branch:
https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=review-hans

I will also include this in the next pdx86-fixes pull-req for 5.13.

Note it will show up in my review-hans branch once I've pushed my
local branch there, which might take a while.

Once I've run some tests on this branch the patches there will be
added to the platform-drivers-x86/for-next branch and eventually
will be included in the pdx86 pull-request to Linus for the next
merge-window.

Regards,

Hans


> ---
> v2: use __builtin_choose_expr() instead of a cast to shut up the warning
> ---
>  include/linux/surface_aggregator/device.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/include/linux/surface_aggregator/device.h b/include/linux/surface_aggregator/device.h
> index 4441ad667c3f..6ff9c58b3e17 100644
> --- a/include/linux/surface_aggregator/device.h
> +++ b/include/linux/surface_aggregator/device.h
> @@ -98,9 +98,9 @@ struct ssam_device_uid {
>  		     | (((fun) != SSAM_ANY_FUN) ? SSAM_MATCH_FUNCTION : 0),	\
>  	.domain   = d,								\
>  	.category = cat,							\
> -	.target   = ((tid) != SSAM_ANY_TID) ? (tid) : 0,			\
> -	.instance = ((iid) != SSAM_ANY_IID) ? (iid) : 0,			\
> -	.function = ((fun) != SSAM_ANY_FUN) ? (fun) : 0				\
> +	.target   = __builtin_choose_expr((tid) != SSAM_ANY_TID, (tid), 0),	\
> +	.instance = __builtin_choose_expr((iid) != SSAM_ANY_IID, (iid), 0),	\
> +	.function = __builtin_choose_expr((fun) != SSAM_ANY_FUN, (fun), 0)
>  
>  /**
>   * SSAM_VDEV() - Initialize a &struct ssam_device_id as virtual device with
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/86f09344-7e88-bad0-282d-d76df5be333b%40redhat.com.
