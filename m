Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBGUNWHUQKGQEYXFDOMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id C808E68647
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 11:25:47 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id g2sf8181263vkl.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 02:25:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563182747; cv=pass;
        d=google.com; s=arc-20160816;
        b=QkXcCAF1hkeRXriV2mNNqEdM21ulK0gqwH6lte70osxqJPUCdRvCtWxf7bdeK1ibh5
         FmLJkKhXCllY9UKRLz3GxQO28b7wF6/yYQO9EJHAWb8FwsALFlyk3TxlYfKvenJFFuER
         4AxDTHExVtOz/w9s3DAza/LGV6jFW2PzCkyoAFgW54qtHQs2DDf33Iwn0Jy0Hk7vFWpl
         zwOfCNCn/dFfekVRnns1VZ17NCcUB4W4pnjfmHzsahHweb+2I2eP/TZmr3BXDdDHsRht
         7XfuY5d5bW/bZMHtDZ36lh9wZWvuX+AI+lEOYNh32NufgaLk6xbxe8wHBzWwH/34/G48
         QOaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=2ZHo675qmMXd++pW1HmOq/FGP20lQRG0e3cRYdnLsQg=;
        b=rQvlfPN0WIIKYXZXUkrW45xO+ySXZU1pFIC8NacgE9qk2z/UuDbOQUSJgMA3RJWmZw
         ioM+LcDJZm7Khm99fl7qYAyz41VOVdUquax+uwoWBbd2WUqZ1QI6Uk5UmJIijtEfCqfS
         dFtwNcytNOMpiau6A7VZEtySQLB6rM2p276GAIXK3eAN8/z9BOpoEr4b2ai/E6sa6ryJ
         kzoGVqw98N3HjFBQEnOm9y92+3sDUFnCXVZGVatRohXqNnPUKLS6uimA/F3stZ/+ZUmV
         CzVe2AJaFbTAuqmphL2S+jrfN2P07oMGILUY0I2CoAsFbfhNvy/1yqrEx+2nLJ3GdvQ6
         hRDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ZHo675qmMXd++pW1HmOq/FGP20lQRG0e3cRYdnLsQg=;
        b=hFeScl4eBFz9Cbug7EC4QHHKh11O8SECZagCVDR0S7g6D+X/Ij9T0RAg8IOHzWdVdI
         gz6inoIWON3gdXgtFopOmMuclUkDOIg07RgUapH2z396Ochl3qjpw0oINWOvupruykWG
         UJocX8R38Ci3Jy735TmgRV7oxL29Uc6lspg1WYNr0Lsror1/0bxlYxdaVvalYTzF7Thj
         Ubl2Fw5fCDk+Bwr6z1FxPHdlEOBDSRZyjtL9nBe08j3U0BCJQu8lhxqUdqK7XSLKdpWG
         bmORm6CLxEbr5QEi7JpYozHlAJzNXOGCnfSFXWJEgVzVlEcf3yFAjqEcsOtgIvqW69bE
         4O7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ZHo675qmMXd++pW1HmOq/FGP20lQRG0e3cRYdnLsQg=;
        b=RPWxveY+Rsaitzohymwc0C7lQ3BFoDIuR8UHhmCvntUYv9Bi8Za2xFVmExhMgJkJ1N
         b7MN0iY1jl8efS4aYrcXqxDZHB5iZ9VMLjhgbjX1lJW6B/Mt5IA8ecoeJFHzgPQDdfHW
         0lzvIfz0lsxCycjoeSrCIQSQWjXUtaMUEh+JiGlGrVOPs/5xed+1gtdiD0I973JRo5IU
         JYQsuBTOOCleRINLQs0ooiPKjGzKi1pC8MiEXKtPqauSnAo6acwzZqbUfl1yTKomtbl5
         WoMFSTb7GFhMd+EFF5iaPCF7vRU+825ZiXrFzkSQOSwZ92nLST5+H3FOrYDu8zIc1DWQ
         EOxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWw9nBuQT1o7oZZQ1s30J6V9orFrUNEo5EhCCcJDKIj24nvuhxF
	IDTrtBmSg3R5C+NaWQ9yGHo=
