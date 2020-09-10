Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNFP5H5AKGQE3WZJKNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id A11E5264A12
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 18:43:33 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id e23sf4978356ill.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 09:43:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599756212; cv=pass;
        d=google.com; s=arc-20160816;
        b=ha3tHUL9VhEjnwoTz8ltw95WmE0drHEmoIAEN49qPQzB3e9nF6KPins8tm3GP0IUnM
         w+pEVRQZKWgq9mRexAIM//xRo1aawcch3+GdV759y98l5m115FdrxUpfKxTVrndJp6OA
         fqbI5dtDP6pttWf88+wZ5kmStg+egiUR2C3olQkncaD7hyEyI7jxEdW5eOq+RHDz/F+V
         jboZFY2bL2r7OXBztc/3i4dmPmz92vL/69p+imgnH0o6SQCcN82IFlVZegAEnukvn/U0
         UF6yROL7EUO301qBaHRixJNOJENQomRnkwhtUnzJoEGYqrJjV9EwoykMR7yJNSm+yQLO
         C2aQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=chKV7BJGE5H94jCYgJKUe0tAC1Pj/qyQIa2a+HUTVv0=;
        b=RWiYQPcbB7qb4udY7EYQbzSfXT7oneEJVPRlBXokyv297qPYnDzmXzo/RSxRQMPPWN
         caxtFPQBByTZAu7lTHtMsf1Rh+YNm3b2rETA2vi0WWlAZMK3CMMei1sZN0ZJCUqpj2uK
         CcUxnYF1c+QIJ/ay4qHT4vrcmM1NS8HVmk61/QsTdh5ReCu/BJcYCB4d0EIy3TIVpDhS
         VDEL6kjwA4a/uDmVXolQcemTtuOEP79g9a5tc+XYaJH1YYxtRZMv9vhh0z0rX0Z39a4R
         mRmmwf8f8qDxAGN3Qrt1sG3QaUrn60t0Jg4+INRD6uRPGqAC8VQyNFRQ3rNJGP+6bE/r
         U24g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K+Agj25O;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=chKV7BJGE5H94jCYgJKUe0tAC1Pj/qyQIa2a+HUTVv0=;
        b=e7s+/j1N1bPB6NmKf8xE9mLEJeKrBeKa6AOxjboqDiRhf68rse1KknfLnHsZuiNObv
         SOhDOeGDAVL9OYvQPKENUSpB4JKfzuhUXJtbh8lw9dX+0nd8DiVF8kmNHzXLGdVhHaXN
         8QdVOWpC/4sXjG5LJPQV0QkhZYfaOjZLG+CCM/DDAv3mVbV/dV0smE0sD3cQj/OZlabM
         Vu2pttAkz+2DGnuVhs1X2EdKYLdjV9RrDC/o8XT3fMMc6nz7JQkDwkTwx7kvD3+hGLS0
         R6qFMRfyylUrepZGwK2HnQ8p0ni7OR3O5gt5LsYaHiSYtyg6M217PIMPomhJwm2Kc/jb
         O4rQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=chKV7BJGE5H94jCYgJKUe0tAC1Pj/qyQIa2a+HUTVv0=;
        b=G5vLAlvoNBzbvA2qe/9esGAkkbMnvqqciJXJTEdKH4AgamKrWIkm6KjWkEDxZS/EBy
         Eu/4MB0X6PrLs1wdGs/3Rh8WYk+Htiue0N/FzjBPyJ0ELLG5EjYh9lMUz3bm1McGkKO+
         Gt4JZd3I90qTRMXhQ1tOxGZavZHB3G0j44AYIHHX/H+HMb129UcC2TLeYPfYk9BzH355
         ST5TfAAhntfML4E/EKJJNQGO3c3jpbme8Yx7n4JO1zL8mI/F7U7+c4kkp0AOD1vce97f
         1ilh6RtGKnFZtTjns8L4U9P4aH0/ccEtOkM+9NRZHEaK9Vaf5Anq9CMatXmjMQ2pItMp
         fcrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=chKV7BJGE5H94jCYgJKUe0tAC1Pj/qyQIa2a+HUTVv0=;
        b=NV+Ev+FDoubbbTX4zIm01JSqjFhfBW/5CtEe7C1irvkA9BJref8E+2PP+s/E7G1LuS
         naEKMLr4Ig2CXSF9sDDqEav6kIJcfi5hOjaxDZurAqtDxqW9kFEJlUyZF1GuECYEAwCC
         q3PQiwXlYjPm3HSZ5SCxc67YtbKyosujJl4VgaIwRyqYEd6UryWrg+nEtdBEmjwVyvsH
         iS+ocFkLYPxDPgXs+cYehFHIVk4dQpSowB0gsID+fmMNwcelLpuHabe2tUzaAnj/SFO7
         yU9GDDVQBMA5M1+kZUOek0bUXt221XGK9zzpn8V6+gWoIaEVCxFOnnEyYoLxyjCVqXJ1
         48Gg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533qhKecOcZM8IMwwe0YN0YfX26dsH3wTtxius6VzbM4rv6E7ini
	Hy+0ZhNdfN0nt7YaGfFPOeY=
