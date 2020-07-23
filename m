Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBX5L4T4AKGQEWV55IAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA1922A6A9
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 06:45:21 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id g18sf1798026otj.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 21:45:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595479520; cv=pass;
        d=google.com; s=arc-20160816;
        b=O3K7+cSp22MT8WW11heZpqKpImIWfiqUrFLQOoGapZtD8CF8ARJXCKpd8y1jf+h5Pi
         9uJzo1fFYSDK40SJ1Vm2ba80u+Mz12B8FV5Kps+jzkpLccn62L29W5aLUl5iL4Q4Lxsd
         /rpy45HDlihHUnOf+Swvj/KIAhLo8vjipja/2vvhm78OsCtYRfR4kE7iCfN2a8Ba2rFW
         f+ex0bKQBuTHZoH9CbwSPcTA0M5qFyC8cedkYqYwD2thRpZCmJLRjQsdODKGhwTuVzQm
         T9pfox4PoMnTeZ2m/YViUhuZ7JjpUGGIa5GKUT+xm0dQYF9bI/cNVqQ9xk9fm/pDZsZe
         27fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=5q/njeuyzeMP9Vp2sBqL9QH3ClY25d5Otf65RkwJ1do=;
        b=LZ4TrbI9ULgJDVxz5C/jA+yShXmJbYXA+Z7hWnDzYqcBJ7Q2GZwOEE5Dedlh1nVj9n
         LW1iG2WGeRR+oaKV5rJjwuN4GAHxgf/43ZQ8tN09y3E6qjkh4tLKbH1mm7SpooOCP3/4
         VsXOBLzMA+c/sCjBxzXXT+7XsBrBlVLKg3xhHryNt3cRb6E9cIVAUTqv9F1W9kCs5jVG
         aRptyBAJ8IeVsBcwyzI4QPqgs4pBoJR6IYNsOU806ijWMCG5U9G0IQKZYvyPDP0LSK3w
         jRexGUt//D0+KdlpA/jFH4RL7NCNryXEOC0p0jostE3CeaT6c3G2yn1xWaxivj8F1/jY
         gxBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rT2onajD;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5q/njeuyzeMP9Vp2sBqL9QH3ClY25d5Otf65RkwJ1do=;
        b=BS/IEzUVlNFnNIB18uSlozojQfd6IV1wyJ+/xJo66PgMTuqvQuYaX43CkK95sq+Zus
         DsQ7HY5hrCKM4ZEs0WfmiEAsVJR8a+tVzSD5vXMTElRK7dQNnUOx5yYTwJahrcmYjkoz
         HEDrqUf85RK2wr/7pATtft9N76XiLUi9Aa8EU2QTZn+ria0a91P2KABTylrbzjldlfna
         uuyB8vLvFpxSFXoZOka+I45ZJKHhqd7GeeNRoNGqsiS/stgIhwAdqsvnKQpDGwis7z+2
         +9qGS/Tsu8WSOENwoO2Fdr9ga40RzsmB7r6T8d07dMbM7LIqmOE2lhKd1CmP0hF5PlVD
         t45g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5q/njeuyzeMP9Vp2sBqL9QH3ClY25d5Otf65RkwJ1do=;
        b=TV/bX5goKvBbf+SmVyvYGnCDc3yGp5DegYamxBBMLakiapqVSAKB3iaGmIHIzXGmFN
         sLlvY/eWBmi85Q/oXVNcSXjBe36YBYPFV/3HdTN8SgKerfxCwvs2DFhLprR4W0fFHoGp
         vNF/YF6k+BdPnAURAr416ZcJuxF3egZhbXK1zxBX1Lgp0lWQRicmjjJJMnURQwKiZ9pL
         zCsNkcFQoGc7o73M87gsQkBbGFpsydLVOrbPDEurB9jz39ewgXhRh1u7YBjlvTsc1FEU
         2+46/zuYNKcM607ggbBPxvRdKTWt2z4V4c4yPLvCmxHVuRbjTfpCz52xvAt5NXdNsci+
         EhYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5q/njeuyzeMP9Vp2sBqL9QH3ClY25d5Otf65RkwJ1do=;
        b=cMh4N0Yn++sqYaux8e7vPbODSfgTR6djeoRwoyTCM78akMjOzl1OV+8gW1jDt4Kjnx
         XZ6M5lSVJercszHbix14k+I3ej+X04TQqszwRh+ajaVJtpbUCUua/awjvICF15Aa/Tk2
         uS/uZjcLJdEC1POECV9HulRAFq0T8lq7uIi4WzSiEyzREFyN2Bbenji/lTlt88HbgeJc
         7BZ6icNlL7sUfA5ex64EmIHsxMD8VGfp277IHKWJrjQzXTlBv/9uk4nUD25YCoI1m3cM
         h3pny/a181pFnZvObfz4a4J0sd7Jsnki+wlTK/rNyzBXeMTdvRmownzyF6jPydV7U8CK
         WpDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336Ee3uJXMyTuWafzwSa0fPWPArL9SIVTeC3gZw5ZhpNa3/eZeG
	iyg/MMi8JoMIjfgHKYNMqpQ=
