Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2UW2D3QKGQE67KKJCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A202209878
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 04:26:52 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id d3sf2850283pjv.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 19:26:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593052011; cv=pass;
        d=google.com; s=arc-20160816;
        b=IcPvMtsPJnmvFuTVIxdNs94xonwoMidWXpc+oULkVcQ9Vt64CClGmb4VVTa8S4Aa6d
         tP8/S8YLTyGJ+2l0lDKAUJv9Fyp/SkB+wRWpiumGk1qyXQR+9p4j2zv5Q4iA93Ofdakd
         kkr68plDK1Et4NlQvAYxF54PQWUFPoOyAnieY7swnHCzV9+nSLVTBaBkNMEw1D7We3q/
         hQ2WO7gaCaQagctI9lSPhBtiFMTcUDs+Zlhx9cAYAJRADVN/VlYIfVGgyNn/zWlhqEPz
         gmLMtlRs/fMm6X4z9Wrpw+uHCd0Hn1k5fTPbrDzuuSGm/+QdF9C1I0kEoKf5ZEOlGGQ8
         b6OA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=vj/bv8QY+UscvJkeWvNg4lCQ9bBTSwN2AAO1m1Xiyug=;
        b=zXqb1XbKqlZSBJgfZQQaeb7U6kSTkaVBLikEhTB3QIhMkzSU+xgQrZ2i3O2rcxXOub
         NwRZWPmI1fmzRl4z/PTy31txZ7gCDeLi6TdRpDAxfomOeqnK7U9Qz9gkKnEwyfEOAg3H
         X3KRXvCkobvCKCPpx+eTbVMHbK0REQkjNxSPJxToIh6CHbfNku+QfyP+lCQc86iGEbPA
         xu2k+lAzRePpXVUj9F9B8shu83gdGiaQeMtB1i7/0Xe4NhlhTR8elPDxLtWglqCRf/zO
         +xI+YCxR5yDHtytzMo7bSvQRLPL2GwRMPA10RMPf32Dlm3vXVI7Kg5NSsdrTDxhKo6Nb
         30/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AZcqU08v;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vj/bv8QY+UscvJkeWvNg4lCQ9bBTSwN2AAO1m1Xiyug=;
        b=RKOH3TZ0NrkO+t84B7KEUIeZuN/Ep+Ya1CbTnG12CHu3cCbey/k15qTv5av+awz1Vw
         QbbZ7Yj8mk2IcriiwpSo09Nlx4VxyJ0h31awccEq/yVoQYW6vI4JhnDndtM5j+hTJjLS
         mBxd5y6XIdKhkRODDPOtby9rOkQbzEu4ogiGfTlmo8hWtULrOWtCZS/Nad/I+M9SaDan
         lGouuWEdauZEMZbC2jfGW4ewEdntGAZ2t3+xfYqqZSYYv+yiaxq+o3bcirxZ1nVQsU0A
         XzwFGrGAhVJi32rFg4MLKpIl8z5huA7y0crmOTWtth3OrxKpokuXY18A38NXbZZl9/QB
         NDKg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vj/bv8QY+UscvJkeWvNg4lCQ9bBTSwN2AAO1m1Xiyug=;
        b=rv3yv969HibzhpqoipQqeIeB7UX5zRZBhhzm0FB3oq3rxDrVebEtRDhmyCSXDT8MvT
         NZps3nmF8airIhN0aUdbc8UZNyhJpUT0XgJ1Q1jiSJF68pXXvOOoS2LvkCZNoxcj+cOJ
         A3BW2Okmy96bU0DPYyqQk7YzqwRLJfHyH/jjsWhjuCM1Ldcm2SWew/04UE1IZkD6JjRW
         pUj2Xa0dtIb4fllaOHm/eY4A5UhcRfGGOh4hWRbo5qChK3v/yM9cVu3YfhHqXvhvPJPn
         xwVdqIKgmwLNrgXMlgG81sbORQJmMHhA/r6Vn/tSQdS4cUFAEV+PxYFNozX/CTKtqQYY
         iEow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vj/bv8QY+UscvJkeWvNg4lCQ9bBTSwN2AAO1m1Xiyug=;
        b=LPNbu9KmseFV+6zv43fyDgH7kbx4tItjVsE1Tgj/j67SK4Ewv8r0tfY1k55GXkB8OE
         5+KDqyqq1fhPG/gjAdQmmBsUoejX+ZXX5XgobkE0Befc2p2IUgImrjbv63YleA5sB38o
         Bh9Z+fNqnDQV3dKTWZYG83Bdl/CZ0wNXRz9I7k+vDr3j9r17AKckpi/LJbtOjLUFV1lR
         0cWryv8NiOYueO8KqfEjSt5/LydZT92V96zAjYJ9gi6K91p+9cUnQ04MroBvLOMkbE/d
         7zkPY8rJwKxWG3p6bKd+KLS5tna/MjR36lgbZQmo1rVONWDq4+aNPB8lDrqPyTZ9phcY
         md1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530dPwOhFlzX08dBd15YNiknSPwS2AN7QpFWN5VDvMZahRay9pNn
	dWDopjwgtieqMx3/PaZY7JM=
