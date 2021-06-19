Return-Path: <clang-built-linux+bncBC7OBJGL2MHBB442W2DAMGQEFHVBGFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C6E3AD812
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 08:23:48 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id 190-20020a3708c70000b02903aa60e6d8c1sf3412051qki.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 23:23:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624083827; cv=pass;
        d=google.com; s=arc-20160816;
        b=d8IyFBTT3GvtRNt6hTgtrN7n7NJZpkKI6BceFXgkma8mv5bsiUbFcfPtdisSnlGRkI
         RlQmD1IsXn8WskYEXueYQ2EIG1M9te45pxPaOpVWEvEOENL4gAIb45/vziAhWIc3GDBo
         uswGjDTAuqBRMIeHzIr7ZAlDcjak/Itpnc//xxUNINBiPo+MvfDxsxiQ4vtPdppALPvi
         c+9tXA2y9J3kn+w2Ua3KMQPQlyEwOtNmrAFEznk8zdshVyskLg4i/2tbK/U84n5g5+Na
         J77SdGnxfXZfujaVtljeiZEDTTxzJQqZTgy4DsasseCoxUTqukp2bCVmNcC6Xbcfg7G7
         sz/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/FQjvEqcskHnFvPjBaDF6AnGOM4Z+I/vbkhIYtZ3DZI=;
        b=tO2+LX0OntCN6ijeNx+lc13uHJOm2Kh4U6ZgU8KLhm/11csG6cwwJr9uKqGg9SPLIz
         0VBBIm8/XYz/0kW19aFTpfGN2+cUg80Yq2AGSYsGIEKNyhgCjm7lOckqta2mnzJkS4B4
         lkezthS7Dn0gFfu+oxbAVH+iK9zM32/y0mbjoUcJN8Km9kLYrd8Tj42ezVUrI8r4gcFa
         iQS7M8k5FIEidSoX4uhLi8MrLfiDGvoGF5MWPgKjV3I+UVPwWCE7tzHaGOd1dtXbslWZ
         YJXmdpwXWrfx6rw3JKm8BUHJGbaepJLuf4uG7wSn4btFzsRGHyWAIHPgjNvt4XAou6G3
         UuVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AiAri9rb;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::235 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/FQjvEqcskHnFvPjBaDF6AnGOM4Z+I/vbkhIYtZ3DZI=;
        b=TIhBMXFTDHaJTdIuH1UdEIssCKj6EtZeEWuIAzzZR5+jbMo5jubmJKi7OZB8swQPBq
         McjN1ukGECHM73XkIhv6SXOGhskw9rzkGGkmPS/tK//NLv78K4Lscg7475BJu8ZPpnHB
         PJLUd9ULXDpypVLKETjGHvafCLGkd4VD7JRF0sUQ+Rmt6rXH4/ef/Hg2ZG8NXC+/V1vx
         2PJZ+fMucIfqZAqDjZ/tga69vxeso64geIpNqKSWtrtHX7IyqBUpHEactLTYe5apru47
         y8nMdhoambrwsXTsunCa86FS7VJsAaKXnRT+UAu1GolFq/Cx2YOunxvKqQJf63WHhaPc
         1N0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/FQjvEqcskHnFvPjBaDF6AnGOM4Z+I/vbkhIYtZ3DZI=;
        b=Remppo3SpzwrQLkigpajLUzBOjgt29CRELIn3TRjc6dVJlD+5fl3qlkJHGJYxeR7hf
         FgGOH3De/RzikcjC38t8cgM1eWPRPHm8Qnu9rNKqy3awj7wQavB4ybcNbgJ+DgX3e/Ez
         Ou9LaJ4uDvpkB5iX3cKzEiFu1388sBeY+rk0kSck5zNQ4zuagdTeKbWcFsRc8qndVxkM
         rUWZSZutKfEbb8r83mXY7bd44p0TJlxqHwoBqRTvY3zjEuLPHbWAVun3hL/RC0gMBWMX
         PF0QtypGtzWh2RUGGvdJMNIJRuiUJF400u+INOSdaJmOKENohv3qJd/keOjw+kfeacHq
         +gVQ==
