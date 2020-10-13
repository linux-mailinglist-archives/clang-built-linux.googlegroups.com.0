Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLOYTD6AKGQEUERH54Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9CB28D674
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 00:37:34 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id i14sf1002128ils.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 15:37:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602628653; cv=pass;
        d=google.com; s=arc-20160816;
        b=b+309je/GXLSGAQVgtwXmukla2S3Jp9kFeKFMJhtSPQPfG5VPTSPYomMdFu3OWEskv
         6YmCbQKaTd6ZeIdMrS3SkIn+MQzfZGuXWsivZyapykBc1MAeoWknzkY3DvqdrRJA7qYk
         B7iUdjl5FWoHDUk2dsG31xeMS54VHtHM7t0tX6fVBze51No4GAk0JAKVhPVd9ASNM8mQ
         vDMFg6DFf0LQlWnRwcme8eIbb2brxfLQ7uDjjd3gLf/So0EkypTEgZhQg8pxRPdllNEo
         em4BduC6emfDcbUL/E5LBUpvDFaMqCZrn6K7poDrGksJYP5KL8A8wcsG4CE2qiKXRw6E
         e1PQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TLnUtDioJhcQKxypD2n/qv46ivMjkquYuSUnl+5Xc8M=;
        b=gcKHetATsTezd2aUAbGZ/9oQmEi5e3WMp9UnKm1IFFeWrn45E3aZkv5eUjPI2uiEGh
         KfosOAg8jdXm2DZXjbjO0Of3HXNT2IdwaG7XJP2EbRSX9NQEFZWUMo3me2H1y5S0fTmC
         W0lo/VRIkyF1cQ5WUZBBsCTX1shlYFUu05p5MD4vFywtnvQEOmKDgDsFui6OobUIss5i
         Tl+5U8v7bo06W2/8tStY8jknoHyoS02tIaExVDxf3rwMQeMhnE5X5j7BRKu4WurbfmLd
         84k5E08J+umd7o9kI36QQEmFT2x7MnP9x1wmahLu7GKB8CXGuA27+ruzwZH+Foqn2raY
         7n2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="d6OEbf/+";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TLnUtDioJhcQKxypD2n/qv46ivMjkquYuSUnl+5Xc8M=;
        b=P3WToVcA5ZLD+jyYO2Nr6awjx7zmCn51CwCK0oQXKEYhKZvLqAFb8CG8SMVlmnvmHh
         vflhK+jP7wqb3eFM+Nbas3JFRfzEwcKxE9WOgS10BqzwSD4R6fyk63m6XdgVzrm6yKZN
         yb2C5X73GHrLuVusH8kmSqlvriWIA2fPrcJjnEHFix9c7L4KKNCtMZAe1SzH88/+rHNb
         PMZwBTam3uRwTnTXy2c84gRv7/FmvRsTo+tQr1vGXPrEWI3adKqTUwsbOUCr+t1VJjOA
         pHi5+jjaaWvEGFeh1/fUtVA5yazIAx3JO5VQ3W44xZuzgvAP15QjnzywgOmwjWUgrPyG
         p+Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TLnUtDioJhcQKxypD2n/qv46ivMjkquYuSUnl+5Xc8M=;
        b=iTJ0boX7htF4vUXwXsmyo/MxoVw8p8wp9HsHnS2GPc70+y2Q/Q1V292JbAALEK8V9s
         yW8b+z9bepubz3ZvdY7tIT0IHO4aZOIemcGV/Huf+DzuISQK9vU4JgH1WfzGKlfN7w+q
         HEyJRQGk9JzNj2kce6/mU5uxkWoz3GSQMXcvaILP1RYLEhIgqJ18ZwZHIya+vRkBPMEu
         NazXdqoqNWWi5VDCfeJyX0V6MsLcUbesfts4uCLPjGZdI4bDnMxjoTHciS6uRC0kBBYw
         /s846tNdlpdWLctVvi6lqxB9EH0kjYg2pRBBzIhxt/IvQqPcfumAeynSG7o9OPqbZ4UJ
         i/ig==
X-Gm-Message-State: AOAM5323bo8QqUCy29xDR/gW/5uzGmvk7xMu7uAojxnyFvUGmYucgqVf
	lFovyhVMqpVPiCpQENwNAdU=
X-Google-Smtp-Source: ABdhPJw4VxnIvzlUobSgrS2yszSabpV9tikpb+tHNVeZE4FwP/CANDvTBJVZOuueKHrArK7N5/vJMw==
X-Received: by 2002:a02:c499:: with SMTP id t25mr834016jam.101.1602628653762;
        Tue, 13 Oct 2020 15:37:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5b47:: with SMTP id p68ls374383ilb.5.gmail; Tue, 13 Oct
 2020 15:37:33 -0700 (PDT)
