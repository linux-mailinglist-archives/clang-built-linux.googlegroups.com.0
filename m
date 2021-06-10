Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJFMR2DAMGQEJNTMJCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CCD3A4733
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:58:14 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id t13-20020a0568301e2db02903db6adef049sf2267728otr.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:58:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623430693; cv=pass;
        d=google.com; s=arc-20160816;
        b=N97j/nKQ3yju2v49RWnk1iQut6G/lP1RvY+2zsf8v8F1ynsn0/Kvh8YtBoI3FqQRJE
         go4PiBpH9/tyXCgJhMGMUpTQiiOb5Q5D8HprfWV9LIcgu8lBTpBelztlNxs+jP208NUi
         QlJuqIzRFcGvmEn96sBJVoqSkzd4oQswz77LuN1OrroBWreWpdLIzWUFZHUxFybzUUzt
         p5mSxB8r7pj35yuEEFpJidburXBQswTAhdQDCogH1EaCmbkj2d5xEJ9u89dPiS0T/3cx
         o0HZZrfFB/vRWJqflYrw/I7rDUF7zMTOzY0NcBPsOOtxofDHhmv1lwu53AjkQB6sTfYX
         awvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=GEXFwZIR+3OgC5V2bF55Qou4T0AnZpVrg0yletUKMdU=;
        b=J80EGj1/1/qgQRzdAsaqn8T4MdJQeqhpm1PsE7cFebB0cGT9sDrnXjZiAyRigmLJB/
         cwaMoTXObob5ndFeDv1JXeTPxBz4t9g3eisO6xZKsDyrrLGXmwkW+4eaOZ04DHYO/T1t
         ECDfdQjp2gAQWSx5Ai9+coiqmlqacwK4+lHeQDOGmxyE8B/nj8yVMPi5F90plVBRw9Ib
         sZ9lDUhPlCf4FA2FxetTZP5rMo5tn8E2/ni58nATnmAMnNpNBZpJSSxnNiAKWhJslLl9
         bMzTHQTW/2UZt0zeywoLnrWO3mgQ3M34CDz3ILM1YyuWpmdualWmBsm3VrpUBdo5t2xM
         Bc6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uRNsrryi;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GEXFwZIR+3OgC5V2bF55Qou4T0AnZpVrg0yletUKMdU=;
        b=fQYa7zcFM5BDP0xnj3AadWzOj06M2iVTpCZuLkVEgbkOEaCAXvmk9KoBN2ib39PzHb
         D0ebSEZIGdc9rQnwTecy1y3wZLEeequj1oNcEOZxnRnlSrbVEQ8m4GJK3j0YHoPsrQd1
         lHpaiAR66LqqC1CWMXZqZcBgzo3g6j7ak+ftwK0jBjM5REpYQdU4viS5eBUKY67K4Z31
         45NzhQzvCGFYTUvOrjt3v5lhI6lkZtolRUE4RMhtWW8kfQ+edCfADA3+jYYivhLHAZoo
         6VbObM88UzBREgOqo3dUILHTKY3jTdkjVUpWJjkVBddqDwJEod+/+i4THUSMBfM77+mw
         Bypg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GEXFwZIR+3OgC5V2bF55Qou4T0AnZpVrg0yletUKMdU=;
        b=FdWiqrDEQYvMykSk0HGfT703tjhEM+CNUc5V2h3SyVDzjlPaRPMml0lpNaI3pBiQIL
         bdpz2Me4dDpgFEsBB2eBArNC8tMk+x3Gqj9pOiqA9LjIwMUA6mDOoB+sfaQb5OUu88US
         9Wu69l4+DzpJubbAY9Q6O284VHbHoxzQVCO/NF6lT32pDwLJYMbqbyMaTOlo90qYJuNw
         MQrs/bNhCtgql0flXEG+MnyYieCmNGH7tVFkOz0IhFDNw1BsTRP5a0p6JMiM4+/QxrOG
         mUYphBZDv9NR6n8quKDGfCCbhQu6WdVHbrb+zsSZTOpDfVXhc7sJxz6/WovgXfMVX70C
         y71g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300y/Yt/e5DFTgOQWHMz3RcZtt6z9ctCe/2Z3i6fLeMvOIviE7B
	0hcnzQlX5CKslTcYCnYVqq0=
X-Google-Smtp-Source: ABdhPJyJFBJxjB85qilrA5c1HGz42mVag/xUfa9+XK+iQkvm1vpCZ9RJmpNQ2Wlu6/89BvskOAE8eg==
X-Received: by 2002:a9d:4614:: with SMTP id y20mr3866269ote.323.1623430693002;
        Fri, 11 Jun 2021 09:58:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:230b:: with SMTP id e11ls3026730oie.11.gmail; Fri, 11
 Jun 2021 09:58:12 -0700 (PDT)
X-Received: by 2002:a05:6808:10d4:: with SMTP id s20mr3207127ois.70.1623430692748;
        Fri, 11 Jun 2021 09:58:12 -0700 (PDT)
Received: by 2002:aca:2301:0:b029:1eb:2dcb:9356 with SMTP id 5614622812f47-1f738563009msb6e;
        Thu, 10 Jun 2021 14:07:31 -0700 (PDT)
