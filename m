Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBQWWTDVQKGQEB2ZF7WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id A11B09FB69
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 09:20:34 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id b30sf467685lfq.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 00:20:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566976834; cv=pass;
        d=google.com; s=arc-20160816;
        b=pX0didHt7V/jQUvpDb/klJsrJfZ262i98XCSBZmS2gubOZ38AW48uaYJJNnO9Z3DSG
         bCUXh+P/9Dq6BjXprmh11Cn6O/RTwHOoo5qkwMQY0f7LZyuYHw/l5yK8dA5lNZofYW3N
         Q0jx6bBNR2zYOrgAUVtdU5DK4zwDjrwNNtajbFLl+rl5vRPQaNMd2IU2nWzi6CkCsHGa
         yo+QYXE6BpcJZTSYJ8BsMMhA7yTUw3EHqTV7bk7i0eaeEchr96B6Cg7IHOhUOV8H6ocU
         06VcvVsPRZ9AvPgLd14Hjbh5Gsjkt9DkMvDUQ1jwiXNJ63XEXsvNK46tiO7yXXzEZ2bS
         TXzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=1M3VPaLiZvxWhfXrmL4aN87Enc/YhXV+CkXebQSVNWc=;
        b=uXf/shwRLRQ8US1BeKdcb4kzr+HdFtU0JszBPUo75hYWjzxDphUWPNYPXmVpBIbjOx
         8wtwgVwEDe/JRbPFCgPN7R4qK6Y9WqXSRYNjuV0O8PVRpw6rXbutEp/qw77YsbViAe7g
         z2fcNl+acqW+BIvbhTFVgYqnCBVPdJWtx4l4UuLLOX4e87pncL83amNXfeK066uMxUEQ
         IoBRpzmyB3sfPfn82oXoe68rnwaK6WJAZCHb+LFwSFdoGFSF3xpzrCxYlcZxDVINk7n4
         6etoYp9U0JTCz8JpzwrB4tO1IzYUZEyfKjioYbsAu2fjIRdwO6YqQDUQw3MgZcd7DpBF
         PGBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gna4DkQN;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1M3VPaLiZvxWhfXrmL4aN87Enc/YhXV+CkXebQSVNWc=;
        b=dZa6qSunGAyqtvjZNf2Rv0/JCWcwUE19AKtlvIFTxSKCCozkbsaq2L2jX9gPXppcva
         btI/r2b2sbknqy/zgXTGYnuZmbFeJ2ZcURbTq+NIjoRRtkvd36p/DTyPg6dUjt13MKqU
         iHup1YgGuOuXc3lTWuQNRsLXT4SyadXi0Zvdeo5fkjW5ihypWdtu8crsv9Z33FQS1nAG
         DOWadzeYRXyofq87Q9KUARcTMFPWfiL35fy1R0lP+RMWou2FPgfhgvolI9CUF2RF04SD
         sirL6WsllcLX8rmZW389kX9fjdi62WydU+pTPKfXVzqQLnT+gDNdaUv+XYWL0iuDuE2E
         wpvQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1M3VPaLiZvxWhfXrmL4aN87Enc/YhXV+CkXebQSVNWc=;
        b=PJfh6wQgmIl02iNH6AU5pzoNMbcZj/omt0q/cC9m3p2S53B70OE2LaB5ZWqOGVY6F9
         Z3EOAPy/BMaGXOyva+f9HUmoO/eKYRu2dilM9i/cqO6yO908sKO+HGs7Ocx0QE/M6LGH
         BSIjwRHoVYMRN6smdTm5sKJlQYW4TYLPTKSQqeo/SlfU00IbNt88l2ZPteC1Kb5Fo7Fb
         AUf6nhHcEwwzbodgsv+c9zUosQmtUcTgdNFfRwumLD5ZdjnfaIn7BF/82MFl5B5FKvNc
         TJ0V+SESI1MWIAyYg479ss8/hRtu0Wqw8aIoow1mCT41/Bghvs2+EcktkfNeJYNy85LV
         c7zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1M3VPaLiZvxWhfXrmL4aN87Enc/YhXV+CkXebQSVNWc=;
        b=Bt7nZZ7+QIjUEQbuNBbj9ziEJgwYZxftZ5klkRo7kfspV4poFV8tt42CP0SH/lc0AX
         np5JfiM/c/WH/2C/zQ7uzKJOdGpBsc8vNA7ULZAJ7pb9KIcpWNTr6p8KDyzjPmui/T33
         HgvcjYx53o3SiLjTwxUW7msVf4aQvds5sJaijGzvcfru0EdzmLu4at75P5y6u2i9dUCu
         sHK2/m+XNWaj+omECmmbgMilMN7bAIV3zMKdR8WtXf6n9oR9bQwBb3fR2ynHpxz7upBh
         hfLtk3CvS7UnVuu0Gn6YLrvkseIQ/omjjsXZ1pMDVxVtYh32xeMQ19ATNCuy5K9lW8V4
         gTUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWBEIHGpBA8FecEONg53+U+QyvYFepM3oXS0s44eOMPeOnhiTEN
	ur5wj6nXWBVduDVB1qvTj1Y=
