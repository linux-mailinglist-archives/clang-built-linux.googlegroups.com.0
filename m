Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJUEQKBAMGQEBPNK5YY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF5132CD10
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 07:46:00 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id n10sf17149128ybb.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 22:46:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614840359; cv=pass;
        d=google.com; s=arc-20160816;
        b=N33i3dBVwmC1x5gNQvcYXhnO1OFs8FbZP9y2u60iev+ZwRdFf4wI/88YKf2PkJvX7R
         kolfchzTZdn2X90fZ3v/EwXzA15Br8KKNrwEbm1inxwyRiYKTRT7Sx18nfg7EMWO6nNe
         x4bgSHSbcrVzQvLGzZquLBGRVFo2gY4YQDMTwxQ1MAksmqWPHNgmm3AYePh4Ou8qmLgP
         xoLsN8HRp6oBZ7KjlW7NDAwJGHYcgpWrvRTn2tyFLRU4n2SedAzyfHBUfSL77vKzfTrx
         O0E7BNlZdo1xilzD5sf3lvhtYjVIFVyl2Y4zg28rM71kOfcjTSGvqO75q44LVcWuuECd
         SNGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=s6mEr65GMz2cXqBWf+TEWMCOhXxMM5m4UcyzisH52AE=;
        b=VbYWaugT4sK+hXCwp8EI2XvcvsDdhK0dDppkX5v1tpoq7QMc5QMu/kUcKA8k4cz7Kj
         PDrgtUHhQHOaNs5LBzAC/yyV8PVsWypIlCW5b+sxkMfOvJfYLbqSUr+wswQEaz2YF2Md
         y6nPIaP6i+In5c/dw+QSa7rqInIY+nzB8Yr9ohbibo4wLzGSq9i+emRR4YY4Ucw3bK4S
         A23FK9oWaSrNpHFZxJWpdklxrDOtGycuzc7T/sMSJmPSY7Ktw1dMW/5pY1yYQJPVUHy7
         BYfr6wTnbxKVKt6nBze+mUkjlcRQH6HOQwap/zTRnes7rgUM8tjSZHzHbmgCACq3XaHt
         yRog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AZZ89bHk;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=s6mEr65GMz2cXqBWf+TEWMCOhXxMM5m4UcyzisH52AE=;
        b=qUsm0aNeC+w3kNcoE4pJD0vk7nYNaW2QZ+U3yCl0Se61wwYYUY0PkbNt5+cuqaJZO7
         QNa/w4MJIE1rRZCfE0VqhrV0coH7tihE0l5BBxa/N5ONPKfFbt6/MKfcypWZtssGBxTn
         Xw3xRImlGLZIKTuu2UhO8n+fvLq1AnRdaPSXas23c12S7ZTmpErmkZWb5nvolLTQQfdb
         kGeZCluMc/DGNSWFecJb5WSZhIDiP0LpRmp2Ys7ojXNk9AlDOyQ4A/4I996+dIq4hHxe
         HFU2PHMImSBp111boZtKQMkSyel6yao+2glqDlTGU25oetNZbL0ykxsK2Ubj+HxbhsWe
         KL+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=s6mEr65GMz2cXqBWf+TEWMCOhXxMM5m4UcyzisH52AE=;
        b=IJXKGdLxp/FSIAea6EFqJJW1FZG5K4POlHoVystG1Jx3VzQIMHGmcJ3pgnGvUv7kb3
         cMcTs7/z7KktAv5JpeDVFev70CvLjOE/QbJGyGC4nbP6IqB9IYLZoVLlC6LTunjLR6l4
         K2ZR1wDQMA70F7N+Ehnve8n4XjsHkVdXnjUsrss3OadDJ1hl5EoNRDZo+0DO1ipJNAHR
         JtkLHYz7RhwMW5a+q5x70tM2AJBvViJmhMI4gJry3pSiL/Z7bGVOa8tDadf9czSuTvrJ
         Di9K+Wp9pAZsAsqjWLE0ws1Wz+0PVHvpGW1Oxou99ZtRRCQ2enkC46QOR+XDzBBPoe+c
         slIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533YemK8gSjzDaujf5OMaOVi2BN+41V0Lb1IyFxpW5jVSPBCgI0T
	Zs96lX3ZKL2gcB8AR1fT+4s=
X-Google-Smtp-Source: ABdhPJyn9Zo4CdhUJrK8Ft7HFL0tMsqs2n87qdjbV3U+3KiEFncet/Ol0nEO3BIQY61XR9Ahx+5MBw==
X-Received: by 2002:a25:d60f:: with SMTP id n15mr4464156ybg.220.1614840358875;
        Wed, 03 Mar 2021 22:45:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9805:: with SMTP id a5ls2326289ybo.7.gmail; Wed, 03 Mar
 2021 22:45:58 -0800 (PST)
