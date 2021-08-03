Return-Path: <clang-built-linux+bncBCTYRTHE4EDRBG56UKEAMGQEG7WR7OI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 887C23DE419
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Aug 2021 03:42:52 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id r14-20020a0c8d0e0000b02902e82df307f0sf16221137qvb.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 18:42:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627954971; cv=pass;
        d=google.com; s=arc-20160816;
        b=JV5o8IqTQfHola3kY3+lRvxXbZneMM6ztuQN8CDI/aM2U0BC1eZEpGgoB4JQVoSO6J
         dgjWGmE5cpsKmWpoi/Yz2LKl8JHT6JE1SWCtOMDubuMwUl0t+oxLBEcHwkXNLFyPGOYN
         E2Vv5h85+DXwcFiAOkuQTlF3wBAIyznexXkIYTfjBRfSfuqJRb999gUOd9FSIE8/+zZJ
         8YT7yvFr41Arg4U6+lJD9fmERZ8CeAewzyLm2JsC28RY/MF+fSQoraZ/gke8Kg4uDiXH
         z8GMtepDtSPX7iL3Zg6YdWmgkhNCZ7YhcVe4clEKIQraSlUtdzR7zCevhviVv5zwhjmu
         sY1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=aX3uVTtzqCeokw5wfktHsptdfp79SvyTWvbheAwjrOc=;
        b=R4anK/Kymff0A3Smp2EQaMXPwq1z06IzyF6w0ZKPCI8uPnsaiRHXms4t5VPrJaOUWl
         kwTJhy1miZhyTEY+zqN7VhGJjX8kQ4vBJdfT74gWVTcimDdEy9C/oQoS+VrS+KZEEA8N
         kT3zbya7rC63bMlFsp+qH6t/sBFJHARa2BbxJqOJgriRo3iGvbLGfFT1Bq4pjEnwmNtO
         KrzBiHA6XvFSxXIe+abWJnLUwcsScpi4cpOJHVtvWKqdD7UywxckRZcmHV9lqyrKVmOS
         FC6zQrvHAns/FIy+U+LPy/6N9QoAIwrDstWOx0Kt9dVuSbrjQXHQzIaB5HhsK20RI9QT
         fwJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kIwwj3o6;
       spf=pass (google.com: domain of raj.khem@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) smtp.mailfrom=raj.khem@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aX3uVTtzqCeokw5wfktHsptdfp79SvyTWvbheAwjrOc=;
        b=doYHx0KLk1bqYAnRmaAW3L1NiXSjHeTtfZORO2TFyN6jo+r6nUFeJQnZrTQDCidocJ
         5YvK7LXVu1NLCCIYlptqKZuwgk4tnOdlQkKH379udF+p2TKmk0vAyLU3deFt3n31WIz8
         Fi/L+J2jPBBWpN5v8ejRU1wJWVP0zWmP3nAAA1vqFCoLMHSMH4N73RldjHRBVYZ21g2C
         JGbWewZ5j3AimHtFbhOq7VXGnQ3+5agTLnqqgqPY7DyKUOAo2VEfCJqCI4FcUb1fepUp
         p8DA5kzlA0v/S/D7HKUBQ8giLI9D/5SUeLcQk/qheM34wNMc9Nt71hZptYlMu3nnr+Hz
         3+fg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aX3uVTtzqCeokw5wfktHsptdfp79SvyTWvbheAwjrOc=;
        b=axH7nP5qCSBRDzFNWhyG0ey7L7HfJ/83R1fFZFydo3dgqg93XrJg7D73EPX4AUVfss
         r1T0krhq16XAoWM3xnoAZsmY/8oH/Et6MFXRu3oUp2qf/JcW2ICGDS6ZwP0jw1EB91YV
         QFwbeocNDJYMA0R36dWDCIsZebEOAN5aW1WWAnn3Ohz4rrB2tIJ3rLFZl1URc2b1BOez
         IkSwes3gjfRuuBLdbDXB/vAWdOlcbh6K0dyqGopAVPjArh+6k2HKaUQxYCJZCmyoksRB
         J1/q6HPvPdxSJIL5vakczg3zqIVUFdQR3dhbjRm/wyGRQgOf6Akgmv92lGAwDS+vsdo0
         kMqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aX3uVTtzqCeokw5wfktHsptdfp79SvyTWvbheAwjrOc=;
        b=UGPCVdSO+YmHQUa/zOjYZPFpgqqdWahnIyU8GusSyBpZcyZBxOQ2IAIwHHmOlCVdP4
         mWM8jjDzIolDxG/0uQSZoFUzWVKY2VTWQW/4WWqvkqtZvCBxqy6tmyLLCQYMJphttkoh
         1hGM6/pWRa208FzcVvvZHGX1UqsomYUncsB7q0yaxmnP3lAKHyULPzAxDFhCbDuuN7H+
         so5ALkXr35cMV/v8i3aSzSk+URF4fGvp9hRVhpqJCJJuVd4YK/jslXJ2w7WZE04KfBd4
         IbEwZeStqAliLoEwv2Gy11kPj3IPoF4n/oTDtEbUmxwbVaBkgmHJgdRpsoOO6+v/JSn6
         wVaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530COU/+xvt48NaFv7wD/Gis2SMSa3ZsPu03b/134bc5wvZWioyN
	JWUl1xOJWXII5ELVlYcs6vg=
