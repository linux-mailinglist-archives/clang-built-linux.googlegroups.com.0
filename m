Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUUKZSEAMGQE262LXQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DA63E8649
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Aug 2021 01:01:40 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id e96-20020a9d2ae90000b0290510b681513bsf309614otb.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Aug 2021 16:01:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628636499; cv=pass;
        d=google.com; s=arc-20160816;
        b=eqZcT/Wir6Z4slCk9NHVScCbl7BoD496v3qyTh88/buhpkQL9SktToDNSbcZTHR0oZ
         d5XXqLjmT1sfApWsXN2IASs3xc9bGta5uV7Ou7AE90IrDRUHC1KoNYVGJvM0YKSpSRWb
         +VKZfpb9LesaT/GVkXw0DBdj51OxHpsXjYcDxwj7FQGeuDXRiqY5L2u9uqDYp1plJAry
         ARcX592Ge3qSJ/YzWfz3wN3SsTu5cR4buSP8lojdtoo90p9+HK+UMi0pFDLbx/DLmMzZ
         ARgVohUAUahpX+UVT6NVKQcT2pEUG/aWRK0wyIaOtxjgJpNlyKyQL1K1XO+DrNIwRFYj
         tvKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=gV2guveMsSih8NovVhtRECzHLZEKmaIRGL/hg0X0lAY=;
        b=GmI4rzmo5FOc4bQeojjAYSep6OF8DdDOWwzFrok6hAbCkCNR627J95yn0xtwRd6XDL
         8s0hCMlUZql3S6QXFUtPDXz2wlvmkK0EwBftyT7GRz1lrYH3fPXwJO3huFYq+gUi9Iq0
         l79dV+/y4FgDmPU8hVzSyp1Gw1SupS73iPsyuF/uXFb8axCDFQViTctLIcygd43iE9OA
         aLt8cJHxoVP0T89lUFqdp5usMYPli/8yz6Gk618WV8dFkEJj1gd0jxcx1nzNl02tq1bY
         UBriytmb4qboUjJfpywGuUr2Jf/1NZhmfXsnjpnQOWkc3AQVJUOwBSehOFuNFCOHfWTg
         yBnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YOsC8JE3;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gV2guveMsSih8NovVhtRECzHLZEKmaIRGL/hg0X0lAY=;
        b=gy9HGXjEn2KQU3wAl1ftAgrf0tNjhbiVHwOgp4aMd8CcvpUAD5bNVPVnM1bdZZz//1
         2AW4P19GEgAf4r9tLNhlG0XC9s+wVlVwb2okn8mDGo8Jz0rcOE2L1s66Orr3QRsH6Xnj
         +jFGq2bK9UHe8hTgnAJfy79nE9YN0LFe0nrBB61tYNiJAW/uRkpaeI2hAm6GgTYFiJ9v
         nV0a6iVCepp+UgeToTIOn8wgRmZ03NWpXvN2t1fH5qaLIfrwX0F8SH7Y7sKhPPAogVfh
         zeAeBRDZGm6uGaRMiYG1aZJZHyBsyQpXUaE/7aoxNtnjQx33X4mFTEtm1QW5XLKoWdKF
         9Q/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gV2guveMsSih8NovVhtRECzHLZEKmaIRGL/hg0X0lAY=;
        b=YAXMI8pVdmpr4GHHWIgXXaAqcl5zB60a5IZMahlDhYyf7SJXMkdMTWXt7Ox30AlfHd
         PKQTmHzrFhBFVLk71isTvQLyfJo01XvQhiQovRe09wjO5mlcILheDLdI2z2LsoZFaKZH
         sfccKf+hw5f6GgXjCVO1Gt6AZwmmKMQZQ3hzTDnd64aFJxmX6lw16UtiAdAx/b3W59pJ
         edb6ZAKGZ7TANs8eorRUJ7j0fP/TukIjDC1LWokcr2hbEqyJEaebDCNj+cHlVtYAQOH0
         jkDSXFY2s09bDHs1lvtImPstwl4+dl04MtxlYvVqnhcebKrCtfE1T2fijvXig20EFCev
         XmbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Hi3UmnkA7AE1mfv6/jbi47ft5acz1P9shOMWGzWt03fO1hmeV
	Hf+/d++MZfc++5BYrMMZ9fA=
X-Google-Smtp-Source: ABdhPJxSHnHKXWpw1kJ1XtW71YQsJEkzFYe33BiLA7bmjvpNi5oKuwKk61pSSecdccux22HKtjpwYw==
X-Received: by 2002:aca:4587:: with SMTP id s129mr5162395oia.64.1628636498992;
        Tue, 10 Aug 2021 16:01:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2689:: with SMTP id l9ls25435otu.8.gmail; Tue, 10
 Aug 2021 16:01:38 -0700 (PDT)