X-Google-Smtp-Source: ABdhPJy9kCC1sqNhzgJ3Qn2XJTxpCYqBDYXdEnQSmxu4miAfrax4oOo+DslqPsoTEBF3qrESQQpOIQ==
X-Received: by 2002:aca:3d88:: with SMTP id k130mr2256426oia.111.1595479520045;
        Wed, 22 Jul 2020 21:45:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:f413:: with SMTP id s19ls859742oih.8.gmail; Wed, 22 Jul
 2020 21:45:19 -0700 (PDT)
X-Received: by 2002:aca:4844:: with SMTP id v65mr2512779oia.152.1595479519646;
        Wed, 22 Jul 2020 21:45:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595479519; cv=none;
        d=google.com; s=arc-20160816;
        b=VYiBNMIJnmp8dhrxlJbVHsVIZmxrSiiQ9xFeRjTmwtqAsUpKwVOvIuV8Vx/I4mwZS1
         K7jvxsryo3hDyrPRmCTMMsF0+4LCuGrtc1QLW7JVb/FvloPs8GJjqx9JH+RxrH9UVaG/
         +HbvZrU8Lm+L2dzrENCSMurzVL31lqaPrvuhEKcyPzRPE5ApUbRuWB/NLgsUBQ4eVCT/
         96Dw3LHoiz3gUrK1wZZO2g8nRf91TnXUcHH+H2SMyShVs0NPQpqOOYFuzBE0lRa2Cry0
         xniSE4CGznBZ+lSrW/x23RMdWm9Sv8ROFD+e+REM5OQCozlezVhGWyTeEkmTM7Aq4YrS
         f5tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=90gci2CYuVeFvRuDOKJ8IZ7wmWfckk95B8pyfbNrP8I=;
        b=y1M21/7dM9wHMjgtp4JS6+EuNsknPN2LxiXlgLIk1Z3SutC0TWtj3s8heaJdHHNTMk
         Dh4BqOZUgAcIijBZZbPScprHT1dKSEmbeNNvt8eHc06oCB9JeV4xTCHpsWuUGNWsX1m8
         I+B5xtLGESuWrVxKCQoPoCeiXIGm7Xt8NPxW6tVlMM5HDzVs4ddgO7s3QELKOcruyrRp
         xfYuiJS2eXjmxZp/NvzHQKsseXXXmZ4GBsWb2naPmaEq6bExd27u15sT4k4/s8Wjf97V
         Hwu9gNS32+qapL8jhvTp8VYu49RqU48W87yI1Az1SMQ6p0CFCFS65wc+dvBPc3x3bXGC
         yh0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rT2onajD;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id d65si226487oib.2.2020.07.22.21.45.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2020 21:45:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id e64so4913158iof.12
        for <clang-built-linux@googlegroups.com>; Wed, 22 Jul 2020 21:45:19 -0700 (PDT)
