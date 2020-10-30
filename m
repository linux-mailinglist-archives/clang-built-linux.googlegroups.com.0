Return-Path: <clang-built-linux+bncBDU475XUS4GBBB6D576AKGQES7N7RUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD3A2A01C6
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 10:48:56 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id b68sf454854wme.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 02:48:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604051335; cv=pass;
        d=google.com; s=arc-20160816;
        b=wlEH/XjlfNaU7DsMn39do68oJyyxuNZHA/us1n19isv29Yk3rPpO+XaXldwM0hc1IP
         MH2k36/aQL7QshoTfjk7PbCmU3BZ9mTsm0a1NcKYquzo05IslkemadSwdsD5XutqW/QD
         +fIBv0zw1k9+6UApvXHdUHjaY/uA3JzGpgjB08T8EKOM0WHwP4nav71ziQOsUoVtVAFe
         /MKScdt4jGj3uhFJbEf5NnnHO9FgrSq2nRoFYgwMuvkoct5w+xACj4f9NNuYgtJvAzYZ
         R0IrPJTM5nr0PxFzaaB5ea79LhQQQyjeny7wjAFYQ172HlRMGjzNUhsZFtAuSCG4Vzsa
         EmOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=2N8XaFFxp/tXZBMqkHocnboE+69PeG730K6Y1FyxOt0=;
        b=pzPWogKovGdS2f9bn1MNF1lYFqdu0r9ztclMZWt0LA0D1AjNC+dosNkMjJm1LTu74g
         eO3pCTQsn6t/+2YFU4RKHbNpGzL0eW2jSxV5gh3U3ufs0TFvPMgfwyER3qglO4+ng0GJ
         N+4QqumA+GkIKxftlcIyhxdBO4o51gu69yscV8Een2xJpTu72rWZWPOY/9sprDV6OETf
         P+bTZcz2vUIMsWjkXohq467BjB20ZINXpZ78u+H/lYFa0dK2M9ly3/aw1gVRRJMAQYD6
         hxymtXRVP4dUWGOE3qzb5NaaInmHjZQUfCOQWcwRXnx4kHag1Qr7XJpK9VCUbT6GUSzf
         Ek3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jirislaby@gmail.com designates 209.85.218.68 as permitted sender) smtp.mailfrom=jirislaby@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2N8XaFFxp/tXZBMqkHocnboE+69PeG730K6Y1FyxOt0=;
        b=sSChNj7TRTjqdvO+vWRhdI8D5cBrOchojHeT3TjI0N0pUEp7E4PPeOGSKqtXFB18QP
         zZm+eVQ3fCaembppXaN+jwvJskLRutPRw3r1JRT9NKHeP6lzwSaXiyLJRdn+5JPSpAvy
         eG8vxSa0BBo2dwtTLYxZ0JqA/Aw1nmjZQ03baA8bruEif73KMjWSlVaMysKeYYzkvjwD
         EP7N5njzQmF0/360H5OKyjrPEYaij9CaHuSLv6suYWW0uH9aUjg6y5EFzxg2d/rLZQki
         W1ZpuAhBYnH50YLt0t9xkNb6tGih1kj7FK81JnEGLmXgX6nIKU5vAlZTBCnZhJWF+S/P
         6xZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2N8XaFFxp/tXZBMqkHocnboE+69PeG730K6Y1FyxOt0=;
        b=Hyw8gACMziB1H5z4TzgepVwB+1cFKYVphBDVk4iCpIvFwR32L7AxHQ4AdsiwYTKWKW
         R6uw/fCZzEJjsUzi3DktTQfp4lgSSkZDD8qbuw6VhYL+soQjeaJL126okoc2TiKqhRIT
         ApMbx65JZVzD/U4A7dPX+PEPl59cM7ILSQZ8P7SxA0CBGrHvP91LVaY5WbDA2yxGUhxd
         dDaoe5phuy1AhRrklBdzACh5EmkDif4ow37moXSJWdFD16nwnOhLdycA1yteVw6yko9n
         GB8Zvct3DKmUEPwErEVG2DDKUifVETsJhGtDY99BiSV4JN0OokvZCLzMT1ZX2dCJAL26
         12Cg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533b35oBt4r6bFm3H+ZSlxua7cF75ox4S2y1r856Ills8wuZu2rj
	ktDLpXMSsDThItJp25+nOsI=