X-Received: by 2002:a25:778d:: with SMTP id s135mr4106023ybc.126.1614840358437;
        Wed, 03 Mar 2021 22:45:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614840358; cv=none;
        d=google.com; s=arc-20160816;
        b=jMcbx/lMIGmaS2gaEb6TPs12xvwXy5oSE+7S3q88ff+Us6AEGzhNL/vFkKZmIG6whk
         wyWX3RruzWGTTEBMkQ+pTb8g4stlkAkUQPaHdSdcloAN+/RCY64E8lYzBZ5bY8ZSB2Vi
         8chQfZZ6L0Og8Y+/e9rfPSH6yJtN9wHxwscO8XA57qodmDNBy3ZA/PZf+YxMmUAf95zZ
         XIFDLEA9a3N55rKC6ljMgcRH+G0B6alD7ajjtbWZmhBu8KWp2WZk1RtDwaxuzHUoDFGD
         TtlaX1Xh63IKNJSHMhgVl8qtCyqoqvDKquvVKEijW4+PqNYYUwtMbfSFlsTMD6IoR6qM
         0zWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dqDc9k1AtHMdLWOWdIPXB4+C1b4hrOQOM2u9OXtzebI=;
        b=o+npqpJzPFp4CgAJ7vQQLbt5EoPIlW7FePtP7rNXCGxBxDdO9suPGvLl0RTn3YVEgW
         nelVlbISSd6pz9MoN18Bo2b04BhmgItqREPtpPAxsbifzALUV02qea9nDglv0acp2yKj
         X2X+tBtQgD6qrnS1PP8yZ3GiEZaPq0D8hkyO92l7BVxPylqbgZuadOtsv8TmAaFpHPZs
         mWvQUC57d1iz6cXIP5ikyww68ROjJJBvnJPGzdE3m4aDd38p8yYJaEfApANCxP0hAyzc
         wJamPz52acO2Oo4zg0r49DoiRID6CyqIrYi+7zyWhB10RackYwHdNZ7mn0zTGyyo1sMl
         V8Cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AZZ89bHk;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j205si487558ybg.1.2021.03.03.22.45.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Mar 2021 22:45:58 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 14DB764F07;
	Thu,  4 Mar 2021 06:45:55 +0000 (UTC)
Date: Wed, 3 Mar 2021 23:45:52 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Tiezhu Yang <yangtiezhu@loongson.cn>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Xuefeng Li <lixuefeng@loongson.cn>
Subject: Re: [PATCH v2] MIPS: Make MIPS32_O32 depends on !CC_IS_CLANG
Message-ID: <20210304064552.xzjqbhltghmd5vfa@archlinux-ax161>
References: <1614838778-3696-1-git-send-email-yangtiezhu@loongson.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1614838778-3696-1-git-send-email-yangtiezhu@loongson.cn>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=AZZ89bHk;       spf=pass
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

On Thu, Mar 04, 2021 at 02:19:38PM +0800, Tiezhu Yang wrote:
> When build kernel with Clang [1]:

Sorry I did not catch this in the first revision but I think this would
sound better as:

When building with Clang [1]:

I think the kernel part is obvious :) couple more comments about the
commit message inline.

> 
> $ make CC=clang loongson3_defconfig
> $ make CC=clang
> 
> there exists the following error:
> 
>   Checking missing-syscalls for O32
>   CALL    scripts/checksyscalls.sh
> error: ABI 'o32' is not supported on CPU 'mips64r2'
> make[1]: *** [Kbuild:48: missing-syscalls] Error 1
> make: *** [arch/mips/Makefile:419: archprepare] Error 2
> 
> This is a known bug [2] with Clang, as Simon Atanasyan said,
> "There is no plan on support O32 for MIPS64 due to lack of
> resources".
> 
> It is not a good idea to remove CONFIG_MIPS32_O32=y directly
> in defconfig due to GCC works well, as Nathan said, the config

in defconfig because GCC works, as...

> should not even be selectable when build kernel with Clang, so

                                     building with Clang

> just make MIPS32_O32 depends on !CC_IS_CLANG.
> 
> [1] https://www.kernel.org/doc/html/latest/kbuild/llvm.html
> [2] https://bugs.llvm.org/show_bug.cgi?id=38063
> 
> Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>

I don't know if Nick will have any comments but for me:

Acked-by: Nathan Chancellor <nathan@kernel.org>

I have added this patch and the LLVM bug to our issue tracker:

https://github.com/ClangBuiltLinux/linux/issues/884

> ---
>  arch/mips/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index 3a38d27..f6ba59f 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -3318,6 +3318,8 @@ config SYSVIPC_COMPAT
>  config MIPS32_O32
>  	bool "Kernel support for o32 binaries"
>  	depends on 64BIT
> +	# https://bugs.llvm.org/show_bug.cgi?id=38063
> +	depends on !CC_IS_CLANG
>  	select ARCH_WANT_OLD_COMPAT_IPC
>  	select COMPAT
>  	select MIPS32_COMPAT
> -- 
> 2.1.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210304064552.xzjqbhltghmd5vfa%40archlinux-ax161.