X-Received: by 2002:a9d:12b5:: with SMTP id g50mr3233628otg.224.1628636498518;
        Tue, 10 Aug 2021 16:01:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628636498; cv=none;
        d=google.com; s=arc-20160816;
        b=etWq96lcynkYNxIgSkgr0dif0XXfNgLNMd2CHW7BfFvUJB7/UCuKqP82vnKm7ea0Te
         Ixrp4IQIIpnBvItsSMUawgIYZv4yLNf1YXdBv4C2XXVb3DC+0bZTwLpMA3c7sa/AbHYj
         m//LMVT9TgM0eWp7kH8KSp9um2gygJvfiP7zm+kp8ner1qAysDa3JS350Icsoe+sbJVn
         cSwVCRQi5KI8AKFOSvALZRuXZMIlBVt/RGBYYWFjNTJJOCXK5xaBzqOEoDpegtixhgal
         Y03e+wgu08auCjd/jf6GETZXpXM6a72LEQSSvP9uCgPw1CHvvfsZrwXYB0iermUdX0RC
         +wOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=24BU2y2LkSZnoIKeEEsAc1h/2zjJEF2izSvgfFomUyg=;
        b=W8H7mJZ9XPAcOSXKQVky1iz3ZvR++5l/rjAvao+qDRUJk1C1Yr1jr/K+b22JvabPlP
         vTrWvQK09UusDUXnzR6JMdR4zYI2Snp8ZDdJMhi8Lg6L9WEvM3kRHco/DVtPS4Rm432s
         Fj7xycQwoZwCwloVDYHL3wbbsD7k+r4a+Ysw/9vp8u5zgxOtpfP7W8vvAhhX7az3XBa4
         5MZyLtr3yrjeoJ+xSCbYm1VFRC1MVa2jAEBFXXv67r3B+Eu2IQZ7ej6crodVmSBb+13M
         88nyajMCBT4wLtJudN8Y360ROrW9h1OnQD9IcO3ghVqGu6duhgpRjolLINkwOns/Q3Es
         JUBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YOsC8JE3;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j26si1239723ooj.0.2021.08.10.16.01.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Aug 2021 16:01:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 76C1661008;
	Tue, 10 Aug 2021 23:01:36 +0000 (UTC)
Date: Tue, 10 Aug 2021 16:01:34 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Andrew Morton <akpm@linux-foundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Miguel Ojeda <ojeda@kernel.org>,
	Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
	Vitor Massaru Iha <vitor@massaru.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Daniel Latypov <dlatypov@google.com>, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] Makefile: remove stale cc-option checks
Message-ID: <YRMFTm3EJWRqwZkM@Ryzen-9-3900X.localdomain>
References: <20210810204240.4008685-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210810204240.4008685-1-ndesaulniers@google.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=YOsC8JE3;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Aug 10, 2021 at 01:42:37PM -0700, Nick Desaulniers wrote:
> cc-option, cc-option-yn, and cc-disable-warning all invoke the compiler
> during build time, and can slow down the build when these checks become
> stale for our supported compilers, whose minimally supported versions
> increases over time. See Documentation/process/changes.rst for the
> current supported minimal versions (GCC 4.9+, clang 10.0.1+). Compiler
> version support for these flags may be verified on godbolt.org.
> 
> The following flags are GCC only and supported since at least GCC 4.9.
> Remove cc-option and cc-disable-warning tests.
> * -fno-tree-loop-im
> * -Wno-maybe-uninitialized
> * -fno-reorder-blocks
> * -fno-ipa-cp-clone
> * -fno-partial-inlining
> * -femit-struct-debug-baseonly
> * -fno-inline-functions-called-once
> * -fconserve-stack
> 
> The following flags are supported by all supported versions of GCC and
> Clang. Remove their cc-option, cc-option-yn, and cc-disable-warning tests.
> * -fno-delete-null-pointer-checks
> * -fno-var-tracking
> * -mfentry
> * -Wno-array-bounds
> 
> The following configs are made dependent on GCC, since they use GCC
> specific flags.
> * READABLE_ASM
> * DEBUG_SECTION_MISMATCH
> 
> --param=allow-store-data-races=0 was renamed to --allow-store-data-races
> in the GCC 10 release.
> 
> Also, base RETPOLINE_CFLAGS and RETPOLINE_VDSO_CFLAGS on CONFIC_CC_IS_*
> then remove cc-option tests for Clang.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1436
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Fewer pointless calls to the compiler is always a good thing :)

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

Small comments inline.

