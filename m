Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIFGW2EAMGQE7UANSUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E773E2FED
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Aug 2021 21:53:05 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id l9-20020a0568080209b0290267587da9dasf1011514oie.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Aug 2021 12:53:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628279584; cv=pass;
        d=google.com; s=arc-20160816;
        b=USiF0kMvRhFNJ1RoB8G//9/vBRrhVqBvG8La6CUkJqevrz8lzyAfeRj1OwVkld9hni
         PJKz1KZZCJEHFog2ierVfcq19ORCUr5EEgBbjZ6IPSkHlEUSrxkULwF5KcnIctPmsPic
         ApxlkkANbI/ytfevwl9ZbF3ILqj0DaRbYk8WMJ+vAzyMgG4/t/UpXwmz5btY9AuZcpEQ
         ITYXrxoulbbYfaz5RvyAMQv14X5iwUwdp0FekVCbPzv1HP9e3vmyUJ+pG3Bb6eh95ABD
         CHz/Sh/J3xj6i+ot4jS6gEsAWAkM+4A0xdI9TqnrGVknsnkDX63563640+ElQVX+kRuH
         oLNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hBqQt2HWm1hSrJINcsiR6oNM0Labgffw6cbLXvqUnds=;
        b=krhAcpIsFZzKqbvEvUbVOAF7uiDtUtWH/ykbwNvJ0jr5HwXc08gOqI+P+NQT0z/0w2
         i2F3FaFzdyr1Zb6SqW4ebwkBL5Bkk6FiOT2WBZ6o4Va/njlkfx77wUdcLVF4BNK8rC0s
         DI9abfZ7vgRWp6Xi+Ypv8LNllqocPfWg3NTKSXW2hvbpM5qK30lEk6VlivQvGkGM+d/K
         71O/rwnpNR3ldCQQTv4IH3xK34EExS4KaAbsvDZneSYCuCbr2iwFGociercmtlwwc4/a
         zmPDy2tPBpjmt9orhFVnBrwybRpMUKdIFpbXb0b06lXgU0dEVaeC8ZE1uNmF9QkgDhFu
         Z5iA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BVzg6QCV;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hBqQt2HWm1hSrJINcsiR6oNM0Labgffw6cbLXvqUnds=;
        b=QjgK744VE3c4dNDcFYg6uOVKp1tUkE2ACWoExdS75tGX8oIYv6+NuX+10jEYmcvzNF
         adrKbKpjytjJrGAt8h41ggdYVfMPlMXnCOc6Ib8zODHhWChRzBgx2HeYLrAOFK12VrcB
         rQUnnaQ8ZzRHN2FfpFjqO0IkA62mlT9OToFdiukC66/mJad/PQEHcY9cdlCyUneAOf0W
         WJs1BnTTa84abgN2CKk1uTFmTG3vbNopwtsjrQ/vwIrX2cwJVjANN68evEzlO3xntYZD
         hjVhfaEx/W/e3bTTHNCyWrwCXfkMLIqExG+x14AKkwshUUlWWTG92zT1a4V8dDyqD4+g
         4KPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hBqQt2HWm1hSrJINcsiR6oNM0Labgffw6cbLXvqUnds=;
        b=ZXoxAOOg6RzrzbX9yv0pa/audy/17+/SukjhpJu21Bson3z0jjB6wLncpl8w25fiOo
         6DU+2sgS4aUhurtoOF6hs1OBueK8Q8EV/1SRtV0YmxAKrWrAqLZxX4EO4Uk110sZMfCf
         STGJ12ip0f+2/mRWtkNd2wgoOr2ZUyNQVj38LzlGJ0CvFgQkxmwGTp+d3fbnnLVfUS+g
         ZqH0Xg3loC+P2YIyZn+21K8bLWVa17cmgLJa9pK37FV/5BOgshICm6HUmCdLlRoGeZAj
         eP7MD6WH6TBAG9B/YEoTIcuHFKXUny4sf5sLJU9PROF7yzL2sIdX31LjcU7fwS7utm71
         Rqdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xJHq/q9XRMmu6oS8CwkoWgrBWvyLW29PlsxDfsMaPdJtcwarV
	TFTHFML0nyfJNgqoSzkFIbo=
