Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVP3S37AKGQEAOZDCMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 600D12C9618
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 04:51:51 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id 9sf140930pfn.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 19:51:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606794710; cv=pass;
        d=google.com; s=arc-20160816;
        b=NgOG6pPggce3JWJA+SWMxK2eWKPhyoqo/fEv5JXfyGzo/WDd15pydezcqwZFzXmqXp
         jP2g8YVHnDkzlFd3tng5xTfITt8qa2eK6EEkg7FgF9Qa2JBpqtuCnNd/DGLnFeZsQTFj
         6zAvLRkg9TH4B1+xwrTn5XlAauyXRCgyyWjI6tA09g3FODnQl+LBfYYRNgjovFh7yQZb
         kAABFSD8W6aH1UT+2JpEOEhqDEVQyy12hA+DvHFsffA47MIYtmHcotgmTLSud2fxc3YR
         znFKv5I6wAOUGbV28ZKVKZXegCgv98js7wa9vqdYyzdAcq7R7WtkkawkesB+xvQwv1ui
         BEnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=h5qF3dBUqWGsmh6OYCa6ocmUJjgmrP7XZb7gj7VaIkI=;
        b=eA4RUCiZudTi3wfACFjNWg0zshzCKguQSELposwJG+/62Dq69mgG7iKinTtWxGM8kM
         SCXeUy9YlVR7D94Y/QpkFHOaHAw6A3aE4wchpy7IrC6C7rGCyP67K93MdKJA9Iob2huL
         0OeQbpOS9Qy+0dwloIbtvqI3GPpUP1fXL5T/BP0UDJKPtNiSgvTgXnEGN81sYQBqiqga
         LhPZVaeU83UT/vnldCSnPG1f00FUNPsz6oomIat2VWjGnm6rFbCHPIRfm389eX69xBGI
         O7IONbP6RGuOySFaF6IvIr9bNcZj1k/aVtOdoxm2bS6p3ludTgkJAiaFb8bHLpGT033L
         uEYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=deIJDzd6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h5qF3dBUqWGsmh6OYCa6ocmUJjgmrP7XZb7gj7VaIkI=;
        b=bi1NrJRYuqBFrLxpdyMPt+phfInL43S0KnTtdBjKB/rUzWNYAUx7f41wIjF6thKsQe
         ikqOAUMSMUCqP7kNo4EIEzwSfGgo90cVIoFx9X02kZ/jNI9p+wrP72SotL0jZYJUteCN
         Hdp3pTzLPpKipAHtx6RBPSKfGuXvRatw5iMaguF47vdApKkZKtU9HbWKY5DIqc9sxIJi
         YxTCtfFy7h8a+L9vUypfz7cOBgrEEfk4R+xGc/oTclMFOcfPA9OS6SaDbznRX1JQS20m
         Lb2hVCMbZ35KrwGN0Ue3Q829lCjoHG4oP7QrH6h1wjZwZ3Dv6rDx2lWycschILDiC+Zu
         pEOw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h5qF3dBUqWGsmh6OYCa6ocmUJjgmrP7XZb7gj7VaIkI=;
        b=vHL4FAp8z0I7jBwWRHTIwwqSLouimZ3YI/jk019vweOLNY9F43ZD0V9lwth82b4oqc
         uwAUE/Ilir4wLnRlsCOMg52ZJN4wPWUxGpMcSm6bK5AZXOk77/a204hNEqrgS0GZTRq/
         s0rzal3eCubiYMx36e7BS4Pw2wbFyXD+9g+bjKSyOZASq8VU7xVAik1YJ/YCrEuwKJDr
         4vcJOKZo1b+87v32DytEpm1RohDjY24VaKuhGFYYiDT5+qpFZRTqo/ZpiffK70zXtBu1
         KpnFl4cFDDiH1StwKZIQvKEILZTiYRsuo6KQeP0G2qSxT1L5Pwx+q2jxm3MPW/wF48Ml
         TWcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h5qF3dBUqWGsmh6OYCa6ocmUJjgmrP7XZb7gj7VaIkI=;
        b=Rdl+LB8kg+4DdnxH/oPPcr1I5mGIrLJxR16VZexqxdt/biuBszkXtFTxQl4CmfE9Mj
         E4FusoEZtxPlZp7Uo+Y3QJDtcB8TRaQMxehO6a6Ik7Gj1NUh0YfDcqaGIjPM57E8Bzm1
         OCYwinj3qcksq1lCuiQp1Q2h7TShO8f9db7BSOduB5SdJYl5zVDUKeNkPTQ1d7Cdokqz
         7blAwbJKsUaH5X0ykuDYQinRX3EMHaXRVjnxrzah4GScfBuHYfpKH//AMFYmwO+K/spJ
         A9PrtN9MeG+XvCCtNdzUp4rixc2hKOtDN7CLC1ZGo+3IYp+bqeUbUrBSs1y2mPrxystK
         Divw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wXBHlKvWAGrgl/7Sx+1y9wRkv7yIJCuO6d7tP67zUHA/ggTac
	gKSQ2WLzXEjHrcXP2EEIwsk=
X-Google-Smtp-Source: ABdhPJwK8ld5WSG+vJ1JD77+VldZdOaJGG9ObW1c6dUgiKxoDzxAqvUzGgemFctx/lmEZcDDz2rERQ==
X-Received: by 2002:a17:90a:940c:: with SMTP id r12mr660213pjo.201.1606794709943;
        Mon, 30 Nov 2020 19:51:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:451d:: with SMTP id s29ls183878pga.5.gmail; Mon, 30 Nov
 2020 19:51:49 -0800 (PST)
