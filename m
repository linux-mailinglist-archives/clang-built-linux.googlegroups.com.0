Return-Path: <clang-built-linux+bncBD63HSEZTUIBBSXVXD6QKGQEBGDJTGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D0C2B16B9
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 08:50:36 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id x19sf5481949plm.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 23:50:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605253834; cv=pass;
        d=google.com; s=arc-20160816;
        b=oFhRmLrV1BmCmmSqXgVEjxcu9VtmYS2RewxqAGYJ7sZR/fvdEaEq0q5DTy5ZAIk+1Z
         UftD2/ylYnniGUte9mrucDFIJxRWMyrwMTYXqlvrrdGQavjlPhhm45nSXXjk93Afqg4Z
         Z+7kyOBAzwtxtnII35/78EwxJG1e/u5F/tU8TTZRGk/uW3eTQVWsX51X+MP41Ywr9lIE
         U8fw4vc7fX2htYFPi6Ug3N6dx1ZFzEVxhR6SYQcm0Gi6Vsvbnc5lsMuz9gryvR7mH01x
         rBjJRWqPw8mKOI/RGYAKmmUv205hSRBhNwZmJwXPKg4LFgrOETajz9ntbrh1jMnGN8qx
         yz8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=TNqwSzJfAdSypoyXQctJMOrcayOumXbfpY0kU1O4g80=;
        b=r8g5njt1hulaRjKOy0shH9zTTsgM70cvStjua4FjoCOlCtM1IDfWDebTfNUzLfN4jR
         YVsrZWGa7fslneQk0eQa8w8V05YWEJhfVUf9NxPrxGXiQS5WBr9Ug5cTTdomIdlVVdyp
         fmo63MeusdyPBQRHHDzliv4LifFTPm2ET60pr6HvrDhhUmN5wRfFkyA3QzAy1C/wUMAk
         xHm3008dvxeW/TwkilqBwLNaq8TRFg93ajFZUnQFezH2NFwO34HLgRGces8xfNiz0BV7
         rdUyxtVD8/V8kpM8/bLHMXdmEu8PJ9T0GfLL/4rtDXfsH8OG8bBeQeFCjf0jVKlpHAN2
         JHug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wewAVQn1;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TNqwSzJfAdSypoyXQctJMOrcayOumXbfpY0kU1O4g80=;
        b=PRbDn+vyKgnstim8cBy69N696zbHbKXk3xZE770kp4lw0PzyfPafGm/U5Dz0Q1+Khk
         s8HopVZxFdmY6CAeOsYwKNS5kGJK11o6t13abZSZhB4zgiFvKqbqlTVMrnhgWA2QUesq
         qqLkm2ltD2uwoSQ3c/9hKe0AZfdTt8IzzRfqFLH/Q+GblUXeBGpVOmBVxANFGCK519Lm
         olXzcc46Xohaw6aB18WBFWMgGmzzSj51yNs03ysC2MTmptykVy9tGvx0O5ZpSNHzZeT0
         fHHMrjrasMp3U28Pc+WEPTHiVF+96RNAaRxxUs9g76tG/M4i2lG7eIE96rpLsx/3HIzc
         zb4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TNqwSzJfAdSypoyXQctJMOrcayOumXbfpY0kU1O4g80=;
        b=f1aUAYn61KzloqkHEmrjqpDzWjMErMtetaMSZHKhBNHTKtPN9HpCuan8KCWR5Y8i6/
         x1I/gA4i1lU8iY0esUZNzbyMgk0tYDK9Wfq6Tz+Juu3Y0uia3izMxDf9D01hEG8JgbA5
         0hDO6rhfgLJ955ZC+m7cpCxeNeMW9L3sYOFSTDP0Drs38Ft8vD0WtfOp6uQT3u/H+3f1
         /DeLpi7V4BT3ftM1JbwB5dIea3yvK4jrp5SapKoH2Ht5Kk2NEB0Lg/Nm5wNXo6w2yjcn
         JI94A982+hvo782TqULV/llQchAFF5X/x661nOILtnKEIyTBWw4U1C4ZyOHEhnFkhBOA
         pQ7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531TdgufTB1y4XHAcAzfp7Au3Avkt4VJy0fQh+g1i9bTPkQhsYZZ
	YBh79U9POmPbiGv/AqBnuew=
X-Google-Smtp-Source: ABdhPJzVMYQw2F3fZuu4U+Qi+GimFQEzVCAXjouZsjFoKIxF+Q8MMwDRfTTdxOi1kCzTCRvBBBuRbg==
X-Received: by 2002:aa7:9582:0:b029:18b:86c2:23f9 with SMTP id z2-20020aa795820000b029018b86c223f9mr997024pfj.27.1605253834618;
        Thu, 12 Nov 2020 23:50:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:34b:: with SMTP id fh11ls3229505pjb.1.gmail; Thu, 12
 Nov 2020 23:50:34 -0800 (PST)
