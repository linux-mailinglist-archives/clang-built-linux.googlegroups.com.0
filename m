Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJEZTWAAMGQE3GNZTKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 187AA2FC213
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 22:18:29 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id x17sf37933242iov.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 13:18:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611091108; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wqvuerr5lj95Mh7NGOedqal7QBNwM+dS3USoTwZSnPzB3nBeIiOQ0qeeeHGCO3spvf
         tdAed00Za9qLITWyyrEaZuRKkkWlbvr01tdBg6A6Eu9MoE6afXiwGxuFF5/LoX8dkBDt
         6OdId6OmJQGzulUn4FnmwrMbBMWjDrVwsuFQDE5A2MeOwTTAg3mN/pOl+VZNfQw+Dz1x
         bWGd/RcilNLihlSQI6l3HxfG/Qk5qPjfdtKmiT8tDUCoMux+kJK17dXQhcURRouikwKQ
         9wY46AuHRYXi+hcNouyOHUX+kTAaZstW9g4WnjQ6nA1l8vrecfiOyM4+KJiONiHdHZnv
         uWgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=NvovMTtTBX8mmQPKhYYIWWv0J2LxIBIuLheot88IYIk=;
        b=mXiH3RXI8Gy/XYCmtr+p4lNRwFrwHnuQW35oS2OLsPDlq36ssXcIN+xE38K+lVySCj
         gbEuNalDV81ur/6S4QBzkcQmYsWhiBgZ5OsWEY1pYbmLaAQif6Hed79LuE5O2KsYflNy
         z9XXsTG2y+ii6E1iAIYDV01fK/QuDe5y9IJJrw9EytTnBqQ1MWDAXz8EC/GUzgEQkVP6
         EkDfox3kFb7N+zXKQ5/7gEcq+8Nl1brCmpHnMYOAX7Zpn8Z2WZ6j90NbfL8xX1cCai2h
         5Y8kp6OjU5QM4nYMKuXDP2tu+7xWDv+KCUpqlVO1OvUEuWJvLTYRwnHI5Yw8ZcrNsJLl
         n20A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pFWSQ7Px;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NvovMTtTBX8mmQPKhYYIWWv0J2LxIBIuLheot88IYIk=;
        b=RCstyjguuuHGNu4qr/KbzzbiOdhViMZMGBs7+tIOmxHULIIs9/XVA/CYsxTykIqEgx
         d5mtzXJa2xXs2mRSPxrlIzyqje1roBqE3uO1ty9nROe4h7PgH7btBqNEw63yEUTMtNP2
         nSw0mwXYYScqu4SxRgRHVAgfO+YPNjz/PrfxQ4DkjVTML1+lvGt8lpN1rO/9CYgDlsjK
         5YAJmR1bjuLEqVbm2xTBrN/ECvA7UNghE6GAOgo2TtsXV9jYlzNpQyTZdtvlvs8NDiCY
         AFGHIvwaL+wsgLitEvLHAW19QGG2m5uTSkWtdz74iG5Gg8ygTgtqE29yQNczNVu+SaEQ
         +DZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NvovMTtTBX8mmQPKhYYIWWv0J2LxIBIuLheot88IYIk=;
        b=tA35Yt/oUcZr9LLc8lXOMNsINOwqqGFr1sz4zBTx34Tu4sMg4v61++ZqVBrBQWgL3t
         Htiq/ot2zkVGe+4JNQtOffTiTZyMtVNMQrOcXdJHg0Ev26DZnhIJ1wGN+UxXXrfIlAtf
         z5RORGZX+6RDdpC8Ic6ItNrMz3N8D7b+jqytV/FFom8b3AqBaSoWr4K1PEihKGhMwCEa
         EHsWhbfNVROV0Bjd9gp/mjrjtLnlH/n6MU9vF2DfGTYlL/D2WnRicXFZwCyzzmNpYMKO
         dxEiSnue/olDzskOtRU3+IlOR9loXg2sCVQWMTJWf4EBgcDRlWyZW7e0As6Qe3vfYlEN
         PN9w==
X-Gm-Message-State: AOAM531+dEA8zHvQSU3xMs2CO+f261/037J+kxqeaB23ahKhUN1RKYrv
	D1+Ki6jf+fh6WMavFsWvQhA=
X-Google-Smtp-Source: ABdhPJyN9aDT0FMO94v3Hekx5zlVlHSxD0IODY0aKD0i9T36/bAHGYovG8YzYv+oaIk4S0xmoRU3kQ==
X-Received: by 2002:a5d:9252:: with SMTP id e18mr4472882iol.146.1611091108090;
        Tue, 19 Jan 2021 13:18:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8356:: with SMTP id q22ls3235640ior.3.gmail; Tue, 19 Jan
 2021 13:18:27 -0800 (PST)