X-Google-Smtp-Source: ABdhPJyJc2PQMRw4QRqcIm8rLx0ZWtgKwdPn1M4oCV1XISbL/dxzk7sjs3AB/kC/+ZJqYcUrSOeUrw==
X-Received: by 2002:a9d:3f1:: with SMTP id f104mr2312866otf.143.1628279584242;
        Fri, 06 Aug 2021 12:53:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:19fd:: with SMTP id t29ls540977ott.0.gmail; Fri, 06
 Aug 2021 12:53:03 -0700 (PDT)
X-Received: by 2002:a05:6830:1e34:: with SMTP id t20mr8839417otr.166.1628279583851;
        Fri, 06 Aug 2021 12:53:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628279583; cv=none;
        d=google.com; s=arc-20160816;
        b=ERUt5ZqALFdnalbMqx1R/zgDJQQEmacT8bTseXIQiVC+53vcImFmL4sqxbFkqzG+Tt
         avhTjitry0x4Tkuh8czTf287RnCtiheHcOF9OHCTQkI1H+mPB8GobfDDHo/wDGLEYaqx
         SPIWjuInj9xjcSE4B41qc9zSX8b50JJussh1zTEsfmi6fhZEnwYpqKyH9Zb4ZsiyW8pb
         xIhr5JSb3FUD3+EMUUVq5KyYLw1UrCdtPJayPEUndzCpOTAUDv0LyQI9MtTky7OAwyVr
         BWqVjxK+lN7rGe+Cy+RwAfRj+OSBRpjonbA+Rt+lovvC2AzmlWRtjTo38azBVYwI/zfp
         2yjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fqeTstQOPb9xW5vND2jKma8I6yd/SpbGGuJyhjlurvc=;
        b=NMxCBLV29DV2SOfWJHV7vi5DVBVz4ENgFcUXvPXktbExVfYMwSGsJ4RzRtvbHc8iKa
         sKlzoKb4e+u+DipAMsjLPC4f8rbgPjbYkbZQ/bxqanRUoxLR8JjmQrvNS4ZMUyqPeIdL
         P5/b7v+nKFWcP/NPKbp+MApiFOqTt32Gwx+HE2NMrzFYDFtbU4uAIl3GfPhPlMrn5ZVG
         43EpEPOqocN1VxEdSlORpLaiWNCPxcij8njxE5/jdcq4LUIK+dNPbrMSAcxfmzJFAr7W
         H2SxxkrykwfXWiq3P2TIvkkOx2Lz5SlJyG19qrbdF54SU88M8Bm+IPz5E78EqHkw4wEQ
         lK+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BVzg6QCV;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m17si633895otk.1.2021.08.06.12.53.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Aug 2021 12:53:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6B09361050;
	Fri,  6 Aug 2021 19:52:59 +0000 (UTC)
Date: Fri, 6 Aug 2021 12:52:56 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Khem Raj <raj.khem@gmail.com>,
	Matthew Wilcox <willy@infradead.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Michael Ellerman <mpe@ellerman.id.au>,
	linuxppc-dev@lists.ozlabs.org, Heiko Carstens <hca@linux.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	linux-s390@vger.kernel.org
Subject: Re: [PATCH v2] scripts/Makefile.clang: default to LLVM_IAS=1
Message-ID: <YQ2TGPwjvn8w4rKs@archlinux-ax161>
References: <20210806172701.3993843-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210806172701.3993843-1-ndesaulniers@google.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=BVzg6QCV;       spf=pass
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

On Fri, Aug 06, 2021 at 10:27:01AM -0700, Nick Desaulniers wrote:
> LLVM_IAS=1 controls enabling clang's integrated assembler via
> -integrated-as. This was an explicit opt in until we could enable
> assembler support in Clang for more architecures. Now we have support
> and CI coverage of LLVM_IAS=1 for all architecures except a few more
> bugs affecting s390 and powerpc.

The powerpc and s390 folks have been testing with clang, I think they
should have been on CC for this change (done now).

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
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

I am still not really sure how I feel about this. I would prefer not to
break people's builds but I suppose this is inevitabile eventually.

