Return-Path: <clang-built-linux+bncBDTI55WH24IRBONMZTVQKGQEFQNWNCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7ECAC410
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Sep 2019 04:30:18 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id o75sf3251807vke.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 19:30:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567823417; cv=pass;
        d=google.com; s=arc-20160816;
        b=L+hj1HHyWR5ngEKg4EMz+gGW/b072G1FlT2soVnK8P7Y/GTCnWkkELzjTSCHDxxmGI
         257VSMGHtQiqjgEioS3NEVOcDrlaLsYfFkFq0g+dor6Ihs/GCV/YRdkxoZj1jPUZO8To
         g6HM5NylSTU2zh/MgROBERsw4+mX/6dtj6u58unvoPRuNvIkbPZ7+i7HWz8z06okONff
         BMrZ1vAAygApn7G6z/GFtfeLoBzXdqU3h0GCkg4OTBcoJK6ChAgcjywkgHpnnO4ppSz+
         9REptvCcEa6c4SX8Dg+MHQMVRdfbSsWdYzXuzKdsv65nJ39QPlJ/9odyDgO8WbPfMtfU
         psYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=xIZqShuWGtcfNct2XFlDMkEQ3Olqve2oUTCcQw2fDGg=;
        b=0yXqAPRDrEuYflUzsqb5eMJyne0+tN8GRrgPpzn1ln/kpJAo9Pjl0+hFrfm/bJfD15
         fst5nHNih3rhys6PPEfGJjGgf3XWyUkL8lN3iZ/NWiFiDD4D9fwryjKCSTi4dICRj7qH
         M7vLcNFC237WnjQ0rO4fL7sA2N4T12JxcKajEDEJwJ4mfxM6UCes9zNvttMRYp75uYe4
         ah5OTUjlEOBFBSfkCLF6jU7leYmGIu7U4z6lJH5J41pNtMgGygkzV1YdvhcuhnRk8KNO
         tkrKWQtfyZDymg4GBimnoIFfZE4xWlCfPc8Amgze+ih7Iukdf4VVjy8sFmE82nz8OTU1
         DmmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="piiNLL1/";
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xIZqShuWGtcfNct2XFlDMkEQ3Olqve2oUTCcQw2fDGg=;
        b=Dgk9enEQwkEPpX263Fv1KNg/iyYh0iUc7kfv7q3f+rfI5XLXUQjsDkopWgOTGf9ewZ
         4ZUMW8goy1TXfgLzt9QqlCGpQAjDXZ2JvM/byllGw3Xb07qAO8EYS2QXXYdMxRFDD7+0
         gMmVumKhs4HbjxHlDTiCU/Fy0/GqMXoenhuA0UMNdOCIylMDaS2gZ14UC8JTOCxviaOk
         btetTUZgxffLJKN4Viacp3f/jkuDJPIypz6jRoNvZ3Tk4C/c6NHywv3WZdcQJQIWCUo6
         lUPCnSWKKSHIPXcQ+nZo2a+o/ECL+YD7INdsPfZaeVLOmN3+9CQ/gOHKxKGbvRwI4yPC
         YGDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xIZqShuWGtcfNct2XFlDMkEQ3Olqve2oUTCcQw2fDGg=;
        b=nGOK7hn5hwevNbIFk9G/LxxeO+mySo0xWEZyTf6VqCuRlmgk01tIp0aJW7zebhZKlJ
         4tHblLZOM/FB+A2qOBO0boURAbE/Unf/uOnjn4/nCN+n4qb3+NOVr9HhNt23oVMEkUzS
         TMRwO53slfnK7y5TFixrZVbVVS4pLDiS283qo8OVHLyA1IZ1MSXTBaXVZF2SINEOmqhC
         ZEQ/5qlcCexRpZrbn08PneQgcnAUZB660Cnh494UUF6T7WzlyS1FGGWVu5UTPzC7xx3r
         79vGBmvR5BuFrL4k3FZLhq2uAeH2o8db0k2W8bUGwIIYLGqJYFloCVXbXHOrZe4v67Wj
         DSXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW3/JnsH0+FtazvBqsxH/KGGmo+Qhi4sG7JZqrkdW0uWGIfGE2U
	+1gLDnUCuXaY0cp98aCatow=
X-Google-Smtp-Source: APXvYqwlZD2dxmMYpLnMX6H8SO8/bprn35V6Le+FMbWMzc5RePQ1VHucLRXHvUq+LRHexX50X9U6QQ==
X-Received: by 2002:ab0:2a8c:: with SMTP id h12mr6021202uar.106.1567823417176;
        Fri, 06 Sep 2019 19:30:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c883:: with SMTP id v3ls793836vsk.2.gmail; Fri, 06 Sep
 2019 19:30:16 -0700 (PDT)