X-Received: by 2002:a17:903:2289:b029:109:8cf1:7d9a with SMTP id b9-20020a1709032289b02901098cf17d9amr618313plh.53.1623359251474;
        Thu, 10 Jun 2021 14:07:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623359251; cv=none;
        d=google.com; s=arc-20160816;
        b=yR08Dod8Vw0owDhBra1sQ2y4TibGL+jtrx1L7y1xC7T5G1bWyy68i1F8OdbsrfmiBy
         d5KZq6KP/vAdY1MRUzXN50DdYJ5ulKXaRz1/8e8hg7gnogyJp3qHywKii2+xMOLmrlB6
         jQg47h12MEeWMKxa+4LYul+apnN1lkb5p1l71MVdMlLkltZ3/gYhw27yGUMhjgprEcdj
         JTaXB3HDNyP8UzsWMheyLLKae3m9cyaUMn5bMOSKdbCvhpsR8jvcDaUDaVANbc4MOcmH
         61Ual20l5bidNKT+i2lX9AdLjBg7Z6VNVPXQD5LB0fOJEQSxQoXlpVDcLIzD2st6Iphq
         56mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=17SO71mjeDVxcrfVMkRqCh5Cy0JJSZPeMG9r29CEzUo=;
        b=a49Ojldnide51I+9fRqyCQx5IgfjqvX5TZmV7pqkP/0MdMwbG8q6BG+mrQ4/Ca9Uzv
         ZlFz2dPR7LX+/k6GK9i/OMU1WWmNBApQW9BG+yqhUVhnC+oRxDp5kL1nF36AiXWiF8cV
         m+tFa0s4fgdcSFCrYf5RlQTAH8vyTKhwF32SiUriieCZmjHT7J1wydi8bWYK8jkrbsbl
         jqO/R337cIrrlGbPsNMZaPFUIL9zyLkl4Jg/NghSizAvjxltmIyNS17o3xyqTUQaUAjd
         C3nrGdkFhOOnxpNsNtHI76Qu4b8EaNJSOHxwsEbO4IaAS9Nt3UTCKiDZSF0+oZHplHij
         wd4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uRNsrryi;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id mh11si808231pjb.3.2021.06.10.14.07.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Jun 2021 14:07:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B702A6100A;
	Thu, 10 Jun 2021 21:07:30 +0000 (UTC)
Subject: Re: [PATCH v2 1/1] x86/Makefile: make -stack-alignment conditional on
 LLD < 13.0.0
To: Tor Vic <torvic9@mailbox.org>
Cc: clang-built-linux@googlegroups.com, x86@kernel.org,
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Nick Desaulniers <ndesaulniers@google.com>, Kees Cook
 <keescook@chromium.org>, Sami Tolvanen <samitolvanen@google.com>
References: <f2c018ee-5999-741e-58d4-e482d5246067@mailbox.org>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <9b93b016-c19a-21db-2cc4-041810ae722d@kernel.org>
Date: Thu, 10 Jun 2021 14:07:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <f2c018ee-5999-741e-58d4-e482d5246067@mailbox.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=uRNsrryi;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On 6/10/2021 1:58 PM, Tor Vic wrote:
> Since LLVM commit 3787ee4, the '-stack-alignment' flag has been dropped
> [1], leading to the following error message when building a LTO kernel
> with Clang-13 and LLD-13:
> 
>      ld.lld: error: -plugin-opt=-: ld.lld: Unknown command line argument
>      '-stack-alignment=8'.  Try 'ld.lld --help'
>      ld.lld: Did you mean '--stackrealign=8'?
> 
> It also appears that the '-code-model' flag is not necessary anymore
> starting with LLVM-9 [2].
> 
> Drop '-code-model' and make '-stack-alignment' conditional on LLD < 13.0.0.
> 
> These flags were necessary because these flags were not encoded in the
> IR properly, so the link would restart optimizations without them. Now
> there are properly encoded in the IR, and these flags exposing
> implementation details are no longer necessary.
> 
> Changes from v1:
> - based on mainline
> - provide more information about the flags (Nick)
> - use correct tags

Small note for the future, probably not worth resending unless the x86 
folks feel it is necessary but these comments belong between the '---' 
and the stats below so that they do not get included in the final commit 
message.

> Cc: stable@vger.kernel.org
> Link: https://github.com/ClangBuiltLinux/linux/issues/1377
> [1]: https://reviews.llvm.org/D103048
> [2]: https://reviews.llvm.org/D52322
> Signed-off-by: Tor Vic <torvic9@mailbox.org>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>

Thank you for the patch!

> ---
>   arch/x86/Makefile | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index 307529417021..cb5e8d39cac1 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -200,8 +200,9 @@ endif
>   KBUILD_LDFLAGS += -m elf_$(UTS_MACHINE)
> 
>   ifdef CONFIG_LTO_CLANG
> -KBUILD_LDFLAGS	+= -plugin-opt=-code-model=kernel \
> -		   -plugin-opt=-stack-alignment=$(if $(CONFIG_X86_32),4,8)
> +ifeq ($(shell test $(CONFIG_LLD_VERSION) -lt 130000; echo $$?),0)
> +KBUILD_LDFLAGS	+= -plugin-opt=-stack-alignment=$(if $(CONFIG_X86_32),4,8)
> +endif
>   endif
> 
>   ifdef CONFIG_X86_NEED_RELOCS
> 

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9b93b016-c19a-21db-2cc4-041810ae722d%40kernel.org.
