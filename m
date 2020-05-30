Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAE2Y73AKGQE662NDYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id E080B1E8D54
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 05:03:29 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id z7sf5320888ybn.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 20:03:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590807809; cv=pass;
        d=google.com; s=arc-20160816;
        b=ODltoM+A0S7tld1AYWwbsYtVZoA9vRZQNwfdyzqs4KZo8ELxzf41sSQfNrsEhoF7cV
         NC4D5Y96dGvfoo1MVe1jLq6Kc2OO+hbPTpHBBJV9OWA94azmSDZJaEiE8h8vg7HzBTNx
         D+JzjyiZEt9+ZUHsCkdj1H8wlWhVkqG2KVugzMJI84P9C428rqB9sV0ChsKqGzyrG6Rr
         uKHEHIIZnNpkY0idyc4Zw7oY9oZkFgZuHTcAh0bTw622mPp0BMc0Z1nKCLEKO3PfETCq
         qnv1/vs1k18uKFZzK0+4beakcnz2bOtOtn8C3fC/Eu8e4L2ZAXBqQPQglf0fLDDGKqKT
         PUhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=6rvAA3Od3wBJHUp6+pqh2V35Fm4xnolsmv5OhKQHNuY=;
        b=NvVav++RAnVX9/0Ygo1E6JeFQolK4+3ZMRpTNVvqYRIXG7bRTWc14/eyF5XkS02pRr
         TL8Rnwlz3E/FQqoCuWOH0wjn61n8OQOEFr56iapqR30GX/ni9JaxoQIivbumYYxXsNFP
         i5bH9lI5j6QBSiNiF8XpSdUV/d/ydYL4aEvFmYAUBW8k1o8FXrQ4Er6QQl1qO0N6CIMo
         Q20DeUd6MZtJ2adh+NJf3pScuUwVk/Cp+oRI2Vs+CBp1BuKOmSS+RTRP57WfAPgBEI0c
         0ggp8YWYEbcYga5UI3XV+MBShi3US/a6yKikaRZwVsdrXhSj6iJzqFR8DEh0i6MMJJ37
         NTew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ityY1Ou5;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6rvAA3Od3wBJHUp6+pqh2V35Fm4xnolsmv5OhKQHNuY=;
        b=XLEKAFd2829WRbPsXISWFJvo42bzNEg2CQYizcw9VZKPQn4h9XKSVioSkMjh8MrxAR
         0nsodBLCaUP/K/7OoeJrtIXL2VzG65sgz2lbfmwn3LJGOfT54mfEHneC46/j0LOs10Tt
         UJTurfYHs0aREgPnGNkLaxrEGtu1Hoz4/t9lgzV5DI3LO4QW/WofiRzQkP0LME6MRYmW
         jRIt2yQA8c+r1gk+jnZRVrB+Bww3sccf62MFp09wxMtMoRdUI25VlWnJUf00d2zF+I80
         c5gTXQ2fXBf3VhwAJ2UQN6eZNtymWvYN+Vz8dTmE5yUqjhlk9WHH7dWS4RPfgDJ4ryIz
         oX6w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6rvAA3Od3wBJHUp6+pqh2V35Fm4xnolsmv5OhKQHNuY=;
        b=QxsIgtZb9D+WDezpJoxB+UsQpXpKaLASDKf7qMBs+c1t6yZjwsxj3s8u+gZS80VdBa
         8Yyw9hZc7fYaZFRpEW0gVML5sdzO+9gWvipNttwJFM3ol+wtua84Ts6tvNDxwkWvFiPc
         DHoxWUrrp8cSoKAPpVm4XZCtYGfK1oO/NzNAzm1Kx98VKgRGvxsPqzzhvl732ZwaSrOD
         QIvUvfjM7T3mrW0+gUTh9tjfoedyLOdeSYzuDPvUjewx1TcnrrW5Nu2/5l7D4ZML0pGK
         9qpxbYNmpFVEhqptChJzqBRVKNhSYN7EK+5xVGY29JS7BRGZ0J9evevLj97EsPF9Tqz1
         XTbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6rvAA3Od3wBJHUp6+pqh2V35Fm4xnolsmv5OhKQHNuY=;
        b=OBv1meogOvSd51wY6NdlMnv9FvhVrnNwKqPolFX0G4vQGS/oD06as43y3UW10MWAmC
         H97xKoLbLKLhBB7nrs/jmSqXhMh/9M6ent8lh7aH9vR1h3Ou2CQJPtKSJkNpZr9rFbwm
         fW/bgYcvuoRjZ4H+4Pa9k8jetjSZLRKNiucMPzHcki20pxkOf8KUjzKODNq1Jw73+hXe
         vGkii673286b1/BjY/brVj2SmAmAlST2MQQx1dvRoXIiFS2NjtoelIFmT7LOdpmNJcWe
         6+6UOk7ft9tYTrmWe0e/BnKukLmHwy0M1ufm2KH4u6QNK+1c+ZYp8qqozeaVznK7riP7
         ymmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530NnrnSjHm/bBzkNeJ+mR4RotrkfXw/8L2Wd4UAakU1hbdXMSaf
	KS4oZtUILST6+u1GoOyLEIg=