X-Google-Smtp-Source: APXvYqxmm0ec6iEBZAqCEsLP/X97c1nohjt90kgwayORjdBQdLbNuIEqa9I0p1sKf+j1eGjl6dJ4jA==
X-Received: by 2002:a9f:21e7:: with SMTP id 94mr9306359uac.137.1563182746857;
        Mon, 15 Jul 2019 02:25:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a8e:: with SMTP id 136ls536127vkk.5.gmail; Mon, 15 Jul
 2019 02:25:46 -0700 (PDT)
X-Received: by 2002:a1f:2242:: with SMTP id i63mr9454825vki.69.1563182746514;
        Mon, 15 Jul 2019 02:25:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563182746; cv=none;
        d=google.com; s=arc-20160816;
        b=BRxz8MXfB9HSgu1puPCPlFwlyclQVTn5ubXip/lf6MV9foY6vMZJjo2dvnPbacSRm5
         wfRGvFtFUd4z1Tvq33l2hSDZdxVhreWrMY88+kmRJZI6CL0Mm1XH5lUYIUeA7oK+7Jk3
         O32+HatM5Yo1KwKVCpFsbMl3COStpaAbTi1nb49c5jCUNNuPJWDCkUZwM4dVGCHw6ify
         uYQYRAJJZa+vHLs+hTetcT6ValkzSWY8jIQetTSVbS53YQSXPTfonjYLBRpKQkuAaEJH
         KEvrKKoO1LW5+Bh645TsM2BL+ewELfsvePspCalVZFujyQZN4q++lflUiqjotmFiasZn
         x7vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=rPkUhtxg4MFrjNr+Dr5xrJl5bg2MfLxjRYrMvZrd2ec=;
        b=Qo86aY09HQ4IfeWXBFwiD0Y5/IaSPh4dMeGf3M9Mn7MIlVGETMrD/YYjkOu9tm33L3
         VNfL7BI2FSPyRWF3RHGSoCkdbbftUN0kTz06f1RWspamoIOqgi3DOxhkNy8ogONn2qXm
         B6nP30+TX3tI4L7OXsPLQfqON6W276YwvDlWZlBrn5o1yu6vHW6PyVpK7UefA5Bhx0d7
         IZLPXO1e2xv5sCNhwuVlNy/1H0q79X2vFJe0OcCvU5mnfNZhIKcAnJZsg0/qY8T9gB/A
         bzp72Wc/XoztbOKoRInt3C/Nedi+/fS/C400zzoF/+hlyDoeUk8gNh4j0IHPX2PWIKnQ
         3Wug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com. [209.85.222.195])
        by gmr-mx.google.com with ESMTPS id z67si635402vsb.1.2019.07.15.02.25.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 02:25:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) client-ip=209.85.222.195;
Received: by mail-qk1-f195.google.com with SMTP id t8so11070006qkt.1
        for <clang-built-linux@googlegroups.com>; Mon, 15 Jul 2019 02:25:46 -0700 (PDT)
X-Received: by 2002:a37:5f45:: with SMTP id t66mr15941069qkb.286.1563182746083;
 Mon, 15 Jul 2019 02:25:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190704055217.45860-1-natechancellor@gmail.com> <20190704055217.45860-7-natechancellor@gmail.com>
