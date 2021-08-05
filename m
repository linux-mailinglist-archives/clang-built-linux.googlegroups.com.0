Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBUMBWCEAMGQEGIV766I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 327F53E17B7
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 17:16:34 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id 16-20020a250b100000b029055791ebe1e6sf6565142ybl.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 08:16:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628176593; cv=pass;
        d=google.com; s=arc-20160816;
        b=ldi/wJeBuNmrVwUcqHiu3/KXGyWbYA5lACMcFnNixcwycFchcjQoxz9/FEzhcp63Dv
         5mImv6S3swDU5V2WwHPFzfSHDMPiPjiXv5rukc8152WZUpIHOLBCx180jVmghDRDyUGO
         kLKYsw1KmU5P+YkUgYQ/l5WKtZDJYlbMpGfYO7xPDcLmNTGzEDrnNp6jQzzJQ29/QV0N
         u2jR0Y49Rx9yEnyBlP/4FOyCW4DJ2AO27GsJ3beYacLI1I4ujeLYlrbGNiNCHrwLxW64
         lZdTk0Ite9iV1PYGw/6p87G2mgYypzhnY+e1wRXVuYizEfzYAsUGxjlXFXKL0q1IM9NI
         1xmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=1spVc55MFO6LucWhOGlCfBcUL6OEmzXTQgjXQDWU0UQ=;
        b=CCwi5dS+CnsRyVolSlfJiQ5FSDkF+XOepq7ISyUfr0ruJlvi31uyZy5QG7yA3HWKfd
         VQK/psnABYkA/1wdCZj2vtOU4QGzcqmuqrak0TMTrokiBRdUnHw2I6yrQPwXQuFQxBSL
         Egm3tkEL80HodE0rKX8DVQ3FNijPK8PfLMA8sBw5Ws/G+qMwH14iePPSNsHDDamRgCxm
         Ju91YZJez2HaZSqqGKVxBslMH+lZGzbdgE0mbGooOCVeQoDCCddKM6BOTRLcADjGxnth
         g4T8UNjNnxHljPs8BR0qlmoK/DXtVdbeS3BOB/PC8YssRru/6pgDutrzAVkqV2SDVsCT
         86HQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=NbSRuTWt;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1spVc55MFO6LucWhOGlCfBcUL6OEmzXTQgjXQDWU0UQ=;
        b=dfMUPcS5F8RSgDxIg7ZwxNNf1u79Acd+koS0z4BrvJUIvWyajU8AJWgOY/CdqdBVeO
         RuW1xJhve93fFkw5sUQ3yvOUf12kSCkJlzTqrgOHEtsCq5mIegFlWTDSLuCgCas3BsSf
         l1p5IkWpI9ykwCyb6EO/6jRmtK80XpQxDuEEnW+0IOKWOTz5v9QiLRi4NwTOF/kPtB0w
         /zWyHkjBuqKabQSal/NOSq8HG7OoMAOuxLdaB8ow1E79vjwTjQ6/PtQuI7MC/K5RwVu6
         IYYBZvFhG1zstwb7rLjgJCrHIioGVhP6G/9kAoLSDJxnyxQ56sZWNtmIrdvOERqK6zKb
         ZBYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1spVc55MFO6LucWhOGlCfBcUL6OEmzXTQgjXQDWU0UQ=;
        b=TAW+SnyqDphBiQk4adIkWsbMBQotw6bOGDFqxrKdAREz0need2QY1vs/kDovjbl7YY
         N+qbuHpzjVVfeCw7s3qb4Op91fBwsWfACEFxhLI1v+X6oh4IvY4XZSjg36FGrrqBCxlF
         pzZ03WmLpnINPhQ1Z8980sRCR9xI6iF6j6LG1Ri4iOc+0EuIp1TlN0f9QTvIbPvjmEdJ
         glmHCvgwcA8eLhqQbqiNuDVf7gpXL8afOsAkpIh3hKQZgOmjVHLq4Jt2EisAhDshxF3R
         W4xXl7NbxW//OSg5aDNhl+PNGcxOj9iBYJNCoUWzmD2XgWFhuL+toQ9ApRnySBzAAa7x
         JW2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530cCUrCUznaHfE0MfI8ygVX2g//i63hmw5f3gKrMkweDcgxygKn
	sKd28YpoOrOyQ9xC4bmZ98A=
X-Google-Smtp-Source: ABdhPJycjJw2g8uvsjqDOsZ3aOIlydd7Nhd9nW+QbeaCsryZxMnjE5lNWYzB4GbuLr5bfP5zXI11eQ==
X-Received: by 2002:a25:be02:: with SMTP id h2mr6734531ybk.91.1628176593268;
        Thu, 05 Aug 2021 08:16:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2444:: with SMTP id k65ls1722780ybk.3.gmail; Thu, 05 Aug
 2021 08:16:32 -0700 (PDT)
