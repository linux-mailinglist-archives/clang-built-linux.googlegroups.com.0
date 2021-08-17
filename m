Return-Path: <clang-built-linux+bncBAABBT7B56EAMGQE7BEKZLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC873EF0D9
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 19:24:33 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id x20-20020a9d6294000000b00519008d828esf2689627otk.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 10:24:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629221072; cv=pass;
        d=google.com; s=arc-20160816;
        b=LoWgOacHT3FD1U5qEEpB/4NVAMAJA2YSin7yTtRDMQt8wRJPYk8ZRj4sTTX7/FTFbZ
         wduozjbSbxJtTNf0uLpUaEuWZOIWiK8CMa1q9j+/do85yF0niR9HkUoYRmlHr141dNXb
         OKrnmBdCC1cVeMNU5D6eCRvTnD103g86pktPhbZETp6cEbTMMnwcEBPAsBvlLBSblnMq
         otcCiV6pbQoB+7hHl0le0WWqpJWUEM/8bUH2SsAMICKVqSla1PGzH1Ec+/3QOcvyuR/w
         d96t0XGZLLKTRbmC75WiZsWHrHBdSwuqjRNbbTEb7/cgLpKSANJYdxHY3090AMb/P2dV
         vZZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=wvnkroEXYEn3H8SG2kApl9UiPrl3QtykTQ5SW8D59tk=;
        b=Jv3WVW4BI1d/DPfR2H3r/w/reZexNuwj8LG2RQi9h4llyGNLxAHFeXNQO+sFlsgStJ
         ErWgHcrygDykRMyyD8LbcnZDioNQsVSMWv5uzfpek/pjpOVzVCpSchoXxvWMVG2tIDtn
         b+SYceHvDUEwC8pBHVQjaCJ1ZPEZoJW2Y9dW14qcXubqwqcem7bEbclSXORN9HAx711H
         /F3lIGi8rzGAT/74PseKPhoQDQmJPMtoho5vudPdjBurgnpS6H9FBSxApzn/C8uKSZ6f
         Ubi/zyRNRDhHRdLhX4QTGebnTKz1PjzcYEVKEethxZb2Lxe5krahEeKiQam88DcMijQU
         VEfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=rRgMI5OE;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wvnkroEXYEn3H8SG2kApl9UiPrl3QtykTQ5SW8D59tk=;
        b=WxL3d8d9FyOEbEke6KWhc07AQNtwNBrcb4MAukwZG7lB4Sf0i36/7zRvaC6zY4If1Z
         FHyN6v1YsHKA+mUETEwCHXNxPixxfsNTRgCUIIo/Ya1zKnpUddJ3RufkltSrKRDWkxNU
         MKILsYqKG7q8sCwbmDSGvRATv0X/9kY7fZQa3nxapKwNu1nhZaCKAkGglZGxTGuxOhG7
         zTuOYhtegGj0kdAxigmsL707sx11gzvcZtpMQb4im1rQH1btGdafsA3rBSEimQ52nNif
         VN5XxGBa1zbPazhhOPLMcO4m3oJW2XOD3gN4LH89Ayo/5jENQbjWE82v26LPKLIezaQm
         x7fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wvnkroEXYEn3H8SG2kApl9UiPrl3QtykTQ5SW8D59tk=;
        b=gi1I7Y+IK5Y2Uw/kCkj6T/Ds/M1eHgadcdtxrmb+M+MqW5+FlM6NMTVTlkl+3+9OtQ
         iliEESPPODiI2EWuyWWZfMGuViuvA0ypSmkrb1TUtc8t10sH56LI1bjba6ge1xs8OePn
         JNj4eWEsmu2d1tIPlf0fRbD2sSz0u8W0re22h/yaKpYpuD1XudwI8bp7x3ilYNqSUgLw
         d8+SnRJqjB42RcScLlaVKZkb0ZrR/lMK/wZhWlumuqQ4i1C+8s01lJ3KXD4RpaNmjy8f
         rPOsLiMoY0dB73xpRDoOe/VwfnCeoDNWHVPHWVNqBQ2e6eoLN2jmF5XtObJtyZ3bS44m
         Q0Ig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533WvmHJ8CmDi7vlLHtDbXqsJUPuyoQBjnj061kR60j55q3fROGH
	4JKXaGDjSWoEyUTjSK8uB3E=
