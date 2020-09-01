Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIVJW75AKGQE3EOKYCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C645258719
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 06:57:08 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id k26sf53745pgf.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 21:57:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598936227; cv=pass;
        d=google.com; s=arc-20160816;
        b=RwT8QOIZR5OBIrbIiChimtcFkdFkLMLmOHSnuBHDZ0FzcmI2BdQAgUYsYYEyDbxBLT
         xSwJpj6o1BTfHWHgZLQ/Z3wonG6+KfSNBgg0zZJNKrfkpgbDL4VcerxFL97X8TOP4fKV
         Sa39E7fUmmJ5Iol4+JtfLFHEtwLNT4SDOGRV/8lQv2E3ToQFv5zgtaH/LtLP5SemqVxb
         VWhSncV8FBXEZ7/rHUerjCvI7A4tlJRvO+dRua3kiaz7UqybumNjrzNNCEMyqaH60Qeb
         j4/wEpuPT+6Xi3SYBiKcrZ8ZNwzfe0qBd7PRV2j1UO0cfguO9+YADxGtNBIIsaoaVcLa
         /3Bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=rhntz+CkeZ6874HPCHyb3Du7NOwQ1+rIWhOsB83tfQE=;
        b=WtlyQQpYvN3HMkol3aQDazzeKzbHONijAH860j6L77hT/F302RA9fcTz1hwccAUAvP
         ROKok0GFafaRO6taVDgEdz0gDtTEqkzq3yNlZsYPLWCOSM9jb9MynxgNsSxE+SmJchXY
         4GlXELveRc08yASQys97ueWd2FNmbRcNaQt3NuLxMd6UdL4xDV3ZRZc9Gp/jMe8kDrZD
         f6rJh2VSDgx0qJDoeWtQaQdWv+JiKmifp2M4EUYdnRZne+RmbWB38JAk71501fzGJZYG
         8YSEuBYreztw5hiqpHrxSnZEKx8IRBwEvpcjL5Bpzhg8Gs2crT6q6uq2U6OdP4YsNpHV
         runQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Cs79uMAB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rhntz+CkeZ6874HPCHyb3Du7NOwQ1+rIWhOsB83tfQE=;
        b=rlGSqZ0HoDF5SwieruiLojIt6715feyt7WLTLWhedmjkdzcBgmX/jxYDbdSR0QkNYU
         9hxSk7sB3wkMKxaJETAsKm1ePufjzUfgHlN/+2z9n7vWzs1ZLzauvSXIW8eqOXRiOtcL
         7xQunxX4ZWAXGBDlyOfWAe6+nxgwtdwyboUZyKuCi12VhkkGzSQiV7IgOvO6ulMYC0x8
         jzUXyqbspWur3yI40gQSahg3DpfwnkBQ+PdahC74uIxvGv1lwybrWnWxm3L8oACQKslO
         //XuaIrAZJFbgMJn1mZJmdD/wjGS3Bp0IKWSOISuHA3Af4TWvNDzbzbdMQdp3MWXg+Ig
         n1mA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rhntz+CkeZ6874HPCHyb3Du7NOwQ1+rIWhOsB83tfQE=;
        b=GAbJmDrs/n4hf6bF3pyXy/CFlhOPHHDrx1rAha/J1n85JS5rm4qI129Z0YCoeNEXOM
         mM0MBey1oy8jQ6XkbMtzP5MAAlVqlNFbVdCb5eYdnbnILHHBJYNmjA+F/q2ifqzSrxj8
         uoRr++mFx5HmozWIn38PIkwPJJjHfMnVgYAAYsrVwnM6ZaV1Vt581qsIjc0xCmKVyoJ2
         Ivqdphxo9Gdruhv3STU7m3NkLSEVCEdcpTQ+oNpsp5E+m4fb/flBJYBK8xdYO3ydP4vN
         DxU7WLEB2dpmQ9PwOUJND3d8vvQZUW0QREdvD6Dvvuyp+p6nGwt7j0fSW38cKSCkeW2Q
         uOXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rhntz+CkeZ6874HPCHyb3Du7NOwQ1+rIWhOsB83tfQE=;
        b=JX/CMuEcSlAOMhLEVDfqEY2Z2RyLPZdeiiLwtA2Dd/RV5XTl6Zlh2StWTNEqLsEcIR
         2pL091sNNPK6BfGFUGpF81Hf1Dgbfe1TN9DcB3Vsf7mToy2D/f6wdjpJvUXF6akno4ly
         T/wZQIjAibvAHKD2pD7ppDg0uRsShwDOYF400QlO4O3N0j2mXjbTx515lgDdSVpphQvb
         4LSwY6exdQ5NHN7iFiaXKEXklrvRX9PNM2TF6fiaLup5u4aOziPUEwUMl6Xcd16Nt8kz
         EfXPii1avbK7YzgylT4S5lzMl5KVRU8pko88eW+2kUfmi8xWo3idAasRpMGLKR1p8xKd
         rP8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Dhk5wJmSXBv/oBNnaNlkeQaXcxzPD4wKUYzxFOu7KuLr8HD/k
	RAmIBvQ7XrnUfY2IUd2LSDs=