X-Google-Smtp-Source: ABdhPJw4VTDRq5EEbKI0E7KLL1TE8p0YFxabCuYtDQvqU+tiwqm9EJ4BtWrWhhDPDDVQbkixLjwwKg==
X-Received: by 2002:a17:902:b60e:: with SMTP id b14mr31095879pls.81.1593052010780;
        Wed, 24 Jun 2020 19:26:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:788c:: with SMTP id t134ls1363018pfc.8.gmail; Wed, 24
 Jun 2020 19:26:50 -0700 (PDT)
X-Received: by 2002:aa7:9781:: with SMTP id o1mr31905532pfp.97.1593052010363;
        Wed, 24 Jun 2020 19:26:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593052010; cv=none;
        d=google.com; s=arc-20160816;
        b=W3ux25ep65kEMm/U6hSMOBzP07tq3zsx6JD5rnTQcDZ1EeIhmAPcwmQmAGgpJmQJDs
         HwOTiHUv8XsH59voxk0w05BX3S2iNrvIpvM2bm/GkYStxC0COcC6G3Fw98Jr0R7uN9Nj
         vjbl2R5VCD705h1Lqm2CZXoYU8LerUBvuNKfQxRkypvIP1sUnOy6RCfZJrv9DH8XdyEc
         +DVELwwG1ldC4TYBqvnYlya56DGSNQqqef6P3VTDsQqzFOvyOlrTM3TqXYqNVzglr/yE
         MRDbZFGs23GEmqquQY3kOuJ/8XmfpQXqy0tRvtGsJvDXGQp1HcfJRMo+Z5eKaD4qLdW0
         /L1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ZQNZYHZs3Rf5u37OLrL6y0pvgTgU4h8M5jVmsv5Nrec=;
        b=fhntuY6Lz/WaMt03MXxOk6/ZFaLvgJKzGqaVxoxZ+3RG8pN+DGqjzOxjNNvpQ6RNLL
         iHbJLTa75aBM2ZaWPdqXc1DdxA/Y13FN4TN57SCHIBMyadcxCP2k4n8zfxyjCGuwtglE
         Qw6Zf3gzu4jDEsuGpD5FNvQPTvp+btAyZaEap/+E72LOVgR+pvAFnKbWJQq0M8HYRhJB
         aBFFJMQ0NXq7K4Z59kfCV1wxCijfNu1YOTILlywZdoxEeEiZb62Vo/LghpX8Zbuntbsn
         UzpBX8RRPSG6AUyBwmNPMFsMxcXTYK05et4fDDYR8yPdiqEMVeR3No0sa/HkSrVG0Dk2
         UabQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AZcqU08v;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id y9si1064191pgv.0.2020.06.24.19.26.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 19:26:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id 72so3897919otc.3
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 19:26:50 -0700 (PDT)
X-Received: by 2002:a9d:32a1:: with SMTP id u30mr5549372otb.264.1593052009657;
        Wed, 24 Jun 2020 19:26:49 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id p1sm5444990oot.34.2020.06.24.19.26.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 19:26:49 -0700 (PDT)
Date: Wed, 24 Jun 2020 19:26:47 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH 02/22] kbuild: add support for Clang LTO
Message-ID: <20200625022647.GB2871607@ubuntu-n2-xlarge-x86>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-3-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200624203200.78870-3-samitolvanen@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AZcqU08v;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Sami,

