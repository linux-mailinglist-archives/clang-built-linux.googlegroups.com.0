Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAHOST7AKGQEBO3TZ7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FDC2C8C6C
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 19:16:33 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id m45sf8098497qvg.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 10:16:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606760192; cv=pass;
        d=google.com; s=arc-20160816;
        b=cZ9o7tEavcIQ+dWUdrhv8ZvCJsPVtl1H/Pm94fJ28YAQic2SFXRjbo/2p4bQAM3xL9
         Qb7rklFZ4Mris1wJfMxWwVFI7x1+L4n8KqwMOn17S3SWoj3fYzozXSPygFnp/SvrWr3R
         9mxUZi6qkxfn0J/4faGSKZo/X375s0GzanpU3wJ76wwVebbrOh2+rOUSC7na2eBk/4D6
         CRwZH5xJkBtqYRbRY9jrsoP1hKvbbR53R+H/wPyIsJAQebBSqO7E7jYElvYGyajzNEHb
         c+ZIMOaxrFQ7xShi9N5nUvLL0gIgvQjcuyhD9UTFF6z+2aiIA/Psd0ERCc1mUjYmWwm5
         e9ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0pu+fBDZSL93fHhoICqo9IP9rM9JtKa/RuM6sJinhQU=;
        b=soOMcSi5wyGqqg6QPEaYGVRyULNtcJ2zTV/8wHN0BM1OlN+MLf5s7C0bNP7Xf3zula
         QfIxxivO4VjI9fX+iyIqPD5XGMlacOrCmjuVDxgNdihTHP0riWnV9T6q9efT+RlMClRp
         7D5oYjp0RIh36WrIDr3Ii/Vn1XCSyTxNpKF54dN4sqfh+ZySDqv8KRuSOE8USJmUsJbt
         2fw+Kyipm8xZvpIfijsL/5cncIQSS09WmipLl13qKP+I+bEoCz6fQa6UyCRIO1p3O+48
         NMxuwIM+qdS8pU/nW5KlGXeGNZGg+a9HKjlddrO9ln8g1W43kNd29xh2vSjJqeO71YmY
         IZiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IYOlgdTZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0pu+fBDZSL93fHhoICqo9IP9rM9JtKa/RuM6sJinhQU=;
        b=JbPHnckOwzFYPWQYz+fPY+ffSY+bIZS3gEd1VZccOhnhFTPSXW1+e3MA2QX+XH9mZA
         t1BSc2H76AYqh2QrBY47orMXIFmRFeXIbILB5UsO8ISJ4Bsg98JfDfFvDNJ9UTEfwsad
         Klno0GUZ3VL/MA0M85U8u+iYLoHUZLWdxZlbCqiJ3ziD/xS8pEgsYc145fg2TtPy87tb
         Kix+TpXZn3EZ1t1V9opAqPfiYAAxj+9R1zd73gyjgm+H/rhtCB0Ek24w9H8N+53jrs1U
         y07MGrSsr7FUduIyBvSV5pB4A5kdxfmnbRwVHwDdC1s6wtRdYyXTBr7JKPjVzeHq5VlI
         LTDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0pu+fBDZSL93fHhoICqo9IP9rM9JtKa/RuM6sJinhQU=;
        b=QAOnH8/hk1KTK1YymXRh3t664pe9bJAh4DxYQsjcvZRNDzAahWd8p3WM+Ir+LWRgyo
         r3ErYQ2oB24bnvq2FxB8zUJ8VnuYfrxSH41m2xLV71Awq3xRP6NSDm8YkiwIR4Njes0X
         Wa7oc9MQHlLfCTjQE9BLSyDRu7oFz0GtOCEwjDfnIvZs1zYwM7YHqv5YRhwiseKcKbUd
         4+QHUaEfb88Zx9jyOPixX2CsG3n+rG65Umq1eiFHOPZmld8pWgclWQAyZKLUG/E7n7QH
         d9j2O+NDlRxlf0uWojQvNaTZ3UJMrNkuMxH8Ot9tgcAdjoy6JsFOoKt3QGeaVJFyLM+d
         jr9g==
