Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQNOTCBQMGQEPRG3SEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5F8351ED6
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 20:56:01 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id i12sf3290813edu.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 11:56:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617303361; cv=pass;
        d=google.com; s=arc-20160816;
        b=LnXfnAO5OV1RwGJMIB+6aiimcZx2a0meLD41WRFGgZ2JMbjIE5+4gY4CGSrLbFu6MN
         pvoO0pwbTj38MYQvAdEeUQJQ9k1f5WXBHZqytkvPi6lgWurzJccdSEZ8cPmWs5R8Hoks
         TXPlHou1rjljRqEOPpSOYf9Jz33X42SYndPdS5hIfEVLsHZf6FVtk2QO9Q82RM+bA2Gp
         4xaleMcmN+AfyCjZn4hmT4CSSCn9LDc43nBVX68oUA7uWszIm5Hf3nrEyPBsYDc4T9Zu
         VwP78iGI/F20+4HJ8SkGFVGwknhHAlf7CkdfO9cd4RPlOWNxVHxoXh8FTujV4H6kLnwH
         oNlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FYz2Pz+J6k4c3cY0drw0TQ5LyVHMdrHVe8qSUtoDkyQ=;
        b=Ww32XWZNGJrv22xo3AI4pfT9mFtaix/I4DHI6i6jlSpEjpvvwd6MZnZSMgeL1nfNws
         IjZuCPec4bCAMWdylim1sve3V5fgl61auj5vjosRQBi7zoI3D0xrOCTfceABa1qSaJPV
         QbdUALSR7n0AP3WiPqgazlS1lOgMKf6butNUgq6RQ+XDIMqzSatKvYQKCIwROrjGPKi3
         4JMvxgRtG9PXFycstIVVTQSyTsf8vxMWa7smYvWJfvmwteMz14qmGSJqbFP3qnuhrEeD
         xIu2a/brRiNQsFaRz3tIUD5PeIhansgRcgF/BQjhoHvAyvSjIFzUiGgVhATHKHBBsvGw
         8NaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n6CdqStV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FYz2Pz+J6k4c3cY0drw0TQ5LyVHMdrHVe8qSUtoDkyQ=;
        b=LcVrS6/E/XjaGX7iJ7c1YgWkoAqagsN8n8Y0FGaLt6X4mGHac5lk3pkAM+IVV8qGDv
         S9mO2ZSjv5JFbnZRRYjS+1zpdgk9Uc19hhWPQwp2aiW8zETbpc1RzYf2Hr/kv4jh9n+G
         mDj3wPrgM2FMY7+IQ6LnbRropucjhYYkn+qiCjyXPSHZ5ZZNO2QVzt66NBo6hoRa3HtO
         xgk9RJe5sNZNnuGd4z6Aadb+gaurzYXyWL2ttLW+PDuDw2PGXhxlu2Kk1tfsiob+yUwZ
         JwyIN64aSH4dYqxA9YYwtnQhEdjovBCTGfFrogebfnz/N/tFK17p+Le03s1ngn9UMShV
         P7LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FYz2Pz+J6k4c3cY0drw0TQ5LyVHMdrHVe8qSUtoDkyQ=;
        b=VuLSX3Q6rWGRtSEwEN5Yez5ZebRVN0q1gppj0Bwp45IR936tdklVwQw2+nOcc+/tBY
         9AE2bn0cF+iT/oMTJITwqEYI+jS3jlDq0nG0ESLBxsBX4mu1Fv/+7BfCe8arwP2RIKO1
         ZW2L7bvWBYlbVh+A1xs6xUt5HTZ21i34kG2vwVeQVK0tlCtvTfzj484T41HcmCTnfFPI
         pZp07ITwvfOR1hJycX5WQ7mjefHzzHyPR8IL4tdAn+NL0ULiaFJfowOo/wq5Ep+Sh8NS
         2dBVsNBFTbBaT3Id8BrxykOFN98SNX1l9bfYGm3d6OvxLFhcqNIBz8RP3RFhOD1xdUCu
         Ftpg==
X-Gm-Message-State: AOAM530FKBXuRVFz2qSVmhs3M1CkVmWcNae/zy7MbXEgoBDP6evCKsFK
	W+3K1L00SoEvfYd47ZIU964=
X-Google-Smtp-Source: ABdhPJy+6mEnywozPoio10WB2lCrjFG4MNaFjxcUbMUrnQTHE3x71ZRpReZxBGv46I+AHKZSJ5IRXg==
X-Received: by 2002:a17:906:32d1:: with SMTP id k17mr10670439ejk.94.1617303361429;
        Thu, 01 Apr 2021 11:56:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:eb82:: with SMTP id mh2ls3569242ejb.6.gmail; Thu, 01
 Apr 2021 11:56:00 -0700 (PDT)