X-Google-Smtp-Source: ABdhPJwXBmot1Zj2NKGOZz+UqKuA+BtwQC8vfmsrjOJgw9za5OlWfOpOnobRYxXIEn6Gk2dYk0Jncw==
X-Received: by 2002:a05:6830:91b:: with SMTP id v27mr3389779ott.328.1629221071961;
        Tue, 17 Aug 2021 10:24:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:ca86:: with SMTP id x6ls180729ooq.4.gmail; Tue, 17 Aug
 2021 10:24:31 -0700 (PDT)
X-Received: by 2002:a4a:45cc:: with SMTP id y195mr3452796ooa.52.1629221071711;
        Tue, 17 Aug 2021 10:24:31 -0700 (PDT)
Received: by 2002:a05:6808:21a5:b029:268:4b56:68de with SMTP id 5614622812f47-2684b566b6emsb6e;
        Mon, 16 Aug 2021 18:58:02 -0700 (PDT)
X-Received: by 2002:a5e:990e:: with SMTP id t14mr1004723ioj.75.1629165482230;
        Mon, 16 Aug 2021 18:58:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629165482; cv=none;
        d=google.com; s=arc-20160816;
        b=QlWtHpFPeFeElooqJ6t4b4wMRmd7TcrTZTRzc0VudAiK196/BPtifG1BtBLE/7bCd6
         H7XD5DX2k5/aafR75Kcub1XQWLqcGv1/VH4BrYxAhjxU35+8yXwQpAMPwFZK2mL6Kqnh
         ToDgJTQj0JpgiAR+FWnQRmrxkqF8zYKn63fnFUBxC5Ndt0tY+DSryMnbawy29EL7Z2gj
         nRmdDtrKtjlRTq6Q/UQgVeCat53YTw8OgXEZZoHNoKo5kF/EgQA1DyTfmCI/N6AyytrB
         wWF5lMMAuFAOU1ael74P1nsT4GqfTim8GvDz9iiN7Dotew/YcrGYG24YaMKIJM16d2HZ
         WQyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=rM8EmfDue098NCNSDFRviWXJD7VPuuExM0AaHT4g0CQ=;
        b=l6WiZ4B01avQKvVHmgyO9x3qOfns+7uYHKxUwGAnqGpIZlqT3Cp7Dfd7EZ/beyX9gq
         RH7UO1LO6jChtb8krWxUsKdPtKEtjZ5X3R4QKDacW1VKLRFVcAcSNUlqTxM4JgQj5OHt
         jLEvlymw35D1IkzI7HnyGE3ivNG5EkHiXTX1U0Ug2b5BYMRVLq/SUBVlAHzpmTgzB0Ho
         FfCFJL6hMrLXFe0lFCB1YscjyVcRWCSvWRb4uup0K2MQj2EXpAQlhgOOoX8HMAFNcBAs
         s1feeRBRB4o0q3H1L3ryT4yunId0Dl7hZnb2xEH13rAT6wbZhrJuOgCW+bQFpGHehrtx
         trPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=rRgMI5OE;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id z12si49306iox.0.2021.08.16.18.58.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 18:58:02 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 17H1vcbo032303
	for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 10:57:38 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 17H1vcbo032303
X-Nifty-SrcIP: [209.85.216.46]
Received: by mail-pj1-f46.google.com with SMTP id qe12-20020a17090b4f8c00b00179321cbae7so3508138pjb.2
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 18:57:38 -0700 (PDT)
X-Received: by 2002:a63:dd51:: with SMTP id g17mr1042455pgj.47.1629165457514;
 Mon, 16 Aug 2021 18:57:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210816202504.2228283-1-ndesaulniers@google.com>