X-Gm-Message-State: AOAM530iyY0nd0e5ZI7R7cn2SK1yxslADbWzdOKQpbdPF7oKZIscSGkl
	LqWseXlydB2bYNXWXpN5ch0=
X-Google-Smtp-Source: ABdhPJwpf3/mwxCsSGk0VPu7bJut/pcVihwoY+KBKBMiGg7VIMMoRQL7o0Dz4E6rDAms9oVGwYL0LQ==
X-Received: by 2002:a0c:d407:: with SMTP id t7mr7935309qvh.21.1606760192659;
        Mon, 30 Nov 2020 10:16:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:c2e:: with SMTP id a14ls344828qvd.9.gmail; Mon, 30
 Nov 2020 10:16:32 -0800 (PST)
X-Received: by 2002:ad4:4745:: with SMTP id c5mr24172603qvx.2.1606760192230;
        Mon, 30 Nov 2020 10:16:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606760192; cv=none;
        d=google.com; s=arc-20160816;
        b=nTdCt3WpE+zz5PzCGQEfXGHHpBPn+d1MWqvyuF2k7vJ0c2MYZwLXlDbbx6Vmrrqmpd
         29waYUVzwCnU2PnC4JbkQiSuKDHhjXcM3iwSqz0Qq1BxouiGckNaIzOjGh5HdG4Tvg42
         L/+DPMjY8RwnaQaet0p7VN4XbVxYN8xrov2goUKJi8rnfvGjv/x7Sju/Eqk32hN+Rezn
         xwSS7A2OuC24MPc1ZC48oOYtIddj+mJP0xsZFLU+mI+pHABFoHVLzQXTFeLyGuchmEP6
         clPJP+rMlA84dVC80azkr+k0paoAk/kl4Yn9t1DDfhLy/U5U6/qds5mzRIhSH4EWDGmr
         7Ppw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GNY/70CAQC3eXUNKhqPKEV6KDBxfhoyyaZSVMFjGEY8=;
        b=NRFxsbCpactAq/7l7cwK0EutB5p7tPSOijoRdWKPZiXpHZVvxaPiVTUSZ1PcCR0FWL
         9YOsVtThMV7vE/pAsfT9pA3iqm3xGf6vkaPdh1+fX2OJ1X0LJDhzaKyArx6RyOelFg1t
         S+hZyNK8893uIARqrZJi28yTFvA92IyhAuDPuxw8ZEAPeEqsLZhPeORrT/YmNW1Bb1Pu
         emmqUTG1O58lzf7y4Nrz2JXNxbCg+Tht2YDWQwW0n1sRx/fV2vikQilpi713JoUkQ9RZ
         chpazsbwsP6qV7LHQ+u471hQoMb6YrozpD5vKr8gQKEvuP1amkEZaBpFV8G+B117yraY
         GXLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IYOlgdTZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id j44si996545qtc.2.2020.11.30.10.16.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Nov 2020 10:16:32 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id p6so6941202plr.7
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 10:16:32 -0800 (PST)
X-Received: by 2002:a17:902:e901:b029:d8:e727:2595 with SMTP id
 k1-20020a170902e901b02900d8e7272595mr19843120pld.56.1606760191169; Mon, 30
 Nov 2020 10:16:31 -0800 (PST)
MIME-Version: 1.0
References: <20201128193335.219395-1-masahiroy@kernel.org>
In-Reply-To: <20201128193335.219395-1-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 30 Nov 2020 10:16:20 -0800
Message-ID: <CAKwvOd=azwa6m84Nyu+EVksmTRnQfd3PRe8gDBmx9vYVs1D_hQ@mail.gmail.com>
Subject: Re: [PATCH v3] Compiler Attributes: remove CONFIG_ENABLE_MUST_CHECK
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	"Jason A . Donenfeld" <Jason@zx2c4.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Shuah Khan <shuah@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, 
	Network Development <netdev@vger.kernel.org>, wireguard@lists.zx2c4.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IYOlgdTZ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Sat, Nov 28, 2020 at 11:34 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Revert commit cebc04ba9aeb ("add CONFIG_ENABLE_MUST_CHECK").
