Return-Path: <clang-built-linux+bncBDX4HWEMTEBRBY6EUP5AKGQEJN4KKKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id C382E2558EB
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 12:54:28 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id c191sf649539qkb.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 03:54:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598612067; cv=pass;
        d=google.com; s=arc-20160816;
        b=E0TQxFVSMfJZ7mGMK536c1uh211PneeGnONmXvCOrDOgaUFssB1l6XRBaxjP0WCW8f
         93ssYuyXQPBF9AFC5RScxOeKCqjomRnqb1qXAvO+X6fRGXuKd/3XM8n7FzlNEaUyiYYA
         lw5DXkiG6F7JLpCbd6+luDy3Es1w+ZVmnnu5xl4ZGLGwjgu65RItKhAKOLyONSzZezW7
         YdBV6VXPlSqkZd/s30loYvsPyJX0eF2/V0ECcH2g/ER1CsTBWkh+syPxJCpEY5sbjrF9
         8pqa14HEVsbPezR/vU4KTpTzIO75pUm/tKBplOHuMCqzamlolyIlHNkAI+/rhEDlJ6P8
         eOoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=mG9X51c7cGdwthDqIDV8VMRn8w3vFwOUazdKYojTiDA=;
        b=VhxAMpWzvW9GABTibvj+0ogVnp5R9DpYcqB7GlXpEmic433/iSJ/ELiSQzsEYoZsJ/
         hf2wEOa0H7hDgWLsf+tACq9F1rA61tGj1WnLygFY+BQVm6QJQvBsglJEI9/0KXuapf7p
         9Hl1KFvICgIGEgJ15L1Zsx/r0oDHjYqvN997Xh0jY5cVSfvFgum/zHF0CaPcBkocs1xK
         b2IQd+9sSZGybyVbNqnbkmQ9pzKu1Gaf4BeI+vd1fS3DOMEY0WptkT1jOmnWd6MEc1jL
         kdBd5/cGSgF+aEfSzw1q8FJ28VRXNgoPreoIFa05I8DlJ9GZJqvWNxnqYm7WZRRj+VWF
         xvvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FwSk+QOE;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mG9X51c7cGdwthDqIDV8VMRn8w3vFwOUazdKYojTiDA=;
        b=ZYGLANXSys04hw12mxFpoPs7lQVRWmaSsNNEA0I6rtSKV8lAezMGRVPWa3JtDXur9Q
         CFPLu5ekGQZ8q/Jkdfsn1cHOua15orBxXT/fF5Lz41uZMFD4FEXf/h0h271xY5t4NN8p
         0fRsyifBd8ien/XGoAFvLQpwQgSs1VPzouv7GNsciEXqlezHGODb6ELGlMeFVf6fWMxi
         atTEgQHC1Ch0StMlvJsUc9KYNlfXwprK+anBVj3Pnd18jZGIVPX3uSoUS50nrMf1FYZC
         8pLIsdVsGaSV61xLjuCJl9PLuwvwDHvPG10dxxrb2V33NVfZalqqjsXxNqSt4UVpS2Y4
         sBWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mG9X51c7cGdwthDqIDV8VMRn8w3vFwOUazdKYojTiDA=;
        b=Hxtyd6pdv8XRbk9kDuOJ9urUI4Ot5FGnIoy+IMNswcGPv3ZPPs03DOfn7jVXGsqdtm
         wAV949sjb51H/E7LnsMjMq2LhXTnznwqtSYGs2gd5ecUfG6pmXQFM1JxirD5gr03FFI4
         lpJjAAh9Od69YvswIhz9WC9cI0oJKU9q3LXYz6N1fWuECHVyBj4+RGrFp8zJBYGicYgo
         /2JEOp2+/siOoPWh5N7+Bgj7baCasa/NG10Guznrw1KXY0MUKw3WLRxbK11KAMnB27R9
         FkNOwbuV3eY+NosqVr1P4JRjSnv1yNuDKRnD0ifWW+aEF1SdpVtlA2kfF+EkZ6Ok38WA
         wwgw==
X-Gm-Message-State: AOAM533qoQtNnN2VGmtiHNG0G3I0Xy/IgKfxxSutrPKnxB/GcNFMQIYA
	Gr+aiBm60fsR12GrSRogdWQ=