In-Reply-To: <20210816202504.2228283-1-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 17 Aug 2021 10:57:00 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQePg39S1b9=wNE_fHPmGXnJ3CeBT7yucUGRMbLYwbgBw@mail.gmail.com>
Message-ID: <CAK7LNAQePg39S1b9=wNE_fHPmGXnJ3CeBT7yucUGRMbLYwbgBw@mail.gmail.com>
Subject: Re: [PATCH v2] Makefile: remove stale cc-option checks
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Naresh Kamboju <naresh.kamboju@linaro.org>,
        Linux Kernel Functional Testing <lkft@linaro.org>,
        kernel test robot <lkp@intel.com>, Miguel Ojeda <ojeda@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Andrew Morton <akpm@linux-foundation.org>,
        Peter Zijlstra <peterz@infradead.org>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Vitor Massaru Iha <vitor@massaru.org>,
        Sedat Dilek <sedat.dilek@gmail.com>,
        Zhen Lei <thunder.leizhen@huawei.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=rRgMI5OE;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Tue, Aug 17, 2021 at 5:27 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
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
> * -Wno-array-bounds
>
> The following configs are made dependent on GCC, since they use GCC
> specific flags.
> * READABLE_ASM
> * DEBUG_SECTION_MISMATCH
>
> -mfentry was not supported by s390-linux-gnu-gcc until gcc-9+, add a
> comment.
>
> --param=allow-store-data-races=0 was renamed to -fno-allow-store-data-races
> in the GCC 10 release; add a comment.
>
> -Wmaybe-uninitialized (GCC specific) was being added for CONFIG_GCOV,
> then again unconditionally; add it only once.
>
> Also, base RETPOLINE_CFLAGS and RETPOLINE_VDSO_CFLAGS on CONFIC_CC_IS_*
> then remove cc-option tests for Clang.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1436


> Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
> Reported-by: kernel test robot <lkp@intel.com>

I dropped these Reported-by.
I think Reported-by should be given
when existing issues are reported.

No issue exists in the main line.
(v1 was temporarily applied in -next, though)



Applied to linux-kbuild.