> ---
> Note: It may be preferred to move the test for
> -fno-inline-functions-called-once for DEBUG_SECTION_MISMATCH into
> Kconfig. That one does seem relatively more reasonable to implement in
> Clang.
> 
>  Makefile          | 55 ++++++++++++++++++++++++++---------------------
>  lib/Kconfig.debug |  2 ++
>  2 files changed, 33 insertions(+), 24 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 027fdf2a14fe..3e3fb4affba1 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -730,9 +730,10 @@ endif # KBUILD_EXTMOD
>  # Defaults to vmlinux, but the arch makefile usually adds further targets
>  all: vmlinux
>  
> -CFLAGS_GCOV	:= -fprofile-arcs -ftest-coverage \
> -	$(call cc-option,-fno-tree-loop-im) \
> -	$(call cc-disable-warning,maybe-uninitialized,)
> +CFLAGS_GCOV	:= -fprofile-arcs -ftest-coverage
> +ifdef CONFIG_CC_IS_GCC
> +CFLAGS_GCOV	+= -fno-tree-loop-im
> +endif

Eliminating -Wno-maybe-uninitialized might warrant a comment in the
commit message as I was initially confused then I realized that it is
unconditionally added later.

>  export CFLAGS_GCOV
>  
>  # The arch Makefiles can override CC_FLAGS_FTRACE. We may also append it later.
> @@ -740,12 +741,14 @@ ifdef CONFIG_FUNCTION_TRACER
>    CC_FLAGS_FTRACE := -pg
>  endif
>  
> -RETPOLINE_CFLAGS_GCC := -mindirect-branch=thunk-extern -mindirect-branch-register
> -RETPOLINE_VDSO_CFLAGS_GCC := -mindirect-branch=thunk-inline -mindirect-branch-register
> -RETPOLINE_CFLAGS_CLANG := -mretpoline-external-thunk
> -RETPOLINE_VDSO_CFLAGS_CLANG := -mretpoline
> -RETPOLINE_CFLAGS := $(call cc-option,$(RETPOLINE_CFLAGS_GCC),$(call cc-option,$(RETPOLINE_CFLAGS_CLANG)))
> -RETPOLINE_VDSO_CFLAGS := $(call cc-option,$(RETPOLINE_VDSO_CFLAGS_GCC),$(call cc-option,$(RETPOLINE_VDSO_CFLAGS_CLANG)))
> +ifdef CONFIG_CC_IS_GCC
> +RETPOLINE_CFLAGS	:= $(call cc-option,-mindirect-branch=thunk-extern -mindirect-branch-register)
> +RETPOLINE_VDSO_CFLAGS	:= $(call cc-option,-mindirect-branch=thunk-inline -mindirect-branch-register)
> +endif
> +ifdef CONFIG_CC_IS_CLANG
> +RETPOLINE_CFLAGS	:= -mretpoline-external-thunk
> +RETPOLINE_VDSO_CFLAGS	:= -mretpoline
> +endif
>  export RETPOLINE_CFLAGS
>  export RETPOLINE_VDSO_CFLAGS
>  
> @@ -798,7 +801,7 @@ include/config/auto.conf:
>  endif # may-sync-config
>  endif # need-config
>  
> -KBUILD_CFLAGS	+= $(call cc-option,-fno-delete-null-pointer-checks,)
> +KBUILD_CFLAGS	+= -fno-delete-null-pointer-checks
>  KBUILD_CFLAGS	+= $(call cc-disable-warning,frame-address,)
>  KBUILD_CFLAGS	+= $(call cc-disable-warning, format-truncation)
>  KBUILD_CFLAGS	+= $(call cc-disable-warning, format-overflow)
> @@ -844,17 +847,17 @@ KBUILD_RUSTFLAGS += -Copt-level=z

Looks like this was generated against -next as it includes the rust
patchset. I was able to apply it to mainline without any complaints but
any follow ups should probably be based on Masahiro's tree.

