Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBG6OWL7QKGQEU3LMLEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 046CD2E7AF4
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 17:13:17 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id x14sf15700665ilg.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 08:13:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609344796; cv=pass;
        d=google.com; s=arc-20160816;
        b=ygr2jX+H8s/CyjNFAcM6C3Dub9e1H3FYS+AHDeJEqntyuB6xc1urgsBwKu1/CcWAr1
         hAiXMHA61EZGkZi6UahlbTIbEz672Q89dwp6F01zRid9ycUztvLRL2aiMtN9m/Gnon8Z
         PHthZxmBTuliyvBM3g3DdZ6Zzh11u1qC9FWyqs4MdirSo8gIeGlcmkzh3CKOps47JoIq
         FETPx3+6hFsnLvKb4M7KmhGfuWWkJB3bCkmhR+FCq6d9faydDiK/9jOoPk8TQKaeICdn
         S1gJI9h1QtoFDRMFFGIjd7XOMWPfM7h0nPJGdSdhm4xOdFauHQ7vNihaqXmIG7cB3Fa5
         8ULA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YeNm+P8VDu4lwCe2+iEARmHxSviQVuLL6QxaAqzwAqw=;
        b=uny6aB35yED3FeOhqJ0h5B+yY5bjgf3J/R5c1dd+sbrOYOINQBC0pn2eW68WvmcVsW
         Y/ULifYKXx0BMeyJOMglq8ysBuypXVungOzECoEFuyg2dzsPFpzeeBO4duNopoEHRxot
         xrsTDO7AiYbrVHzbTjpokmyv/NkWDIc1RohVf4STqjujt6H81RUWvjTOjtyfT6vfuS1l
         R+kq3QPtK746ZcylbPfN0MM4Ba9P29CuYXY8LXyRwJ3TFJmznq728UYVW472HTHJd3Fj
         J5QHif99lAfdHXqnkmKiO1frQIsnwsSC7HR77fO88dmbkYP/bxUlQ+IKrXcwZg6rkW4E
         /eEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wJJqpDxk;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::329 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YeNm+P8VDu4lwCe2+iEARmHxSviQVuLL6QxaAqzwAqw=;
        b=GXjrXZd1PSXyTUWuMzQQNlSUS6yt5wdL/IC6pfQY0b8jdlBr7QCxZeyHIUiFDURZgC
         NWpB1GlLM+w/AGurovVx9FyGtIHFnb10vwZCX+6I/AQ4EnqMGtlyDEekrQizUPGYrRE1
         CyMifQYz6PF5w+5JvYTcD2pHoxszK6EXJYlFmC9xs8e24PUydFkBO95AeYgiUIhi/inz
         bsBzvFXXSRvSkf7mrolgna3NoRZdLTIYrv0hEeLnNa3jIxrUamMtwvraX7tYFDoALg3/
         IhikgzyhPfWpNU0VO+rUQQa44VES3Ou7vARPpi6pUKbVmRh2qZDfvgNX+NxEhPRPnJCm
         6RVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YeNm+P8VDu4lwCe2+iEARmHxSviQVuLL6QxaAqzwAqw=;
        b=V7DxYONxVK6Bs/YiXWcyFSnbItnPh0IYlE5+dma7v5f1G3EgcOg98QEMlsjqL9D7FY
         QFma72hDn8oJo24irfmDXlcVyO5K5Hj2+ywTDI2AZLAKCVWpR+YQ4wvTYUHc8IqDJgt4
         QsxoTzcxqo9B8ttAr1DD57xSUJ5JYYTHxWdfxsg5ajtDb4liX017AG1HaSJhqISvn3IH
         PpOjF8KVlZ/XvLu9xeRpxrTdfHHJiSyFa0JgpAaUhPKkaUU+mIbMcTPeXfb/ZhOirSeX
         LiqgBR1PgLNgIam11Uoe32EWy97EGQ3q9SMJhkK9PJVCbIQ95tFazooKiaP7WLjPMF4v
         nPMw==
X-Gm-Message-State: AOAM532AmysCGYFCnG6/QzwRfZgbaM0QdJRM2NbcJnITjuH3A/XtOv0v
	W90hNd4wK2GRGAcO/FA0MsE=
X-Google-Smtp-Source: ABdhPJzV02GIy7dK36bY+xzrqw33KThdp7m3yIoytF5IyMkvIIcJP802S/FboGaI82BiJYD+6I2bCQ==
X-Received: by 2002:a92:c6c3:: with SMTP id v3mr52307620ilm.281.1609344795992;
        Wed, 30 Dec 2020 08:13:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3609:: with SMTP id d9ls16611681ila.4.gmail; Wed, 30 Dec
 2020 08:13:15 -0800 (PST)
