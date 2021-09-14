Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPPXQOFAMGQESPP6QIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD5840B84D
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:45:02 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id k6-20020a4ae286000000b00290b373626dsf51812oot.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:45:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631648702; cv=pass;
        d=google.com; s=arc-20160816;
        b=hgP43nS6OuzLFbhsGZLqwtSTmMkV3RTjiVE9EklJcmT4cNzx72ImDn1fX8b6ntE3mA
         eBIavbbva65wP0D8x4FCg+EU+MfMl+/u4FjBxjQ2kk16tlzELDz1e/FFopMm+0UDPk0n
         yTF24NGoGtHFM8q3/O3VI8+y3vLTjPcgAryiJLZPG9FS7YbMdK/Hye16AWS1bNfP+TZs
         c/C2dRia6LfVuQjdvE0FEXoT/ucHorYApaxkLAKCHXyhojR1fDL8oL5NJ8zx4PRKaqH3
         LzUAYo95rUtLor+66vh4txIaX0OmCav37z6F9spoffvoX/j99kXsiMvEJEYTznXy3Uyb
         YBlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=UbilTdmPA3Dwtpm1gA722Huc0Kk0xjfzA77jpARPOaE=;
        b=q+o12EPKFpEPZsCA8Sgz5iKPmZrMcf+IJWUtExW2PPL2Nj3qizfJ5EU9LmrVJMlgjv
         vpvfF3S1GuBWtbJxsX9RbpFdomiWRuL1quDY6ZSykOhzDxnQ1rzbdWt4N4Q/+aTi2reC
         xiNMgdyHbSb8pUC51ykCW5givnQ8JSUjxaDAldM3CGMMGulpld9mgS4lpX7mJ7whrW+g
         qwn1FBZClWxFMiRgPtOdKc8Nj1teaRpcxVkK+Qj/WQhHhgdgMP/AAucCg7HgTo4G9c24
         PY/eBuW9DECOs3QUW1TBimqlOycH/WpU3ganulDc9VQwcZtQkLupoSFS+H3u7IRZyB2E
         oeDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lzKqvUMM;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UbilTdmPA3Dwtpm1gA722Huc0Kk0xjfzA77jpARPOaE=;
        b=WdXZvmmlajraBN8JAGN11+z/J5H9reEjPl8t3benDmhdQlBYa7L/6zJ7j2LmkTeWkO
         spYS2tx5sEMRLv9cUy2LwkZtEbV1lvbO5bpbagf2rKsgYI6A2FXYpJg+jLkj0tgkHdF0
         a+peJRNMIWbmAmvQqtT1Qdj3MpEMesO04bAAsm/g8qNRZfDXNJpi2KpF4SIcD7zN5mKR
         HHuo8iUR0PN+LkKI0nAvzMBhuoid6wz6FOqKVxlj2wHJx+sGrr6GaYikDNcq+x7JsieH
         76ga7uhCYsJjSQEIBxZ/eMbjzIguGSj63kRKvXzWSZcc8cOvRCvrb4+54r8HzfgLPnuh
         AS7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UbilTdmPA3Dwtpm1gA722Huc0Kk0xjfzA77jpARPOaE=;
        b=AKyKqP4JEp/E3gvsR1g8oXB6eyUt3Gi7Y2X9SWV9qXBNvwIN2Rdu5Pkl3yjQIXT88E
         bhx7/ByuRDZ9cNHW8zHofUAH0ljpjGthpCQ7oBx3ynqC5BumSG3XlowVnxhLUo9suAXj
         JBiXYeYUqjY+ZQkP6rNgy/EUpn7UfBVLCoYIYv8/exoVFuWu7xiJ24fKGZcErvx+5jKw
         kJ375czOVwJdEFlSCpummU4c8XYDNN4a9fYPUQgYd6HCD9rFIN/v9wJ6VVT2UnuVgWg7
         IRNi9MNzB2QbEtLH5OzbOasYpzBhqDrQSBVtZj9BtByhua8iE2n+bdWiH2Haj/yxMZMQ
         fX8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531bKehLHApCf48ASesR/U64cb1WtI+JyzVSykdQapSxBHmIcNtr
	7xpNMAMK4LSwo3tAv+9Kv6c=
X-Google-Smtp-Source: ABdhPJyWJn89sKOZEjJsFau3MA1xeDKtAIwsc8tM6NSi15WVRtsT8+Rst47A6mw4YficSG/T+ykM7Q==
X-Received: by 2002:a05:6808:cf:: with SMTP id t15mr2754585oic.108.1631648701912;
        Tue, 14 Sep 2021 12:45:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:14d1:: with SMTP id f17ls2338098oiw.4.gmail; Tue,
 14 Sep 2021 12:45:01 -0700 (PDT)