X-Received: by 2002:a92:3554:: with SMTP id c81mr1738788ila.265.1602628653443;
        Tue, 13 Oct 2020 15:37:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602628653; cv=none;
        d=google.com; s=arc-20160816;
        b=x6Kb9RvZS6z8fJzBVIvw9LBGxdJ1qfxtyBw5pPh81i7pfgfaSMUjFiXFlCPFH/0skO
         TAR4YYH7B2k3BnD262rc/fZWhGHldwW2A/b+Ww7MGX08F+AzP+6jiRo0ZVt+uS+//9eW
         i4E25rjxKHvb3Bhx5Ks1PjANbL8J2whgTLHtjOBkBx1J0yIzEf4bXKnAdtZV9az0CKJm
         gX1XQ8vIkaaIQKLWSPpPNPz5f3bqNhfgzB9R4JrfNGodMDphupAPLKvDuwyRcjSLG4Tg
         JgM54D+lXO85yezNn6w03goVEd8nQtX4cYCkHQJxuJKJu2UOCMvgHD3DbKK/PRnkVWta
         pnSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=t+96sOhB1uhq2YjHHSuH7V+uCK/i5ddWXeBGT6qagJA=;
        b=Aj8cJQHRPt/oFEkWSc2wX1qgDuWV7O8ygfEfe2dhs7qDhI4atbaJMrOpn7D03BNNka
         iWsE13jTv0kTvz2qpwjGiM/AOhqa/0AUpQiTH+E9lVf6xY+Xluu2SHnrlIiI+su2BcDM
         0kyM+xQtlcOmRweS9nJG3sDOyVC31Ph/fspqRwI2l/qoUWHEDYx6WVeYeXkQ0c7VolRw
         ZAV5L7UDcZRibo/1OP1vVOMIJt+7NIl7UZNntp4JI+LFHQGAPc4F6D3LQWJS7+is4oaV
         ByuNcVPlXWqQqRHgDUI5Dx/kj//hhRJB6qWEp2WK33dOqhg9YcRL0NZbsbiRQB7F2nSW
         s13g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="d6OEbf/+";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id i8si61006ioo.0.2020.10.13.15.37.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 15:37:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id q21so626522pgi.13
        for <clang-built-linux@googlegroups.com>; Tue, 13 Oct 2020 15:37:33 -0700 (PDT)
X-Received: by 2002:a63:1f03:: with SMTP id f3mr1305731pgf.381.1602628652646;
 Tue, 13 Oct 2020 15:37:32 -0700 (PDT)