X-Google-Smtp-Source: APXvYqyhFjkXdZDHTFs17yU0ivuKgwJzWUnTh1yMA1FRgHI8CdXZYmLtZRJIwR+YN7dMgMCNXVogrQ==
X-Received: by 2002:a2e:9905:: with SMTP id v5mr1216500lji.162.1566976834135;
        Wed, 28 Aug 2019 00:20:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:91d9:: with SMTP id u25ls158129ljg.15.gmail; Wed, 28 Aug
 2019 00:20:33 -0700 (PDT)
X-Received: by 2002:a2e:804b:: with SMTP id p11mr4931ljg.172.1566976833488;
        Wed, 28 Aug 2019 00:20:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566976833; cv=none;
        d=google.com; s=arc-20160816;
        b=v7WJBmD4D5cDk7y5UZE6veWrSGqQepoEsvhW01FP0vK0rpyRF8VIknQ1DkRliQnOuH
         cqKwXLVH5ydfj7+wpj4ui/31axTfrOMMDn9z9UOnVeP3U4HQ4/5rdwhGBwlKUGR01QGx
         Lm0dXI2OKgjP+6WQeOnW57VI9fwvqL7KLyc4QGeZlhvkKu0/xCaDkXeXR5JuoTDPyrd1
         oifQmDGcFLEsyrxctYng62P6Un5dOKEc7o7yGg2NLOtvP9CVTULmwjtw6lbD7lWYbVQC
         ne/UFaEu1tSp/G70hLcHMR0QehVDnlWGnTK+NSezRE1cZvRuc4fHiYJfux93KtSDpgVz
         9XhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=m/1xpIzC+XYlVD64Z0IJa2mF9XyPRy3AeZIkoZXGzMo=;
        b=YTZ78RJXxJCeFZ4YreIv+JGYcSftsUv1+1kUHAbeJ+7qW3TIUdMMJf9ULFGL3wZIKA
         hmL+ExFv3r/2DLnyiYIQ3BSNkenmvkdgtbpfyWY/iRYKgssi/z76m4usgtVs/4/l31u+
         elLL9QaOHmu01lTCdWUNFLH59BlERzdOCBiYdLJaaKc+xMFaZCdCebo5+yA9RwohpIN6
         x4ui1sA6wQYUtv50ALe9QfROGNlsGTungUt+dUX79Wka4lxkOL38gHVmmqnRZyVdoDyx
         /WK/3xaWm3oHl1DO33tHjGjt0JsZ+BHbltYGUSTCUBvcBjxg9DhZMUu0EK3PCAX5DOrU
         QpyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gna4DkQN;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id m20si74835lfh.1.2019.08.28.00.20.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 00:20:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id d16so1652132wme.2
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 00:20:33 -0700 (PDT)
X-Received: by 2002:a05:600c:225a:: with SMTP id a26mr3045439wmm.81.1566976832798;
 Wed, 28 Aug 2019 00:20:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190828055425.24765-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190828055425.24765-1-yamada.masahiro@socionext.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 28 Aug 2019 09:20:21 +0200