X-Received: by 2002:a05:6808:1910:: with SMTP id bf16mr2687285oib.56.1631648701543;
        Tue, 14 Sep 2021 12:45:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631648701; cv=none;
        d=google.com; s=arc-20160816;
        b=y9PgXOSyMDy8Q4x3PBv+FdX7DVMpdNqlqhpUvADeGNE6qskNMHys3TmYxXKMdd7FXe
         C2+Ev8g5dgPlgjdNKG9gsjniiOF9E6ufRAzHydSWc32BND5OuWy//VDW09pAyIJb9usL
         oCPEu8CbrrOlO5DNWsFbnnXCguatHHSDHBRYjzLDU0a4pQJalxeaujIhA9x9tN6KF93H
         wEIY72kV58s3o05J5FGMx6ibiv5Mf1+MUjlCUwB56pJN2RaIYoUNZLq0Bgj5Nkp/5hgd
         nizzcQCxltAN3+tuzuN9Mp2TSLFvas9b91uB68ZMCMbpnGEVM4zAC9uEci8f1gqVxkiP
         CBFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=40ZURQJupNlRJgwd5eFMDDAoOIJDnuXt7LSY56o8kS4=;
        b=qcZvXRAsJPGkTVYDlWJYxhw6eDlE/Uta0d/JPmWpMLe0AOK/P76ZtgV1prKfpVidrZ
         nkfxZINkUVjyJmQV3fD5uzj3J91v+SXdTWQHbFHcVfNhqg1LgAIsoXkKWGSJygky3UfF
         sHr5m69ZTLark723YHUyWga1YDKKjew922TtBHYtCPyx/CMxIemFkipvjgtdNbWqw8be
         uTLLPj1gKN9MA7E55QsTRV3FVILlpSxiZrliYK5bAK/W2/tHqzAGqkjSWbsrlPCGAYnk
         4TvdcOO4rD/uk/zJTLOo+dgb+RSiP41seP/jcbRcAyUg2UimaTnwyydbz3zyzi2J/ect
         eMjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lzKqvUMM;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id s20si128705ois.4.2021.09.14.12.45.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:45:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Received: by mail-pg1-x530.google.com with SMTP id s11so220440pgr.11
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:45:01 -0700 (PDT)
X-Received: by 2002:aa7:8426:0:b0:438:3550:f190 with SMTP id q6-20020aa78426000000b004383550f190mr6376014pfn.19.1631648700830;
        Tue, 14 Sep 2021 12:45:00 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id e11sm4983537pfv.201.2021.09.14.12.44.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 12:45:00 -0700 (PDT)
Date: Tue, 14 Sep 2021 12:44:59 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: x86@kernel.org, Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3 14/16] x86, cpu: Use LTO for cpu.c with CFI
Message-ID: <202109141240.6928C1498B@keescook>
References: <20210914191045.2234020-1-samitolvanen@google.com>
 <20210914191045.2234020-15-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210914191045.2234020-15-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=lzKqvUMM;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::530
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Sep 14, 2021 at 12:10:43PM -0700, Sami Tolvanen wrote:
> Allow LTO to be used for cpu.c when CONFIG_CFI_CLANG is enabled to avoid
> indirect call failures. CFI requires Clang >= 13, which doesn't have the
> stack protector inlining bug.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/x86/power/Makefile | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/x86/power/Makefile b/arch/x86/power/Makefile
> index 379777572bc9..a0532851fed7 100644
> --- a/arch/x86/power/Makefile
> +++ b/arch/x86/power/Makefile
> @@ -4,9 +4,11 @@
>  # itself be stack-protected
>  CFLAGS_cpu.o	:= -fno-stack-protector
>  
> +ifndef CONFIG_CFI_CLANG
>  # Clang may incorrectly inline functions with stack protector enabled into
>  # __restore_processor_state(): https://bugs.llvm.org/show_bug.cgi?id=47479
>  CFLAGS_REMOVE_cpu.o := $(CC_FLAGS_LTO)
> +endif

This seems weird -- it's tangential that CONFIG_CFI_CLANG is only on
Clang >= 13, but it does seem better than adding a $(shell) to test the
Clang version. So:

Reviewed-by: Kees Cook <keescook@chromium.org>

>  
>  obj-$(CONFIG_PM_SLEEP)		+= cpu.o
>  obj-$(CONFIG_HIBERNATION)	+= hibernate_$(BITS).o hibernate_asm_$(BITS).o hibernate.o
> -- 
> 2.33.0.309.g3052b89438-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202109141240.6928C1498B%40keescook.