X-Gm-Message-State: AOAM530Z/lZlo0dgNVn8S7Yxyi+L8ZnfZYSHQfX4ZJnwxsJBIGCqY7Mu
	AIsLEv7+JtwuGH2+vYXhnmk=
X-Google-Smtp-Source: ABdhPJyq2Aoi94S1PMzSSsGFnBQtW1a/To8/k1NvdyMf0Ov4BUoe1gHqMpuX8EXFiCrBgadM5IyfQw==
X-Received: by 2002:a25:f20f:: with SMTP id i15mr17189394ybe.119.1624083827264;
        Fri, 18 Jun 2021 23:23:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:874d:: with SMTP id e13ls6271311ybn.0.gmail; Fri, 18 Jun
 2021 23:23:46 -0700 (PDT)
X-Received: by 2002:a25:acdf:: with SMTP id x31mr18779889ybd.222.1624083826571;
        Fri, 18 Jun 2021 23:23:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624083826; cv=none;
        d=google.com; s=arc-20160816;
        b=o1+92NDTbcG0DEzmjASjcVsoQdg/alDuGJnDYO12fsuMRfSU0lzgCUd8LacvLN66KH
         PHse3++uZ8FVUGbxoqtjW7Mx2t4O5PEd+iCzoBlG52Hu29AD5T93+NV67z/u1GLMnQXW
         hKiqbkowT4YM+/CHGe7QqXH2GgL7yeOwSlAx0QkYyDEA1NiJYKZo5ddbQMmtC/ts1TUo
         S891tLVlfx9PisrR/nl9Q5cqGQrKocpRgLQtj/LLqSrXd81bQRR3VhuUyBmEfCOicvQg
         4F8oRrDOol3iunSUZVEHF5Gi6O4koI6r6BcALPjTv0QbNdI4gIPKYTWCJ23B9+vHP9my
         Fvlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=g86XYumTkqevhSftkAkowJoLhtGajRxQu1ICRJSfKts=;
        b=AzXOatBs6eT+hUlDO2PuEVwiREHOLCoyxbovh+T/lOAKun9RoMp/lmDYwS73X2jm00
         ZpAKpKOb6I+UIpopVEpm2Sh4at1TaIW2rHlMIzi8GGmJyR+pX6V9EZsP8A1cgJrmoyKe
         d0ohBiYxdz0y7iBmMgcv4rx+ds/eHhQNgxjX5DUBBZurS0CCRAkWKdPsZs51EmWdGRAC
         byC8QsxC8tn24qbQt7NJSvUOuAHhADOKOCBJgeBYOmWfUZUKtYG2W9j60bhK1uZvO12m
         MJoR0AVef2vasMpMoa+/7ggFfQ3vi8Bi34eB35Qpk/3kWPNCaGBYDFyPxyWWF6iI0pwI
         mKeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AiAri9rb;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::235 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com. [2607:f8b0:4864:20::235])
        by gmr-mx.google.com with ESMTPS id e184si399308ybf.0.2021.06.18.23.23.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 23:23:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::235 as permitted sender) client-ip=2607:f8b0:4864:20::235;
Received: by mail-oi1-x235.google.com with SMTP id s23so13256674oiw.9
        for <clang-built-linux@googlegroups.com>; Fri, 18 Jun 2021 23:23:46 -0700 (PDT)
X-Received: by 2002:aca:ba06:: with SMTP id k6mr9924648oif.70.1624083815429;
 Fri, 18 Jun 2021 23:23:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210618233023.1360185-1-ndesaulniers@google.com> <20210618233023.1360185-3-ndesaulniers@google.com>
In-Reply-To: <20210618233023.1360185-3-ndesaulniers@google.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 19 Jun 2021 08:23:23 +0200
Message-ID: <CANpmjNNK-iYXucjz7Degh1kJPF_Z_=8+2vNLtUW17x0UnfgtPg@mail.gmail.com>
Subject: Re: [PATCH 2/2] Kconfig: CC_HAS_NO_PROFILE_FN_ATTR, depend on for
 GCOV and PGO
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, Peter Zijlstra <peterz@infradead.org>, 
	Bill Wendling <wcw@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Peter Oberparleiter <oberpar@linux.ibm.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Nathan Chancellor <nathan@kernel.org>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	x86@kernel.org, Borislav Petkov <bp@alien8.de>, Martin Liska <mliska@suse.cz>, 
	Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>, linux-doc@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, Dmitry Vyukov <dvyukov@google.com>, johannes.berg@intel.com, 
	linux-toolchains@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=AiAri9rb;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::235 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Sat, 19 Jun 2021 at 01:30, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> We don't want compiler instrumentation to touch noinstr functions, which
