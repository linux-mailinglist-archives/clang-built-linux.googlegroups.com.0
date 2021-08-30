Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZWUWWEQMGQEGUW5AWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 216D93FBF6D
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 01:31:57 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id n189-20020a6b8bc6000000b005b92c64b625sf9554190iod.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 16:31:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630366311; cv=pass;
        d=google.com; s=arc-20160816;
        b=iu+VJlygCwPGvOAB2AeKJ5UDjadzB7wgwBQTEJwsC6LbztK/hGDFXLrH1Cgw9NuKFS
         ln++eyxlT7GWMqddim0eqzQvErBO0fsmQ4mkpDJZ4Q+6Y+8g/lPio/dTyeBVXeojPUw3
         YqR4ijEm8W9TKBaQY+f62eFj2rq+JIKB6HvLczBdMYepaBRS+GYqIHLN92WFcNVlrdwb
         UwujoJKF0eK/IeUyoiVe6DsqoWvTCxXxUdLUokl6QcFYVPyXe1ML27ta3HSr6Pw73Fnx
         GvJkH6jaAx9TWzQnF+1X5YGEu+gGUw8R4zT3SFwcHyYt2eHLqwMAgZXStboJyzmOEYoX
         774w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+TF0s36nHvzqiDJrkV3logcKwBe0ZJgY3duampP+cSw=;
        b=0NP5XPBEHatJWNTio9OzRX/GbNwX4VqEm6Vl/QbVWSx6WSBAbNuyDGj2P4a/YBu4a4
         GgOpDSJeAnwFlU2Y60kPakLnqqxEq2S21NvcSrqpPk1xezLaMHo0MrLmUqRdvS38rhh+
         ZrqlzY0QARCwh5Kf755ztiigMfdFoszIrEf21JEbBG0vw0FYYmq2YfQa3V6GzhCfjwnB
         PKWIQG2dMxdm1zyWnQsYgPQ9wmDlz9ReqsoPLk5Nt3I9JPZVnzG5dCyjBoxyIJq+VL7P
         eVxkI0fgNr+5wdlZ+Fx4pzdw6bsdFmifu0qd75nITzyiXBJg2pUp8A28G8hJPxoBqIQ2
         +FWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Y5LojrYY;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+TF0s36nHvzqiDJrkV3logcKwBe0ZJgY3duampP+cSw=;
        b=GdrQ5uyQirODgCTTpDbXWNkdNO7WXaGrDoQfq6Os294WBqIh2hKnjE2hwt0jl2zmSb
         rW/VtIB/5pHNmxlSQc4tlCYV7ojjtrHcAC4LTMxrbqDCORw+TkVO4KAYbVV64Ti75QV7
         IVHKW0oW9Z6NwnJtAJO7JDjZBXN1SwlUO28Mvd2B5lFn95a0Z48o+MUbFqz0Ok95lZEy
         NId/WRVYsm5F7EQ0SQk0Yv0/Yzqo2UxqT/7gZX+UGySDxtAB9+ATZUm2n029m1z29CJC
         sng6ROPwCC/CPCwCbEPCnsSOgR/b+zIpBb0V3jL9tRNLLn4Z1pY1FT+o0K+zfCegkAmF
         Lp9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+TF0s36nHvzqiDJrkV3logcKwBe0ZJgY3duampP+cSw=;
        b=Z8bQtyAczb8+kJ9O5FgMxpjEGlhTVjhbhaxkkBBAsO2SIcfRKAT4YfR+5oWklnt1UC
         Oy6MLE5+5Qi+khZaHwD2T8wao4588h/eO1kSp9A7H19R6tBoVYRGU+6xS2D9N8+li69t
         urLf/gGBDpvmW0ISBEqga5ZlrEqHLe1EFH930iTLWRDmUn1BXOMCxDDwYbAiHPRJroqx
         5F6P8GHkAA95IrRnjY/wLTpbmajVBdWY3yWWBX/o8H0xCI3WKYOsqVf86fMNq3F21R1i
         awXRe+jAM8I3BbGSHSgdGKr927SWyCD7WQ22C9feO+9oKHTEvdPA7e7okA+QBohrX1+B
         9qbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530XYU0ZtbGtdVS4bPcy+RZo8v2jzP/six+WCuDrvyEmd6ChrXt3
	miB7/4TR18edI+yqy1za5c0=
X-Google-Smtp-Source: ABdhPJww8hHkVt41onW4rvCPpG8jCm/D7FuoQcwhY8En8EnwOLHgTgYpIcJUIsOZsXb6BRACeTnvrQ==
X-Received: by 2002:a02:a78e:: with SMTP id e14mr104450jaj.50.1630366311081;
        Mon, 30 Aug 2021 16:31:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:191c:: with SMTP id p28ls2310943jal.10.gmail; Mon,
 30 Aug 2021 16:31:50 -0700 (PDT)
