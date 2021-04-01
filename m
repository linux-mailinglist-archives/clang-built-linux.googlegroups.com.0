Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUXNS6BQMGQEQS6TUMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E843516B9
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 18:37:40 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id h12sf3683594qvm.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 09:37:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617295059; cv=pass;
        d=google.com; s=arc-20160816;
        b=rUh6LNxHA/iW4Hf2cypY6aQM5pzwZHLwj8EyRy9F8K+Gv/YCwRiDO3cLUMn6e/9YZX
         LacxbKlutuuJZnKm7OpwPqomBUV3pPFtgjeZYW7qkK/duVAakwjFGzSXUszqk7gJzLQy
         ax64+OtaI+tMVfG3OtWTZqLpfbbwxiZbUO7viF/4b5/Kdivm5Ulr7lgFjULw1HwXQocT
         +loNR/sYgpVBNg9xiffM+qHMVIqpQp76+vBxdXM8QjdKqKoy99QTV31egXKDu1kljI+D
         9GLXZ6etG7UzALoSmS0x2mzj4UpvXKS9ElMiHGkprnpd9V5IS/hYFYFxIvWRLsRiKBY2
         Ebhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=gfb8XASB2DGgA11yRWUcyyfjVAdNbt6j6IHTlbtp4Gs=;
        b=XmUukeukm7DEoSS+8R6SJ86NEjUYT2wV9nILmmgKxzIiXurEZN0nB6DZX5jt5ugRfk
         fr6qfU0VblkwzCZd7u6a5ShdGBBosVKIm7ztGOXe8an0TAd5JdSY4ubbwlas09RICtl0
         PMNSedkKrfRUWyc9b3TSp2UbjvvQUkdRHJzj/lY4W6AtkfCQJwSTbVbwTyLi67nd6oyE
         K9phd/482yby8xiHSvEAH2IsYE5iqEQ+r6Z7XghZMbmFOuB0z+/LCLuqKEMiBJg4ndGI
         oNH0QBH7JYK46f7Dy14ZCBxOtm4RwrG0nm/IEO3ApJCGpIkZMDaWFAwXw/WIPMaWmyzl
         kWBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pfG4Ny5N;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gfb8XASB2DGgA11yRWUcyyfjVAdNbt6j6IHTlbtp4Gs=;
        b=rGBdWVcRlpChwdnnp01xmtWw9zrCn/z4HIhyAeyffaGYu8wnDadOW0qmM1FlQfumJN
         ObYCC0VfT8SXWFrNKV2lYp4b9G16o3BILiVI0+MOm6G4DMnWN1yHlSFlus5KUwKimreN
         aep2D9SrLj7zXtee0isoYeLxqn2YgjbiKa7Bo/45Xm4FNe1hNw9fW0rHLyzh069dIOFf
         Olj/plwpoTk0mRBpO+kBG1SDkuMtc+3CmskDdCQ97dXvZ3PP1DpYOkrMQL9ShzaxlrIh
         z5qHtXK5WxXl+g7nVx4XOx/K0p/XBdZjg6Vsanv16Jg0OTe0Nse+PKtBmfAwfiofxFhC
         jd/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gfb8XASB2DGgA11yRWUcyyfjVAdNbt6j6IHTlbtp4Gs=;
        b=TFq57O+B9ZUjocw6jo9h72E/7uz0dXjSgp0GTmdq1u210sloOSZiFDCeteGh8Fhl+I
         ivBaH7P9siZ7Syw8DYS7ZSsVNk5okfrEUFRuKvU9rkNZmUvxdqSwFPteXxa9OJrRwRLt
         /e5uJZW6a4drbVM+lWPPFAJ0LQDOmgJtEBWmQyVRQdYwxg0HWOOCV2Al0ocf/YDXCStI
         gy8c+eC+LTZcrS7RfLOmYDsK8sI7J2HHPu8pK9AtdQ51RxnfvRgCI6Np6EKrW2Ccg/Lr
         RINBRe48SmH3pv0ZYntsxOdSuNZDpjdeUrFIlrIHb36L4m4KVy1bRzX+CYqWSrmOjYyJ
         hYpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532nE3PoWNV20VTIZBc47N0RIX/x0+F+TjL7kkZk1o9IunA0Lm9H
	D3rHbTofK7hqjSJR4nFNDV4=