A little support matrix that I drafted up where based on ARCH and clang
version for LLVM_IAS=1 support:

             | 10.x | 11.x | 12.x | 13.x | 14.x |
ARCH=arm     |  NO  |  NO  |  NO  |  YES |  YES |
ARCH=arm64   |  NO  |  YES |  YES |  YES |  YES |
ARCH=i386    |  YES |  YES |  YES |  YES |  YES |
ARCH=mips*   |  YES |  YES |  YES |  YES |  YES |
ARCH=powerpc |  NO  |  NO  |  NO  |  NO  |  NO  |
ARCH=s390    |  NO  |  NO  |  NO  |  NO  |  NO  |
ARCH=x86_64  |  NO  |  YES |  YES |  YES |  YES |

The main issue that I have with this change is that all of these
architectures work fine with CC=clang and their build commands that used
to work fine will not with this change, as they will have to specify
LLVM_IAS=0. I think that making this change for LLVM=1 makes sense but
changing the default for just CC=clang feels like a bit much at this
point in time. I would love to hear from others on this though, I am not
going to object much further than this.

Regardless of that concern, this patch does what it says so:

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
> Changes v1 -> v2:
> * Drop "Currently" from Documentation/, as per Matthew.
> * Drop Makefile and riscv Makefile, rebase on
>   https://lore.kernel.org/lkml/20210805150102.131008-1-masahiroy@kernel.org/
>   as per Masahiro.
> * Base is kbuild/for-next, plus
>   https://lore.kernel.org/lkml/20210802183910.1802120-1-ndesaulniers@google.com/
>   https://lore.kernel.org/lkml/20210805150102.131008-1-masahiroy@kernel.org/.
> 
>  Documentation/kbuild/llvm.rst | 14 ++++++++------
>  scripts/Makefile.clang        |  6 +++---
>  2 files changed, 11 insertions(+), 9 deletions(-)
> 
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index f8a360958f4c..e87ed5479963 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -60,17 +60,14 @@ They can be enabled individually. The full list of the parameters: ::
>  	  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump READELF=llvm-readelf \
>  	  HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar HOSTLD=ld.lld
>  
> -Currently, the integrated assembler is disabled by default. You can pass
> -``LLVM_IAS=1`` to enable it.
> +The integrated assembler is enabled by default. You can pass ``LLVM_IAS=0`` to
> +disable it.
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
> -	make ARCH=arm64 LLVM=1 LLVM_IAS=1
> +	make ARCH=arm64 LLVM=1
> +
> +If ``LLVM_IAS=0`` is specified, ``CROSS_COMPILE`` is also used to derive
> +``--prefix=<path>`` to search for the GNU assembler and linker. ::
> +
> +	make ARCH=arm64 LLVM=1 LLVM_IAS=0 CROSS_COMPILE=aarch64-linux-gnu-
>  
>  Supported Architectures
>  -----------------------
> diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
> index 1f4e3eb70f88..3ae63bd35582 100644
> --- a/scripts/Makefile.clang
> +++ b/scripts/Makefile.clang
> @@ -22,12 +22,12 @@ else
>  CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
>  endif # CROSS_COMPILE
>  
> -ifeq ($(LLVM_IAS),1)
> -CLANG_FLAGS	+= -integrated-as
> -else
> +ifeq ($(LLVM_IAS),0)
>  CLANG_FLAGS	+= -no-integrated-as
>  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
>  CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> +else
> +CLANG_FLAGS	+= -integrated-as
>  endif
>  CLANG_FLAGS	+= -Werror=unknown-warning-option
>  KBUILD_CFLAGS	+= $(CLANG_FLAGS)
> 
> base-commit: d7a86429dbc691bf540688fcc8542cc20246a85b
> prerequisite-patch-id: 0d3072ecb5fd06ff6fd6ea81fe601f6c54c23910
> prerequisite-patch-id: 2654829756eb8a094a0ffad1679caa75a4d86619
> prerequisite-patch-id: a51e7885ca2376d008bbf146a5589da247806f7b
> prerequisite-patch-id: 6a0342755115ec459610657edac1075f069faa3d
> -- 
> 2.32.0.605.g8dce9f2422-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQ2TGPwjvn8w4rKs%40archlinux-ax161.