X-Google-Smtp-Source: ABdhPJyUbRSR6Zb8Awv0LnmNgZGgYXwk9LWq44xnxHCyPGyCB4Ktx1pho9sYcg/4qiBT5tJuzT7A6w==
X-Received: by 2002:a17:902:bd43:: with SMTP id b3mr3815863plx.201.1598936227018;
        Mon, 31 Aug 2020 21:57:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b107:: with SMTP id q7ls5634plr.1.gmail; Mon, 31 Aug
 2020 21:57:06 -0700 (PDT)
X-Received: by 2002:a17:90b:208b:: with SMTP id hb11mr255824pjb.201.1598936226569;
        Mon, 31 Aug 2020 21:57:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598936226; cv=none;
        d=google.com; s=arc-20160816;
        b=fPWnrEVl61TiIwNYZQVlzi2pcOsVdToloJKThvfsNCQqouUNfr6sJRVCUDtTbcWo6H
         o+8gHvIGEmHwXq1CgHFLJ1lvibAzbZgsyKpxm8Z5Z75RsDeFWq/ye/mN/sU1lMfgEtK6
         QoXqiO1I6r/BcdwQIIQmDKY0T75Gn+of/xsrFMjNIX8rZT7jMHk3ApvSoBJnXqMVimtv
         Of6wLWq5DLJWGEOzJO2amrlEobd6mbRAbzugjc384NHrfWN0ZUHOd1m6KLNTzly+35qQ
         CBE+D9uMH52bRsBRyXv/ylV8Y+dL+SeOAt51tQCRuHJh0SSX5No4CTmbuJmz7qLKGc0O
         YIqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RIJpNCkK5FQVXNXvvi2V2cWOQc/wyJO0hGvFWp5jPHE=;
        b=UNJiVMhXq4bunpnLRmvPl7Xze/umQEgFg8G8wwrZqwU1mTsj83qwnbAkcCoJNXvYld
         3edFYhm6lEdgnzbo7JdL6bElQYWfo4FzxYbDknnmhErqUOiQDPhpgfnE2qM2ndMvcad+
         QlErKJphoCU0z37V6dc7wGJ/PLV9eQSMu/UGYKXW447EuqRdj1JIXHN9hBswU67JrrCg
         EOAMvfithy6VQ4h4ethkqGSCcD8u44pzocZvqZ6mtxLuzLtxLrbeTQfb5K8mcm/ObjW6
         MQG6b/y4WworR1MWXP2cZ5RAntXx563C4ao115Dejqnwj/66wTFaD8yhgKfWz5MawnyJ
         TMvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Cs79uMAB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com. [2607:f8b0:4864:20::f43])
        by gmr-mx.google.com with ESMTPS id g11si7812plp.3.2020.08.31.21.57.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 21:57:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) client-ip=2607:f8b0:4864:20::f43;
Received: by mail-qv1-xf43.google.com with SMTP id s15so3708892qvv.7
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 21:57:06 -0700 (PDT)
X-Received: by 2002:ad4:576c:: with SMTP id r12mr174085qvx.232.1598936226194;
        Mon, 31 Aug 2020 21:57:06 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id j4sm210942qkd.129.2020.08.31.21.57.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2020 21:57:05 -0700 (PDT)
Date: Mon, 31 Aug 2020 21:57:03 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>, Marco Elver <elver@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux@googlegroups.com,
	Daniel Borkmann <daniel@iogearbox.net>,
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 5/7] Partial revert "ARM: 8905/1: Emit __gnu_mcount_nc
 when using Clang 10.0.0 or newer"
Message-ID: <20200901045703.GD1561318@ubuntu-n2-xlarge-x86>
References: <20200901002326.1137289-1-ndesaulniers@google.com>
 <20200901002326.1137289-6-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200901002326.1137289-6-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Cs79uMAB;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Nit: Partially in commit message?

On Mon, Aug 31, 2020 at 05:23:24PM -0700, Nick Desaulniers wrote:
> This partially reverts commit b0fe66cf095016e0b238374c10ae366e1f087d11.
> 
> The minimum supported version of clang is now clang 10.0.1. We still
> want to pass -meabi=gnu.

Thank you for calling this out.

> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  arch/arm/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 82c197a248dd..09a7669eea1d 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -83,7 +83,7 @@ config ARM
>  	select HAVE_FAST_GUP if ARM_LPAE
>  	select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
>  	select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
> -	select HAVE_FUNCTION_TRACER if !XIP_KERNEL && (CC_IS_GCC || CLANG_VERSION >= 100000)
> +	select HAVE_FUNCTION_TRACER if !XIP_KERNEL
>  	select HAVE_GCC_PLUGINS
>  	select HAVE_HW_BREAKPOINT if PERF_EVENTS && (CPU_V6 || CPU_V6K || CPU_V7)
>  	select HAVE_IDE if PCI || ISA || PCMCIA
> -- 
> 2.28.0.402.g5ffc5be6b7-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901045703.GD1561318%40ubuntu-n2-xlarge-x86.