X-Received: by 2002:a67:df1a:: with SMTP id s26mr7063572vsk.24.1567823416860;
        Fri, 06 Sep 2019 19:30:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567823416; cv=none;
        d=google.com; s=arc-20160816;
        b=LJK86dsyuPqAy81eKIMQ0xblCfvopxphCp5wr32phetVWBbk0mOVNPZPavm/WaQ0Bq
         t/anrepXs6MTOnrp0CGUmJK2NeKkpskkP0/JR5W+m4V97dsD6ycWlx2zBoEhoOUXuD+u
         xL3ncvE1tLVV83o+wepiDlkt/YSxwjRjfMkhb1Ct/z34WLCoayxLxwRdcCFuo/qZLE5L
         n7Te66cGRn0W/J9xC+FZ4Mad0iKECskj2PH4yOdspvY/eCBEbsQD8utOvK75CGbXqaRk
         TaO6zb5ciCpnOu7dAY3cxY/fdg1qiNS0jWqm+C0/2mUC4GKRyC2uLVK6sruq8JZPyNjP
         jWzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=ecpq39w1kLvt8KzSabpKqd9mUE8PScl47JDUsEouC00=;
        b=LGtj7IdKzlSIplRXt96zkUbcelCIW048SmLi9sNh7lnMFDwVOhMYNl8/tgaBQCAXzu
         gDP1Cv/kZEXDoBudw2azrEDXHAIVkf54pPrpzcA2WdiQ52SWYNN0qCr+/WqRMNfQQcbv
         5dbtv905B8Mw/RoMV8X7O18NXrhvKBA7c3MT8XhVtnfb4gWWGaXIuXV+mYDATIYrcT3g
         KB6ySWpVeTaH4/Yjw8o0bInDbX6ECJNjUJW65JZCrqvNniLWki9lrbUdOhBWYAOm614D
         raAVNeoFavOO01JXH+MFnOePVdG4ooaI7AQmG7ON9E1VS0mmnEr0xh8kHz6I0QLkwGky
         JmYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="piiNLL1/";
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id 129si349254vso.2.2019.09.06.19.30.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Sep 2019 19:30:16 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id x872TqMZ001506
	for <clang-built-linux@googlegroups.com>; Sat, 7 Sep 2019 11:29:53 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x872TqMZ001506
X-Nifty-SrcIP: [209.85.217.46]
Received: by mail-vs1-f46.google.com with SMTP id b11so5353907vsq.2
        for <clang-built-linux@googlegroups.com>; Fri, 06 Sep 2019 19:29:53 -0700 (PDT)
X-Received: by 2002:a67:f418:: with SMTP id p24mr6709049vsn.215.1567823391858;
 Fri, 06 Sep 2019 19:29:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190831162555.31887-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190831162555.31887-1-yamada.masahiro@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 7 Sep 2019 11:29:15 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQYYHni+_1cC8+dVozVgtzzpEqCDJ+-e5k=9yR-+dZTYg@mail.gmail.com>
Message-ID: <CAK7LNAQYYHni+_1cC8+dVozVgtzzpEqCDJ+-e5k=9yR-+dZTYg@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] kbuild: refactor scripts/Makefile.extrawarn
To: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Sedat Dilek <sedat.dilek@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="piiNLL1/";
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com
 does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Sun, Sep 1, 2019 at 1:26 AM Masahiro Yamada
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
>     to only one group.
>
> For understanding this commit correctly:
>
> We have 3 warning groups, W=1, W=2, and W=3. You may think W=3 has a
> higher level than W=1, but they are actually independent. If you like,
> you can combine them like W=13. To enable all the warnings, you can
> pass W=123. It is shown by 'make help', but not noticed much. Since we
> support W= combination, there should not exist intersection among the
> three groups. If we enable Winitializer-overrides for W=1, we do not
> need to for W=2 or W=3. This is the reason why I think the change [3]
> makes sense.
>
> The documentation says -Winitializer-overrides is enabled by default.
> (https://clang.llvm.org/docs/DiagnosticsReference.html#winitializer-overrides)
> We negate it by passing -Wno-initializer-overrides for the normal
> build, but we do not do that for W=1. This means, W=1 effectively
> enables -Winitializer-overrides by the clang's default. The same for
> the other three.
>
> Add comments in case people are confused with the code.
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Acked-by: Nick Desaulniers <ndesaulniers@google.com>
> Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
> ---

Both applied to linux-kbuild.


> Changes in v3:
>   - Added yet more comments.
>     Fix grammatical mistake 'does' -> 'do'.
>
> Changes in v2:
>   - Added comments and more commit log
>
>  scripts/Makefile.extrawarn | 106 ++++++++++++++++++++-----------------
>  1 file changed, 56 insertions(+), 50 deletions(-)
>
> diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
> index a74ce2e3c33e..d226c5fb13e2 100644
> --- a/scripts/Makefile.extrawarn
> +++ b/scripts/Makefile.extrawarn
> @@ -1,14 +1,9 @@
>  # SPDX-License-Identifier: GPL-2.0
>  # ==========================================================================
> -#
>  # make W=... settings
>  #
> -# W=1 - warnings that may be relevant and does not occur too often
> -# W=2 - warnings that occur quite often but may still be relevant
> -# W=3 - the more obscure warnings, can most likely be ignored
> -#
> -# $(call cc-option, -W...) handles gcc -W.. options which
> -# are not supported by all versions of the compiler
> +# There are three warning groups enabled by W=1, W=2, W=3.
> +# They are independent, and can be combined like W=12 or W=123.
>  # ==========================================================================
>
>  KBUILD_CFLAGS += $(call cc-disable-warning, packed-not-aligned)
> @@ -17,58 +12,69 @@ ifeq ("$(origin W)", "command line")
>    export KBUILD_ENABLE_EXTRA_GCC_CHECKS := $(W)
>  endif
>
> -ifdef KBUILD_ENABLE_EXTRA_GCC_CHECKS
> -warning-  := $(empty)
> +#
> +# W=1 - warnings which may be relevant and do not occur too often
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
> +# Some diagnostics enabled by default are noisy.
> +# Suppress them by using -Wno... except for W=1.
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
> +# W=2 - warnings which occur quite often but may still be relevant
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
> +# W=3 - more obscure warnings, can most likely be ignored
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
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQYYHni%2B_1cC8%2BdVozVgtzzpEqCDJ%2B-e5k%3D9yR-%2BdZTYg%40mail.gmail.com.
