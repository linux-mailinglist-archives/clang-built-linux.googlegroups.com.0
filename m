Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7E5U3VQKGQE6YRS2II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3b.google.com (mail-yw1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id D4860A3F49
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 23:02:53 +0200 (CEST)
Received: by mail-yw1-xc3b.google.com with SMTP id a12sf6112774ywm.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 14:02:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567198972; cv=pass;
        d=google.com; s=arc-20160816;
        b=MmNFs1qwQL+SYSWuVd82/vWgrgX/OXCA3pwg66aJmPe/hjKib35j3VEapx7QUBQQy8
         BYKc2w/W0cvaIRg7kHp4ti9vm5I+6B70gj2gIqBOnJF7qCONILt11oFGc6XjjiZdjrrt
         fxTyIxVxmXXIYXqYO2Eczv0IJPcg6VY5knP5vO4DjzRv+/UDI7Z/5ahWbga0lbExIdRg
         hFXPQ7s2s+ahgAkzEawKjU47k17M6WrcQCDI11uvmQzp5r35lwp8feOJ0GXvBcRfPIy8
         A6wcdC/NfRfcQ4DNCQYvxomGCdz1JZZuW+wauXHrUHJlCr/9b/YQ14AHXc5xpWBkIk20
         2XOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3Zm0pMHQHbBBMW5crUeGFK87hBA5cyM/I3xAjaUf+gQ=;
        b=olpfaDt+X8UJWdBq3NAT+4kaSexs85TI4GyU1rmztG1X5eQa9g2S6u075vz7+fBSwi
         8MzGUyI1j8KD7BSklUFLRWxQRzfPtDi3U0EUF9BWSfr69Uo85Auqx6fUV8IRQyZmyfD2
         o+jEQ5LIo05s8A0XHEYq9OSozP3sjcIHr3hNHWSGM0QVasShVryNE2A5rL7McV53KWZo
         qg3+o6xgePoChKp7kV7a+gn1FfiuGkVx29T1lmN3kRyQwz7feDJi9ETYgM8rdoJ128AZ
         +JD4ljr+NjPhuBqFp8CqmIkk16JWqiXVuV1yAYoz3RcSyZm7pVKJ1zm5npICGOl7N4dM
         s1PQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WBeU8UAy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Zm0pMHQHbBBMW5crUeGFK87hBA5cyM/I3xAjaUf+gQ=;
        b=d2zOP+NJHZG4/u4b6+JPSKAoEufDRs6GH7FvpByrEDGdSnF7NPanBPVKew2m41yXia
         zEUjVeqt5s4+G8qY+RbljCNHp/C7HvnHNcuzga9iPzFPe5wqUpUA5C6V1tBxhqp1mfg/
         amRgGT0WLUTb4n5jmhXqqpcxFS1EnzTHGX0hmEk7Ldc+RwelssmB0pMK+8Cq6d8w9asG
         MuNDpsBlMFgQaYgkRVtvXlolLo0NklwsBeS67eJrCr3JRT9pjSYjumhkU3nLCM/8Fjia
         Nj5eyzobF9cAwtKINESijTr4hhNIT3ancC24Kh9g3v36MgMZiq0U4o6TltZQoJiotKtF
         xPKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Zm0pMHQHbBBMW5crUeGFK87hBA5cyM/I3xAjaUf+gQ=;
        b=mL0o49IHWHy3sjAmbEbEWnVVR+Xc4fZZ+4tWb8SQTVKlJEBF2kCEbl3mTtAd5bSI6k
         5nk/AGj+6WFMHmhB1eErXnTkhCtVIvEnVcrluONDBpWHjGtk8O5JuWBUJ8vAL00CXcLw
         zxdD4MLzxA0XzclurYlNqrg9eAebCLD2WqqZQlXSOIRaGMLiuZefjqyJaNqRx/oiNsl2
         6vxETVPlrnlC5qy4j2juCrDKMYN+uK5dE3EX0H3zrpCOQPySGgRD50FE0Zsxi8fMU18v
         2WYROBM7ccihSbfsGdozzzteAvzMKd5p3cPZGdU7732khwabvwsutP+YoSWAYETFZY63
         BLYA==
X-Gm-Message-State: APjAAAU4uM4aGyQf8/wcSyawQHUOONBS1ECMf0L1x2df8NLWN5eAibs1
	Fgd0MJ2Gg+QgnRpdV0f8lhA=
X-Google-Smtp-Source: APXvYqxBXTvyYK1PVe4sNWWQ7HpkEZdjXwuMTAtwGzTMXW5yFaJTsQBSMBCaFTKOH3YKKyB6GHPNBg==
X-Received: by 2002:a25:742:: with SMTP id 63mr12208907ybh.52.1567198972691;
        Fri, 30 Aug 2019 14:02:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:f201:: with SMTP id i1ls709437ybe.15.gmail; Fri, 30 Aug
 2019 14:02:52 -0700 (PDT)
X-Received: by 2002:a25:e810:: with SMTP id k16mr13210256ybd.471.1567198972338;
        Fri, 30 Aug 2019 14:02:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567198972; cv=none;
        d=google.com; s=arc-20160816;
        b=GJg10I3OwH/wqjw7P4Eqe7Gmth08mEjrl4lA+2XvqV1HhySZJqxy6/JlCW8Hd/x3Ff
         8Rfx2vG1xoWYtJ/t/wQsA5AUk3qCVtHRB93an97lusruVhZ4jyMx8O4KTwawKOk3ug/b
         0JTx1VROS3OjhXbHi1vGctgwbLxmRBc/+MfSRTgFmmNb+3O4QDwProgWuN9OlzvZZVCi
         b/VErZIQQqR7cez/VQ99cGiWoIR2iJDfcd/EuHfXWBV63xptHKnug60pCoL5tSRxgEjc
         eWX8Hlsw/Q1VodkgmSOJvl9dw/9iPkS4M7eN+JnklC9R8/d/E5RP1TZZzxQnc/8rbM7b
         WlzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JhMV1jTD3mPsfg3GhoNSr9wlsLmJbYqBSQl0eZsMIz8=;
        b=vbT6j6lyKuLA6+0PtTm9Hh4oYhXC8lP0x2KzDeGEGaedDPu5wGj3R0GPLWjWM+q5yf
         seGWyJ8E56yoiqj1NJGAMEKKeqQLS+OyLjd5P89CO49wNoLLSsKnG+lGRQlfxJb27U49
         DtaVjPDPLFykHw3I7jQb3Zw/4jAeBQyD6LyVaeQEDv5UTsD3+iaEE4g5Mo7DTGi90m/H
         PfH6IcMWDyDSk1PMY5GHiQiLBCXDDEDk1FxIDxS+MCwvBJ8okLfDjAgmbNJPwgGFlwrz
         C4j2kn5hZWCg3T3Z5wUmQN5Rg+g9o0muh+YgHTEIVkCyDkp42QlFn3vTr3TPIZ6ckynL
         Hlig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WBeU8UAy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id c76si490492ybf.3.2019.08.30.14.02.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2019 14:02:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id p3so4109958pgb.9
        for <clang-built-linux@googlegroups.com>; Fri, 30 Aug 2019 14:02:52 -0700 (PDT)
X-Received: by 2002:aa7:984a:: with SMTP id n10mr20614018pfq.3.1567198970999;
 Fri, 30 Aug 2019 14:02:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190829181231.5920-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190829181231.5920-1-yamada.masahiro@socionext.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Aug 2019 14:02:39 -0700
Message-ID: <CAKwvOdn4abmHse=EUf1mMNUbXO3ZprZQYDmxbRFyeLVhhs8Rew@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: refactor scripts/Makefile.extrawarn
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WBeU8UAy;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Thu, Aug 29, 2019 at 11:12 AM Masahiro Yamada
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

What?! Ok now things make much more sense.  (This is a great addition
to this patch).  Maybe this should additionally be a comment in the
source code?

> you can combine them like W=13. To enable all the warnings, you can
> pass W=123. This is shown by 'make help', but it is often missed
> unfortunately. Since we support W= combination, there should not exist
> intersection among the three groups. If we enable Winitializer-overrides
> for W=1, we do not need to for W=2 or W=3. This is why I believe the
> change [3] makes sense.
>
> The documentation says -Winitializer-overrides is enabled by default.
> (https://clang.llvm.org/docs/DiagnosticsReference.html#winitializer-overrides)
> We negate it by passing -Wno-initializer-overrides for the normal
> build, but we do not do that for W=1. This means, W=1 effectively
> enables -Winitializer-overrides by the clang's default. The same for
> the other three. I wonder if this logic needs detailed commenting,
> but I do not want to be bothered any more. I added comments.
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

Acked-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> Changes in v2:
>   - Added comments and more commit log
>
>  scripts/Makefile.extrawarn | 105 +++++++++++++++++++------------------
>  1 file changed, 54 insertions(+), 51 deletions(-)
>
> diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
> index a74ce2e3c33e..3680445823b7 100644
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
> @@ -17,58 +9,69 @@ ifeq ("$(origin W)", "command line")
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
> +# Some diagnostics such as -Winitializer-overrides are enabled by default.
> +# We suppress them by using -Wno... except for W=1.
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


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn4abmHse%3DEUf1mMNUbXO3ZprZQYDmxbRFyeLVhhs8Rew%40mail.gmail.com.
