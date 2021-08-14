Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBS573SEAMGQELWTB34Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 743793EBF62
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 03:43:40 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id x13-20020a54400d0000b029026825ff437csf2742766oie.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 18:43:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628905419; cv=pass;
        d=google.com; s=arc-20160816;
        b=QCvitDS/AbR154TsEHpF7vi/j1chrIinUNnr4MM80On2BUpL3SDqizeJRU3O/vzi81
         x2wZrymb+mYODoC+fuh9V2Loj3tLGi7kNf88AwunImMH+dL7uR623joiNZbSZuPZvOyl
         mCQtHBU+QqEliDirTRkGMbn9jQuaGoRB7E7pgIik9ByGF5anEeAyJI2Oa8aHy/ZlMM1j
         s9HvpApZf3E3CgnO+QqB6q0mccYQUmLYRK9PlXA8xvHc/ChGWoRV7P6EyDcbOnsHrV+c
         f/lBlIehXwreXAWSdCCLmeIHHuFuIx9r4OpFGBRKuCEbI480neh+fiQu9hB19vq96Oi+
         ncMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=eYOt4BQqXgFtzfs8sA9hA8pOmBktENkG++YSJaIQTlc=;
        b=jx7QysUpd1VAKiQEBtc4O4p8IMTeeszgEImHOEAPhNL8Mfxh4XPtNGNvXKUYyKjH6R
         dHLp3H/aFLWSPDWCK68WvXqqQ/6ooN+ymdaFoZfWxYdTUrzYOR0ozk/7dcHllMOOo8eS
         1NfxnRtvwYSWc0/YPJFbLvjogLvD0y/bWA8+ntye6edRFohSWh2WRfaHMaEiuPs4IvJW
         RiAhxSO0iPVM/N2YlPCAINzq+O9R/LXxsNsMJrXPOuReABApHE5YGPkuFxYzRx+R/CPO
         S0lhiBtt/mQkPsxgkHwZG+jg81kb4nMlGNOKwFVP6iItsmPZnufs+fUdAmw1dhix+vMa
         GY0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=sVolG7gE;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eYOt4BQqXgFtzfs8sA9hA8pOmBktENkG++YSJaIQTlc=;
        b=JjgVpGXFpqwRiQNwPE3gXgMQKxrheZEhtNjzsFbOPQ4cXIdmcKfWEm5KJXd11lM7KD
         Uz9mjbFpTItVYL92ZAiHOXfeBscEli8iNKVjIfeGO+7/CU+2IVptJcobv8qOXHBa00qD
         YglAvGyEoeD7THv62XygN36GQnvoQxoowVh24SC2iI1Xtiq/bU8WhRqxpkAXly02NbTp
         zNL2cD3Rpp2uTUMgwoFJUyuWXoL1diGbJatLqFV6HsClGZOdvtQYyk3dfjh342dgUorf
         8ckuChfdfQ+k80ovDK/nBu4Wi29yfSz5ZsDOlz8ZwYDmkW1pn5BbdtlmgRGZzwyWyg6c
         jEpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eYOt4BQqXgFtzfs8sA9hA8pOmBktENkG++YSJaIQTlc=;
        b=L+KZZ/C2KISSXtwOc3AS/CXRuBlO4Zzud4DNbZNvRFIMN2aWriSwk897o+Y+/dRmVw
         45lQ9Rh73ewpu6aMM+XgRmRVBqmpXFVi2V+nnbC7/LLMHM2LcMEYlvGu0bBKPlPVZf3R
         zQArRoBRqJZ6z1mx9+th/y4Fv/QgoQG0HGD+p7njm8SYMt7HwFzqG8Wzg+v+8bZw2b+o
         29xsG15V7fLEeJgUADDx8TL+37iIdrTmzRG9nw6fVHwpCmD8bkpUOS3DIOMi9e8iiQ4X
         sziETy944fSB4dt8tHhNxHgUmFdIPy/c75MswTUCmPb9u8btnI6qq2xK+0z6qOCBUkNl
         wAeg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531W+AXuvK858wz8kS9diWZuB7VvcMq6zzoyXV0gyxZtqVlwGJPI
	thsFBEVvimReg4VLHHDIoSM=
X-Google-Smtp-Source: ABdhPJz2nQmfCfn8prPROrBGTUIhF89kHsmJUS+uZmgcLVaROiEF7ZsUxJdlRHks5vNfr4hd3fV5cA==
X-Received: by 2002:a4a:a38a:: with SMTP id s10mr3832556ool.72.1628905419245;
        Fri, 13 Aug 2021 18:43:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:180d:: with SMTP id bh13ls853339oib.5.gmail; Fri,
 13 Aug 2021 18:43:38 -0700 (PDT)