X-Received: by 2002:a02:2307:: with SMTP id u7mr113623jau.28.1630366310689;
        Mon, 30 Aug 2021 16:31:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630366310; cv=none;
        d=google.com; s=arc-20160816;
        b=y/vEjpqwD4ApR6dNJRmvlJq3dOsxeS/OQgvffu8YhD7nI5KIuB9qhPIWA6Tmvgb1I9
         gEOAFviSx+WeoxjOQ0ZJbDfol1Y447qRbwmeg6ORV+liW5EtaGMjTV60cIuWMnP689JI
         8bCvTf4IEQH7TpBfS4cRrMKqaX3LuZf6Etz0jWGaUqwTwICdJ1TrRLvGUOs/FLZZ2lfF
         wOGmcGapIyzOCPAiqB7Du1xCkNoJwmYdr7hlEW4c5OotalamYW70xaliWw+H0Va3wrND
         U6uRn757CyLx4AnOHMQJ0NNgmMgr2WP48CL4qyjA58kuYQNzI++y/7ViBob1tX/3d+bO
         rQaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=TOlMnjRhZJNsVN1FeevvT9eD2sVisIZneF9lc8eB6mE=;
        b=LvjC6LzsFLdCNCnIFtm1xDkxe0QLJlcDcHHjxMA5SrYXZvYUldGbRbR/ukla6x2C7j
         KVF5BaW/qBzozzyt4a/+E2aaCHRl5/qWmAMyS9U39WLrjYHGLao9ig0BzaJOKvlEFhy3
         HXfLv1WZmeHJgQfC1+BbFC2a3RkT6BscIKOvgK8SJKtUjDDhVyJg1dcWRiIsJ8lXELl3
         DMUq0uKWNggtkLrtDtBIT8LQzRDnOxswwbsRRIfotKazEIiYCI4XOpA3s+v9MbYFIT6a
         ZiLiqJHU+W8k2riDP7E2Tdcieyrj5kkNVQZMwmgb+UaCa5EcuuqQzusd49iEFBk/G/sV
         LaSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Y5LojrYY;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b12si1335202ile.1.2021.08.30.16.31.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Aug 2021 16:31:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1A50A60F57;
	Mon, 30 Aug 2021 23:31:49 +0000 (UTC)
Date: Mon, 30 Aug 2021 16:31:46 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-arm-kernel@lists.infradead.org, llvm@lists.linux.dev,
	Arnd Bergmann <arnd@arndb.de>, Thomas Gleixner <tglx@linutronix.de>,
	Russell King <linux@armlinux.org.uk>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Linus Walleij <linus.walleij@linaro.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Anshuman Khandual <anshuman.khandual@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>, YiFei Zhu <yifeifz2@illinois.edu>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
	Mike Rapoport <rppt@kernel.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ARM: select HAVE_FUTEX_CMPXCHG
Message-ID: <YS1qYuZ5nM/AQeSh@Ryzen-9-3900X.localdomain>
References: <20210830213846.2609349-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210830213846.2609349-1-ndesaulniers@google.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Y5LojrYY;       spf=pass
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

On Mon, Aug 30, 2021 at 02:38:43PM -0700, Nick Desaulniers wrote:
> tglx notes:
>   This function [futex_detect_cmpxchg] is only needed when an
>   architecture has to runtime discover whether the CPU supports it or
>   not.  ARM has unconditional support for this, so the obvious thing to
>   do is the below.
> 
> Fixes linkage failure from Clang randconfigs:
> kernel/futex.o:(.text.fixup+0x5c): relocation truncated to fit: R_ARM_JUMP24 against `.init.text'
> and boot failures for CONFIG_THUMB2_KERNEL.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/325
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Reported-by: Nathan Chancellor <nathan@kernel.org>
> Suggested-by: Thomas Gleixner <tglx@linutronix.de>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Tested-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  arch/arm/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index fc196421b2ce..b760dd45b734 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -92,6 +92,7 @@ config ARM
>  	select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
>  	select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
>  	select HAVE_FUNCTION_TRACER if !XIP_KERNEL
> +	select HAVE_FUTEX_CMPXCHG if FUTEX
>  	select HAVE_GCC_PLUGINS
>  	select HAVE_HW_BREAKPOINT if PERF_EVENTS && (CPU_V6 || CPU_V6K || CPU_V7)
>  	select HAVE_IRQ_TIME_ACCOUNTING
> -- 
> 2.33.0.259.gc128427fd7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YS1qYuZ5nM/AQeSh%40Ryzen-9-3900X.localdomain.