X-Received: by 2002:a92:d84e:: with SMTP id h14mr53228020ilq.87.1609344795471;
        Wed, 30 Dec 2020 08:13:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609344795; cv=none;
        d=google.com; s=arc-20160816;
        b=Dj1/TMRQZiGljm4+JSy8JpqqrpH/+RZ50EPjPtSQyj8EYjXrjZCW5Dx55BxxPPE0BS
         3QxayetEJANg3WVlLO+Q9++LQ9jk1aa3O49/BeHUVuPzceingdWIm9dE2wdEP2FeWGtr
         OhAGbfnhUGn+Vi/d+sLwbnWHCeaPgof8NJ8FCJNz1YuBym9l4KuKD6z6XDzIo0neX4jR
         JWQ97EpDeYtaHeBTRKYaihaXLIchiN2uShP0ADjAC0lofH88m/3WENTRtfC0izueQE+E
         DfKMEO1eg5Ur4JUWjFNolo45k5/2IexNUPom6fGiM4suHBpKNHVQ+6jKJGuT/7Idgc9X
         2aDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=myv7LmSMKbOAYNp52XCR2AQFXn1fM0PNSnfXWuCsuQU=;
        b=mFoq5BoK5/54ICcx7vNSEqUlfYSK9aARu40xva4E+syCxWcn3Le1MShnvkd58/X/YW
         6iiE3zZocujOaFPpc1JPUH35WnuGtQSBSund462NUZNT0FPyJVlpCnEhPBGlYyLXnlj9
         PQ7Xl6PVP5vCVtxnRn1uMiUBzsDpfR/mGCzom3FC4y2d7OK3FdtAWL1B78UVHwTYXG8n
         PV+fQTEBNxQ2JhUPaBDduVcgu5RiLKfs3jPJKSx5xzFPIhMg+fCFBjO1Q62FwcaOSUHK
         GOz6gUl9KlpJ5qI9P3tBkq1aBg2rXwwkjcVeAGVvgf+e9aOKxtoXZhCHEMgH5K7VC0Es
         Bruw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wJJqpDxk;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::329 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com. [2607:f8b0:4864:20::329])
        by gmr-mx.google.com with ESMTPS id r17si3970679ilg.4.2020.12.30.08.13.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 08:13:15 -0800 (PST)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::329 as permitted sender) client-ip=2607:f8b0:4864:20::329;
Received: by mail-ot1-x329.google.com with SMTP id w3so15730765otp.13
        for <clang-built-linux@googlegroups.com>; Wed, 30 Dec 2020 08:13:15 -0800 (PST)
X-Received: by 2002:a05:6830:2413:: with SMTP id j19mr41075229ots.251.1609344795027;
 Wed, 30 Dec 2020 08:13:15 -0800 (PST)
MIME-Version: 1.0
References: <20201230154749.746641-1-arnd@kernel.org>
In-Reply-To: <20201230154749.746641-1-arnd@kernel.org>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 30 Dec 2020 17:13:03 +0100
Message-ID: <CANpmjNNGmbgg_pFMC6X_6vZcj53jy7PsNyZAC88rOQC5zrOiFw@mail.gmail.com>
Subject: Re: [PATCH] ubsan: disable unsigned-integer-overflow sanitizer with clang
To: Arnd Bergmann <arnd@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Andrew Morton <akpm@linux-foundation.org>, George Popescu <georgepope@android.com>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wJJqpDxk;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::329 as
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

On Wed, 30 Dec 2020 at 16:47, Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> Building ubsan kernels even for compile-testing introduced these
> warnings in my randconfig environment:
>
> crypto/blake2b_generic.c:98:13: error: stack frame size of 9636 bytes in function 'blake2b_compress' [-Werror,-Wframe-larger-than=]
> static void blake2b_compress(struct blake2b_state *S,
> crypto/sha512_generic.c:151:13: error: stack frame size of 1292 bytes in function 'sha512_generic_block_fn' [-Werror,-Wframe-larger-than=]
> static void sha512_generic_block_fn(struct sha512_state *sst, u8 const *src,
> lib/crypto/curve25519-fiat32.c:312:22: error: stack frame size of 2180 bytes in function 'fe_mul_impl' [-Werror,-Wframe-larger-than=]
> static noinline void fe_mul_impl(u32 out[10], const u32 in1[10], const u32 in2[10])
> lib/crypto/curve25519-fiat32.c:444:22: error: stack frame size of 1588 bytes in function 'fe_sqr_impl' [-Werror,-Wframe-larger-than=]
> static noinline void fe_sqr_impl(u32 out[10], const u32 in1[10])
>
> Further testing showed that this is caused by
> -fsanitize=unsigned-integer-overflow.
>
> The one in blake2b immediately overflows the 8KB stack area on 32-bit
> architectures, so better ensure this never happens by making this
> option gcc-only.
>
> Fixes: d0a3ac549f38 ("ubsan: enable for all*config builds")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  lib/Kconfig.ubsan | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
> index 8b635fd75fe4..e23873282ba7 100644
> --- a/lib/Kconfig.ubsan
> +++ b/lib/Kconfig.ubsan
> @@ -122,6 +122,8 @@ config UBSAN_SIGNED_OVERFLOW
>
>  config UBSAN_UNSIGNED_OVERFLOW
>         bool "Perform checking for unsigned arithmetic overflow"
> +       # clang hugely expands stack usage with -fsanitize=object-size

This is the first time -fsanitize=object-size is mentioned. Typo?

> +       depends on !CC_IS_CLANG
>         depends on $(cc-option,-fsanitize=unsigned-integer-overflow)
>         help
>           This option enables -fsanitize=unsigned-integer-overflow which checks
> --
> 2.29.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNNGmbgg_pFMC6X_6vZcj53jy7PsNyZAC88rOQC5zrOiFw%40mail.gmail.com.
