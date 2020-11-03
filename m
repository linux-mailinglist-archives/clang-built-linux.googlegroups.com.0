Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXXMQL6QKGQEEPUIIJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D6A2A3A01
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Nov 2020 02:46:07 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id n13sf2268665otk.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Nov 2020 17:46:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604367966; cv=pass;
        d=google.com; s=arc-20160816;
        b=IqMcuZWA0QiV00d+oHr21VGdWCA+uCNzNccrucafUcEzfJ0dbSopmJ+T9YmL+rhdqt
         va400Sjz9wYYjJ7cntURmlJaHLDYvhqUZKnGeKwufEnE4wkbdSZ2p6ObTY9m6igN/g/3
         aQEAhTzurWICR1b+vkzYkxFgUsa1s4W68dV12n6EPySiaaYLQMu84eIEkvtW6x6jQPhZ
         w7IqBEgOPd8yNRIp1Oa+zkpAxtAFKMEQys9jKwQvCxzDALyoM6aIiWx6SphWIEb1ElRj
         2Ki0pp79hANSrapXP0/lcVPP8kC/dkKjyhbrCFmpjqIliqn2jIO3LGOuio22lEGBqm9Y
         RbhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=YbScnpdoTknKb5fFijMFgd3vLUxUQ+nXfUoTKaxZo5c=;
        b=c/4w5ZC6WJPfvRvGTaVfDtRTqmjjNtP3syhgGu/N76uO0TGqiIgIQFAvV/bNXmgzDq
         rtKPYZufcB+fvKv3vo4nMGphZKXcaapCDHi26GQabjZoED74xurpjGR+ofjQO/fbN/Hv
         6rlXwdIv1/eLRd5Q2jIQrPzOmRayPzYdK9/9LSudBRYU2RZDhjHBhKk9+KaRNkLm20Gm
         rCv/X3diQaWYSZWbJBflmsITyEWi0Blrl1GGgnNyxlipchcvMwyCmc/ZMeWoeA1Dyb04
         wmUvikIAf2tec+D+EG1eX+p5HHQUnXhrhkbVmD0YeASIYvZk4uezMpp02r2Bcu3X0Ayb
         Lddw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gV0UaB76;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YbScnpdoTknKb5fFijMFgd3vLUxUQ+nXfUoTKaxZo5c=;
        b=oDYlSzL2JGHsu71Gs9/XkdIny+O1vP38KfImZd2M67vS5rm0Q+eCjDs4iKVj+0g76W
         88kMLpyqKYUfxIWkj9cm/8sT3wVEdW0G+tligxGT0upJaJp/xVzAm/YRBnldZOXmCGoT
         leNWdcw6JIfuQbGw3YgmH/qTEM2xCt55rFnL5gxzhlzgcckoDw9veMq0GI35iaj+CZXF
         Dcx0nZ8RVHyPjtoodi5Bno9YfWCxNDFh4JERmGaxsBIc2VImtxVB5Y13PUzcA2IzPH2u
         BeCm6Q0rIb7JRMYlMeoGGpMJsNcGQGzJbTfyPyNURoRt108DH+crK+x1PAQ8bcArO56+
         3DMw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YbScnpdoTknKb5fFijMFgd3vLUxUQ+nXfUoTKaxZo5c=;
        b=BjqUQkKPlHOQ8YSob9rERgoMYX+gaDcCcoA5nXPcjf8UejxFjRusZLK0Jd4uNZ+FXV
         8JXgTgMVT9VjCsLjTblrk+HUn+ftu6oItY914iGJywtkfcAMZcL3uWreravRdIMdrriO
         O0bxKgkmSqmX+y76k6M401Cu11F+U3N0OgLdUukCZ6gi/TCvjtfhLzeoF3GCghm7OOy7
         3jODfKeeM1MHbnQ33IRF/dl595w7jwYkOfjpF3g2jqKoBOj6qD6Kfdr4Avb5HNwh9Po5
         DG1zF4NeMv5VLBwKNG1BkG4YZm9wVD2xfnmDEZhQaJ+qUkTcoHAlA+YynnOJhIEHrTvA
         Yj/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YbScnpdoTknKb5fFijMFgd3vLUxUQ+nXfUoTKaxZo5c=;
        b=fq6Zd0bBy89uAFihc2pbPh1myug8wQkQF2HuYykDLBw68Drk9YGTwap3lgUz/rVIfi
         5zVn9Y9fIC/zoG2gM5IlYRJ+1UYmTm2b8M6FLinWB0lIRl8ncyKmif5R3NOmAy2hjDqA
         NUtrVVYRzdxi2QaEXvyCQNlqgA1JDgPocWKAIDamcFv/iIdH6MTGntrdNbsVq4fJtnm1
         2zjhUTCnFoI3aEVcyvPkQeQ3rUdvdGi4QJNf6tcyyCS3rkyzPTKu5cAxQQRSiUtB9hfK
         dtOl+gnlGE22nngor0T84GZ4WIKrHRgyG4L9gP3hkofS2wFZMTlQMNA/ZgByixukl2Mc
         j2ug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hSa6O+Rf0AE3ANbSWcsmvCwln22jGuQtJpZG8UAQ/Dm5xQijI
	NnuE2/TvDRtKbflU1riBuh0=