>
> A lot of warn_unused_result warnings existed in 2006, but until now
> they have been fixed thanks to people doing allmodconfig tests.
>
> Our goal is to always enable __must_check where appropriate, so this
> CONFIG option is no longer needed.
>
> I see a lot of defconfig (arch/*/configs/*_defconfig) files having:
>
>     # CONFIG_ENABLE_MUST_CHECK is not set
>
> I did not touch them for now since it would be a big churn. If arch
> maintainers want to clean them up, please go ahead.
>
> While I was here, I also moved __must_check to compiler_attributes.h
> from compiler_types.h
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> Changes in v3:
>   - Fix a typo
>
> Changes in v2:
>   - Move __must_check to compiler_attributes.h
>
>  include/linux/compiler_attributes.h                 | 7 +++++++
>  include/linux/compiler_types.h                      | 6 ------
>  lib/Kconfig.debug                                   | 8 --------
>  tools/testing/selftests/wireguard/qemu/debug.config | 1 -
>  4 files changed, 7 insertions(+), 15 deletions(-)
>
> diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
> index b2a3f4f641a7..5f3b7edad1a7 100644
> --- a/include/linux/compiler_attributes.h
> +++ b/include/linux/compiler_attributes.h
> @@ -171,6 +171,13 @@
>   */
>  #define __mode(x)                       __attribute__((__mode__(x)))
>
> +/*
> + *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-warn_005funused_005fresult-function-attribute
> + * clang: https://clang.llvm.org/docs/AttributeReference.html#nodiscard-warn-unused-result
> + *
> + */
> +#define __must_check                    __attribute__((__warn_unused_result__))
> +
>  /*
>   * Optional: only supported since gcc >= 7
>   *
> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index ac3fa37a84f9..7ef20d1a6c28 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -110,12 +110,6 @@ struct ftrace_likely_data {
>         unsigned long                   constant;
>  };
>
> -#ifdef CONFIG_ENABLE_MUST_CHECK
> -#define __must_check           __attribute__((__warn_unused_result__))
> -#else
> -#define __must_check
> -#endif
> -
>  #if defined(CC_USING_HOTPATCH)
>  #define notrace                        __attribute__((hotpatch(0, 0)))
>  #elif defined(CC_USING_PATCHABLE_FUNCTION_ENTRY)
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index c789b39ed527..cb8ef4fd0d02 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -286,14 +286,6 @@ config GDB_SCRIPTS
>
>  endif # DEBUG_INFO
>
> -config ENABLE_MUST_CHECK
> -       bool "Enable __must_check logic"
> -       default y
> -       help
> -         Enable the __must_check logic in the kernel build.  Disable this to
> -         suppress the "warning: ignoring return value of 'foo', declared with
> -         attribute warn_unused_result" messages.
> -
>  config FRAME_WARN
>         int "Warn for stack frames larger than"
>         range 0 8192
> diff --git a/tools/testing/selftests/wireguard/qemu/debug.config b/tools/testing/selftests/wireguard/qemu/debug.config
> index b50c2085c1ac..fe07d97df9fa 100644
> --- a/tools/testing/selftests/wireguard/qemu/debug.config
> +++ b/tools/testing/selftests/wireguard/qemu/debug.config
> @@ -1,5 +1,4 @@
>  CONFIG_LOCALVERSION="-debug"
> -CONFIG_ENABLE_MUST_CHECK=y
>  CONFIG_FRAME_POINTER=y
>  CONFIG_STACK_VALIDATION=y
>  CONFIG_DEBUG_KERNEL=y
> --
> 2.27.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dazwa6m84Nyu%2BEVksmTRnQfd3PRe8gDBmx9vYVs1D_hQ%40mail.gmail.com.
