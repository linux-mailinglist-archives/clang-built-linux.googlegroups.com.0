Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKFW5OEAMGQEP3MCOXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F163EDF60
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 23:39:52 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id x18-20020a5d49120000b0290154e9dcf3dbsf5876824wrq.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 14:39:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629149992; cv=pass;
        d=google.com; s=arc-20160816;
        b=QHvQW9wfEL0QxWO5l0i7nB32WgIVuN2Bbm9b7VLq1fA5NlO24C7mN0biQz4lfbWI89
         uLDkO0d9oopE7xcGNtpZ6zID/ggo2Ra88BaFh2GX1t0DwLgAK/cR/XTYl/EdvwTh67oT
         86WWDcFy8CPDg7ie0a1LWNM3xIfL4UoEYgJNNd6mIvsif3+E75qwzXBgfX1fMCs+A6u5
         Av1dkn7AvHxD6N/+H2s5ZpgZHBr0jo5J3dUR/iFJkyxvyskHaTF7KbMqrmfBxtIrjme4
         vk5eF8XvD2jxGe0fw92Z5QQwqs20IuYXYBWsjge/P07JfAEmXeC4F39W+h+ASLGySm46
         TehA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=yQjWk9rOclL0K9jLYfWQwMFjp3+zkWCvXegbHJQHxHg=;
        b=ET2qzreofAZgR646ZR7D6l4K3iijhQ/LiQ1Dfr2H3DjDnb4b1PDChjwjF0QfjcNo3V
         7+Lws1PN7GDhj3biDor9BHtQSJd5rQfL2WxgQvVuiU/vMuDJjXdvr5E2Qz54zUBZdr9u
         ckzoVsCgTOm2tKk2a8JUf+F2RxW89rIn8X0qcXJyhQb2RA8saxZB0hGhGt+bhk+Dxy98
         NxXrObg/Z8L48Z91/2yHMZCPsbK4/mns1umsc0RLzzDxgoo4UkkOxdacDWI2LL3Qd5PP
         9h1EajDiYmMEZ/hYV8+ayHl0AY765te4Qydn4bZNQCS2chwPb/DaGngEUoOkXGJ5/9Lf
         TMIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HPJ3a93P;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yQjWk9rOclL0K9jLYfWQwMFjp3+zkWCvXegbHJQHxHg=;
        b=IZ/wwqQdEGIR3Tkv9zleyj84ndp4SAPP+E5R/VGY8iQpOqItXccH88/L7ltVpJV6hG
         DGpfojLLmcLtHChktFpxgieaFy9mH7Ru/g/jmWPg7TMKonx6t8Ef4R7ekLbmPseDP5CN
         VqWIu2I7jbMVkM44i9T4S3DvLYdnXCCwYrVIV7UMByq1lraKAHNWn5DRC8mu2L/RjVsL
         UNq7L1qyNF+28dkxtRuuBn8p6r0APwgC3GRJTJUS4Ivr4KyYfUeu4Y5Njen3UuF74Iuo
         EYSNBs6togGHgtM1uR/4Ciel6U4Ji+Fqrm/71r3Nyil+WPRTzpuvsY8+cT5sp2qG3gtv
         BVoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yQjWk9rOclL0K9jLYfWQwMFjp3+zkWCvXegbHJQHxHg=;
        b=tNjPB5QrEKQIDhJ1vvZ2U2Zd6At8o0B3Iz/nKnOmXgh/ryATxih3K4nyH9eMMn8CkA
         Hq+cmENgtF5oVsv1RTMX3/eWBkyoQAyyVrOHZo+yTsK0AzPZm4xS5UlLFMqHJdGpaSnl
         jpuLnMLIAgJLB7BSin1SH7Un1/Ty25ZOzTwdZ3xSsBLF+YSPdjm+1VNX3GnWoMKETXD7
         kFKiGoYpIWzwUgeQVqSIP8XAKWlUSiER0OXP8WOQorLqKRymS1AmZJ0JcTXRsN6MUfXC
         lc61BWRwqk13gt4bO+TdwMsC/CnUWYNzp6om6P4pgEBTg7XR4sFjaTSw6sIcxRrDT+6c
         ifzg==
X-Gm-Message-State: AOAM530ly9WL376PY8CGOvF3lLI/BXe4y7GPKm+v2wntxM/hvH1rt12B
	frjbeBr995jJXu++ARQ1h9k=
X-Google-Smtp-Source: ABdhPJwKkFh7DWCP8GAztrcfyp7Ve2ahN+XIe+Xk8WvBJ8Iq1PR5HHLYdzWHNuPJGhPJwFKcXkfZjw==
X-Received: by 2002:a05:6000:9:: with SMTP id h9mr160366wrx.396.1629149992327;
        Mon, 16 Aug 2021 14:39:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1:: with SMTP id g1ls3897wmc.3.canary-gmail; Mon,
 16 Aug 2021 14:39:51 -0700 (PDT)
