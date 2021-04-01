Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHVTTCBQMGQEIYB366I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63e.google.com (mail-ej1-x63e.google.com [IPv6:2a00:1450:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id CE63F351F3F
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 21:06:06 +0200 (CEST)
Received: by mail-ej1-x63e.google.com with SMTP id li22sf2631024ejb.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 12:06:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617303966; cv=pass;
        d=google.com; s=arc-20160816;
        b=Swdeks0FTDKAKSC0lrpcATNKuwwJBNHPRofiReJaclJIlH2c23S99oRfTt7pMbHueS
         Vg5HTdKEmzjLGNqPTbn3z+wlJuLQ/B6mZJOGmzFx/VKqqmsSDyeLq3ZdgCgsfn70UBXk
         NKhnn1a5p8wFBOKFR4OOXUCheQPp6nU6Svc7/DxJIlFka0waj6QD5DuQLiAbRI6vIS2p
         W6bAgVUVNlRcjZAqu9bFMsdWlnvKqNDE5WxDF1QTzHHD7YWKmCjv1d3iNmcedr1qpH8n
         TTxIBHdTm+9ffsVQsP0owHLtn7l9r9DT5zyVMi0qM7bVokUTHkH2kJvhhxlx6Q5fL9V4
         ehxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=88ixhij9/A5VgRrCxCFP4hCxlHXseXSMVu5gPM/b6R8=;
        b=biOv97zEqpno+RURVAb7I9/y3jFRT1E2Ur//OflA+MHm6XM3PcSoUHH9VO3O8BS1vv
         8BHTdJzzI6vUiEew8HE4LSfFxN0S5Nudka/hCPUdohmmd5IJcmg5EL5J5UbGetg4p4B2
         LWg2FHaxrsCLgVD6m8WUScMHxu973miTZDy7Bbga/M8H33tclL/52xw721UaxeofjAKR
         M31wnX+Q3StjwmZQe953gVh2tM0B8qW1wjqfBEhIe2xm3Dkuqiml7FeYOI5a45Kb6DEE
         j79Pb9ZBN1n0np0k5RYn/TQgO+ZaC3KLmsYd8YWjmPvAp5/EnM8Lo7VIqS81WPtRXNhW
         3ZTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QdVoyrhh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=88ixhij9/A5VgRrCxCFP4hCxlHXseXSMVu5gPM/b6R8=;
        b=cvgKQwlqzzuZ1XnKDTviG9AOFJtsoQfuDKxKsy1V5H7QMZGOw/wBEmzLKsuzwUnEfC
         3uPXBUD1X630qoG6txVtDxbciOJY4+BUYsMr177Rl/D17b5dW5BzPWGPFNisa74SDfiO
         w3VRoj6on9JIh6LmZ7S1HZX8qrY5jwUmDOUa+trc5Lzso955hgL3zxh9JJYAqjS32PMt
         wi3DcO6kQMCx3hxz2P53aU4KVm7faY4kdICZOwFVHwg//Jd/FaBVi9E/0RMB3wcRNovo
         idv3tAHVGc7N2op6TvGiovfPiZneyhTpht4n/ykn8BgCcrunn+ZJ4uS+SwxhirL/ssRA
         XoMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=88ixhij9/A5VgRrCxCFP4hCxlHXseXSMVu5gPM/b6R8=;
        b=BFxq9cG31oOtTuDPah7pEMPK65EyvVDNBxj0jWnO7Mb2vFiL++zxbM0uGh+EecI1S3
         V/L0DgVAHhvyhZxqs+7seKEoHk/Mdniet0XCgmoSjijq/CIUId9HLP+SAMw0bubFA4nH
         XTcSHqcVoP5CEqbVT095YM/2/zmcHzQmNJ1N09vOFd0dBcGSs2HQXspQvLytayfGatvE
         JnMIo2pJmWl6cpPUqYuAhzvMR250oKa4ENDSfuiVbfayNLS2aQpJzJkcrPXC7MilHPqH
         TqupjVuKp+5noJfiS0OkB/Wc8ueLA/NNzgNWRgSfvGUAhaW72LjZn7e+thYj3WvGd/oX
         BLIQ==
X-Gm-Message-State: AOAM531jOibgHp+aXYmaGtZVoOf2RtFXZTg/0QSjdguF7ld7SdOwnAcY
	Zec7/FSaRd4rRhguj6eQrPU=
X-Google-Smtp-Source: ABdhPJy/6/JL/yqO7ZP1LnKeJjc3SrZeR/hd+UOd7qMal7dXesSbhfDMzAkdy36bSBMoU59gWbQZ/w==
X-Received: by 2002:a17:907:1c05:: with SMTP id nc5mr11112889ejc.320.1617303966599;
        Thu, 01 Apr 2021 12:06:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:16d7:: with SMTP id t23ls3582588ejd.7.gmail; Thu, 01
 Apr 2021 12:06:05 -0700 (PDT)
X-Received: by 2002:a17:906:cd12:: with SMTP id oz18mr10670125ejb.498.1617303965613;
        Thu, 01 Apr 2021 12:06:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617303965; cv=none;
        d=google.com; s=arc-20160816;
        b=XgVebgQr/eAtDjxbRSmz/ms8//vKTFLCisVQp14Eyo0dR/DJ3wRgEykyuonEUsUxHa
         +wxFNV47YSxBDg7jdLUKHtVPzDGY821XsEaTWNnue8fqQfOcro6JeHWmifi/3xgEbiNf
         FPcfNnCr1Xrsv1uuT50ZN2DZ/QLp65vgec14bIesmQ+o0BrEkfPee0OxqS4X5cVC6rZx
         ob26YAkkB26XzUTJlQwb2pYZCqBU1AXcTVC0F6pgk/A8z5KJ8+uQ22d/M7+Gq6J3Mq7R
         1MSyGFT1nQjlh6j3BZz6BF73hnBy32m3yDov47GKs/BuJuq8y5BaD0eUO4ehaAiYlXeH
         YX1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DNNEGx7A8yGFZ03tYjwr9iyeGvfeQ20XIzLEait0s70=;
        b=p6Y7ZOxjtVgpGUUQSciq7M2JrbzFyGXWmvBTOfOmrlpU63QjvSrzafDALdbMMoBpGJ
         KClSbTOSrFn+2yAqv5ndRO4g6vr3YTJ7E/zSPPP1c9zHDfp0D1ooVZarEygwFp5sH8h1
         psxVWSAnFfC94CIOJQHcndvqzUI9LJmK42jH4MzDfBOyR4KSo5AmKjFzND8irejh6oqm
         q4hQta9Ov2YsiH5xHSOmYyC6UD9xMfBK73JFKIcRQWcTF8TVtH49nz42NvPRAXf9dZHn
         ZIMQvrKRcbu+dXNkaY4EHIHauPN9DQuHTp/YhwVuglNlDQrXWBO2NjMvAcPurpYP8vfu
         mwVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QdVoyrhh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id f25si647109edx.4.2021.04.01.12.06.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 12:06:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id w28so4376029lfn.2
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 12:06:05 -0700 (PDT)
X-Received: by 2002:ac2:538e:: with SMTP id g14mr6217538lfh.543.1617303965137;
 Thu, 01 Apr 2021 12:06:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210401161127.8942-1-maciej.falkowski9@gmail.com>
In-Reply-To: <20210401161127.8942-1-maciej.falkowski9@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 1 Apr 2021 12:05:53 -0700
Message-ID: <CAKwvOdkCe1OkPetLzFTO+f-dp8=kD3OKX8mfEnw2GBRkU_cBnw@mail.gmail.com>
Subject: Re: [PATCH] ARM: OMAP: Fix use of possibly uninitialized irq variable
To: Maciej Falkowski <maciej.falkowski9@gmail.com>
Cc: khilman@kernel.org, aaro.koskinen@iki.fi, tony@atomide.com, 
	Russell King <linux@armlinux.org.uk>, linux-omap@vger.kernel.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QdVoyrhh;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e
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

On Thu, Apr 1, 2021 at 9:12 AM Maciej Falkowski
<maciej.falkowski9@gmail.com> wrote:
>
> The current control flow of IRQ number assignment to `irq` variable
> allows a request of IRQ of unspecified value,
> generating a warning under Clang compilation with omap1_defconfig on linux-next:
>
> arch/arm/mach-omap1/pm.c:656:11: warning: variable 'irq' is used uninitialized whenever
> 'if' condition is false [-Wsometimes-uninitialized]
>         else if (cpu_is_omap16xx())
>                  ^~~~~~~~~~~~~~~~~
> ./arch/arm/mach-omap1/include/mach/soc.h:123:30: note: expanded from macro 'cpu_is_omap16xx'
>                                         ^~~~~~~~~~~~~
> arch/arm/mach-omap1/pm.c:658:18: note: uninitialized use occurs here
>         if (request_irq(irq, omap_wakeup_interrupt, 0, "peripheral wakeup",
>                         ^~~
> arch/arm/mach-omap1/pm.c:656:7: note: remove the 'if' if its condition is always true
>         else if (cpu_is_omap16xx())
>              ^~~~~~~~~~~~~~~~~~~~~~
> arch/arm/mach-omap1/pm.c:611:9: note: initialize the variable 'irq' to silence this warning
>         int irq;
>                ^
>                 = 0
> 1 warning generated.

Ooh, yeah if cpu_is_omap15xx() then irq is unused uninitialized; I
don't see any INT_1610_WAKE_UP_REQ-equlivalent for
INT_15XX_WAKE_UP_REQ.

Ok, LGTM.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

I agree with Nathan on the Fixes tag.

>
> The patch provides a default value to the `irq` variable
> along with a validity check.
>
> Signed-off-by: Maciej Falkowski <maciej.falkowski9@gmail.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1324
> ---
>  arch/arm/mach-omap1/pm.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm/mach-omap1/pm.c b/arch/arm/mach-omap1/pm.c
> index 2c1e2b32b9b3..a745d64d4699 100644
> --- a/arch/arm/mach-omap1/pm.c
> +++ b/arch/arm/mach-omap1/pm.c
> @@ -655,9 +655,13 @@ static int __init omap_pm_init(void)
>                 irq = INT_7XX_WAKE_UP_REQ;
>         else if (cpu_is_omap16xx())
>                 irq = INT_1610_WAKE_UP_REQ;
> -       if (request_irq(irq, omap_wakeup_interrupt, 0, "peripheral wakeup",
> -                       NULL))
> -               pr_err("Failed to request irq %d (peripheral wakeup)\n", irq);
> +       else
> +               irq = -1;
> +
> +       if (irq >= 0) {
> +               if (request_irq(irq, omap_wakeup_interrupt, 0, "peripheral wakeup", NULL))
> +                       pr_err("Failed to request irq %d (peripheral wakeup)\n", irq);
> +       }
>
>         /* Program new power ramp-up time
>          * (0 for most boards since we don't lower voltage when in deep sleep)
> --
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkCe1OkPetLzFTO%2Bf-dp8%3DkD3OKX8mfEnw2GBRkU_cBnw%40mail.gmail.com.