X-Received: by 2002:a02:9469:: with SMTP id a96mr4168jai.121.1595479519517;
 Wed, 22 Jul 2020 21:45:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200723041509.400450-1-natechancellor@gmail.com>
In-Reply-To: <20200723041509.400450-1-natechancellor@gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 23 Jul 2020 06:45:07 +0200
Message-ID: <CA+icZUVUSnC9F5RKzRLV50CU8SwortEFGH5f2LHTu=UQx8dT8g@mail.gmail.com>
Subject: Re: [PATCH] arm64: vdso32: Fix '--prefix=' value for newer versions
 of clang
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, stable@vger.kernel.org, 
	Masahiro Yamada <yamada.masahiro@socionext.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rT2onajD;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

On Thu, Jul 23, 2020 at 6:15 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Newer versions of clang only look for $(COMPAT_GCC_TOOLCHAIN_DIR)as [1],
> rather than $(COMPAT_GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE_COMPAT)as,
> resulting in the following build error:
>
> $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> CROSS_COMPILE_COMPAT=arm-linux-gnueabi- LLVM=1 O=out/aarch64 distclean \
> defconfig arch/arm64/kernel/vdso32/
> ...
> /home/nathan/cbl/toolchains/llvm-binutils/bin/as: unrecognized option '-EL'
> clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
> make[3]: *** [arch/arm64/kernel/vdso32/Makefile:181: arch/arm64/kernel/vdso32/note.o] Error 1
> ...
>
> Adding the value of CROSS_COMPILE_COMPAT (adding notdir to account for a
> full path for CROSS_COMPILE_COMPAT) fixes this issue, which matches the
> solution done for the main Makefile [2].
>

[ CC Masahiro ]

Masahiro added a slightly adapted version of [2] in <kbuild.git#fixes>.
Shall this go through kbuild subsystem or folded into [1]?

- Sedat -

[1] https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?h=fixes&id=ca9b31f6bb9c6aa9b4e5f0792f39a97bbffb8c51

> [1]: https://github.com/llvm/llvm-project/commit/3452a0d8c17f7166f479706b293caf6ac76ffd90
> [2]: https://lore.kernel.org/lkml/20200721173125.1273884-1-maskray@google.com/
>
> Cc: stable@vger.kernel.org
> Link: https://github.com/ClangBuiltLinux/linux/issues/1099
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/arm64/kernel/vdso32/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> index d88148bef6b0..5139a5f19256 100644
> --- a/arch/arm64/kernel/vdso32/Makefile
> +++ b/arch/arm64/kernel/vdso32/Makefile
> @@ -14,7 +14,7 @@ COMPAT_GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE_COMPAT)elfedit))
>  COMPAT_GCC_TOOLCHAIN := $(realpath $(COMPAT_GCC_TOOLCHAIN_DIR)/..)
>
>  CC_COMPAT_CLANG_FLAGS := --target=$(notdir $(CROSS_COMPILE_COMPAT:%-=%))
> -CC_COMPAT_CLANG_FLAGS += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)
> +CC_COMPAT_CLANG_FLAGS += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE_COMPAT))
>  CC_COMPAT_CLANG_FLAGS += -no-integrated-as -Qunused-arguments
>  ifneq ($(COMPAT_GCC_TOOLCHAIN),)
>  CC_COMPAT_CLANG_FLAGS += --gcc-toolchain=$(COMPAT_GCC_TOOLCHAIN)
>
> base-commit: d15be546031cf65a0fc34879beca02fd90fe7ac7
> --
> 2.28.0.rc1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200723041509.400450-1-natechancellor%40gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVUSnC9F5RKzRLV50CU8SwortEFGH5f2LHTu%3DUQx8dT8g%40mail.gmail.com.
