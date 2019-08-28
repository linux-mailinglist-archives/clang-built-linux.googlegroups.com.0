Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZEETTVQKGQESUS2NGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4E4A0DAA
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:38:29 +0200 (CEST)
Received: by mail-yw1-xc38.google.com with SMTP id k21sf1066857ywk.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 15:38:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567031908; cv=pass;
        d=google.com; s=arc-20160816;
        b=toiOgyhYugA2qBdQEiU08vA3B81vB3zzCivBzN8ksXfbwgLicUaxBu9lUTXpfnH9L8
         2IQnKoW02wN02jZ94J0SFPLnZP3O1Mlf1S7ZH/Y0CY3QkST6VAPts6si9W/VhN0M/s2R
         MBVOzFeixYboMyd5tS69Tlyjm+bIc2u+NtY7lgbomGBm8wEAx+5gh5UiQ86cuWpA/+It
         5ndf6Cp7MeymZTl/MC/wgqm7M7D+9ji4RaPJGcFS7wfo/LmxR8fos0dMaCM0kMZq2MrC
         qh65NwxtBgsxptD9vlLOCfg9PPQPpHcubLWkktLSndFQZkrPpU4kFMBLmUj1uCsgs8gX
         qQ3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wpqaMYjcY4VlpNvvYZD6yio9x4pcVPdHgCZDiIlCi7g=;
        b=GOb/raOe+xoJIlzlIjf6ewBrpqdK03lumXb58DQzi9CbsnznA/Hu8rtKeag5+Fa824
         jqlA9HCPoG8e7jRjGG54qPA7O5Ot74/OB2efq4Q1AXyE7OavPXrmtsRw0Hr+OIiijp+Y
         3hp/xLeCxDnumQiklh7ptV6CFpLCvr/QOGN+BPfyxKctnBVw8fTq7KMZNPWpQML/4Brn
         FZcs3KM13qo1DNCLTXmIH4WYfjsiMeUfebSk09gn4VRHcDNNjMk2pvpydWKL1c6UyfW8
         XMFaTJxAVZW5CCdl+4R650C+gkjgVfFk26NfJFnEQ7jqzBNnp6BLEtBLJnM3VO6Moy1I
         yrTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="IKxFKuX/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wpqaMYjcY4VlpNvvYZD6yio9x4pcVPdHgCZDiIlCi7g=;
        b=c+qXCqU597ES+mWhqydV4xw0mvz/36X7WZuy1Ri1Gh7JMJx3ClQTQUzxgI+CqpUGG9
         PktN43u9dk95u9EMj4qGKncgzLWeq0v3m66HeyDqjhKclwH1BpZLk9ZfpDWRHROP2evi
         DJaP8nmAMyRn4Exc5lPWS9Hx1O43xnqf4f+CaFg6s5olTgZ34L4pR530P5cBJss3Z/G0
         Va5jwVbosk8rF7tC4CRNmldgqoCrDKTFmZCe5PFlgOGKJ4rkMdmqCJ7hPeJGZ5GGSQX9
         P7HRS9u4Osh/D6noCB4MbI9JO8xn+Dj96xlVMj/W6oCFqT1XgFXgkKjJZuXN1QMFgbSl
         CGEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wpqaMYjcY4VlpNvvYZD6yio9x4pcVPdHgCZDiIlCi7g=;
        b=iElvCyFlgKKD/+U72P6kXVxzAK6of1Q5js6Bn9t6K/NFKcQjVguPS55Fy9qG+qr7o5
         NOboKecu554lckt3WxJ8fZaIWtsI1q16TcXdxqgpWPRGj6UV9LI1OKWwcXBN+qBwUoEq
         ISHbS3BXNnvdwqT90EPc3bO4ENWt7WiEOdtTyFmLBurez7fY0iWFMckW904F5VopxIv0
         ArMrF4Y6O+UbbFz3ULxtgefoQ9zjkaXqPlnHl3VTqm3aUPmIRF7xSLh10fCvWd3lyaOb
         ykjJBx4vtLRUM0gj0imFg3MHCOWjkyYYml3mNGfDEpQt9ULMIzmRxLN74GTh5iv1h+tG
         cn0A==