X-Received: by 2002:a62:e516:0:b029:156:3b35:9423 with SMTP id n22-20020a62e5160000b02901563b359423mr706603pff.19.1606794709328;
        Mon, 30 Nov 2020 19:51:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606794709; cv=none;
        d=google.com; s=arc-20160816;
        b=pG3YHCcUDCpCEP5i0X/LTqiwzKx2WMfBgvVhE+26ji49wyTRc6vnrkh+V9XYrggd9P
         HFgExM9VlCce7Ck3K1+1ZEMQHwrq+KnmPn/A47k4Lddvy12zR5CxguZqDFJwWofFFxXO
         b+5li0H7cdvIkQhbe2o+dAT74QAy/pKE+NFh+Z+AUezMUGLvkAjQffWBU95dtdUi9vo4
         UzD2UdS/iMZV/+hVAZaF0OrhahZQu0x37G4Y8kTNGk9mqJrwoaxJz4gacEtAJJ1tHD0f
         fWeluvQv9v9qjSWKJwXyZgT4FP/dVLv9XEHQ9EMDxnae4JpchV/V/yD04INTeptAiqXt
         vZuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VtFp9fnvahVT0MIsHCMbum8vI3YEDjLRm/v1ir2OiuY=;
        b=PFaExFwDwA7GgIykot9WVWMTwyIKjTOzKrVgFvc+zrPXAJvG7dSFQvatg28teA4icy
         kJwFAgWHwq722oHvUXVkRHIgMcY7ac2M+dZrDO8xFMrLGK2fUvBjOixUCAM7lbvpfozH
         mFrbAMwQ5NwFGEk4qwAQgL4nECeenC6ZQc/9RAldZMW0ORYBgAqIju0Yc3xr1zFgVgAa
         fpNlbYg3fCFDNFOf0YmMzR57Pc83MkjBq5MletRIZ0ZF+rqOX7ni/qnwPYYRlJ5C7P1w
         mSQvejDP2aCvSr0pftQj315Zb9Q9WxP/bnMBD4pxXOCcDIFogRnEMyaGCPv84GcNZAJr
         FyEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=deIJDzd6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id w6si32103pjr.2.2020.11.30.19.51.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Nov 2020 19:51:49 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id n132so197577qke.1
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 19:51:49 -0800 (PST)
X-Received: by 2002:a37:6191:: with SMTP id v139mr988147qkb.92.1606794708345;
        Mon, 30 Nov 2020 19:51:48 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id i4sm691832qti.78.2020.11.30.19.51.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Nov 2020 19:51:47 -0800 (PST)
Date: Mon, 30 Nov 2020 20:51:46 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	David Woodhouse <dwmw2@infradead.org>, x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86, build: remove -m16 workaround for unsupported
 versions of GCC
Message-ID: <20201201035146.GA1469908@ubuntu-m3-large-x86>
References: <20201201011307.3676986-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201201011307.3676986-1-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=deIJDzd6;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Nov 30, 2020 at 05:13:06PM -0800, 'Nick Desaulniers' via Clang Built Linux wrote:
> A revert of the following two commits.
> commit de3accdaec88 ("x86, build: Build 16-bit code with -m16 where
> possible")
> commit a9cfccee6604 ("x86, build: Change code16gcc.h from a C header to
> an assembly header")
> 
> Since commit 0bddd227f3dc ("Documentation: update for gcc 4.9
> requirement") the minimum supported version of GCC is gcc-4.9.  It's now
> safe to remove this code.
> 
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  arch/x86/Makefile         |  9 +--------
>  arch/x86/boot/code16gcc.h | 12 ------------
>  2 files changed, 1 insertion(+), 20 deletions(-)
>  delete mode 100644 arch/x86/boot/code16gcc.h
> 
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index 1bf21746f4ce..7116da3980be 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -24,14 +24,7 @@ endif
>  
>  # How to compile the 16-bit code.  Note we always compile for -march=i386;
>  # that way we can complain to the user if the CPU is insufficient.
> -#
> -# The -m16 option is supported by GCC >= 4.9 and clang >= 3.5. For
> -# older versions of GCC, include an *assembly* header to make sure that
> -# gcc doesn't play any games behind our back.
> -CODE16GCC_CFLAGS := -m32 -Wa,$(srctree)/arch/x86/boot/code16gcc.h
> -M16_CFLAGS	 := $(call cc-option, -m16, $(CODE16GCC_CFLAGS))
> -
> -REALMODE_CFLAGS	:= $(M16_CFLAGS) -g -Os -DDISABLE_BRANCH_PROFILING \
> +REALMODE_CFLAGS	:= -m16 -g -Os -DDISABLE_BRANCH_PROFILING \
>  		   -Wall -Wstrict-prototypes -march=i386 -mregparm=3 \
>  		   -fno-strict-aliasing -fomit-frame-pointer -fno-pic \
>  		   -mno-mmx -mno-sse
> diff --git a/arch/x86/boot/code16gcc.h b/arch/x86/boot/code16gcc.h
> deleted file mode 100644
> index e19fd7536307..000000000000
> --- a/arch/x86/boot/code16gcc.h
> +++ /dev/null
> @@ -1,12 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> -#
> -# code16gcc.h
> -#
> -# This file is added to the assembler via -Wa when compiling 16-bit C code.
> -# This is done this way instead via asm() to make sure gcc does not reorder
> -# things around us.
> -#
> -# gcc 4.9+ has a real -m16 option so we can drop this hack long term.
> -#
> -
> -	.code16gcc
> -- 
> 2.29.2.454.gaff20da3a2-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201201035146.GA1469908%40ubuntu-m3-large-x86.