On Wed, Jun 24, 2020 at 01:31:40PM -0700, 'Sami Tolvanen' via Clang Built Linux wrote:
> This change adds build system support for Clang's Link Time
> Optimization (LTO). With -flto, instead of ELF object files, Clang
> produces LLVM bitcode, which is compiled into native code at link
> time, allowing the final binary to be optimized globally. For more
> details, see:
> 
>   https://llvm.org/docs/LinkTimeOptimization.html
> 
> The Kconfig option CONFIG_LTO_CLANG is implemented as a choice,
> which defaults to LTO being disabled. To use LTO, the architecture
> must select ARCH_SUPPORTS_LTO_CLANG and support:
> 
>   - compiling with Clang,
>   - compiling inline assembly with Clang's integrated assembler,
>   - and linking with LLD.
> 
> While using full LTO results in the best runtime performance, the
> compilation is not scalable in time or memory. CONFIG_THINLTO
> enables ThinLTO, which allows parallel optimization and faster
> incremental builds. ThinLTO is used by default if the architecture
> also selects ARCH_SUPPORTS_THINLTO:
> 
>   https://clang.llvm.org/docs/ThinLTO.html
> 
> To enable LTO, LLVM tools must be used to handle bitcode files. The
> easiest way is to pass the LLVM=1 option to make:
> 
>   $ make LLVM=1 defconfig
>   $ scripts/config -e LTO_CLANG
>   $ make LLVM=1
> 
> Alternatively, at least the following LLVM tools must be used:
> 
>   CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm
> 
> To prepare for LTO support with other compilers, common parts are
> gated behind the CONFIG_LTO option, and LTO can be disabled for
> specific files by filtering out CC_FLAGS_LTO.
> 
> Note that support for DYNAMIC_FTRACE and MODVERSIONS are added in
> follow-up patches.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  Makefile                          | 16 ++++++++
>  arch/Kconfig                      | 66 +++++++++++++++++++++++++++++++
>  include/asm-generic/vmlinux.lds.h | 11 ++++--
>  scripts/Makefile.build            |  9 ++++-
>  scripts/Makefile.modfinal         |  9 ++++-
>  scripts/Makefile.modpost          | 24 ++++++++++-
>  scripts/link-vmlinux.sh           | 32 +++++++++++----
>  7 files changed, 151 insertions(+), 16 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index ac2c61c37a73..0c7fe6fb2143 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -886,6 +886,22 @@ KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
>  export CC_FLAGS_SCS
>  endif
>  
> +ifdef CONFIG_LTO_CLANG
> +ifdef CONFIG_THINLTO
> +CC_FLAGS_LTO_CLANG := -flto=thin $(call cc-option, -fsplit-lto-unit)
> +KBUILD_LDFLAGS	+= --thinlto-cache-dir=.thinlto-cache
> +else
> +CC_FLAGS_LTO_CLANG := -flto
> +endif
> +CC_FLAGS_LTO_CLANG += -fvisibility=default
> +endif
> +
> +ifdef CONFIG_LTO
> +CC_FLAGS_LTO	:= $(CC_FLAGS_LTO_CLANG)
> +KBUILD_CFLAGS	+= $(CC_FLAGS_LTO)
> +export CC_FLAGS_LTO
> +endif
> +
>  # arch Makefile may override CC so keep this after arch Makefile is included
>  NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
>  
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 8cc35dc556c7..e00b122293f8 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -552,6 +552,72 @@ config SHADOW_CALL_STACK
>  	  reading and writing arbitrary memory may be able to locate them
>  	  and hijack control flow by modifying the stacks.
>  
> +config LTO
> +	bool
> +
> +config ARCH_SUPPORTS_LTO_CLANG
> +	bool
> +	help
> +	  An architecture should select this option if it supports:
> +	  - compiling with Clang,
> +	  - compiling inline assembly with Clang's integrated assembler,
> +	  - and linking with LLD.
> +
> +config ARCH_SUPPORTS_THINLTO
> +	bool
> +	help
> +	  An architecture should select this option if it supports Clang's
> +	  ThinLTO.
> +
> +config THINLTO
> +	bool "Clang ThinLTO"
> +	depends on LTO_CLANG && ARCH_SUPPORTS_THINLTO
> +	default y
> +	help
> +	  This option enables Clang's ThinLTO, which allows for parallel
> +	  optimization and faster incremental compiles. More information
> +	  can be found from Clang's documentation:
> +
> +	    https://clang.llvm.org/docs/ThinLTO.html
> +
> +choice
> +	prompt "Link Time Optimization (LTO)"
> +	default LTO_NONE
> +	help
> +	  This option enables Link Time Optimization (LTO), which allows the
> +	  compiler to optimize binaries globally.
> +
> +	  If unsure, select LTO_NONE.
> +
> +config LTO_NONE
> +	bool "None"
> +
> +config LTO_CLANG
> +	bool "Clang's Link Time Optimization (EXPERIMENTAL)"
> +	depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD

I am curious, what is the reason for gating this at clang 11.0.0?

Presumably this? https://github.com/ClangBuiltLinux/linux/issues/510

It might be nice to notate this so that we do not have to wonder :)

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200625022647.GB2871607%40ubuntu-n2-xlarge-x86.