X-Received: by 2002:a05:6902:134c:: with SMTP id g12mr6407476ybu.251.1628176592834;
        Thu, 05 Aug 2021 08:16:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628176592; cv=none;
        d=google.com; s=arc-20160816;
        b=QW40I6nydmjkwafP3eihbmvp7g3uFt1tPtjh5zOfrDRxWC2hQxxJdrI+6dfA4otZgp
         Fv4kKy5TGdZ7DvmqZqNibQCOHJfI8JgSjJhisSxj5j8b4hZgNwr4DEAXc3swoaf6SdEc
         D+3F2b4wN0Oyb374ELc2UMJ9spSxcS7zE+4+VZCJj3ypUUqL5irVAq+6YPRlNAMgovdV
         IjgDnVg2UrS6ksGX9b+d2A5/Vi6NtsQW0UWFp/tDHarFy7XD9D5UjoCN8UdGGrc1Bwb4
         ancHMyFio0Oj9O3gnbHUQthzBbqiHnYRcyiKqVJ1Z9KSmQBgGasLFAHIP+0D/HLbEGrV
         rwpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=7JKVqdhk3wDgxUpgLrRBBJjC3akBTBo6VvDVu+02hPk=;
        b=YXh71jtGwPnNVVnaBRG61F9LDGWCXRZb+Mm3uNa+2hcEwvuDcFvubHYpVizg9oatzL
         sxbwSXHdK2oKLBpnkulq/y78r55pI6ZeItNrmMxEF9b9HCbNmgEIVlSBLQuSyWN80vFb
         Apk6HiV3F3rlE89Hj2aLUhnqHi9gO9l5cYchzESsC4fMguFzQSHCcoUoYluyFtgNtW/3
         ZvIJwRB60Pb65iB294lnM9OMIS+ip7JVBaBTktza8eKaiYjMiWB7JopoCZvlF52CPVFQ
         E8gNnJgs74WtMmtEG7lCg5KSxsI5lTv3COss2gkR5OTVeRg8cge37SlcbdKtSQ2A2w9K
         tR+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=NbSRuTWt;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id d10si358437ybq.1.2021.08.05.08.16.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Aug 2021 08:16:32 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 175FG7lC002687
	for <clang-built-linux@googlegroups.com>; Fri, 6 Aug 2021 00:16:07 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 175FG7lC002687
X-Nifty-SrcIP: [209.85.216.41]
Received: by mail-pj1-f41.google.com with SMTP id cl16-20020a17090af690b02901782c35c4ccso6511176pjb.5
        for <clang-built-linux@googlegroups.com>; Thu, 05 Aug 2021 08:16:07 -0700 (PDT)
X-Received: by 2002:a63:1b5c:: with SMTP id b28mr203382pgm.175.1628176566664;
 Thu, 05 Aug 2021 08:16:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210802234304.3519577-1-ndesaulniers@google.com>