X-Google-Smtp-Source: ABdhPJwJPmvx2qFFI6AaQ/BwBv8I547TEfi9sB1SKExwcxmAwAJU/DYGgD5YLTLuiL0mwNEGAn0ljA==
X-Received: by 2002:a25:5f0a:: with SMTP id t10mr17533211ybb.30.1590807808919;
        Fri, 29 May 2020 20:03:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:824a:: with SMTP id d10ls3156331ybn.10.gmail; Fri, 29
 May 2020 20:03:28 -0700 (PDT)
X-Received: by 2002:a25:ec3:: with SMTP id 186mr20083140ybo.475.1590807808545;
        Fri, 29 May 2020 20:03:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590807808; cv=none;
        d=google.com; s=arc-20160816;
        b=qVUduMeBhcVGVRYI6SHjyOpmO18+IlyiIB5YnV5wb09r1vgB7bd78mL1mKMShoBCty
         nHoznKLcUmLM8UIM2TUBO2KSi2btXUU251hDwk7aIsI5kk0wxi09hmu4hVkI2THpqVH7
         Cz79t6bKDNs9YBr4NC7v8OVlW8P9VF1x2nGKCWrUCR8n8m+OB6xsUselPwshWG9gIk4s
         eZLeqykBtZh3Y1eohm7M1rZaljeL/19lHFJtbCDBDs2UuCd/tRdEE0Myk+VDiC+pvRhx
         SgiDuQJYVxF5Wjc0DdB13TiHJS8vWxu9mMSJDeh+5AUzmdxrKLBsPsmygGepBGxiKWno
         z/8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=lD81mgG/12hqGQg2aqU3rSKCdgjuziiyCs+2dP2qbOo=;
        b=Y+7Fhy526lrdTxSzKxl0RUlF03hvyhnx+MJXADP8MARaQSR8KB5JtMgFUiTisFnC9j
         OpCahlriwxzadE28gcCYhmWJQUKxZXSw9/zIv+iHnT1EtqhZNuPuR6fWouLfO5ASfPLM
         2bIwtnzj3rpBCbgYzBfE4drhUkkV6FTGLbLXyewA7Ggg7GjyGe+FyS9GQFAybsgu0hKe
         fROEUp+reo+iEwg9ltjWJe+b0wqqlwaFV7SmpzWqVHxBSXdBdKEk/1zKW8gr1+2r1CGq
         D1XoJ6KAiJFCrLMerg2LfiYzJVBYN3DKMtqaKBVmp9yXTbjALktqpkQye8ZdhAYJbGG/
         phvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ityY1Ou5;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id k11si550669ybb.4.2020.05.29.20.03.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2020 20:03:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id d66so722723pfd.6
        for <clang-built-linux@googlegroups.com>; Fri, 29 May 2020 20:03:28 -0700 (PDT)
X-Received: by 2002:a63:e54d:: with SMTP id z13mr8836678pgj.78.1590807807646;
        Fri, 29 May 2020 20:03:27 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id m18sm669003pjl.14.2020.05.29.20.03.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 20:03:27 -0700 (PDT)
Date: Fri, 29 May 2020 20:03:25 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 8/9] staging: media: atomisp: disable all custom formats
Message-ID: <20200530030325.GE1367069@ubuntu-s3-xlarge-x86>
References: <20200529200031.4117841-1-arnd@arndb.de>
 <20200529200031.4117841-8-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200529200031.4117841-8-arnd@arndb.de>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ityY1Ou5;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, May 29, 2020 at 10:00:30PM +0200, Arnd Bergmann wrote:
> clang points out the usage of an incorrect enum type in the
> list of supported image formats:
> 
> drivers/staging/media/atomisp/pci/atomisp_subdev.c:49:65: error: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Werror,-Wenum-conversion]
>         { V4L2_MBUS_FMT_CUSTOM_NV21, 12, 12, CSS_FRAME_FORMAT_NV21, 0, CSS_FRAME_FORMAT_NV21 },
> drivers/staging/media/atomisp/pci/atomisp_subdev.c:49:39: error: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Werror,-Wenum-conversion]
>         { V4L2_MBUS_FMT_CUSTOM_NV21, 12, 12, CSS_FRAME_FORMAT_NV21, 0, CSS_FRAME_FORMAT_NV21 },
>         { V4L2_MBUS_FMT_CUSTOM_NV12, 12, 12, CSS_FRAME_FORMAT_NV12, 0, CSS_FRAME_FORMAT_NV12 },
>         { MEDIA_BUS_FMT_JPEG_1X8, 8, 8, CSS_FRAME_FORMAT_BINARY_8, 0, ATOMISP_INPUT_FORMAT_BINARY_8 },
> 
> Checking the git history, I found a commit that disabled one such case
> because it did not work. It seems likely that the incorrect enum was
> part of the original problem and that the others do not work either,
> or have never been tested.
> 
> Disable all the ones that cause a warning.
> 
> Fixes: cb02ae3d71ea ("media: staging: atomisp: Disable custom format for now")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

I have this patch in my local tree and debated sending it myself. I
think that this is the right fix for now, as the driver is being cleaned
up. Maybe add a FIXME like the rest of this driver?

Regardless of that last point:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  drivers/staging/media/atomisp/pci/atomisp_subdev.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/staging/media/atomisp/pci/atomisp_subdev.c b/drivers/staging/media/atomisp/pci/atomisp_subdev.c
> index 46590129cbe3..8bce466cc128 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp_subdev.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp_subdev.c
> @@ -44,9 +44,11 @@ const struct atomisp_in_fmt_conv atomisp_in_fmt_conv[] = {
>  	{ MEDIA_BUS_FMT_SRGGB12_1X12, 12, 12, ATOMISP_INPUT_FORMAT_RAW_12, CSS_BAYER_ORDER_RGGB, CSS_FORMAT_RAW_12 },
>  	{ MEDIA_BUS_FMT_UYVY8_1X16, 8, 8, ATOMISP_INPUT_FORMAT_YUV422_8, 0, ATOMISP_INPUT_FORMAT_YUV422_8 },
>  	{ MEDIA_BUS_FMT_YUYV8_1X16, 8, 8, ATOMISP_INPUT_FORMAT_YUV422_8, 0, ATOMISP_INPUT_FORMAT_YUV422_8 },
> +#if 0
>  	{ MEDIA_BUS_FMT_JPEG_1X8, 8, 8, CSS_FRAME_FORMAT_BINARY_8, 0, ATOMISP_INPUT_FORMAT_BINARY_8 },
>  	{ V4L2_MBUS_FMT_CUSTOM_NV12, 12, 12, CSS_FRAME_FORMAT_NV12, 0, CSS_FRAME_FORMAT_NV12 },
>  	{ V4L2_MBUS_FMT_CUSTOM_NV21, 12, 12, CSS_FRAME_FORMAT_NV21, 0, CSS_FRAME_FORMAT_NV21 },
> +#endif
>  	{ V4L2_MBUS_FMT_CUSTOM_YUV420, 12, 12, ATOMISP_INPUT_FORMAT_YUV420_8_LEGACY, 0, ATOMISP_INPUT_FORMAT_YUV420_8_LEGACY },
>  #if 0
>  	{ V4L2_MBUS_FMT_CUSTOM_M10MO_RAW, 8, 8, CSS_FRAME_FORMAT_BINARY_8, 0, ATOMISP_INPUT_FORMAT_BINARY_8 },
> -- 
> 2.26.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200530030325.GE1367069%40ubuntu-s3-xlarge-x86.