X-Google-Smtp-Source: ABdhPJxRggxuzOPG4mI6CYmaP0E0MWF4lA4gSqqZVAUyWPRqxUvkJA0xxlTvds0JCNE/pwxoqcgUgA==
X-Received: by 2002:a37:7c6:: with SMTP id 189mr597496qkh.275.1598612067679;
        Fri, 28 Aug 2020 03:54:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:22ca:: with SMTP id g10ls314474qta.3.gmail; Fri, 28 Aug
 2020 03:54:27 -0700 (PDT)
X-Received: by 2002:ac8:46d6:: with SMTP id h22mr1010273qto.249.1598612067381;
        Fri, 28 Aug 2020 03:54:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598612067; cv=none;
        d=google.com; s=arc-20160816;
        b=b25Gp3zx3/WFg0VrpqhtsNFtwFz0hsUPx4Qn8hk4LZcMmNLeJ0r2NVPbqzex4p6sa1
         yRW7GNC+qSvqT4oNBNH3Se5aMeNeTipuwUFoCavQstuuIesqX1YYXnywC3fuTZojS3NF
         EGVNAGQHF4tgAF8C8BcVJQt2Dv06XiK/BYqIuZD/g3rTf6VnNGfcggQQkWEJrV2+v7hF
         GQeNb42j7uBfek5eI2UHBKCz3bCKyPD4DqVODcxehYCg/jAPzh7m+ACZwMsneOOkco9z
         Yn7N4aKFuUjZctVvn3QKvwb6otdaHNAcf2xhF1XfiBNLtolqaJrrmJBL8u8gO+y3qm6l
         KLLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fhcvo1n+CsYdI8OH67mOVUpzZUMHRybLogH+vvrmtQs=;
        b=aNIcuwRgztZj6m+FhQ/8PZ3p1a8yuP3WZlFf9+C1jXi/HMvux/apLdkLtNyLzec5FT
         m4z4DAD18dPDqCjQn9RluKZWqpTsJ9Vl6f5CCTdfMGepmPwLj9Kn5OZDNAI/3kMZiYZF
         jNKg+dd12rR9b2wzlC2LHmNhzbXATl7Dcb2DdaIRwRCKiDlEVcjonN+vRfe0kUk0y7aM
         QzGLg76v6RVA/XkGP3z2NXMIW2OYFMKj9WY++4dxcyuoD54ukHTTzGltiY/yHPiJ5eSQ
         QkQLab5VI+CjrdVcvZcjheSeP54tSGZalHykIoXFrZOpRESLRSeJd/B9sLh9Fspj+tuE
         hSYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FwSk+QOE;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id b1si35249qto.3.2020.08.28.03.54.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Aug 2020 03:54:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id m34so271270pgl.11
        for <clang-built-linux@googlegroups.com>; Fri, 28 Aug 2020 03:54:27 -0700 (PDT)
X-Received: by 2002:aa7:8c0f:: with SMTP id c15mr784835pfd.135.1598612066279;
 Fri, 28 Aug 2020 03:54:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200826201420.3414123-1-ndesaulniers@google.com>
 <20200826214228.GB1005132@ubuntu-n2-xlarge-x86> <20200827190217.GA3610840@elver.google.com>