Message-ID: <CA+icZUWigJkh-VtJc4=xE06oMgE=ci2Mfdo2JaDv0fth8PKH+A@mail.gmail.com>
Subject: Re: [PATCH 1/2] kbuild: refactor scripts/Makefile.extrawarn
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: linux-kbuild@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, Michal Marek <michal.lkml@markovi.net>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gna4DkQN;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Aug 28, 2019 at 7:55 AM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> Instead of the warning-[123] magic, let's accumulate compiler options
> to KBUILD_CFLAGS directly as the top Makefile does. I think this makes
> easier to understand what is going on in this file.
>
> This commit slightly changes the behavior, I think all of which are OK.
>
> [1] Currently, cc-option calls are needlessly evaluated. For example,
>       warning-3 += $(call cc-option, -Wpacked-bitfield-compat)
>     needs evaluating only when W=3, but it is actually evaluated for
>     W=1, W=2 as well. With this commit, only relevant cc-option calls
>     will be evaluated. This is a slight optimization.
>
> [2] Currently, unsupported level like W=4 is checked by:
>       $(error W=$(KBUILD_ENABLE_EXTRA_GCC_CHECKS) is unknown)
>     This will no longer be checked, but I do not think it is a big
>     deal.
>

Hi Masahiro Yamada,

thanks for your patch series.

If KBUILD_ENABLE_EXTRA_GCC_CHECKS does extra(-warning)-checks for GCC and Clang,
please rename the Kconfig into...

KBUILD_ENABLE_EXTRA_CC_CHECKS

...or something similiar (and maybe with some notes in its Kconfig help-text?).

Regards,
- Sedat -