X-Received: by 2002:a17:90a:c693:: with SMTP id n19mr1595111pjt.69.1605253834005;
        Thu, 12 Nov 2020 23:50:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605253834; cv=none;
        d=google.com; s=arc-20160816;
        b=tImNGs4kUAeoOcp2OQQMEBp9k97B1h3tMohlVCl62SCiLhKhjvoBcg6aKGoJXK8uQ1
         2Q49AaHIYIgbtkjBOjI7GCBFgUUXgAfS4Ik09PXOO4bfURZgJzVkKqB6pWE9aGQmBKgd
         9anzZaSW76HHBSvidqXsMKovt5GSVLSEIN2BhzJtEpuGLLUZ7Cacc/sez7OMKEuSYoRc
         IR0QxCdEz3JUIedr95Vx3kprUVnYUg+2T+vJUUVoUrsS+8taNvwWkOcpbzgAQgjko6+j
         iuCOoMg/lvN6mBxeLMfyiBdHUHpsWK11BaScDrYjKVEhthtWW09g4Efpef8fgKvsaikY
         L/QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qkCTkuZb8nsRkWx2Zs7FLZzf6vDbXTKCAZnBFvzQ7XE=;
        b=DlO65b0ZI7xfi7DPWVDpn8IPDQMlQYimiveaeXuxoqWWgiE2+CiZqBKqkY8sNi31Dc
         0+rCgLe0oqK8bNVUsRZknyaZoDJNG0rv72o40G81WfT7/AHvnQGjn5j+HzR4RZYejFGk
         m4lsWSEI1m9d8Aw/TmKYeQDz7Gm/kjzcwfzIDNPtTwO7YzCWIuVs1aPUg7gByz6C85gq
         WzAlCO7/onHHniZ3i5kWqVBxkQyzsPK0yfbSsDvYIY68t9VwEctv/4FqCQnCaeII3FC9
         dp8qKKlv9pcgM0XETTLj48ujJH9ZSMEDv/fBakFJ3HjLi42PkNxm7sQT8gzJ+a5+MIpw
         MacQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wewAVQn1;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i5si1115124pjz.1.2020.11.12.23.50.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Nov 2020 23:50:33 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 914C122240
	for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 07:50:33 +0000 (UTC)
Received: by mail-oo1-f46.google.com with SMTP id z13so1954480ooa.5
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 23:50:33 -0800 (PST)
X-Received: by 2002:a4a:8928:: with SMTP id f37mr621623ooi.41.1605253832849;
 Thu, 12 Nov 2020 23:50:32 -0800 (PST)
MIME-Version: 1.0
References: <20201112212457.2042105-1-adrian.ratiu@collabora.com> <20201112212457.2042105-3-adrian.ratiu@collabora.com>
In-Reply-To: <20201112212457.2042105-3-adrian.ratiu@collabora.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 13 Nov 2020 08:50:20 +0100
X-Gmail-Original-Message-ID: <CAMj1kXEpD1pp5uzOMeSYhgS_dzOysKuPMOMNgivUx58PGUdMJw@mail.gmail.com>
Message-ID: <CAMj1kXEpD1pp5uzOMeSYhgS_dzOysKuPMOMNgivUx58PGUdMJw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm: lib: xor-neon: move pragma options to makefile
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>, 
	Arvind Sankar <nivedita@alum.mit.edu>, kernel@collabora.com, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=wewAVQn1;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, 12 Nov 2020 at 22:23, Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> Using a pragma like GCC optimize is a bad idea because it tags
> all functions with an __attribute__((optimize)) which replaces
> optimization options rather than appending so could result in
> dropping important flags. Not recommended for production use.
>
> Because these options should always be enabled for this file,
> it's better to set them via command line. tree-vectorize is on
> by default in Clang, but it doesn't hurt to make it explicit.
>
> Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> ---
>  arch/arm/lib/Makefile   |  2 +-
>  arch/arm/lib/xor-neon.c | 10 ----------
>  2 files changed, 1 insertion(+), 11 deletions(-)
>
> diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
> index 6d2ba454f25b..12d31d1a7630 100644
> --- a/arch/arm/lib/Makefile
> +++ b/arch/arm/lib/Makefile
> @@ -45,6 +45,6 @@ $(obj)/csumpartialcopyuser.o: $(obj)/csumpartialcopygeneric.S
>
>  ifeq ($(CONFIG_KERNEL_MODE_NEON),y)
>    NEON_FLAGS                   := -march=armv7-a -mfloat-abi=softfp -mfpu=neon
> -  CFLAGS_xor-neon.o            += $(NEON_FLAGS)
> +  CFLAGS_xor-neon.o            += $(NEON_FLAGS) -ftree-vectorize -Wno-unused-variable
>    obj-$(CONFIG_XOR_BLOCKS)     += xor-neon.o
>  endif
> diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> index e1e76186ec23..62b493e386c4 100644
> --- a/arch/arm/lib/xor-neon.c
> +++ b/arch/arm/lib/xor-neon.c
> @@ -14,16 +14,6 @@ MODULE_LICENSE("GPL");
>  #error You should compile this file with '-march=armv7-a -mfloat-abi=softfp -mfpu=neon'
>  #endif
>
> -/*
> - * Pull in the reference implementations while instructing GCC (through
> - * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
> - * NEON instructions.
> - */
> -#ifdef CONFIG_CC_IS_GCC
> -#pragma GCC optimize "tree-vectorize"
> -#endif
> -
> -#pragma GCC diagnostic ignored "-Wunused-variable"
>  #include <asm-generic/xor.h>
>
>  struct xor_block_template const xor_block_neon_inner = {
> --
> 2.29.2
>

So what is the status now here? How does putting -ftree-vectorize on
the command line interact with Clang?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXEpD1pp5uzOMeSYhgS_dzOysKuPMOMNgivUx58PGUdMJw%40mail.gmail.com.