In-Reply-To: <20200827190217.GA3610840@elver.google.com>
From: "'Andrey Konovalov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 28 Aug 2020 12:54:15 +0200
Message-ID: <CAAeHK+zyjKWrSU-udVuqLN1i2c0bxNTMVirGjaRfXN=opn6spw@mail.gmail.com>
Subject: Re: [PATCH] compiler-clang: add build check for clang 10.0.1
To: Marco Elver <elver@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Kees Cook <keescook@chromium.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, "Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Randy Dunlap <rdunlap@infradead.org>, Ingo Molnar <mingo@kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kasan-dev <kasan-dev@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andreyknvl@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FwSk+QOE;       spf=pass
 (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=andreyknvl@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Andrey Konovalov <andreyknvl@google.com>
Reply-To: Andrey Konovalov <andreyknvl@google.com>
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

On Thu, Aug 27, 2020 at 9:02 PM Marco Elver <elver@google.com> wrote:
>
> On Wed, Aug 26, 2020 at 02:42PM -0700, Nathan Chancellor wrote:
> > On Wed, Aug 26, 2020 at 01:14:19PM -0700, Nick Desaulniers wrote:
> > > During Plumbers 2020, we voted to just support the latest release of
> > > Clang for now.  Add a compile time check for this.
> > >
> > > Older clang's may work, but we will likely drop workarounds for older
> > > versions.
> >
> > I think this part of the commit message is a little wishy-washy. If we
> > are breaking the build for clang < 10.0.1, we are not saying "may work",
> > we are saying "won't work". Because of this, we should take the
> > opportunity to clean up behind us and revert/remove parts of:
> >
> > 87e0d4f0f37f ("kbuild: disable clang's default use of -fmerge-all-constants")
> > b0fe66cf0950 ("ARM: 8905/1: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer")
> > b9249cba25a5 ("arm64: bti: Require clang >= 10.0.1 for in-kernel BTI support")
> > 3acf4be23528 ("arm64: vdso: Fix compilation with clang older than 8")
> >
> > This could be a series or a part of this commit, I do not have a
> > strong preference. If we are not going to clean up behind us, this
> > should be a warning and not an error.
>
> There are also some other documentation that would go stale. We probably
> have to change KASAN docs to look something like the below.
>
> I wish we could also remove the "but detection of out-of-bounds accesses
> for global variables is only supported since Clang 11", but Clang 10 is
> a vast improvement so I'm not complaining. :-)
>
> Acked-by: Marco Elver <elver@google.com>
>
> Thanks,
> -- Marco
>
> ------ >8 ------
>
> From 13d03b55c69dec813d94c1481dcb294971f164ef Mon Sep 17 00:00:00 2001
> From: Marco Elver <elver@google.com>
> Date: Thu, 27 Aug 2020 20:56:34 +0200
> Subject: [PATCH] kasan: Remove mentions of unsupported Clang versions
>
> Since the kernel now requires at least Clang 10.0.1, remove any mention
> of old Clang versions and simplify the documentation.
>
> Signed-off-by: Marco Elver <elver@google.com>
> ---
>  Documentation/dev-tools/kasan.rst | 4 ++--
>  lib/Kconfig.kasan                 | 9 ++++-----
>  2 files changed, 6 insertions(+), 7 deletions(-)
>
> diff --git a/Documentation/dev-tools/kasan.rst b/Documentation/dev-tools/kasan.rst
> index 38fd5681fade..4abc84b1798c 100644
> --- a/Documentation/dev-tools/kasan.rst
> +++ b/Documentation/dev-tools/kasan.rst
> @@ -13,10 +13,10 @@ KASAN uses compile-time instrumentation to insert validity checks before every
>  memory access, and therefore requires a compiler version that supports that.
>
>  Generic KASAN is supported in both GCC and Clang. With GCC it requires version
> -8.3.0 or later. With Clang it requires version 7.0.0 or later, but detection of
> +8.3.0 or later. Any supported Clang version is compatible, but detection of
>  out-of-bounds accesses for global variables is only supported since Clang 11.
>
> -Tag-based KASAN is only supported in Clang and requires version 7.0.0 or later.
> +Tag-based KASAN is only supported in Clang.
>
>  Currently generic KASAN is supported for the x86_64, arm64, xtensa, s390 and
>  riscv architectures, and tag-based KASAN is supported only for arm64.
> diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
> index 047b53dbfd58..033a5bc67ac4 100644
> --- a/lib/Kconfig.kasan
> +++ b/lib/Kconfig.kasan
> @@ -54,9 +54,9 @@ config KASAN_GENERIC
>           Enables generic KASAN mode.
>
>           This mode is supported in both GCC and Clang. With GCC it requires
> -         version 8.3.0 or later. With Clang it requires version 7.0.0 or
> -         later, but detection of out-of-bounds accesses for global variables
> -         is supported only since Clang 11.
> +         version 8.3.0 or later. Any supported Clang version is compatible,
> +         but detection of out-of-bounds accesses for global variables is
> +         supported only since Clang 11.
>
>           This mode consumes about 1/8th of available memory at kernel start
>           and introduces an overhead of ~x1.5 for the rest of the allocations.
> @@ -78,8 +78,7 @@ config KASAN_SW_TAGS
>           Enables software tag-based KASAN mode.
>
>           This mode requires Top Byte Ignore support by the CPU and therefore
> -         is only supported for arm64. This mode requires Clang version 7.0.0
> -         or later.
> +         is only supported for arm64. This mode requires Clang.
>
>           This mode consumes about 1/16th of available memory at kernel start
>           and introduces an overhead of ~20% for the rest of the allocations.
> --
> 2.28.0.297.g1956fa8f8d-goog
>

Reviewed-by: Andrey Konovalov <andreyknvl@google.com>

Thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAAeHK%2BzyjKWrSU-udVuqLN1i2c0bxNTMVirGjaRfXN%3Dopn6spw%40mail.gmail.com.