X-Google-Smtp-Source: ABdhPJwYyRJNFX6LWN/d+cP77PFoTzRKL7jZJUvn1+77cy3do8RCITuOmWdW4gWNnHWzgIcmqHXWlA==
X-Received: by 2002:adf:f643:: with SMTP id x3mr2068189wrp.180.1604051335805;
        Fri, 30 Oct 2020 02:48:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7e4e:: with SMTP id z75ls1355225wmc.0.canary-gmail; Fri,
 30 Oct 2020 02:48:55 -0700 (PDT)
X-Received: by 2002:a1c:307:: with SMTP id 7mr1646379wmd.165.1604051334899;
        Fri, 30 Oct 2020 02:48:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604051334; cv=none;
        d=google.com; s=arc-20160816;
        b=pezSMorFRPIO0XHTCeDxkY8XUHs4jEcWIcXHS37UHotiVqPogaT+8Eg/EWmxxpiw4t
         FtATS42geuXFUxK83CKi9PDYRUDujDbsMYMLzjCcz+m3hwa5W4xu70+JHAXjg9MlIeDC
         FvC6T3CyntJ9IeRGNKv07RWoBxHMxpdGU6eTAeQ+ac1jDSafmolEzhlqSj5t2VDiCqjJ
         Zeob6sffVNDkquE9U/QbxMiGoFCgTHdjmq7Ez7yQ3ulWjg8mcWBaWxjBxzE3g2oNMV2L
         8yxrEG1XJO8kT86m4dQRUxl79kNDwUpCEipx1wr00T7eey5Pdz0//geh5DsAF9Wk6+lC
         7a3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=AYmQosucJns9hYMiH6q24/+ExkliqlAKBjzr6XJWoUI=;
        b=vbTduo8PWc5TwMTE/yAw2FXFAMN36nXNExV7g0kh0JhpXmmF53Bih1+k7qfJ3z6tWi
         CAhkLFIWsbg1OSwZnE0WNZK5HYC3/o01p2L3UpyzwdNxJH0kMY/YxaPnF3p8bYk1hfxA
         wn/XOUFXsc02nb+Jg17g8LaaunDFRfwPp1PK3RAKY9rz6ZXUHSqRLnkwVIBuLdVHRfyw
         TY52vvIabFynuydk1Lr9OQAkfIH3pwJB1JhoSTHLrNPtgiNrV44dNATMqBMe8stCu8zt
         UVLpq4piqf7ap6TgR8Te6f8STRufeLf4S3UsjeB6nfKvtkDBIgc0oMPT0DCJfQwlPV+D
         YHHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jirislaby@gmail.com designates 209.85.218.68 as permitted sender) smtp.mailfrom=jirislaby@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com. [209.85.218.68])
        by gmr-mx.google.com with ESMTPS id o16si127074wrv.1.2020.10.30.02.48.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 02:48:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of jirislaby@gmail.com designates 209.85.218.68 as permitted sender) client-ip=209.85.218.68;
Received: by mail-ej1-f68.google.com with SMTP id p5so7759816ejj.2
        for <clang-built-linux@googlegroups.com>; Fri, 30 Oct 2020 02:48:54 -0700 (PDT)
X-Received: by 2002:a17:906:c1ce:: with SMTP id bw14mr1543129ejb.302.1604051334639;
        Fri, 30 Oct 2020 02:48:54 -0700 (PDT)
Received: from [192.168.1.49] (185-219-167-24-static.vivo.cz. [185.219.167.24])
        by smtp.gmail.com with ESMTPSA id k4sm2155859edq.73.2020.10.30.02.48.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 02:48:53 -0700 (PDT)
Subject: Re: [PATCH] x86_64: Change .weak to SYM_FUNC_START_WEAK for
 arch/x86/lib/mem*_64.S
To: Fangrui Song <maskray@google.com>, x86@kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>
Cc: clang-built-linux@googlegroups.com, Jian Cai <jiancai@google.com>,
 Sami Tolvanen <samitolvanen@google.com>, stable@vger.kernel.org