> are annotated with the no_profile function attribute. Add a Kconfig test
> for this and make PGO and GCOV depend on it.
>
> Cc: Masahiro Yamada <masahiroy@kernel.org>
> Cc: Peter Oberparleiter <oberpar@linux.ibm.com>
> Link: https://lore.kernel.org/lkml/YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net/
> Link: https://lore.kernel.org/lkml/YMcssV%2Fn5IBGv4f0@hirez.programming.kicks-ass.net/
> Suggested-by: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  init/Kconfig        | 3 +++
>  kernel/gcov/Kconfig | 1 +
>  kernel/pgo/Kconfig  | 3 ++-
>  3 files changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/init/Kconfig b/init/Kconfig
> index 1ea12c64e4c9..540f862b40c6 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -83,6 +83,9 @@ config TOOLS_SUPPORT_RELR
>  config CC_HAS_ASM_INLINE
>         def_bool $(success,echo 'void foo(void) { asm inline (""); }' | $(CC) -x c - -c -o /dev/null)
>
> +config CC_HAS_NO_PROFILE_FN_ATTR
> +       def_bool $(success,echo '__attribute__((no_profile)) int x();' | $(CC) -x c - -c -o /dev/null -Werror)
> +
>  config CONSTRUCTORS
>         bool
>
> diff --git a/kernel/gcov/Kconfig b/kernel/gcov/Kconfig
> index 58f87a3092f3..19facd4289cd 100644
> --- a/kernel/gcov/Kconfig
> +++ b/kernel/gcov/Kconfig
> @@ -5,6 +5,7 @@ config GCOV_KERNEL
>         bool "Enable gcov-based kernel profiling"
>         depends on DEBUG_FS
>         depends on !CC_IS_CLANG || CLANG_VERSION >= 110000
> +       depends on !X86 || (X86 && CC_HAS_NO_PROFILE_FN_ATTR)

[+Cc Mark]

arm64 is also starting to rely on noinstr working properly.

This should probably be a 'select ARCH_HAS_GCOV_PROFILE_ALL if
CC_HAS_NO_PROFILE_FN_ATTR' in the relevant arch/../Kconfig.

Alternatively, using:
https://lkml.kernel.org/r/YMcssV/n5IBGv4f0@hirez.programming.kicks-ass.net

But I'd probably not overcomplicate things at this point and just use
ARCH_HAS_GCOV_PROFILE_ALL, because GCOV seems to be a) rarely used,
and b) if someone decides to selectively instrument stuff like entry
code, we can just say it's user error.


>         select CONSTRUCTORS
>         default n
>         help
> diff --git a/kernel/pgo/Kconfig b/kernel/pgo/Kconfig
> index d2053df1111c..26f75ac4c6c1 100644
> --- a/kernel/pgo/Kconfig
> +++ b/kernel/pgo/Kconfig
> @@ -8,7 +8,8 @@ config PGO_CLANG
>         bool "Enable clang's PGO-based kernel profiling"
>         depends on DEBUG_FS
>         depends on ARCH_SUPPORTS_PGO_CLANG
> -       depends on CC_IS_CLANG && CLANG_VERSION >= 120000
> +       depends on CC_IS_CLANG
> +       depends on CC_HAS_NO_PROFILE_FN_ATTR
>         help
>           This option enables clang's PGO (Profile Guided Optimization) based
>           code profiling to better optimize the kernel.
> --
> 2.32.0.288.g62a8d224e6-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNNK-iYXucjz7Degh1kJPF_Z_%3D8%2B2vNLtUW17x0UnfgtPg%40mail.gmail.com.