X-Google-Smtp-Source: ABdhPJyaQdw5FDbijG8WB29wxn3bcgPse5RvVNxhrIg+Uz90lv8WuUgYff40ch8W/ktC+lfiI+qZCw==
X-Received: by 2002:a05:6214:1329:: with SMTP id c9mr19246586qvv.18.1627954971351;
        Mon, 02 Aug 2021 18:42:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2699:: with SMTP id c25ls1118038qkp.0.gmail; Mon,
 02 Aug 2021 18:42:51 -0700 (PDT)
X-Received: by 2002:a05:620a:391:: with SMTP id q17mr1400221qkm.189.1627954970945;
        Mon, 02 Aug 2021 18:42:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627954970; cv=none;
        d=google.com; s=arc-20160816;
        b=xAAPZfRieHYyQ9K4ss/xr5MU3v+DNCETZChwqHSdD/VfyVLHhv5wB7FLGrvTDWAnPI
         JKQHtn58bkx6nGWizLFb5Oa/RVGQQXZQBUGh/uAYXl5VVv4Y5G2MMkh9gdklFTbij6gM
         515J8ji50/aTW2W2WTFK+z5ufTH224/01tt9dtx/hs5sxdREB1cCz6WUDiFitfgY9vAn
         lockI3eWhz9QB/eU/ujq7AXqVI+J0JtPGyEIAoZOk/xvS7s9FDxDpMg2sEQMyorL1B6M
         lxRFvI852Txq+Mlq9lfaYxIbZ6rjcPTx+6dQkdDyNWohkc58FMmGhhGg5/JlVJPN5Gk0
         nCRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LhJekVuEhxikT2dkgVUERpPtmPxTduNhkA9B/Qb17as=;
        b=e2I62GcLAFeOv0dyruTIr+cBwb7gnWaityiW9sseKGygS/CkSlm9w9Hor8xPU7KoIf
         waW4VYHwwwGGhyrmmjzmWx24uB/tr8ds/rlzJir2L5ZI5veVq7T08tCYbPnrK7RGrtD7
         nCQ+ep61n/t2KWoNr5fR+cZ/gLiUjYVq2IGF0gy8OLJlRxhMrI61aSwQSFIGt/tuEL34
         5s1daRGr5E2ngor+lZJo4dYpWidViYlx1TzOPUqLVfaviZ27/2k0+dNoETByJaF1V3mc
         UbZpjkn2G89U4siYGEWybyihlh7FP6fgSO7f+vqOPuWP3Ozp5Px5zKDBf6hKmw+kRrHV
         UidA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kIwwj3o6;
       spf=pass (google.com: domain of raj.khem@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) smtp.mailfrom=raj.khem@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com. [2607:f8b0:4864:20::730])
        by gmr-mx.google.com with ESMTPS id o13si576373qkp.0.2021.08.02.18.42.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Aug 2021 18:42:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of raj.khem@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) client-ip=2607:f8b0:4864:20::730;
Received: by mail-qk1-x730.google.com with SMTP id 14so293638qkc.4
        for <clang-built-linux@googlegroups.com>; Mon, 02 Aug 2021 18:42:50 -0700 (PDT)
X-Received: by 2002:a05:620a:109a:: with SMTP id g26mr19016731qkk.25.1627954970697;
 Mon, 02 Aug 2021 18:42:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210802234304.3519577-1-ndesaulniers@google.com>
In-Reply-To: <20210802234304.3519577-1-ndesaulniers@google.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 2 Aug 2021 18:42:24 -0700
Message-ID: <CAMKF1spr_i+GugX5Mtw8bKVAHRE=GaFK6ANF3=Ya1HQSSotRTQ@mail.gmail.com>
Subject: Re: [PATCH] scripts/Makefile.clang: default to LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Jonathan Corbet <corbet@lwn.net>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, clang-built-linux@googlegroups.com, 
	linux-kbuild@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: raj.khem@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kIwwj3o6;       spf=pass
 (google.com: domain of raj.khem@gmail.com designates 2607:f8b0:4864:20::730
 as permitted sender) smtp.mailfrom=raj.khem@gmail.com;       dmarc=pass
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

On Mon, Aug 2, 2021 at 4:43 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
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

I am not sure if LLVM_IAS should also impacts linker selection

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

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMKF1spr_i%2BGugX5Mtw8bKVAHRE%3DGaFK6ANF3%3DYa1HQSSotRTQ%40mail.gmail.com.