X-Google-Smtp-Source: ABdhPJxiHliGDT4PoiVJ3cDENRMSWHO3xgNNYW7zLIdrn0w5KWU1w05x+nSs1+Pc4pbIRYcqOkGMVA==
X-Received: by 2002:a37:ae04:: with SMTP id x4mr9183852qke.245.1617295058820;
        Thu, 01 Apr 2021 09:37:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:254:: with SMTP id c20ls2480003qtx.9.gmail; Thu, 01
 Apr 2021 09:37:38 -0700 (PDT)
X-Received: by 2002:ac8:498d:: with SMTP id f13mr7820093qtq.54.1617295058355;
        Thu, 01 Apr 2021 09:37:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617295058; cv=none;
        d=google.com; s=arc-20160816;
        b=EBRYzzRtyM4vjfCgDPBW61L7jIRPRn5SPRe7qBHgWeX3Ai3domJqNHlcX08oz5x+Gh
         2u+0In/YOMaJ+mhRqLSz7eoRCOAcZSL75Pc/K+PngA6qr+8Z0MbjSD64psV4LO6lhQxg
         NbH5tcefiQnR6BM6PXmp72QHAdIF7YDEXe/nda42oFOGd88SSxOSoPgW4Uo/NkCbXT0h
         Nm16KSyqO47zZ9d/31qilh57YAJJDNCtr9bhDxR9xTg3RFqrfZ41d9Ft8NoGuE80jrIa
         p6SMw+XDyDoy8MYIYCKanpwO/oBMwAldiqxRozdey7dux2d2MXhINuO3gBoVcFVjhIyZ
         uo3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wq076vaW4wycDm1i7fGRWXou0ZHw/lNQ9qiwZqFJFNA=;
        b=BzCRtDqbMvtaxPWnqCTpr9d5ExBtl3B852BWA0DdbaG4zYr60qNEWSRoEJlomgj+Gq
         V9oN6nDJTl38+1uVaq8tr+IvhPPhj7t0xYIcM3ZvMxrELvAnSMXdVDqfN/lg6mTSPrFF
         5d+jcVpN342bYogU2m7LYl5WhahmdKqFhWu3E9sRaLKyFG2UlD3V+UPIELPPwYCYN7yX
         8/hPTXUPxpWbJ/CCKBsEGnRk7rWy1hSob7LDwfisHDGQvCb1v+qNFxPWJsJCM8k7cnLY
         WuSm1XfcTIv059MlxP29AC7FCtHoGYmqQjRmoIFlowUyhVtrLMDTMgDNHBSoMrJHAoHc
         5Tlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pfG4Ny5N;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k1si878922qtg.2.2021.04.01.09.37.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Apr 2021 09:37:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7BD3861381;
	Thu,  1 Apr 2021 16:37:35 +0000 (UTC)
Date: Thu, 1 Apr 2021 09:37:32 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Maciej Falkowski <maciej.falkowski9@gmail.com>
Cc: aaro.koskinen@iki.fi, tony@atomide.com, linux@armlinux.org.uk,
	linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ARM: OMAP1: ams-delta: remove unused function
 ams_delta_camera_power
Message-ID: <20210401163732.gl63gs2dpi6pickt@archlinux-ax161>
References: <20210401160434.7655-1-maciej.falkowski9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210401160434.7655-1-maciej.falkowski9@gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=pfG4Ny5N;       spf=pass
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

On Thu, Apr 01, 2021 at 06:04:34PM +0200, Maciej Falkowski wrote:
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
> Fixes: ce548396a433 ("media: mach-omap1: board-ams-delta.c: remove soc_camera dependencies")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1326

Thanks for the patch!

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

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
> -	/*
> -	 * turn on camera LED
> -	 */
> -	if (power)
> -		led_trigger_event(ams_delta_camera_led_trigger, LED_FULL);
> -	else
> -		led_trigger_event(ams_delta_camera_led_trigger, LED_OFF);
> -	return 0;
> -}
> -#else
> -#define ams_delta_camera_power	NULL
>  #endif
>  
>  static struct platform_device ams_delta_audio_device = {
> -- 
> 2.26.3
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401163732.gl63gs2dpi6pickt%40archlinux-ax161.