In-Reply-To: <20210802234304.3519577-1-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 6 Aug 2021 00:15:29 +0900
X-Gmail-Original-Message-ID: <CAK7LNATWm94K=UcSNn88PyPST38rfe_31vLLpDf=ERPnKnBvVA@mail.gmail.com>
Message-ID: <CAK7LNATWm94K=UcSNn88PyPST38rfe_31vLLpDf=ERPnKnBvVA@mail.gmail.com>
Subject: Re: [PATCH] scripts/Makefile.clang: default to LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Khem Raj <raj.khem@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Jonathan Corbet <corbet@lwn.net>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "open list:SIFIVE DRIVERS" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=NbSRuTWt;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Tue, Aug 3, 2021 at 8:43 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> LLVM_IAS=1 controls enabling clang's integrated assembler via
> -integrated-as. This was an explicit opt in until we could enable
> assembler support in Clang for more architecures. Now we have support
> and CI coverage of LLVM_IAS=1 for all architecures except a few more
> bugs affecting s390 and powerpc.
>
> This commit flips the default from opt in via LLVM_IAS=1 to opt out via
> LLVM_IAS=0.  CI systems or developers that were previously doing builds
> with CC=clang or LLVM=1 without explicitly setting LLVM_IAS must now
> explicitly opt out via LLVM_IAS=0, otherwise they will be implicitly
> opted-in.
>
> This finally shortens the command line invocation when cross compiling
> with LLVM to simply:
>
> $ make ARCH=arm64 LLVM=1
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1434
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Note: base is:
> https://lore.kernel.org/lkml/20210802183910.1802120-1-ndesaulniers@google.com/
>
>  Documentation/kbuild/llvm.rst | 14 ++++++++------
>  Makefile                      |  2 +-
>  arch/riscv/Makefile           |  2 +-
>  scripts/Makefile.clang        |  6 +++---
>  4 files changed, 13 insertions(+), 11 deletions(-)
>
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index f8a360958f4c..16712fab4d3a 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -60,17 +60,14 @@ They can be enabled individually. The full list of the parameters: ::
>           OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump READELF=llvm-readelf \
>           HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar HOSTLD=ld.lld
>
> -Currently, the integrated assembler is disabled by default. You can pass
> -``LLVM_IAS=1`` to enable it.
> +Currently, the integrated assembler is enabled by default. You can pass
> +``LLVM_IAS=0`` to disable it.
>
>  Omitting CROSS_COMPILE
>  ----------------------
>
>  As explained above, ``CROSS_COMPILE`` is used to set ``--target=<triple>``.
>
> -Unless ``LLVM_IAS=1`` is specified, ``CROSS_COMPILE`` is also used to derive
> -``--prefix=<path>`` to search for the GNU assembler and linker.
> -
>  If ``CROSS_COMPILE`` is not specified, the ``--target=<triple>`` is inferred
>  from ``ARCH``.
>
> @@ -78,7 +75,12 @@ That means if you use only LLVM tools, ``CROSS_COMPILE`` becomes unnecessary.
>
>  For example, to cross-compile the arm64 kernel::
>
> -       make ARCH=arm64 LLVM=1 LLVM_IAS=1
> +       make ARCH=arm64 LLVM=1
> +
> +If ``LLVM_IAS=0`` is specified, ``CROSS_COMPILE`` is also used to derive
> +``--prefix=<path>`` to search for the GNU assembler and linker. ::
> +
> +       make ARCH=arm64 LLVM=1 LLVM_IAS=0 CROSS_COMPILE=aarch64-linux-gnu-
>
>  Supported Architectures
>  -----------------------
> diff --git a/Makefile b/Makefile
> index 444558e62cbc..b24b48c9ebb7 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -845,7 +845,7 @@ else
>  DEBUG_CFLAGS   += -g
>  endif
>
> -ifneq ($(LLVM_IAS),1)
> +ifeq ($(LLVM_IAS),0)
>  KBUILD_AFLAGS  += -Wa,-gdwarf-2
>  endif
>
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index bc74afdbf31e..807f7c94bc6f 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -41,7 +41,7 @@ endif
>  ifeq ($(CONFIG_LD_IS_LLD),y)
>         KBUILD_CFLAGS += -mno-relax
>         KBUILD_AFLAGS += -mno-relax
> -ifneq ($(LLVM_IAS),1)
> +ifeq ($(LLVM_IAS),0)
>         KBUILD_CFLAGS += -Wa,-mno-relax
>         KBUILD_AFLAGS += -Wa,-mno-relax
>  endif



Please drop these two hunks.

I will apply my patch instead.
https://lore.kernel.org/patchwork/patch/1472580/






> diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
> index 1f4e3eb70f88..3ae63bd35582 100644
> --- a/scripts/Makefile.clang
> +++ b/scripts/Makefile.clang
> @@ -22,12 +22,12 @@ else
>  CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
>  endif # CROSS_COMPILE
>
> -ifeq ($(LLVM_IAS),1)
> -CLANG_FLAGS    += -integrated-as
> -else
> +ifeq ($(LLVM_IAS),0)
>  CLANG_FLAGS    += -no-integrated-as
>  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
>  CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> +else
> +CLANG_FLAGS    += -integrated-as
>  endif
>  CLANG_FLAGS    += -Werror=unknown-warning-option
>  KBUILD_CFLAGS  += $(CLANG_FLAGS)
>
> base-commit: d7a86429dbc691bf540688fcc8542cc20246a85b
> prerequisite-patch-id: 0d3072ecb5fd06ff6fd6ea81fe601f6c54c23910
> prerequisite-patch-id: 2654829756eb8a094a0ffad1679caa75a4d86619
> prerequisite-patch-id: a51e7885ca2376d008bbf146a5589da247806f7b
> --
> 2.32.0.554.ge1b32706d8-goog
>


When we negate a flag that is enabled by default,
which is a common way?
 - set it to '0'
 - set is to empty


So, I was wondering if we should support
not only LLVM_IAS=0 but also LLVM_IAS=.

What do you think?


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATWm94K%3DUcSNn88PyPST38rfe_31vLLpDf%3DERPnKnBvVA%40mail.gmail.com.
