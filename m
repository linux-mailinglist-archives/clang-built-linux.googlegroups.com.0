Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHW4U76QKGQEJDKSBTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 362452ACA85
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 02:34:24 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id i19sf7078219ioa.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 17:34:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604972063; cv=pass;
        d=google.com; s=arc-20160816;
        b=dSJp4c0HbEOXoIq3t4dg2iUbine06qXpwZK8YhB5vCju9sSGkqHNm7uj6Esi37CZwD
         vr4mazPGwNlFCGRZaVoNmqCoiApjOclNhfDmNXnWFvmbwyu6nwWmTggfPqZmYGXfXU05
         PKQOFBhFWyHO7mlaovYUY+DFdFxJKQOn723tSUppMBP5Rz8rNrjC3/t7+zWiL8Rg+KYn
         qrqpWKjBl0FT6ZpXkQSPzWxVhxdULYE2v1DGqy1JkyjrAIflmgYAN5HZxUpmfVfgUe5j
         xBH+XWyEKvdm3gNpm2i5cdFS+OJPFzeyN0hTtc4D4kYK7gcAKKTEmEE2GoSqDEtC3q+g
         6JRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=2rB184wDYccCKcYl79l5ML4PNzaCUwETCrDsNds+hmM=;
        b=q7wCM3SJm19ENRAcSvtFZX38md9zSWdoOyYkCvGJ5r1u4RdcDsb98GfOdcnw31Ksie
         lisvt+RcXJzL1gqci/fXP1IEXgTdbBxhCIgIXff/8rh+cntmqCwFrzC1oIPLOyR6MyW/
         UcAHNZquH4xhfg365Ryg2JA87vt8Rt+PNgR6No0kW3Bz0B9Xx0T0BM3FKDmpGXVo5PEs
         +PmaaC69jtJlsoidwL842+jEh/Wv6WXpNwqMbv9YL1f5rAtgVSVPDQbj27vG0rKbpxsU
         iqtNQzOaRZEVP+Ms5qmcsEM9o901QKnGNuDNQY29biCcXEMcocp87wyHTC7gyAdWQ/F4
         NNAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OCA2WaDJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2rB184wDYccCKcYl79l5ML4PNzaCUwETCrDsNds+hmM=;
        b=qZSV3lMajwa6VDwy8mtGQSNBcabgtyE5H5PMPaapkZ4Qg5IOcYYtez2QgdPo15cboJ
         z38z04Kq7sTErbJl4Srg4YCydxGCm99Tqx9otPwKwpFYpxthw793GO5On1l+R9M2PPA5
         CYmAjPnBzUsGauTNlLCP7ysdUv82YFsJGxin2FNQzIAYbMKGJDsdZ1y1S/eo+L2QG15g
         +IkwagjkhVgNvc4FiJBxNyMY9LysyZvW8FzsGsrsCjR39YS48Z5CNnCT+T7ygxOrc+HQ
         yuvjcfoQCqAVWjeSeIKlMEE0bBtdymzL/1pM58drvHDvk1coQDwoVad3VqvYvKH97pnx
         C19w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2rB184wDYccCKcYl79l5ML4PNzaCUwETCrDsNds+hmM=;
        b=YlryIXbT/EOhWATGJB7Wk43/sujQ7a6WkqLPzpTsKeEXcse1qVHZxf/8/X97ynvi8X
         MsO6eOoItWDPyapWhzByCw2KnDmU4k3apVEAaYh5Cm0oYC53oAD2+o+e/367VGN1C0f6
         yUV+1d/RrUJs4Z88URKgtt0TQDmZSz6DHV/X1dOLproKa3cSI4rPRva6Lrg3Cy4eBWuq
         PrHvZuNJYKbP/JC3QmWng2IWcotS0NurgCl7g6mEcForgYEOYdTc4rBVt1+qoHAEown7
         f1aJxIbzGKB5kOXMcWiyv3r8OmzcZDE8apXnXu5bjp6mPo2Tk2hzt+yA6LsBD7Rj13oJ
         IfbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2rB184wDYccCKcYl79l5ML4PNzaCUwETCrDsNds+hmM=;
        b=tHETAeHcEuyQ761RFi/D2UqLhbcip9uIVPb2OW60FJ7sJFe8U3dKlutFiSJFaYIr6D
         yMmvsXfhhyHObmCaE852R/Cmz4uNqpM1pVzZSxlv0T6NTGnwOk6+GItTtEyoGYLyxbeT
         yc8vkYdDdNY/ucsMSET8Y6mpgh/MqJ2pD/N1/r3n7yA5JFLzqVHgZKOi/qIeMG0o9Rt2
         FZcKfoy2keOGvmJY0xc3n8IuXq5VaPnBIRMQIztRXdOkV6Qv7FJj6mRIrR8FnewpiJ6l
         OzkhDUQAe3CxqX56pXUxxq1BMG9yJQFnCJ4Wtf7Z0spNVlHc1YFJB+s6bgGQvMuAlUvs
         jZAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334KnLKvNT5K78AoRAe6PiW5qd69OWQDgPvHyucps/CxmDPTQRh
	0aL8AtKKd9lVj3woJKdIRKM=
