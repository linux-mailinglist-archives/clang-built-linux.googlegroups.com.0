Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBG6U3ZAKGQEPWVDOGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3b.google.com (mail-yw1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2E016069F
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 Feb 2020 22:07:18 +0100 (CET)
Received: by mail-yw1-xc3b.google.com with SMTP id c130sf11552928ywb.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 16 Feb 2020 13:07:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581887236; cv=pass;
        d=google.com; s=arc-20160816;
        b=LSkvAIbPNuVA4cuN+6A+4AGNFfotWg21HHMUYxG705Du7VfvFN6xVV79m4noyUQMLy
         YZBqcm+39BSgP7o4i1tmVhZVhi1QUCtIU711gz8s/fDJje6oYL2hVpsCy7hIEL9ZI3MH
         K5c11AZ9WUVkIghqMEBA/URHvRYh0kGO9NB+oniwbm/r7mrabvhmO11Z+EDTJ/QY/HNd
         vd9DWjpJzQM99uO/3nI9l29vXqA42+TPz/R4olhfXNzcdLbupR2zGWScHYeoTaySmF7x
         uSQyPUOP+9F5or0YjLLH8e4Wtwc36bNrUWwPYOrql/NoB4hmo8HaDK59PFdhG3wHFzn5
         GedQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2ti/0QXXD2qgcPLlAE4Ay4EEyK4IwJNwllKozrbpJgc=;
        b=OUAtDGeuOCPtzqo/QlH6BXhFyGJFDshmtWRu2jjErzN4SsULxdh0YdB9l/GY7ngmYB
         iUZjGKCk+2gFHD/Xm9/GqomDcABtMKSHyueUN8d+4o2KkrbJc2wi0u9wC2FWmbY5SUCl
         /+r7nBYupHoe2lrOl+0pLTloEdKdpwXkXbK+kbCF/8zfM9ke9+tcBiKAht1oOpZ3yHzw
         U18tewU3GyOj84hFplZVeQAGtG6gzPkPWZE75hbwjnCUWlQfkFIqk7ZeeoZ81EJcaabg
         8ZF1bu34LnQ1hqFBOe99L8ciUOKLb2/lGmeES3+Y9w+cESIATEnynSdLXgAEXGRjwFLd
         bo0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DFUsTe4N;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ti/0QXXD2qgcPLlAE4Ay4EEyK4IwJNwllKozrbpJgc=;
        b=Fkf3G/s7zp5ovAsmlNfb+TmYULAdklDb+JBu+wiPT5cXo0dvQ6p+fDg6ElOvRGhqw+
         2YjZxBL6w6bV1LyAfskaSKEq96r++zJWPwX32kvxOo2ALPbrl2wpRLqG3iwiHKB75ZaU
         7SIOa/TvlnCJFHyYg3HwgbfIQjmrVrLeT7ubBkE1pF0hfPxjATevOoeHns+gGTNtHwJP
         PkoKK6+3s6gsnYmTLgGWE5S76zV/aRW0fo1/qKLS+t7nzMSvSAKwcRuwDOkpHxhknUkn
         dJOz6rzuZtoD75j3lviHrLe6bdOA7d7KqlkHsz6XfwKwEjbr6NRntziFBMwuD2ByP8So
         dJVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ti/0QXXD2qgcPLlAE4Ay4EEyK4IwJNwllKozrbpJgc=;
        b=G1f4xm+yzS0t8lX7kjNI1b0q+YE22/dTWGVQ2qVLrr8f4sq6G/u3l2UmG5Ju3tYRzY
         2ytEqwkjfhEJUprFDbSNxNSv8RF9PXjXrwjNKhsZq2TH6/D98fiFxPJWJjQXoHkUh6Ij
         SgTgRKdbs7GJVvV404OniVCbvvn//CcUHA0YdL9MPZWkGOneBHtdsiGfmn0TzPV3snot
         YyPdDt6Y1UJ858oh5s7zOCuuas+19WbsBu8Yt7ohz4BzRC64IZwnqTgbH2MAJhvLaWMt
         fWgn/kkt/PvhW9IPxTMbqLp4//KilFIPMgLeRjpkfbBrDLo4NWMeG2uj6sfMvZOII0HZ
         mJ1g==
X-Gm-Message-State: APjAAAVQgP/460egMOa7qgGYG3NzImgYxTdbE1PN+7DwvENck4iydrPL
	92QElhti83lTC2DtmJq7gCc=
X-Google-Smtp-Source: APXvYqw5Jqb7TcDZlQMPJBlk9z9GkGaCkyRH86ettqfb/WyM5Azj2515Hdqf9965nNF1wK/5yRKx7w==
X-Received: by 2002:a25:d346:: with SMTP id e67mr11785761ybf.108.1581887236693;
        Sun, 16 Feb 2020 13:07:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:4ed5:: with SMTP id c204ls1591595ywb.6.gmail; Sun, 16
 Feb 2020 13:07:16 -0800 (PST)
X-Received: by 2002:a0d:dd83:: with SMTP id g125mr11565163ywe.396.1581887236225;
        Sun, 16 Feb 2020 13:07:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581887236; cv=none;
        d=google.com; s=arc-20160816;
        b=SaYEjtCCArQCNCCL7Z78ZAt2fTs5GXWIcv1J42cQ1T6kIWNN7bzkiFRq1Ty42Lz0uH
         IczRaSFSouBlbE6H3sfNfnqu8iP4RzlJZ8vKDhLhGdcDYlEolpKerLFHYdnvsWBzLip3
         Aziq5IrB5mP+X919kyJDsSzAGhyGRr5ud0pcjnGpYY3rz/PkKYMrjdsJVrhMcPBeIsCj
         rs0VE68Q8ZXMZTfSk8Wl0FcxG2v27ab40XYgsdPO43HoJHg71Q7KWziAJF59FN96rlaj
         ucb4HEBUrTrG0qGy3BNHciWgJEZNvVbw2c/WYXE3lfJ9ouwXetnuwk++eOneUYM8afk6
         tE7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KhAM2IxlCEEPIX5FUelQ2p4r+M1/1BoV7HhLLv/Wars=;
        b=RWCYPjw4SWrKLjVxlWMX7IAqlvMVse7raNsPxq/0IPc5Tv4erVsOxYwL2uqnFQQpHZ
         IenNrzpCrMJsPCzG6Lgc+/LAMfOY18R5GL2xj/cHzMyKbmdarAkApMbGsRhs3s9QjDpI
         aAIYPpxJ0WZqJqfPrZuGnz+jQDql5tFS3FGVKe+uORIo7m/aMjwHd8qxAI9Y3okqPTEc
         s8eFA7DXLFp2LIaEp/kMHLEDsb17VgQ1P2LlK1FLN1Ie4cr3TNC1VQ9KFC4RytDnSqW+
         yANoYwuA7Ocl2AP++N0MsLpSA1a0vPR1yZXmLYsYRY1Yq4uyzYvHY4wMKSBs0SWLDtYs
         r/KQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DFUsTe4N;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id l1si289526ybt.2.2020.02.16.13.07.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Feb 2020 13:07:16 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id b22so5874653pls.12
        for <clang-built-linux@googlegroups.com>; Sun, 16 Feb 2020 13:07:16 -0800 (PST)
X-Received: by 2002:a17:90a:7784:: with SMTP id v4mr16473278pjk.134.1581887235046;
 Sun, 16 Feb 2020 13:07:15 -0800 (PST)
MIME-Version: 1.0
References: <20200216151936.23778-1-masahiroy@kernel.org>
In-Reply-To: <20200216151936.23778-1-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sun, 16 Feb 2020 13:07:02 -0800
Message-ID: <CAKwvOdkqZ2UpykUh-=axErZAVb8AjBGdPORSgVXqJtiv=tB05g@mail.gmail.com>
Subject: Re: [PATCH] kbuild: remove cc-option switch from -Wframe-larger-than=
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DFUsTe4N;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Sun, Feb 16, 2020 at 7:20 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> This CONFIG option was added by commit 35bb5b1e0e84 ("Add option to
> enable -Wframe-larger-than= on gcc 4.4"). At that time, the cc-option
> check was needed.

Indeed, the oldest version of GCC 4.4 on godbolt.org; GCC 4.4.7 supports it.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> According to Documentation/process/changes.rst, the current minimal
> supported version of GCC is 4.6, so you can assume GCC supports it.
> Clang supports it as well.
>
> Remove the cc-option switch and redundant comments.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  Makefile          | 2 +-
>  lib/Kconfig.debug | 3 +--
>  2 files changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index 84b71845c43f..8f15926b83bb 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -728,7 +728,7 @@ KBUILD_CFLAGS += $(call cc-option,-fno-reorder-blocks,) \
>  endif
>
>  ifneq ($(CONFIG_FRAME_WARN),0)
> -KBUILD_CFLAGS += $(call cc-option,-Wframe-larger-than=${CONFIG_FRAME_WARN})
> +KBUILD_CFLAGS += -Wframe-larger-than=$(CONFIG_FRAME_WARN)
>  endif
>
>  stackp-flags-$(CONFIG_CC_HAS_STACKPROTECTOR_NONE) := -fno-stack-protector
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index 69def4a9df00..fb6b93ffdf77 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -266,7 +266,7 @@ config ENABLE_MUST_CHECK
>           attribute warn_unused_result" messages.
>
>  config FRAME_WARN
> -       int "Warn for stack frames larger than (needs gcc 4.4)"
> +       int "Warn for stack frames larger than"
>         range 0 8192
>         default 2048 if GCC_PLUGIN_LATENT_ENTROPY
>         default 1280 if (!64BIT && PARISC)
> @@ -276,7 +276,6 @@ config FRAME_WARN
>           Tell gcc to warn at build time for stack frames larger than this.
>           Setting this too low will cause a lot of warnings.
>           Setting it to 0 disables the warning.
> -         Requires gcc 4.4
>
>  config STRIP_ASM_SYMS
>         bool "Strip assembler-generated symbols during link"
> --
> 2.17.1
>

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkqZ2UpykUh-%3DaxErZAVb8AjBGdPORSgVXqJtiv%3DtB05g%40mail.gmail.com.