MIME-Version: 1.0
References: <20201013033947.2257501-1-natechancellor@gmail.com>
In-Reply-To: <20201013033947.2257501-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 13 Oct 2020 15:37:21 -0700
Message-ID: <CAKwvOdm72u3J-3stdxtQhq5LKy=2u9HjV=z0n55pi16nq6VX2w@mail.gmail.com>
Subject: Re: [PATCH] arm64: vdso32: Allow ld.lld to properly link the VDSO
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Vincenzo Frascino <vincenzo.frascino@arm.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="d6OEbf/+";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Mon, Oct 12, 2020 at 8:41 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> As it stands now, the vdso32 Makefile hardcodes the linker to ld.bfd
> using -fuse-ld=bfd with $(CC). This was taken from the arm vDSO
> Makefile, as the comment notes, done in commit d2b30cd4b722 ("ARM:
> 8384/1: VDSO: force use of BFD linker").
>
> Commit fe00e50b2db8 ("ARM: 8858/1: vdso: use $(LD) instead of $(CC) to
> link VDSO") changed that Makefile to use $(LD) directly instead of
> through $(CC), which matches how the rest of the kernel operates. Since
> then, LD=ld.lld means that the arm vDSO will be linked with ld.lld,
> which has shown no problems so far.
>
> Allow ld.lld to link this vDSO as we do the regular arm vDSO. To do
> this, we need to do a few things:
>
> * Add a LD_COMPAT variable, which defaults to $(CROSS_COMPILE_COMPAT)ld
>   with gcc and $(LD) if LLVM is 1, which will be ld.lld, or
>   $(CROSS_COMPILE_COMPAT)ld if not, which matches the logic of the main
>   Makefile. It is overrideable for further customization and avoiding
>   breakage.
>
> * Eliminate cc32-ldoption, which matches commit 055efab3120b ("kbuild:
>   drop support for cc-ldoption").
>
> With those, we can use $(LD_COMPAT) in cmd_ldvdso and change the flags
> from compiler linker flags to linker flags directly. We eliminate
> -mfloat-abi=soft because it is not handled by the linker.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1033
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the patch and summary of related changes! This is
immediately useful for Android.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> NOTE: This patch is currently based on the kbuild tree due to the
> --build-id -> --build-id=sha1 change that Bill did. If the arm64
> maintainers would prefer to take this patch, I can rebase it (althought
> presumably this won't hit mainline until at least 5.11 so it can
> probably just stay as is for now).
>
>  arch/arm64/kernel/vdso32/Makefile | 23 ++++++++++++-----------
>  1 file changed, 12 insertions(+), 11 deletions(-)
>
> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> index 7f96a1a9f68c..1cf00c58805d 100644
> --- a/arch/arm64/kernel/vdso32/Makefile
> +++ b/arch/arm64/kernel/vdso32/Makefile
> @@ -22,16 +22,21 @@ endif
>
>  CC_COMPAT ?= $(CC)
>  CC_COMPAT += $(CC_COMPAT_CLANG_FLAGS)
> +
> +ifeq ($(LLVM),1)
> +LD_COMPAT ?= $(LD)
> +else
> +LD_COMPAT ?= $(CROSS_COMPILE_COMPAT)ld
> +endif
>  else
>  CC_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc
> +LD_COMPAT ?= $(CROSS_COMPILE_COMPAT)ld
>  endif
>
>  cc32-option = $(call try-run,\
>          $(CC_COMPAT) $(1) -c -x c /dev/null -o "$$TMP",$(1),$(2))
>  cc32-disable-warning = $(call try-run,\
>         $(CC_COMPAT) -W$(strip $(1)) -c -x c /dev/null -o "$$TMP",-Wno-$(strip $(1)))
> -cc32-ldoption = $(call try-run,\
> -        $(CC_COMPAT) $(1) -nostdlib -x c /dev/null -o "$$TMP",$(1),$(2))
>  cc32-as-instr = $(call try-run,\
>         printf "%b\n" "$(1)" | $(CC_COMPAT) $(VDSO_AFLAGS) -c -x assembler -o "$$TMP" -,$(2),$(3))
>
> @@ -122,14 +127,10 @@ dmbinstr := $(call cc32-as-instr,dmb ishld,-DCONFIG_AS_DMB_ISHLD=1)
>  VDSO_CFLAGS += $(dmbinstr)
>  VDSO_AFLAGS += $(dmbinstr)
>
> -VDSO_LDFLAGS := $(VDSO_CPPFLAGS)
>  # From arm vDSO Makefile
> -VDSO_LDFLAGS += -Wl,-Bsymbolic -Wl,--no-undefined -Wl,-soname=linux-vdso.so.1
> -VDSO_LDFLAGS += -Wl,-z,max-page-size=4096 -Wl,-z,common-page-size=4096
> -VDSO_LDFLAGS += -nostdlib -shared -mfloat-abi=soft
> -VDSO_LDFLAGS += -Wl,--hash-style=sysv
> -VDSO_LDFLAGS += -Wl,--build-id=sha1
> -VDSO_LDFLAGS += $(call cc32-ldoption,-fuse-ld=bfd)
> +VDSO_LDFLAGS += -Bsymbolic --no-undefined -soname=linux-vdso.so.1
> +VDSO_LDFLAGS += -z max-page-size=4096 -z common-page-size=4096
> +VDSO_LDFLAGS += -nostdlib -shared --hash-style=sysv --build-id=sha1
>
>
>  # Borrow vdsomunge.c from the arm vDSO
> @@ -189,8 +190,8 @@ quiet_cmd_vdsold_and_vdso_check = LD32    $@
>        cmd_vdsold_and_vdso_check = $(cmd_vdsold); $(cmd_vdso_check)
>
>  quiet_cmd_vdsold = LD32    $@
> -      cmd_vdsold = $(CC_COMPAT) -Wp,-MD,$(depfile) $(VDSO_LDFLAGS) \
> -                   -Wl,-T $(filter %.lds,$^) $(filter %.o,$^) -o $@
> +      cmd_vdsold = $(LD_COMPAT) $(VDSO_LDFLAGS) \
> +                   -T $(filter %.lds,$^) $(filter %.o,$^) -o $@
>  quiet_cmd_vdsocc = CC32    $@
>        cmd_vdsocc = $(CC_COMPAT) -Wp,-MD,$(depfile) $(VDSO_CFLAGS) -c -o $@ $<
>  quiet_cmd_vdsocc_gettimeofday = CC32    $@
>
> base-commit: 172aad81a882443eefe1bd860c4eddc81b14dd5b
> --
> 2.29.0.rc0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm72u3J-3stdxtQhq5LKy%3D2u9HjV%3Dz0n55pi16nq6VX2w%40mail.gmail.com.