> [3] Currently, 4 Clang warnings (Winitializer-overrides, Wformat,
>     Wsign-compare, Wformat-zero-length) are shown by any of W=1, W=2,
>     and W=3. With this commit, they will be warned only by W=1. I
>     think this is a more correct behavior since each warning belongs
>     to only one warning level.
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
>
>  scripts/Makefile.extrawarn | 104 +++++++++++++++++++------------------
>  1 file changed, 53 insertions(+), 51 deletions(-)
>
> diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
> index a74ce2e3c33e..1fa53968e292 100644
> --- a/scripts/Makefile.extrawarn
> +++ b/scripts/Makefile.extrawarn
> @@ -1,14 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0
>  # ==========================================================================
> -#
>  # make W=... settings
> -#
> -# W=1 - warnings that may be relevant and does not occur too often
> -# W=2 - warnings that occur quite often but may still be relevant
> -# W=3 - the more obscure warnings, can most likely be ignored
> -#
> -# $(call cc-option, -W...) handles gcc -W.. options which
> -# are not supported by all versions of the compiler
>  # ==========================================================================
>
>  KBUILD_CFLAGS += $(call cc-disable-warning, packed-not-aligned)
> @@ -17,58 +9,68 @@ ifeq ("$(origin W)", "command line")
>    export KBUILD_ENABLE_EXTRA_GCC_CHECKS := $(W)
>  endif
>
> -ifdef KBUILD_ENABLE_EXTRA_GCC_CHECKS
> -warning-  := $(empty)
> +#
> +# W=1 - warnings that may be relevant and does not occur too often
> +#
> +ifneq ($(findstring 1, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
>
> -warning-1 := -Wextra -Wunused -Wno-unused-parameter
> -warning-1 += -Wmissing-declarations
> -warning-1 += -Wmissing-format-attribute
> -warning-1 += -Wmissing-prototypes
> -warning-1 += -Wold-style-definition
> -warning-1 += -Wmissing-include-dirs
> -warning-1 += $(call cc-option, -Wunused-but-set-variable)
> -warning-1 += $(call cc-option, -Wunused-const-variable)
> -warning-1 += $(call cc-option, -Wpacked-not-aligned)
> -warning-1 += $(call cc-option, -Wstringop-truncation)
> +KBUILD_CFLAGS += -Wextra -Wunused -Wno-unused-parameter
> +KBUILD_CFLAGS += -Wmissing-declarations
> +KBUILD_CFLAGS += -Wmissing-format-attribute
> +KBUILD_CFLAGS += -Wmissing-prototypes
> +KBUILD_CFLAGS += -Wold-style-definition
> +KBUILD_CFLAGS += -Wmissing-include-dirs
> +KBUILD_CFLAGS += $(call cc-option, -Wunused-but-set-variable)
> +KBUILD_CFLAGS += $(call cc-option, -Wunused-const-variable)
> +KBUILD_CFLAGS += $(call cc-option, -Wpacked-not-aligned)
> +KBUILD_CFLAGS += $(call cc-option, -Wstringop-truncation)
>  # The following turn off the warnings enabled by -Wextra
> -warning-1 += -Wno-missing-field-initializers
> -warning-1 += -Wno-sign-compare
> -
> -warning-2 += -Wcast-align
> -warning-2 += -Wdisabled-optimization
> -warning-2 += -Wnested-externs
> -warning-2 += -Wshadow
> -warning-2 += $(call cc-option, -Wlogical-op)
> -warning-2 += -Wmissing-field-initializers
> -warning-2 += -Wsign-compare
> -warning-2 += $(call cc-option, -Wmaybe-uninitialized)
> -warning-2 += $(call cc-option, -Wunused-macros)
> -
> -warning-3 := -Wbad-function-cast
> -warning-3 += -Wcast-qual
> -warning-3 += -Wconversion
> -warning-3 += -Wpacked
> -warning-3 += -Wpadded
> -warning-3 += -Wpointer-arith
> -warning-3 += -Wredundant-decls
> -warning-3 += -Wswitch-default
> -warning-3 += $(call cc-option, -Wpacked-bitfield-compat)
> -
> -warning := $(warning-$(findstring 1, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)))
> -warning += $(warning-$(findstring 2, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)))
> -warning += $(warning-$(findstring 3, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)))
> -
> -ifeq ("$(strip $(warning))","")
> -        $(error W=$(KBUILD_ENABLE_EXTRA_GCC_CHECKS) is unknown)
> -endif
> +KBUILD_CFLAGS += -Wno-missing-field-initializers
> +KBUILD_CFLAGS += -Wno-sign-compare
>
> -KBUILD_CFLAGS += $(warning)
>  else
>
> +# W=1 also stops suppressing some warnings
> +
>  ifdef CONFIG_CC_IS_CLANG
>  KBUILD_CFLAGS += -Wno-initializer-overrides
>  KBUILD_CFLAGS += -Wno-format
>  KBUILD_CFLAGS += -Wno-sign-compare
>  KBUILD_CFLAGS += -Wno-format-zero-length
>  endif
> +
> +endif
> +
> +#
> +# W=2 - warnings that occur quite often but may still be relevant
> +#
> +ifneq ($(findstring 2, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
> +
> +KBUILD_CFLAGS += -Wcast-align
> +KBUILD_CFLAGS += -Wdisabled-optimization
> +KBUILD_CFLAGS += -Wnested-externs
> +KBUILD_CFLAGS += -Wshadow
> +KBUILD_CFLAGS += $(call cc-option, -Wlogical-op)
> +KBUILD_CFLAGS += -Wmissing-field-initializers
> +KBUILD_CFLAGS += -Wsign-compare
> +KBUILD_CFLAGS += $(call cc-option, -Wmaybe-uninitialized)
> +KBUILD_CFLAGS += $(call cc-option, -Wunused-macros)
> +
> +endif
> +
> +#
> +# W=3 - the more obscure warnings, can most likely be ignored
> +#
> +ifneq ($(findstring 3, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
> +
> +KBUILD_CFLAGS += -Wbad-function-cast
> +KBUILD_CFLAGS += -Wcast-qual
> +KBUILD_CFLAGS += -Wconversion
> +KBUILD_CFLAGS += -Wpacked
> +KBUILD_CFLAGS += -Wpadded
> +KBUILD_CFLAGS += -Wpointer-arith
> +KBUILD_CFLAGS += -Wredundant-decls
> +KBUILD_CFLAGS += -Wswitch-default
> +KBUILD_CFLAGS += $(call cc-option, -Wpacked-bitfield-compat)
> +
>  endif
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828055425.24765-1-yamada.masahiro%40socionext.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWigJkh-VtJc4%3DxE06oMgE%3Dci2Mfdo2JaDv0fth8PKH%2BA%40mail.gmail.com.
