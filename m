Return-Path: <clang-built-linux+bncBDJIT2UJ64IBBB4422EAMGQEF7UKNRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F463EAC3B
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 23:09:28 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id m6-20020ac5cac60000b0290283342dc002sf1676857vkl.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 14:09:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628802567; cv=pass;
        d=google.com; s=arc-20160816;
        b=CoauA/DPUI+RSpzTgRcR3xvtYOU5L9bjf92xpBgUJLaZ8W/HU6aiceHcxArC3ApvGh
         Ri4eIkIqZYJMqh+brERmHvXPYf8I2vYV9pQZgKdEPxJMdmO4am0zz1+oGLG1KpbL+P7j
         zPXXfvHmU+ETM+a68HO11Sq5xNqx5dK685xQniCIM55hpWvp3vEtBAZ73njEOqWzd/qI
         z1YoOqcmAXXRYbALwibzuEoIsPF91Z7EeKe+Tce+y/Kt4QCkBC2bewWrSejPf+Fh0dzX
         5r7o82VSDsdeeS04MdI++1w462pQGqN+FTzF4S7+37OcHpJ+QKY/V1AjJWItM+ON/OOU
         OM2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=7HZvh55+gE7wORy7ESZwpWXza0vJcrT/oUlSjvlMJ64=;
        b=Xu4eg76rAVXdhhFSk1Lbw6ahcbllSaGbo+LzyXSBy8PFuKkb/MTNTx+tQxovK2r9Ku
         LM4ALmXbG08UfTsHBYgIQCu9m++3a0IUEvnRAM2xs2oLQRhVavjiZsG2lqotd1AL30fa
         NPy2IxZKc8Bus4se0x++F4cMgU3vSuIQRvriiIEHGguUJyDXYRpZkJAAQYUeblqp6SmY
         BX17MFNaiprJE/WKwmO4O37O3FZeuRSEM6Gndp0Qrs2lHsGrVfUz7oGFB85zGwdncN60
         Dmu2CkepsMeCIHbHlq9ehAg2UwYWonyKmWCt22qXtApv3RKsdd4ApFAAKrBTWmk61aK/
         u1xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@philpotter-co-uk.20150623.gappssmtp.com header.s=20150623 header.b=IuuCgqYx;
       spf=pass (google.com: domain of phil@philpotter.co.uk designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=phil@philpotter.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7HZvh55+gE7wORy7ESZwpWXza0vJcrT/oUlSjvlMJ64=;
        b=DIwAw6TMNMOroSmvEHGwMZVDtG+VriC0ZBOW0bUAN0UxQSfmMcyXzlrBvYXPMyjhiy
         ouqRJwG1/Op29R9QIrYUMQ3/ZuFg7TRRIOFuMNKm9BKWG/EelHPRAMXExcXFoT3NlV2l
         pwhiEZpfv0LoqJaep5v52FLN65Iia5UeLjWrjhaapeb806RcYbHZ+W3ZzVz+T89KwGUY
         LJ23XAmH/Nddg9r7b2fLbcewAWSG93NVf3oBD3YG5l5VOlJz0pxa4THmQ9f5OhLccJCL
         FE7gioInCxkozC4GLqxEBiq3Y+wFudLmD7r8lL3q/ihM/LVhZszC3kcwuEKRiEGTq9iF
         ugFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7HZvh55+gE7wORy7ESZwpWXza0vJcrT/oUlSjvlMJ64=;
        b=XpLjyvBGPLvmUQbdOWA1jI3701xHbWfQV9XLzoipJkLhuQo9GXaTda5fASMd0lsaey
         IgwmUlvj6ohwLMfv0Eymmv2lRSyG9TOmOBnOtWGOhnNWMtWknVrWyiU9vE8YMhNWZlkr
         IPWbycsb1QqsXDkheTshUcxsNHgROI4z+T8bIXavMjzBv39+BdPwAJO8TmbN/hFzATbi
         wgABJncQE7+EY6sIs3Qd2E4IBVf/YJ1HcQRqNVz2jiun6D0fNkjvcPF5A7gYTyLyWIOv
         xVi8/aRogV/PmII+lkvCXV/xo5YzZ28Hax/fHHeOTUL4WEUPJcVAi8NVfF4o/dUtPIms
         Kn9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Y4KyCheR8ctxyZBIYsMJ1gTPa1+P+LDRMuUlis2wjaJb9yxo1
	r/a4R6GQJKopUC1ayEd0224=
X-Google-Smtp-Source: ABdhPJwsxhK+zQBjMOt9XNYvaycjDykSqPp1R7ncgkIbQULD6ZXsnI32EuqzVeFuc1XY9W8cc8marA==
X-Received: by 2002:a67:de10:: with SMTP id q16mr5564555vsk.23.1628802567378;
        Thu, 12 Aug 2021 14:09:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cf0f:: with SMTP id y15ls173764vke.11.gmail; Thu, 12 Aug
 2021 14:09:26 -0700 (PDT)
X-Received: by 2002:a1f:b615:: with SMTP id g21mr5309067vkf.16.1628802566894;
        Thu, 12 Aug 2021 14:09:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628802566; cv=none;
        d=google.com; s=arc-20160816;
        b=ZDEDJ8kbWNYwPPARPF70bsJOozpIIYyCYPQY8M5WMZ/3zeUV97/MEjcdRVFCy798lu
         Fu6HACGDdafhwUNCW8cQ65yz+Zhi/s26t8BtGvraRGj9bFCKMNpsXq5tc7Lndh8LImH4
         FX+BEKsiBo1Fp2WkpF56QhRlEYG01j/RrL8OcNbWQEyCXqcKiSGxLtNNhtpo20EOhRtt
         YcS7Wv90akGl+XIUJ+a6xgOvjlY5hp3PgL3NXAUX0sM99tkodb0i3uJtciYrrsGWXAh5
         xTURgtj+BY/aKWvFF25xJCFAEIdwqnDtmwG/OeWeez7AOMdHs2pz9RY35FtsUNVKG72B
         WcfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AwF9gPVb6rSLv8TfNn020arGyAKk62BBC6M1h4xTevU=;
        b=oASfg/YBmhhZqLeDRsgnwxz+l2x4vKjocglUldPe5/zmPjn3Bq/xer8yPKJYpCZCWD
         jzknfgqAd/eDsPicNxqbgI4TiK519sO07sob4+ef7qe81GZuUMhN09OrlXFr9GAAsQ9r
         zRr6UVXLLox4JXH3DTkmj4eUZV7TlXFSx1ySmRnsA8fyShlzcT79k6GSSOI3nEF77NMD
         1lxT9OVIuzAoE1YvcJ8Cw8qdVN+b0etfDwnvee9u5QGzI3j4cnPdGxsabYHWIiwx2MYG
         emIMIIDH6P3boixIWAttmfRezg+lmajt2l3ZMltVZLRDSXGeDJyKg/B8vfF0KdDrJGkA
         /uBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@philpotter-co-uk.20150623.gappssmtp.com header.s=20150623 header.b=IuuCgqYx;
       spf=pass (google.com: domain of phil@philpotter.co.uk designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=phil@philpotter.co.uk
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id i6si137319vko.5.2021.08.12.14.09.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Aug 2021 14:09:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of phil@philpotter.co.uk designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Received: by mail-pl1-x62e.google.com with SMTP id k2so8977983plk.13
        for <clang-built-linux@googlegroups.com>; Thu, 12 Aug 2021 14:09:26 -0700 (PDT)
X-Received: by 2002:a17:90a:1b2e:: with SMTP id q43mr6086414pjq.217.1628802566538;
 Thu, 12 Aug 2021 14:09:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210812204027.338872-1-nathan@kernel.org> <20210812204027.338872-3-nathan@kernel.org>
In-Reply-To: <20210812204027.338872-3-nathan@kernel.org>
From: Phillip Potter <phil@philpotter.co.uk>
Date: Thu, 12 Aug 2021 22:09:15 +0100
Message-ID: <CAA=Fs0k=MeBAHeCK4kFd9p5S5mqER931DGs-mp6Di92rCmAJGg@mail.gmail.com>
Subject: Re: [PATCH 2/3] staging: r8188eu: Remove uninitialized use of
 ether_type in portctrl()
To: Nathan Chancellor <nathan@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Larry Finger <Larry.Finger@lwfinger.net>, 
	Nick Desaulniers <ndesaulniers@google.com>, linux-staging@lists.linux.dev, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: phil@philpotter.co.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@philpotter-co-uk.20150623.gappssmtp.com header.s=20150623
 header.b=IuuCgqYx;       spf=pass (google.com: domain of phil@philpotter.co.uk
 designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=phil@philpotter.co.uk
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

On Thu, 12 Aug 2021 at 21:40, Nathan Chancellor <nathan@kernel.org> wrote:
>
> After commit 987219ad34a6 ("staging: r8188eu: remove lines from Makefile
> that silence build warnings"), clang warns:
>
> drivers/staging/r8188eu/core/rtw_recv.c:499:8: warning: variable
> 'ether_type' is uninitialized when used here [-Wuninitialized]
>                         if (ether_type == eapol_type)
>                             ^~~~~~~~~~
> drivers/staging/r8188eu/core/rtw_recv.c:458:16: note: initialize the
> variable 'ether_type' to silence this warning
>         u16     ether_type;
>                           ^
>                            = 0
> 1 warning generated.
>
> This if statement sets the exact same assignment as above so just remove
> it.
>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  drivers/staging/r8188eu/core/rtw_recv.c | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/drivers/staging/r8188eu/core/rtw_recv.c b/drivers/staging/r8188eu/core/rtw_recv.c
> index 9b3637e49052..8df38db9572c 100644
> --- a/drivers/staging/r8188eu/core/rtw_recv.c
> +++ b/drivers/staging/r8188eu/core/rtw_recv.c
> @@ -495,10 +495,6 @@ static struct recv_frame *portctrl(struct adapter *adapter, struct recv_frame *p
>                         /* allowed */
>                         /* check decryption status, and decrypt the frame if needed */
>                         prtnframe = precv_frame;
> -                       /* check is the EAPOL frame or not (Rekey) */
> -                       if (ether_type == eapol_type)
> -                               /* check Rekey */
> -                               prtnframe = precv_frame;
>                 }
>         } else {
>                 prtnframe = precv_frame;
> --
> 2.33.0.rc2
>

Thanks again.

Acked-by: Phillip Potter <phil@philpotter.co.uk>

Regards,
Phil

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAA%3DFs0k%3DMeBAHeCK4kFd9p5S5mqER931DGs-mp6Di92rCmAJGg%40mail.gmail.com.