X-Received: by 2002:aca:de8a:: with SMTP id v132mr4216936oig.74.1628905418897;
        Fri, 13 Aug 2021 18:43:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628905418; cv=none;
        d=google.com; s=arc-20160816;
        b=se4blXWbwrvF99Hshwz3ZYUAD6MbMHIoXBs+7z3jtAcxCKolyDepziv+ztlBz5uNDN
         cVTOl915L5oT9DlPex4I+BtNIhJRO/T0id+4ObLOBJhlv6B5x4s+DL7ZAVwscJK6rGHl
         A0Md1Ee+QhZnTkmQ893sfIMaRgSWo8eRtzAlncW0M0U8VvOYXy/knWMXbNLMhaI36L/C
         CEmWjNd5j5DhwJxtFCcnkY4jmVLkpSgsNA0Usb2ptxG6cWfg7/7ALgwA+aqWz1S3+koH
         j6RaW3d2RXy0mWg7JDih9ZiFFtgfoqnglLLAfs2N/w8Qtzd6GlXp5zwEuUVuLvjVGt5a
         2E7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=+NjhW7gdXcyCEG7qCMQcOuOFQ656TJAvaR4knAJwaG8=;
        b=yBydLVUJ+FlfUdqWT0XWWDXZbcNHQYJYaBja3VeT4nNakQzvlRSJDMiUZe0/BCSqMu
         PNMpAPuCKRx+nHGK6dUR1Lnf3fJWxhyezdnztt3tI8ioZ1ylpr3v6Yc8X3rK79coVJ1D
         zocDxakZvGgbDWynsZ+X7f/TBIOJgS9hOFwOkYKhM9bUVd2Go38RSRY0JKXB2r2JTTfh
         g9OLbDF5GTKXYD9NkriT9P2F4fqIxZR1aab/cQUHHlnCvCYLt9c7mJgiH8CiUxVXTgbV
         Qu24x2jUOzgZVqgeV1I7ikgL/jGGE7lEdrRqz/CempMF6IUSSP8VP4eC/GRjJgtbh/Yf
         bsHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=sVolG7gE;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id bj29si264998oib.4.2021.08.13.18.43.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Aug 2021 18:43:38 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 17E1h81s031718
	for <clang-built-linux@googlegroups.com>; Sat, 14 Aug 2021 10:43:09 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 17E1h81s031718
X-Nifty-SrcIP: [209.85.216.45]
Received: by mail-pj1-f45.google.com with SMTP id nt11so17938315pjb.2
        for <clang-built-linux@googlegroups.com>; Fri, 13 Aug 2021 18:43:09 -0700 (PDT)
X-Received: by 2002:a63:a58:: with SMTP id z24mr4843025pgk.175.1628905388332;
 Fri, 13 Aug 2021 18:43:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210810204240.4008685-1-ndesaulniers@google.com>
In-Reply-To: <20210810204240.4008685-1-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 14 Aug 2021 10:42:31 +0900
X-Gmail-Original-Message-ID: <CAK7LNASotywVkNjaBC7wYke70QL+a0tMJEVEvRTPpt8dDgHE9Q@mail.gmail.com>
Message-ID: <CAK7LNASotywVkNjaBC7wYke70QL+a0tMJEVEvRTPpt8dDgHE9Q@mail.gmail.com>
Subject: Re: [PATCH] Makefile: remove stale cc-option checks
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <nathan@kernel.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>, Miguel Ojeda <ojeda@kernel.org>,
        Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
        Vitor Massaru Iha <vitor@massaru.org>,
        Sedat Dilek <sedat.dilek@gmail.com>,
        Daniel Latypov <dlatypov@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=sVolG7gE;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Aug 11, 2021 at 5:42 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
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
> @@ -798,7 +801,7 @@ include/config/auto.conf:
>  endif # may-sync-config
>  endif # need-config
>
> -KBUILD_CFLAGS  += $(call cc-option,-fno-delete-null-pointer-checks,)
> +KBUILD_CFLAGS  += -fno-delete-null-pointer-checks
>  KBUILD_CFLAGS  += $(call cc-disable-warning,frame-address,)
>  KBUILD_CFLAGS  += $(call cc-disable-warning, format-truncation)
>  KBUILD_CFLAGS  += $(call cc-disable-warning, format-overflow)
> @@ -844,17 +847,17 @@ KBUILD_RUSTFLAGS += -Copt-level=z
>  endif
>
>  # Tell gcc to never replace conditional load with a non-conditional one
> -KBUILD_CFLAGS  += $(call cc-option,--param=allow-store-data-races=0)
> +ifdef CONFIG_CC_IS_GCC


Can you insert a comment here?

# GCC 10 renamed --param=allow-store-data-races=0 to --allow-store-data-races


It will remind us of dropping this conditional
in the (long long distant) future.




> +KBUILD_CFLAGS  += $(call cc-option,--allow-store-data-races,--param=allow-store-data-races=0)
>  KBUILD_CFLAGS  += $(call cc-option,-fno-allow-store-data-races)
> +endif
>

-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASotywVkNjaBC7wYke70QL%2Ba0tMJEVEvRTPpt8dDgHE9Q%40mail.gmail.com.