X-Google-Smtp-Source: ABdhPJyBiI566yD6bCuH3oYSWgAOaczLcO25sWw/M2vvhLk1JJ/B44Z6pOeJ6RU/kS0MraTeSNSdZg==
X-Received: by 2002:a6b:3bd3:: with SMTP id i202mr8203893ioa.145.1599756212644;
        Thu, 10 Sep 2020 09:43:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:a48f:: with SMTP id d15ls873792jam.5.gmail; Thu, 10 Sep
 2020 09:43:32 -0700 (PDT)
X-Received: by 2002:a02:e4a:: with SMTP id 71mr9371033jae.133.1599756212298;
        Thu, 10 Sep 2020 09:43:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599756212; cv=none;
        d=google.com; s=arc-20160816;
        b=KjlN3j9FK4uURXo7RcWgI0s/yIm/Ic61Sizx4SS7QHfPk+g2CNw85aPZbVfK5mBCC2
         VpkUuTLL7SSZ+FXQha2d0hc/wMWYknFNZO4tqcKZdLYFcDIejDY1wDZGz6L2btQHC7In
         M6jWID7d57oI1Ubj7AIwrd1EYEYWLYng+HfUOWoETBrVIHXGlSzzjWaj0lmq2tqGfYRd
         AzBY56snKJEp9Mpomt58xc4Nomi+idWs2dUeGeUpRmxzx3XiMzrCAY+lNDG/NH+iAaSX
         lXcDeKFJqB723HPwxIFS9WeJu90nK6yrMBlrL9bMVeC8zSZpJOypO9l5GQOhgtFxjuHG
         ItQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3BNUww9/1V/edxdYConYkSugtndkLik3doexYMvLDMU=;
        b=HyBIueoHuNbchVsIRPSjAF0pnSz9P57zrmWl0iCah9g+J7PMboY1fvPURXRMaEShRP
         G2t12anj6iPL48FubEkz8sz8wRq1QqESXrR3fUxqwoSDhXBhnwnZsvF4HLDyJOsmHrt1
         OKoWNViTJZIvnORkEt+ATRHlVX/VPSNewRsmw2tLDrULcBZlLAGYgspFMoMfj7h1wsLd
         L2oz3zKQLTL4aEDWwk/z3Mq7Zoimg26DbLLPY8/otgfLOk1p1sS1CEuBGGeg57IVY2Y6
         K6jlaeLQniYTClj6VAN0xuC/1lB2w908JV0urTw/nmbUYS1YGqFSb6gx2WJrlCoomx2c
         xwgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K+Agj25O;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id e82si593565ill.2.2020.09.10.09.43.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2020 09:43:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id q5so6757801qkc.2
        for <clang-built-linux@googlegroups.com>; Thu, 10 Sep 2020 09:43:32 -0700 (PDT)
X-Received: by 2002:a05:620a:211c:: with SMTP id l28mr8443893qkl.395.1599756211766;
        Thu, 10 Sep 2020 09:43:31 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id o13sm6729211qkm.16.2020.09.10.09.43.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 09:43:30 -0700 (PDT)
Date: Thu, 10 Sep 2020 09:43:29 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Stephen Boyd <swboyd@chromium.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Will Deacon <will@kernel.org>, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/4] kbuild: remove cc-option test of -Werror=date-time
Message-ID: <20200910164329.GD3119896@ubuntu-n2-xlarge-x86>
References: <20200910135120.3527468-1-masahiroy@kernel.org>
 <20200910135120.3527468-4-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200910135120.3527468-4-masahiroy@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=K+Agj25O;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Sep 10, 2020 at 10:51:20PM +0900, Masahiro Yamada wrote:
> The minimal compiler versions, GCC 4.9 and Clang 10 support this flag.
> 
> Here is the godbolt:
> https://godbolt.org/z/xvjcMa
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Introduced in clang 3.5.0, see commit
4f43e554081ecac149fe360bee6eef2ed7dab8ea in LLVM.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> 
>  Makefile                          | 2 +-
>  arch/arm64/kernel/vdso32/Makefile | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 5102c89d3167..1d7c58684fda 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -940,7 +940,7 @@ KBUILD_CFLAGS  += -fno-stack-check
>  KBUILD_CFLAGS   += $(call cc-option,-fconserve-stack)
>  
>  # Prohibit date/time macros, which would make the build non-deterministic
> -KBUILD_CFLAGS   += $(call cc-option,-Werror=date-time)
> +KBUILD_CFLAGS   += -Werror=date-time
>  
>  # enforce correct pointer usage
>  KBUILD_CFLAGS   += $(call cc-option,-Werror=incompatible-pointer-types)
> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> index dfffd55175a3..1feb4f8e556e 100644
> --- a/arch/arm64/kernel/vdso32/Makefile
> +++ b/arch/arm64/kernel/vdso32/Makefile
> @@ -92,7 +92,7 @@ VDSO_CFLAGS += $(call cc32-option,-Wdeclaration-after-statement,)
>  VDSO_CFLAGS += $(call cc32-option,-Wno-pointer-sign)
>  VDSO_CFLAGS += -fno-strict-overflow
>  VDSO_CFLAGS += $(call cc32-option,-Werror=strict-prototypes)
> -VDSO_CFLAGS += $(call cc32-option,-Werror=date-time)
> +VDSO_CFLAGS += -Werror=date-time
>  VDSO_CFLAGS += $(call cc32-option,-Werror=incompatible-pointer-types)
>  
>  # The 32-bit compiler does not provide 128-bit integers, which are used in
> -- 
> 2.25.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200910164329.GD3119896%40ubuntu-n2-xlarge-x86.