X-Received: by 2002:a6b:f401:: with SMTP id i1mr4431547iog.142.1611091107643;
        Tue, 19 Jan 2021 13:18:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611091107; cv=none;
        d=google.com; s=arc-20160816;
        b=CFP7nDFdPbwAZXoQ8cyVgFcOJPYZY4blBoACW/TipQPtVDdL75MZc+SHN9B5TvbNub
         cEvw8HcVhVpHQKd1UF5qygDD5GoepvzNzHpIYz4NCAFsfDObysAPS28yGkKeV0HCsD7I
         8afGN6r1rHBpvLwkkp59ko4uOf66H+WzKLvxqQeMiznvCFCcyGGUmKNoTDCOj/DCtcNt
         DS0csKacVpU/GpOcWnQ3kovMsfENgXBtjNc/OaESNvnoyJot7Uj6kPwRvhtYp/P/LJQu
         kod8yR66TNMzbf9QjzcrVBFD+9KUozRfYtNasIe8mwnOb7MPVsr0+k8xFGSTr1GbXNoI
         j3Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GUbLbmtARwLrukRtqOIAYNu5h84qqes4aFplAP4XxME=;
        b=KU9Q2vGKBZtDbRfoDZQmqCC8qvVFCNbmx3dDJ3hhi7gOLwTjS8XqHpfiSj5BVawts6
         NKJ+ybNePrQXGsGaKFSxYUwVTmctEtWO0fYh1VanCVMupqTqDyF6vFs6oeBbBFQ0GOW2
         yinZXLCE/HLYIC61k+7ofmvw9ep9Jc/Ex91IdWUKLFzHHbU+Ccncs/0jPgYYCfsVpawf
         KnCYfDlwEUTuXgh0KHLrVL9H62dAnu2xMzKa33WqTSfet8MOSaRIoKlBoeBbKZr6pPq8
         J5GzRCK1dwXCGdXAInCPr2LE0pNWleur7LG6NL6eE9mvJVpO6E2PwrjDNkD+Q28LCN5/
         b+dQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pFWSQ7Px;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id k6si11060ioq.1.2021.01.19.13.18.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jan 2021 13:18:27 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Received: by mail-pg1-x52e.google.com with SMTP id g15so13757082pgu.9
        for <clang-built-linux@googlegroups.com>; Tue, 19 Jan 2021 13:18:27 -0800 (PST)
X-Received: by 2002:a63:5701:: with SMTP id l1mr6165248pgb.381.1611091107085;
 Tue, 19 Jan 2021 13:18:27 -0800 (PST)
MIME-Version: 1.0
References: <20210119131724.308884-1-adrian.ratiu@collabora.com> <20210119131724.308884-2-adrian.ratiu@collabora.com>
In-Reply-To: <20210119131724.308884-2-adrian.ratiu@collabora.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 19 Jan 2021 13:18:15 -0800
Message-ID: <CAKwvOdkNZ09kkzi+A8diaxViqSufxrHizuBu-7quG6an3Z8iDA@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6 warning
To: Adrian Ratiu <adrian.ratiu@collabora.com>, Arnd Bergmann <arnd@arndb.de>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Ard Biesheuvel <ardb@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Collabora Kernel ML <kernel@collabora.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pFWSQ7Px;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Jan 19, 2021 at 5:17 AM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> From: Nathan Chancellor <natechancellor@gmail.com>
>
> Drop warning because kernel now requires GCC >= v4.9 after
> commit 6ec4476ac825 ("Raise gcc version requirement to 4.9")
> and clarify that -ftree-vectorize now always needs enabling
> for GCC by directly testing the presence of CONFIG_CC_IS_GCC.
>
> Another reason to remove the warning is that Clang exposes
> itself as GCC < 4.6 so it triggers the warning about GCC
> which doesn't make much sense and misleads Clang users by
> telling them to update GCC.
>
> Because Clang is now supported by the kernel print a clear
> Clang-specific warning.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/496
> Link: https://github.com/ClangBuiltLinux/linux/issues/503
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

This is not the version of the patch I had reviewed; please drop my
reviewed-by tag when you change a patch significantly, as otherwise it
looks like I approved this patch.

Nacked-by: Nick Desaulniers <ndesaulniers@google.com>

> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> ---
>  arch/arm/lib/xor-neon.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
>
> diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> index b99dd8e1c93f..f9f3601cc2d1 100644
> --- a/arch/arm/lib/xor-neon.c
> +++ b/arch/arm/lib/xor-neon.c
> @@ -14,20 +14,22 @@ MODULE_LICENSE("GPL");
>  #error You should compile this file with '-march=armv7-a -mfloat-abi=softfp -mfpu=neon'
>  #endif
>
> +/*
> + * TODO: Even though -ftree-vectorize is enabled by default in Clang, the
> + * compiler does not produce vectorized code due to its cost model.
> + * See: https://github.com/ClangBuiltLinux/linux/issues/503
> + */
> +#ifdef CONFIG_CC_IS_CLANG
> +#warning Clang does not vectorize code in this file.
> +#endif

Arnd, remind me again why it's a bug that the compiler's cost model
says it's faster to not produce a vectorized version of these loops?
I stand by my previous comment: https://bugs.llvm.org/show_bug.cgi?id=40976#c8

> +
>  /*
>   * Pull in the reference implementations while instructing GCC (through
>   * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
>   * NEON instructions.
>   */
> -#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
> +#ifdef CONFIG_CC_IS_GCC
>  #pragma GCC optimize "tree-vectorize"
> -#else
> -/*
> - * While older versions of GCC do not generate incorrect code, they fail to
> - * recognize the parallel nature of these functions, and emit plain ARM code,
> - * which is known to be slower than the optimized ARM code in asm-arm/xor.h.
> - */
> -#warning This code requires at least version 4.6 of GCC
>  #endif
>
>  #pragma GCC diagnostic ignored "-Wunused-variable"
> --
> 2.30.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkNZ09kkzi%2BA8diaxViqSufxrHizuBu-7quG6an3Z8iDA%40mail.gmail.com.