X-Received: by 2002:a17:906:a44f:: with SMTP id cb15mr10496152ejb.420.1617303360551;
        Thu, 01 Apr 2021 11:56:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617303360; cv=none;
        d=google.com; s=arc-20160816;
        b=dmNFczhGa4UNSq1HHpfRZV9F2173DzDBMoi50eQZbEct17elgq9szB0s2djbQ1Ck6k
         pjFuKFdF4wYc46G9tOn80z4uadwmk8KfvevpblvqpA9DrOY3OZ8bPF4jA6/jvmakAFOq
         4bbQTRJDeZLpTVhzlUXrdmw7f0QrfwIxtGdGr6c6IfSqokSvz2pofbHrCJClLOb1Hj2N
         TxHQtvFrWy94VpzfErndXpsgR9PU7PvZvKf0hM5JEhpDoA4aBl9e4lTJpNWncl1Wl0Pe
         uhGEw8F/KGYgqrrC2tmtRShbBNw6psc/QL5ChxLtpOz9c7MdG1K3w63OYnkfWEbjAMFc
         azyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=C6RnQY5m7m3ncSxYtoqki2XanY7LHf9+m0qLfxHwJv8=;
        b=Io/tf9f7DeYq0IqeeN1ClVpClwxiaUFzqcQX7Mtu5f2BL2yICExPzF2l9kDk3USqAM
         F3VnMv4bn1UaBme+BtcdezghL31Htr4EWjTS7w/FWyP0XklaLejHrZ9s0z6P6ErPAQ9Z
         xSG1c1unwEL1fkmjy2Cw6Ii/90v2ns5CYwFaebwk9jKA5/PlZDxkrn2Ojl1HDV0l+SUk
         6W8tl9X/tGLgYEh759BQmF0KqLiUXP7ZxejUHwNxtRe8OCiNhI9d37fc8Dr6CHuOBPsI
         SohWqgBRQhvNINXoiTkoDrlzOaNdfm4lhq9g964HBWj17h+BcmnDhfWyptDnpUEi82uF
         eFwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n6CdqStV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com. [2a00:1450:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id c2si624939edr.2.2021.04.01.11.56.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 11:56:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) client-ip=2a00:1450:4864:20::12b;
Received: by mail-lf1-x12b.google.com with SMTP id w28so4336907lfn.2
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 11:56:00 -0700 (PDT)
X-Received: by 2002:a19:430e:: with SMTP id q14mr6743083lfa.374.1617303360081;
 Thu, 01 Apr 2021 11:56:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210401160434.7655-1-maciej.falkowski9@gmail.com>
In-Reply-To: <20210401160434.7655-1-maciej.falkowski9@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 1 Apr 2021 11:55:49 -0700
Message-ID: <CAKwvOdmSCz7awnjuDWKSd8n+x1E2ziN9F4xLOX0RG5F1yYOFQg@mail.gmail.com>
Subject: Re: [PATCH] ARM: OMAP1: ams-delta: remove unused function ams_delta_camera_power
To: Maciej Falkowski <maciej.falkowski9@gmail.com>
Cc: aaro.koskinen@iki.fi, tony@atomide.com, 
	Russell King <linux@armlinux.org.uk>, linux-omap@vger.kernel.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=n6CdqStV;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b
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

On Thu, Apr 1, 2021 at 9:05 AM Maciej Falkowski
<maciej.falkowski9@gmail.com> wrote:
>
> The ams_delta_camera_power() function is unused as reports
> Clang compilation with omap1_defconfig on linux-next:
>
> arch/arm/mach-omap1/board-ams-delta.c:462:12: warning: unused function 'ams_delta_camera_power' [-Wunused-function]
> static int ams_delta_camera_power(struct device *dev, int power)
>            ^
> 1 warning generated.
>
> The soc_camera support was dropped without removing
> ams_delta_camera_power() function, making it unused.
>
> Signed-off-by: Maciej Falkowski <maciej.falkowski9@gmail.com>

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> Fixes: ce548396a433 ("media: mach-omap1: board-ams-delta.c: remove soc_camera dependencies")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1326
> ---
>  arch/arm/mach-omap1/board-ams-delta.c | 14 --------------
>  1 file changed, 14 deletions(-)
>
> diff --git a/arch/arm/mach-omap1/board-ams-delta.c b/arch/arm/mach-omap1/board-ams-delta.c
> index 2ee527c00284..1026a816dcc0 100644
> --- a/arch/arm/mach-omap1/board-ams-delta.c
> +++ b/arch/arm/mach-omap1/board-ams-delta.c
> @@ -458,20 +458,6 @@ static struct gpiod_lookup_table leds_gpio_table = {
>
>  #ifdef CONFIG_LEDS_TRIGGERS
>  DEFINE_LED_TRIGGER(ams_delta_camera_led_trigger);
> -
> -static int ams_delta_camera_power(struct device *dev, int power)
> -{
> -       /*
> -        * turn on camera LED
> -        */
> -       if (power)
> -               led_trigger_event(ams_delta_camera_led_trigger, LED_FULL);
> -       else
> -               led_trigger_event(ams_delta_camera_led_trigger, LED_OFF);
> -       return 0;
> -}
> -#else
> -#define ams_delta_camera_power NULL
>  #endif
>
>  static struct platform_device ams_delta_audio_device = {
> --
> 2.26.3
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401160434.7655-1-maciej.falkowski9%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmSCz7awnjuDWKSd8n%2Bx1E2ziN9F4xLOX0RG5F1yYOFQg%40mail.gmail.com.