X-Gm-Message-State: APjAAAX/1fFjMJofT9M19TJYfwseqyN+JUkRm2HPZ+3TO9PPUoPQOPmJ
	xwS6imX99RmAkT+AY71hoRU=
X-Google-Smtp-Source: APXvYqzNt52mfPu2pCxpAzzWSR4d6zYCdOClMPaEF6VdfwWXcA/WSUxJj0g6lDNRgXLhRthG75nsDA==
X-Received: by 2002:a25:c8c4:: with SMTP id y187mr4672678ybf.281.1567031908658;
        Wed, 28 Aug 2019 15:38:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:df86:: with SMTP id w128ls84943ybg.16.gmail; Wed, 28 Aug
 2019 15:38:28 -0700 (PDT)
X-Received: by 2002:a25:b489:: with SMTP id o9mr4855639ybj.229.1567031908463;
        Wed, 28 Aug 2019 15:38:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567031908; cv=none;
        d=google.com; s=arc-20160816;
        b=b4YNk+5yqseBnh5fe62b/IjJ2BaOvk9nkbJn+szbNiqN30Jx0aQxuT9OmpOLxKSRXa
         y8aBXFTDLo6Xrfi7SuxNcMtSMEdPI4o2ErKqQy3CtAxovGlSze7vY3OEW9GI9ghGv7Wl
         WGz/cCp7Etsxqn23KE1r0uGoAySrSbWFTjJpBZKlpegcbSacIa4kBsEk6h85wWq/rjDL
         MXs3fx3rxEaAIgCRarNMgU6I845HIfUWl/CGmn4OvVteaZVp8Deon/dwUNahGq6M7n2e
         4ndj9bwljtcoAOS/qCrOVyxN5Pz/R4i7xAaLwUXDPunBkWe7HqO77UvTztzV2Yo8SqQu
         ASRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Bu9OOhELnfJg8/oQexJ+kW+4EUent3eZnfgOh/MjmqQ=;
        b=ijP5/hW/dPUonQDdGw52IVwgiWSULee5qLbkL9Z4LkvIGYhacqAHK9j9bzdtpEUsts
         I3L9HD3/UQLRnMobTG/KG+EG3UNgKSH/jRcRDzuP5FcrKvn2oPJr//kr6k3/3w+YdQ8J
         vTthB5PFAytecLQv+bt2oP18FYBZk4P4IgtJ5GiOEa9G7/jXePj1VSyRcPFg9WIADdrc
         82+z2Hqiem2VolubIluiveAgfymrrQs80yFY6TjN6dwpQx1xYCKEYvjRFgT9dYTYR2eP
         iMtP6aN8X0JQl4JH1duARHDeflCE38Eis3UvZ0gvD5JKS4pNR1xMWOYdvvVMimNHY4GA
         Kmeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="IKxFKuX/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id r134si62299ybc.4.2019.08.28.15.38.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 15:38:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id o13so453723pgp.12
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 15:38:28 -0700 (PDT)
X-Received: by 2002:a63:60a:: with SMTP id 10mr5401454pgg.381.1567031907022;
 Wed, 28 Aug 2019 15:38:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190828055425.24765-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190828055425.24765-1-yamada.masahiro@socionext.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 28 Aug 2019 15:38:15 -0700
Message-ID: <CAKwvOdmFjOMPW3_V+2ZnYFUyjWWuW2919cCk=ePn30f2szsi2g@mail.gmail.com>
Subject: Re: [PATCH 1/2] kbuild: refactor scripts/Makefile.extrawarn
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="IKxFKuX/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Tue, Aug 27, 2019 at 10:54 PM Masahiro Yamada
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

I find this part of the patch exceedingly confusing, and I think it
mistakenly changes the behavior of W=2, W=3, and W=4.  If W != 1 && CC
== clang, then disable some flags?  What?  So W=2,3,4 those are
disabled, but at W=1 are not?  Didn't the previous version set these
unless any W= was set?

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


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmFjOMPW3_V%2B2ZnYFUyjWWuW2919cCk%3DePn30f2szsi2g%40mail.gmail.com.