X-Google-Smtp-Source: ABdhPJzKcUUk6sLd92bgH9YvU+9ehphDrZBksUz+al6FY0yq1l10RtGFo+oyRELYqxj7cRiFEwVdIg==
X-Received: by 2002:aca:ba84:: with SMTP id k126mr624595oif.68.1604367966154;
        Mon, 02 Nov 2020 17:46:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1a04:: with SMTP id a4ls77147oia.6.gmail; Mon, 02 Nov
 2020 17:46:05 -0800 (PST)
X-Received: by 2002:aca:c311:: with SMTP id t17mr646388oif.46.1604367965774;
        Mon, 02 Nov 2020 17:46:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604367965; cv=none;
        d=google.com; s=arc-20160816;
        b=nlO9251f/fXE7HSzF1b2MFttkQ1KC5SreAZ4VxfjYyJmCLNWt486cFLomC6bHQTOME
         hHOYIaoJLUoG7s+d+XnTtJoQ3f4PWnPalvY9yqjTyCJpFBfYIXEFDW/jQQppMExRdJFE
         chrNbEJ95SVTwKeTv8SzD1GAAS3h9Nga8MRX80xT1XMs3JxbLRPZjQeSQ7kIOCAZQHSw
         6arC7HrtvVI3cI0wcU5YRgzfsdU/hLkz8RWZkfL1HEEek0YJaGQWJet47Ve3YAS0o+k0
         LIGR6GJEqOjW9UaGH5IB5nkFOCT+cYVuZcMAPv+wHXm0Ys5++xBzeRpxjlVKDfFkeNJZ
         h8/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=E/SrOBohrp1WVAfSWcnV6YmgfBval4808Jfz9b1VIxs=;
        b=Y5gVMU+yloRNm0Ou7u260Z5yrXsGN1FcJBr7SOA0TVaRXKT54OpiqC/PhICHp2dbXY
         jO0MsShc3boPHODDHHOjrqM9SdjyPG74AUxIP4pycG8U4XctmOCx7WabSyACEjqwIyzB
         BMNANw5ByVqO+9YXRYWkkWwcaCIIqPspxGufMzscecg7AMNrmR7IIP8InQhtvi+FlD67
         HZyDoPN8qQL7P4BnWpyCJs25ZFh7M2uj/B8Pyn7539p8aEipRsW/x3aD4aYKWathhbuo
         zSBBnlLRcr3yq/Ii7s5x72TrAC2gs5p9RhFIS5CgzyFod5bfJXSOyrPDh3ZsyI4aF8Zc
         AVOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gV0UaB76;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com. [2607:f8b0:4864:20::82d])
        by gmr-mx.google.com with ESMTPS id d22si1496626ooj.1.2020.11.02.17.46.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2020 17:46:05 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) client-ip=2607:f8b0:4864:20::82d;
Received: by mail-qt1-x82d.google.com with SMTP id g17so2186853qts.5
        for <clang-built-linux@googlegroups.com>; Mon, 02 Nov 2020 17:46:05 -0800 (PST)
X-Received: by 2002:ac8:5bc5:: with SMTP id b5mr17780288qtb.268.1604367965330;
        Mon, 02 Nov 2020 17:46:05 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id 137sm7594048qkk.63.2020.11.02.17.46.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2020 17:46:04 -0800 (PST)
Date: Mon, 2 Nov 2020 18:46:02 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Fangrui Song <maskray@google.com>
Cc: x86@kernel.org, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	clang-built-linux@googlegroups.com, Jian Cai <jiancai@google.com>,
	Sami Tolvanen <samitolvanen@google.com>, stable@vger.kernel.org
Subject: Re: [PATCH v2] x86_64: Change .weak to SYM_FUNC_START_WEAK for
 arch/x86/lib/mem*_64.S