> Acked-by: Miguel Ojeda <ojeda@kernel.org>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes v1 -> v2:
> * rebase on linux-kbuild/for-next from linux-next/master; patch was
>   dropped from linux-mm:
>   https://lore.kernel.org/mm-commits/20210814215814.W_qqW%25akpm@linux-foundation.org/.
> * Pick up Miguel & Nathan's AB/RB tags.
> * Pick up reports from LKFT/KTR.
> * Note in commit message about -Wmaybe-uninitialized as per Masahiro.
> * Undo changes to to -mfentry due to LKFT report:
>   https://lore.kernel.org/lkml/CA+G9fYtPBp_-Ko_P7NuOX6vN9-66rjJuBt21h3arrLqEaQQn6w@mail.gmail.com/.
> * Undo changes to --param=allow-store-data-races=0 &
>   -fno-allow-store-data-races due to KTR report:
>   https://lore.kernel.org/linux-mm/202108160729.Lx0IJzq3-lkp@intel.com/.
> * Add comments to Makefile about -mfentry, -fno-allow-store-data-races,
>   note in commit message.
>
>  Makefile          | 50 +++++++++++++++++++++++++++++------------------
>  lib/Kconfig.debug |  2 ++
>  2 files changed, 33 insertions(+), 19 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index 891866af0787..ce5a297ecd7c 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -669,9 +669,10 @@ endif # KBUILD_EXTMOD
>  # Defaults to vmlinux, but the arch makefile usually adds further targets
>  all: vmlinux
>
> -CFLAGS_GCOV    := -fprofile-arcs -ftest-coverage \
> -       $(call cc-option,-fno-tree-loop-im) \
> -       $(call cc-disable-warning,maybe-uninitialized,)
> +CFLAGS_GCOV    := -fprofile-arcs -ftest-coverage
> +ifdef CONFIG_CC_IS_GCC
> +CFLAGS_GCOV    += -fno-tree-loop-im
> +endif
>  export CFLAGS_GCOV
>
>  # The arch Makefiles can override CC_FLAGS_FTRACE. We may also append it later.
> @@ -679,12 +680,14 @@ ifdef CONFIG_FUNCTION_TRACER
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
> +RETPOLINE_CFLAGS       := $(call cc-option,-mindirect-branch=thunk-extern -mindirect-branch-register)
> +RETPOLINE_VDSO_CFLAGS  := $(call cc-option,-mindirect-branch=thunk-inline -mindirect-branch-register)
> +endif
> +ifdef CONFIG_CC_IS_CLANG
> +RETPOLINE_CFLAGS       := -mretpoline-external-thunk
> +RETPOLINE_VDSO_CFLAGS  := -mretpoline
> +endif
>  export RETPOLINE_CFLAGS
>  export RETPOLINE_VDSO_CFLAGS
>
> @@ -737,7 +740,7 @@ include/config/auto.conf:
>  endif # may-sync-config
>  endif # need-config
>
> -KBUILD_CFLAGS  += $(call cc-option,-fno-delete-null-pointer-checks,)
> +KBUILD_CFLAGS  += -fno-delete-null-pointer-checks
>  KBUILD_CFLAGS  += $(call cc-disable-warning,frame-address,)
>  KBUILD_CFLAGS  += $(call cc-disable-warning, format-truncation)
>  KBUILD_CFLAGS  += $(call cc-disable-warning, format-overflow)
> @@ -752,17 +755,19 @@ KBUILD_CFLAGS += -Os
>  endif
>
>  # Tell gcc to never replace conditional load with a non-conditional one
> +ifdef CONFIG_CC_IS_GCC
> +# gcc-10 renamed --param=allow-store-data-races=0 to
> +# -fno-allow-store-data-races.
>  KBUILD_CFLAGS  += $(call cc-option,--param=allow-store-data-races=0)
>  KBUILD_CFLAGS  += $(call cc-option,-fno-allow-store-data-races)
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
> @@ -854,8 +859,10 @@ DEBUG_CFLAGS       += -gdwarf-$(dwarf-version-y)
>  endif
>
>  ifdef CONFIG_DEBUG_INFO_REDUCED
> -DEBUG_CFLAGS   += $(call cc-option, -femit-struct-debug-baseonly) \
> -                  $(call cc-option,-fno-var-tracking)
> +DEBUG_CFLAGS   += -fno-var-tracking
> +ifdef CONFIG_CC_IS_GCC
> +DEBUG_CFLAGS   += -femit-struct-debug-baseonly
> +endif
>  endif
>
>  ifdef CONFIG_DEBUG_INFO_COMPRESSED
> @@ -889,6 +896,7 @@ ifdef CONFIG_FTRACE_MCOUNT_USE_RECORDMCOUNT
>    endif
>  endif
>  ifdef CONFIG_HAVE_FENTRY
> +  # s390-linux-gnu-gcc did not support -mfentry until gcc-9.
>    ifeq ($(call cc-option-yn, -mfentry),y)
>      CC_FLAGS_FTRACE    += -mfentry
>      CC_FLAGS_USING     += -DCC_USING_FENTRY
> @@ -901,7 +909,7 @@ endif
>
>  # We trigger additional mismatches with less inlining
>  ifdef CONFIG_DEBUG_SECTION_MISMATCH
> -KBUILD_CFLAGS += $(call cc-option, -fno-inline-functions-called-once)
> +KBUILD_CFLAGS += -fno-inline-functions-called-once
>  endif
>
>  ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
> @@ -980,14 +988,16 @@ KBUILD_CFLAGS += $(call cc-disable-warning, stringop-truncation)
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
>  KBUILD_CFLAGS  += -fno-strict-overflow
> @@ -996,7 +1006,9 @@ KBUILD_CFLAGS      += -fno-strict-overflow
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
> index 5ddd575159fb..7d3d29203a72 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -365,6 +365,7 @@ config STRIP_ASM_SYMS
>  config READABLE_ASM
>         bool "Generate readable assembler code"
>         depends on DEBUG_KERNEL
> +       depends on CC_IS_GCC
>         help
>           Disable some compiler optimizations that tend to generate human unreadable
>           assembler output. This may make the kernel slightly slower, but it helps
> @@ -383,6 +384,7 @@ config HEADERS_INSTALL
>
>  config DEBUG_SECTION_MISMATCH
>         bool "Enable full Section mismatch analysis"
> +       depends on CC_IS_GCC
>         help
>           The section mismatch analysis checks if there are illegal
>           references from one section to another section.
>
> base-commit: f12b034afeb3a977bbb1c6584dedc0f3dc666f14
> --
> 2.33.0.rc1.237.g0d66db33f3-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210816202504.2228283-1-ndesaulniers%40google.com.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQePg39S1b9%3DwNE_fHPmGXnJ3CeBT7yucUGRMbLYwbgBw%40mail.gmail.com.