References: <20201029180525.1797645-1-maskray@google.com>
From: Jiri Slaby <jirislaby@kernel.org>
Message-ID: <a7d7b3d9-a902-346c-0b9c-d2364440e70b@kernel.org>
Date: Fri, 30 Oct 2020 10:48:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.3
MIME-Version: 1.0
In-Reply-To: <20201029180525.1797645-1-maskray@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: jirislaby@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jirislaby@gmail.com designates 209.85.218.68 as
 permitted sender) smtp.mailfrom=jirislaby@gmail.com;       dmarc=fail (p=NONE
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

On 29. 10. 20, 19:05, Fangrui Song wrote:
> Commit 393f203f5fd5 ("x86_64: kasan: add interceptors for
> memset/memmove/memcpy functions") added .weak directives to
> arch/x86/lib/mem*_64.S instead of changing the existing SYM_FUNC_START_*
> macros.

There were no SYM_FUNC_START_* macros in 2015.

> This can lead to the assembly snippet `.weak memcpy ... .globl
> memcpy`

SYM_FUNC_START_LOCAL(memcpy)
does not add .globl, so I don't understand the rationale.

> which will produce a STB_WEAK memcpy with GNU as but STB_GLOBAL
> memcpy with LLVM's integrated assembler before LLVM 12. LLVM 12 (since
> https://reviews.llvm.org/D90108) will error on such an overridden symbol
> binding.
> 
> Use the appropriate SYM_FUNC_START_WEAK instead.
> 
> Fixes: 393f203f5fd5 ("x86_64: kasan: add interceptors for memset/memmove/memcpy functions")
> Reported-by: Sami Tolvanen <samitolvanen@google.com>
> Signed-off-by: Fangrui Song <maskray@google.com>
> Cc: <stable@vger.kernel.org>
> ---
>   arch/x86/lib/memcpy_64.S  | 4 +---
>   arch/x86/lib/memmove_64.S | 4 +---
>   arch/x86/lib/memset_64.S  | 4 +---
>   3 files changed, 3 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/x86/lib/memcpy_64.S b/arch/x86/lib/memcpy_64.S
> index 037faac46b0c..1e299ac73c86 100644
> --- a/arch/x86/lib/memcpy_64.S
> +++ b/arch/x86/lib/memcpy_64.S
> @@ -16,8 +16,6 @@
>    * to a jmp to memcpy_erms which does the REP; MOVSB mem copy.
>    */
>   
> -.weak memcpy
> -
>   /*
>    * memcpy - Copy a memory block.
>    *
> @@ -30,7 +28,7 @@
>    * rax original destination
>    */
>   SYM_FUNC_START_ALIAS(__memcpy)
> -SYM_FUNC_START_LOCAL(memcpy)
> +SYM_FUNC_START_WEAK(memcpy)
>   	ALTERNATIVE_2 "jmp memcpy_orig", "", X86_FEATURE_REP_GOOD, \
>   		      "jmp memcpy_erms", X86_FEATURE_ERMS
>   
> diff --git a/arch/x86/lib/memmove_64.S b/arch/x86/lib/memmove_64.S
> index 7ff00ea64e4f..41902fe8b859 100644
> --- a/arch/x86/lib/memmove_64.S
> +++ b/arch/x86/lib/memmove_64.S
> @@ -24,9 +24,7 @@
>    * Output:
>    * rax: dest
>    */
> -.weak memmove
> -
> -SYM_FUNC_START_ALIAS(memmove)
> +SYM_FUNC_START_WEAK(memmove)
>   SYM_FUNC_START(__memmove)
>   
>   	mov %rdi, %rax
> diff --git a/arch/x86/lib/memset_64.S b/arch/x86/lib/memset_64.S
> index 9ff15ee404a4..0bfd26e4ca9e 100644
> --- a/arch/x86/lib/memset_64.S
> +++ b/arch/x86/lib/memset_64.S
> @@ -6,8 +6,6 @@
>   #include <asm/alternative-asm.h>
>   #include <asm/export.h>
>   
> -.weak memset
> -
>   /*
>    * ISO C memset - set a memory block to a byte value. This function uses fast
>    * string to get better performance than the original function. The code is
> @@ -19,7 +17,7 @@
>    *
>    * rax   original destination
>    */
> -SYM_FUNC_START_ALIAS(memset)
> +SYM_FUNC_START_WEAK(memset)
>   SYM_FUNC_START(__memset)
>   	/*
>   	 * Some CPUs support enhanced REP MOVSB/STOSB feature. It is recommended
> 


-- 
js
suse labs

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a7d7b3d9-a902-346c-0b9c-d2364440e70b%40kernel.org.