In-Reply-To: <20190704055217.45860-7-natechancellor@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 15 Jul 2019 11:25:29 +0200
Message-ID: <CAK8P3a1e4xKTZc1Fcd9KLwaGG_wpcAnSNu7mrB6zw+aBJ0e0CA@mail.gmail.com>
Subject: Re: [PATCH 6/7] drm/amd/powerplay: Use proper enums in vega20_print_clk_levels
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Alex Deucher <alexander.deucher@amd.com>, 
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>, Harry Wentland <harry.wentland@amd.com>, 
	Leo Li <sunpeng.li@amd.com>, Rex Zhu <rex.zhu@amd.com>, Evan Quan <evan.quan@amd.com>, 
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, dri-devel <dri-devel@lists.freedesktop.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kevin Wang <kevin1.wang@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Thu, Jul 4, 2019 at 7:52 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> clang warns:
>
> drivers/gpu/drm/amd/amdgpu/../powerplay/vega20_ppt.c:995:39: warning:
> implicit conversion from enumeration type 'PPCLK_e' to different
> enumeration type 'enum smu_clk_type' [-Wenum-conversion]
>                 ret = smu_get_current_clk_freq(smu, PPCLK_SOCCLK, &now);
>                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
> drivers/gpu/drm/amd/amdgpu/../powerplay/vega20_ppt.c:1016:39: warning:
> implicit conversion from enumeration type 'PPCLK_e' to different
> enumeration type 'enum smu_clk_type' [-Wenum-conversion]
>                 ret = smu_get_current_clk_freq(smu, PPCLK_FCLK, &now);
>                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~
> drivers/gpu/drm/amd/amdgpu/../powerplay/vega20_ppt.c:1031:39: warning:
> implicit conversion from enumeration type 'PPCLK_e' to different
> enumeration type 'enum smu_clk_type' [-Wenum-conversion]
>                 ret = smu_get_current_clk_freq(smu, PPCLK_DCEFCLK, &now);
>                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~
>
> The values are mapped one to one in vega20_get_smu_clk_index so just use
> the proper enums here.
>
> Fixes: 096761014227 ("drm/amd/powerplay: support sysfs to get socclk, fclk, dcefclk")
> Link: https://github.com/ClangBuiltLinux/linux/issues/587
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---

Adding Kevin Wang for further review, as he sent a related patch in
d36893362d22 ("drm/amd/powerplay: fix smu clock type change miss error")

I assume this one is still required as it triggers the same warning.
Kevin, can you have a look?

      Arnd

>  drivers/gpu/drm/amd/powerplay/vega20_ppt.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/powerplay/vega20_ppt.c b/drivers/gpu/drm/amd/powerplay/vega20_ppt.c
> index 0f14fe14ecd8..e62dd6919b24 100644
> --- a/drivers/gpu/drm/amd/powerplay/vega20_ppt.c
> +++ b/drivers/gpu/drm/amd/powerplay/vega20_ppt.c
> @@ -992,7 +992,7 @@ static int vega20_print_clk_levels(struct smu_context *smu,
>                 break;
>
>         case SMU_SOCCLK:
> -               ret = smu_get_current_clk_freq(smu, PPCLK_SOCCLK, &now);
> +               ret = smu_get_current_clk_freq(smu, SMU_SOCCLK, &now);
>                 if (ret) {
>                         pr_err("Attempt to get current socclk Failed!");
>                         return ret;
> @@ -1013,7 +1013,7 @@ static int vega20_print_clk_levels(struct smu_context *smu,
>                 break;
>
>         case SMU_FCLK:
> -               ret = smu_get_current_clk_freq(smu, PPCLK_FCLK, &now);
> +               ret = smu_get_current_clk_freq(smu, SMU_FCLK, &now);
>                 if (ret) {
>                         pr_err("Attempt to get current fclk Failed!");
>                         return ret;
> @@ -1028,7 +1028,7 @@ static int vega20_print_clk_levels(struct smu_context *smu,
>                 break;
>
>         case SMU_DCEFCLK:
> -               ret = smu_get_current_clk_freq(smu, PPCLK_DCEFCLK, &now);
> +               ret = smu_get_current_clk_freq(smu, SMU_DCEFCLK, &now);
>                 if (ret) {
>                         pr_err("Attempt to get current dcefclk Failed!");
>                         return ret;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1e4xKTZc1Fcd9KLwaGG_wpcAnSNu7mrB6zw%2BaBJ0e0CA%40mail.gmail.com.