Message-ID: <20201103014602.GA3271702@ubuntu-m3-large-x86>
References: <20201103012358.168682-1-maskray@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201103012358.168682-1-maskray@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gV0UaB76;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Nov 02, 2020 at 05:23:58PM -0800, 'Fangrui Song' via Clang Built Linux wrote:
> Commit 393f203f5fd5 ("x86_64: kasan: add interceptors for
> memset/memmove/memcpy functions") added .weak directives to
> arch/x86/lib/mem*_64.S instead of changing the existing ENTRY macros to
> WEAK. This can lead to the assembly snippet `.weak memcpy ... .globl
> memcpy` which will produce a STB_WEAK memcpy with GNU as but STB_GLOBAL
> memcpy with LLVM's integrated assembler before LLVM 12. LLVM 12 (since
> https://reviews.llvm.org/D90108) will error on such an overridden symbol
> binding.
> 
> Commit ef1e03152cb0 ("x86/asm: Make some functions local") changed ENTRY in
> arch/x86/lib/memcpy_64.S to SYM_FUNC_START_LOCAL, which was ineffective due to
> the preceding .weak directive.
> 
> Use the appropriate SYM_FUNC_START_WEAK instead.
> 
> Fixes: 393f203f5fd5 ("x86_64: kasan: add interceptors for memset/memmove/memcpy functions")
> Fixes: ef1e03152cb0 ("x86/asm: Make some functions local")
> Reported-by: Sami Tolvanen <samitolvanen@google.com>
> Signed-off-by: Fangrui Song <maskray@google.com>
> Cc: <stable@vger.kernel.org>

This resolves the build error I see with LLVM_IAS=1 and ToT LLVM.

Tested-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> Changes in v2
> * Correct the message: SYM_FUNC_START_WEAK was not available at commit 393f203f5fd5.
> * Mention Fixes: ef1e03152cb0
> ---
>  arch/x86/lib/memcpy_64.S  | 4 +---
>  arch/x86/lib/memmove_64.S | 4 +---
>  arch/x86/lib/memset_64.S  | 4 +---
>  3 files changed, 3 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/x86/lib/memcpy_64.S b/arch/x86/lib/memcpy_64.S
> index 037faac46b0c..1e299ac73c86 100644
> --- a/arch/x86/lib/memcpy_64.S
> +++ b/arch/x86/lib/memcpy_64.S
> @@ -16,8 +16,6 @@
>   * to a jmp to memcpy_erms which does the REP; MOVSB mem copy.
>   */
>  
> -.weak memcpy
> -
>  /*
>   * memcpy - Copy a memory block.
>   *
> @@ -30,7 +28,7 @@
>   * rax original destination
>   */
>  SYM_FUNC_START_ALIAS(__memcpy)
> -SYM_FUNC_START_LOCAL(memcpy)
> +SYM_FUNC_START_WEAK(memcpy)
>  	ALTERNATIVE_2 "jmp memcpy_orig", "", X86_FEATURE_REP_GOOD, \
>  		      "jmp memcpy_erms", X86_FEATURE_ERMS
>  
> diff --git a/arch/x86/lib/memmove_64.S b/arch/x86/lib/memmove_64.S
> index 7ff00ea64e4f..41902fe8b859 100644
> --- a/arch/x86/lib/memmove_64.S
> +++ b/arch/x86/lib/memmove_64.S
> @@ -24,9 +24,7 @@
>   * Output:
>   * rax: dest
>   */
> -.weak memmove
> -
> -SYM_FUNC_START_ALIAS(memmove)
> +SYM_FUNC_START_WEAK(memmove)
>  SYM_FUNC_START(__memmove)
>  
>  	mov %rdi, %rax
> diff --git a/arch/x86/lib/memset_64.S b/arch/x86/lib/memset_64.S
> index 9ff15ee404a4..0bfd26e4ca9e 100644
> --- a/arch/x86/lib/memset_64.S
> +++ b/arch/x86/lib/memset_64.S
> @@ -6,8 +6,6 @@
>  #include <asm/alternative-asm.h>
>  #include <asm/export.h>
>  
> -.weak memset
> -
>  /*
>   * ISO C memset - set a memory block to a byte value. This function uses fast
>   * string to get better performance than the original function. The code is
> @@ -19,7 +17,7 @@
>   *
>   * rax   original destination
>   */
> -SYM_FUNC_START_ALIAS(memset)
> +SYM_FUNC_START_WEAK(memset)
>  SYM_FUNC_START(__memset)
>  	/*
>  	 * Some CPUs support enhanced REP MOVSB/STOSB feature. It is recommended
> -- 
> 2.29.1.341.ge80a0c044ae-goog
> 
> -- 
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201103012358.168682-1-maskray%40google.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201103014602.GA3271702%40ubuntu-m3-large-x86.