>  endif
>  
>  # Tell gcc to never replace conditional load with a non-conditional one
> -KBUILD_CFLAGS	+= $(call cc-option,--param=allow-store-data-races=0)
> +ifdef CONFIG_CC_IS_GCC
> +KBUILD_CFLAGS	+= $(call cc-option,--allow-store-data-races,--param=allow-store-data-races=0)
>  KBUILD_CFLAGS	+= $(call cc-option,-fno-allow-store-data-races)
> +endif
>  
>  ifdef CONFIG_READABLE_ASM
>  # Disable optimizations that make assembler listings hard to read.
>  # reorder blocks reorders the control in the function
>  # ipa clone creates specialized cloned functions
>  # partial inlining inlines only parts of functions
> -KBUILD_CFLAGS += $(call cc-option,-fno-reorder-blocks,) \
> -                 $(call cc-option,-fno-ipa-cp-clone,) \
> -                 $(call cc-option,-fno-partial-inlining)
> +KBUILD_CFLAGS += -fno-reorder-blocks -fno-ipa-cp-clone -fno-partial-inlining
>  endif
>  
>  ifneq ($(CONFIG_FRAME_WARN),0)
> @@ -959,8 +962,10 @@ DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)
>  endif
>  
>  ifdef CONFIG_DEBUG_INFO_REDUCED
> -DEBUG_CFLAGS	+= $(call cc-option, -femit-struct-debug-baseonly) \
> -		   $(call cc-option,-fno-var-tracking)
> +DEBUG_CFLAGS	+= -fno-var-tracking
> +ifdef CONFIG_CC_IS_GCC
> +DEBUG_CFLAGS	+= -femit-struct-debug-baseonly
> +endif
>  endif
>  
>  ifdef CONFIG_DEBUG_INFO_COMPRESSED
> @@ -997,10 +1002,8 @@ ifdef CONFIG_FTRACE_MCOUNT_USE_RECORDMCOUNT
>    endif
>  endif
>  ifdef CONFIG_HAVE_FENTRY
> -  ifeq ($(call cc-option-yn, -mfentry),y)
> -    CC_FLAGS_FTRACE	+= -mfentry
> -    CC_FLAGS_USING	+= -DCC_USING_FENTRY
> -  endif
> +  CC_FLAGS_FTRACE	+= -mfentry
> +  CC_FLAGS_USING	+= -DCC_USING_FENTRY
>  endif
>  export CC_FLAGS_FTRACE
>  KBUILD_CFLAGS	+= $(CC_FLAGS_FTRACE) $(CC_FLAGS_USING)
> @@ -1009,7 +1012,7 @@ endif
>  
>  # We trigger additional mismatches with less inlining
>  ifdef CONFIG_DEBUG_SECTION_MISMATCH
> -KBUILD_CFLAGS += $(call cc-option, -fno-inline-functions-called-once)
> +KBUILD_CFLAGS += -fno-inline-functions-called-once
>  endif
>  
>  ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
> @@ -1088,14 +1091,16 @@ KBUILD_CFLAGS += $(call cc-disable-warning, stringop-truncation)
>  
>  # We'll want to enable this eventually, but it's not going away for 5.7 at least
>  KBUILD_CFLAGS += $(call cc-disable-warning, zero-length-bounds)
> -KBUILD_CFLAGS += $(call cc-disable-warning, array-bounds)
> +KBUILD_CFLAGS += -Wno-array-bounds
>  KBUILD_CFLAGS += $(call cc-disable-warning, stringop-overflow)
>  
>  # Another good warning that we'll want to enable eventually
>  KBUILD_CFLAGS += $(call cc-disable-warning, restrict)
>  
>  # Enabled with W=2, disabled by default as noisy
> -KBUILD_CFLAGS += $(call cc-disable-warning, maybe-uninitialized)
> +ifdef CONFIG_CC_IS_GCC
> +KBUILD_CFLAGS += -Wno-maybe-uninitialized
> +endif
>  
>  # disable invalid "can't wrap" optimizations for signed / pointers
>  KBUILD_CFLAGS	+= -fno-strict-overflow
> @@ -1104,7 +1109,9 @@ KBUILD_CFLAGS	+= -fno-strict-overflow
>  KBUILD_CFLAGS  += -fno-stack-check
>  
>  # conserve stack if available
> -KBUILD_CFLAGS   += $(call cc-option,-fconserve-stack)
> +ifdef CONFIG_CC_IS_GCC
> +KBUILD_CFLAGS   += -fconserve-stack
> +endif
>  
>  # Prohibit date/time macros, which would make the build non-deterministic
>  KBUILD_CFLAGS   += -Werror=date-time
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index b6b951b0ed46..a4a431606be2 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -364,6 +364,7 @@ config STRIP_ASM_SYMS
>  config READABLE_ASM
>  	bool "Generate readable assembler code"
>  	depends on DEBUG_KERNEL
> +	depends on CC_IS_GCC
>  	help
>  	  Disable some compiler optimizations that tend to generate human unreadable
>  	  assembler output. This may make the kernel slightly slower, but it helps
> @@ -382,6 +383,7 @@ config HEADERS_INSTALL
>  
>  config DEBUG_SECTION_MISMATCH
>  	bool "Enable full Section mismatch analysis"
> +	depends on CC_IS_GCC
>  	help
>  	  The section mismatch analysis checks if there are illegal
>  	  references from one section to another section.
> -- 
> 2.32.0.605.g8dce9f2422-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YRMFTm3EJWRqwZkM%40Ryzen-9-3900X.localdomain.