X-Google-Smtp-Source: ABdhPJwAglxYAdWtzpPDkbUl/RwwxAYn4DFexUOkaaGmTH2A5uexswDIqEExBL/DdYe+saGEt8xi5Q==
X-Received: by 2002:a02:a813:: with SMTP id f19mr12915130jaj.2.1604972062760;
        Mon, 09 Nov 2020 17:34:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8c86:: with SMTP id g6ls1450855ion.0.gmail; Mon, 09 Nov
 2020 17:34:22 -0800 (PST)
X-Received: by 2002:a5e:8206:: with SMTP id l6mr12048863iom.126.1604972062285;
        Mon, 09 Nov 2020 17:34:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604972062; cv=none;
        d=google.com; s=arc-20160816;
        b=ITumVzTU8NVPfDrKGQXa+t9d3qtA6rIW4Fir4R5+OH94D3/4fChBjFEzBivhOtQF/P
         pAq55jMx7EOu/c0+USPr/P0Ks43aGyLRbuOjoi5JelZ9evSyoJSZB4KhrAVDeI49rR6l
         JVzUN0+zK/+U5WBqFODLtlzFi92ZLgZhQ1u3+gxFb/ghGC7M2qKAOKcpiPqgU/7n+gcP
         GFMYdQGYeXO/aEcMDGVvE/vRUifJ+4vHNwflITCew3ZUvXwnosBa7uVnArFu0jBHBMST
         VScl48fd1nRAk0+KAFHNvxqyqDqhGXskcPVXFkCDJkPoJDYpPSQH7XAmwSvXBgnn3kxA
         4qVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=10Hl6Ts9GS4xnp8YyN8GkEdT4icF3hx2dzGGYENprl0=;
        b=zNGUmRzOdRT9P70sVbfK7gsX4IZIkFM1y5T2RLzN+vZQV44uJDz3VwO/4i2xv6G7Jk
         YO8x4VQxTkGUOOFA85L9P5mJcgs0qQtdBXZWheo69Zei8xydmMypRssMLsUep1/EClSk
         zKZi1U19BnNTqjxHC4tI/6EHdmprYU5wnU3gUJuH/M4qX2dYqDlkPt+H0pW/BCXxWZPS
         IuXg/tZ8QvvJjRqF371k/kJ1TvusF0qNG9xsLxOVzIOM1GxFjsm+CRcypZIrvB0d/SZ9
         qHtth7306wD+VlcsPFAsR6YeHd++6vMw16dWOY/RvQt+OYEXtAymmDyelFaHMPhoEifW
         rICg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OCA2WaDJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id o19si682708ilt.2.2020.11.09.17.34.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 17:34:22 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id q22so2761332qkq.6
        for <clang-built-linux@googlegroups.com>; Mon, 09 Nov 2020 17:34:22 -0800 (PST)
X-Received: by 2002:a05:620a:22d4:: with SMTP id o20mr16383285qki.151.1604972061776;
        Mon, 09 Nov 2020 17:34:21 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id v78sm4864976qkb.128.2020.11.09.17.34.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2020 17:34:21 -0800 (PST)
Date: Mon, 9 Nov 2020 18:34:19 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@kernel.org>, Fangrui Song <maskray@google.com>,
	Jian Cai <jiancai@google.com>, Peter Smith <peter.smith@arm.com>,
	Russell King <linux@armlinux.org.uk>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ARM: Kconfig: CPU_BIG_ENDIAN depends on !LD_IS_LLD
Message-ID: <20201110013419.GA2443932@ubuntu-m3-large-x86>
References: <20201109224713.16308-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201109224713.16308-1-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OCA2WaDJ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Nov 09, 2020 at 02:47:12PM -0800, Nick Desaulniers wrote:
> LLD does not yet support any big endian architectures. Make this config
> non-selectable when using LLD until LLD is fixed.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/965
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

I tested allyesconfig, allmodconfig, and about ten to fifteen
randconfigs and never saw CONFIG_CPU_BIG_ENDIAN appear.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  arch/arm/mm/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/mm/Kconfig b/arch/arm/mm/Kconfig
> index 65e4482e3849..02692fbe2db5 100644
> --- a/arch/arm/mm/Kconfig
> +++ b/arch/arm/mm/Kconfig
> @@ -743,6 +743,7 @@ config SWP_EMULATE
>  config CPU_BIG_ENDIAN
>  	bool "Build big-endian kernel"
>  	depends on ARCH_SUPPORTS_BIG_ENDIAN
> +	depends on !LD_IS_LLD
>  	help
>  	  Say Y if you plan on running a kernel in big-endian mode.
>  	  Note that your board must be properly built and your board
> -- 
> 2.29.2.222.g5d2a92d10f8-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201110013419.GA2443932%40ubuntu-m3-large-x86.