X-Received: by 2002:a1c:4a:: with SMTP id 71mr214446wma.87.1629149991493;
        Mon, 16 Aug 2021 14:39:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629149991; cv=none;
        d=google.com; s=arc-20160816;
        b=oTzZuZnI73ukUC4PqdZnK+NNw1SP4Vin+v+OmYBGhaCde7+B/vRhvTRbS3DG96nwFt
         /3XFYSoRDvQ4eiSmLsami1NnjIk/93SNtYJvRxAY93IYeIw15YnqxLUUp9ELY0MBZZ4Y
         20MPUkQcGDkFdKn/7/76B0mWaDQwIPrMc0vGXp0elimq3rNXUdxEHZdB/LjH+Z/C88wk
         9FebMxEQefKw2eJlehIFoZEHTq1YhTiba1vix1V2PLFLk7IcYKTvNzmGbr39gBAhlOud
         nxhNpNyy0u6UeL4Y9HLpFUma1W36SrVzcRTWMKVDVoWo7pKkbJjUWReFXn4Bnl/IOCH7
         Y3Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SGcAQINMauR3fG/B1eqlh1AWzF5L+XVU1Fpb6Li0xOk=;
        b=rv2hlpTK31/c0M29dykmNYxVgQGpRRYQ3HIBtGLbxEmA9Jh4s4i2DKoXWhAuqI8HaL
         awfGztRhYlIxY8IHNZU07aswlxeilVfOJp5IL8D5xUG1UWsNIULWFxWU/4bD5QmDvU+6
         PRuC1TJphlLvGzYxtAyaB0cF6ger/BP5lBf/AgsLZa3e2M7QeCwjA0qQZFngoNrSDKU8
         faT9NuQOVvN051FrMetBkl91oDSSoUgEgB+vry9xx8habP5sQpb9YktvTtefDEIpQyqs
         OiJ84AjKcSW0weCRArgDp/a/V7ClICYBwpBcRbJGjxfufVzLlG4wcJUdjJ4G4FDG65HT
         NSZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HPJ3a93P;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com. [2a00:1450:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id v10si13151wml.2.2021.08.16.14.39.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 14:39:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) client-ip=2a00:1450:4864:20::12c;
Received: by mail-lf1-x12c.google.com with SMTP id i28so10537543lfl.2
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 14:39:51 -0700 (PDT)
X-Received: by 2002:a19:7603:: with SMTP id c3mr270464lff.543.1629149990588;
 Mon, 16 Aug 2021 14:39:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210816202056.4586-1-nathan@kernel.org>
In-Reply-To: <20210816202056.4586-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Aug 2021 14:39:39 -0700
Message-ID: <CAKwvOdnZqFEpaCXyjkWE47jO_bNfuNDoZKTafcHHakbh=pzZ9w@mail.gmail.com>
Subject: Re: [PATCH 1/3] kbuild: Remove -Wno-format-invalid-specifier from
 clang block
To: Nathan Chancellor <nathan@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HPJ3a93P;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c
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

On Mon, Aug 16, 2021 at 1:21 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Turning on -Wformat does not reveal any instances of this warning across
> several different builds so remove this line to keep the number of
> disabled warnings as slim as possible.
>
> This has been disabled since commit 61163efae020 ("kbuild: LLVMLinux:
> Add Kbuild support for building kernel with Clang"), which does not
> explain exactly why it was turned off but since it was so long ago in
> terms of both the kernel and LLVM so it is possible that some bug got
> fixed along the way.
>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

I ran a few builds with this patch applied and didn't spot any
instances of this warning. We can always bring it back if necessary.
Thanks for the patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  Makefile | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/Makefile b/Makefile
> index 891866af0787..3900f5824721 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -777,7 +777,6 @@ KBUILD_CFLAGS += $(stackp-flags-y)
>
>  ifdef CONFIG_CC_IS_CLANG
>  KBUILD_CPPFLAGS += -Qunused-arguments
> -KBUILD_CFLAGS += -Wno-format-invalid-specifier
>  KBUILD_CFLAGS += -Wno-gnu
>  # CLANG uses a _MergedGlobals as optimization, but this breaks modpost, as the
>  # source of a reference will be _MergedGlobals and not on of the whitelisted names.
>
> base-commit: f12b034afeb3a977bbb1c6584dedc0f3dc666f14
> --
> 2.33.0.rc2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnZqFEpaCXyjkWE47jO_bNfuNDoZKTafcHHakbh%3DpzZ9w%40mail.gmail.com.
