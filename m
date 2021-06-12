Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB7OPSODAMGQEVJ2HP4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7884D3A4FD3
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 18:59:42 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id x8-20020aa7d3880000b029038fe468f5f4sf17393550edq.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 09:59:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623517182; cv=pass;
        d=google.com; s=arc-20160816;
        b=r844FMLnfN0UWL3B4tF3mSMTlGp+DKpFJpqp5rWmvCwZ2Ml1CkwAa6NlIB8BOxx/el
         xB+BmGhJx8q+vwil472qKtTNPggp8rXbKzDh+5YqnQvmhcs4DL7RiQcSwvNx4Zeo6/7q
         fuRmgal4n34DhkkIw3NXOHPcg8QpKd+qLfvVKHJcyPuZXvtX3HtZ0wt3+bihD+5/5jaU
         WvA7FqQKEOkEjC9pfwqIS3kMSZIOu2MqKeCWjfDqixh/CNIMIQl6iNlmAlZ9ON9n4uYh
         ktOkPhHFFsXox+VhySJhJWIa9w3xY5dzoomcvch3IVw31xGBuJdCSlkGRhJB/IyZFStJ
         Etmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XHRV7IlCrnrua+q5bqrD1hlfFMo1qoz3dRvkIhks0zc=;
        b=z1e1CGilChHh2oTrcPiIUCTbe1G+T3pJSzZbQohuM7kfILE4zJpBo+UhhSuFg0HMbh
         k0i63zzcQHWiEOhB9rNQMk7+RqdfaX+Dd81NnedBJg8Nx1ACo7vOS8sq8H/uTeDN6g34
         BVxCiKc5heYEtypkyD3aH75rFGVZSRja89XaZnNiNFoEhsxgowcg2MzGVdDvFshiZQPQ
         6/qQlFkk4JrQhoiN1tnPkALD+uBsLZ5mlmHEltOs8Fifm6JcE0g6KupbGz2w6uJugTAh
         zXdfbGbMeCh1FTWSLmvkjTZirLZqhSkcv4mcTGxZidy/Hp7lUxTjgclbbiXtvl365J4f
         o2Yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=GzSY1ygh;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XHRV7IlCrnrua+q5bqrD1hlfFMo1qoz3dRvkIhks0zc=;
        b=DBywmHpdrKvRWkrIp/enNX48AOpjYhCQRcRsg4tBUa9lw2938aUYBy9RhB3KIfx9RV
         H6/mGwlBZhjd6B1dirozQWC5XqTt+kikhddnwLXXpVy/FdJJAj1L+15p18Zj8Mlmk3Ex
         1Jpf4uovPEzG27DPHtsAiAh/PXOdEFQxDJX/iKEDThP6u6TJe85FZDiLqcis3A2i+Q5i
         hVqmAxdpmGOrR2VPydMrhkWQH0LqqvF0AF64kJ8/LdRtNpWsokwlyu3WI2xhOogaS71N
         jAjg3UyLidCWjGT92el2uCBxlOZ8ShfJ7wKuV8ZKDLmi/Gim0mqg/pZu+7Q9Bl3/0CR/
         1PoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XHRV7IlCrnrua+q5bqrD1hlfFMo1qoz3dRvkIhks0zc=;
        b=r4kFDQltBcHmMj2KIWo8RN02giOYNIxqbJPctA6Hzt1eA0NQ4AXoP8KmdZV7y6R21h
         XhheRDSy5ofVwRHsR5vFYSjY7ytN7sxf9r5RbeNAxiu2WdQ8a3+k7i3sfGMXVy277q0b
         MOJeBGN3hHvJxWe/TohVlVyzDfvatUsMOP7q+B0Q+IvsEF9evNk7QqkaXKNApAHm+nUw
         FT6fzccYIRpHy7udH+arcKCDAVNsSAdmwhc5dU36ryQfo6h8AX7AvVoYs9yEwcR3SmET
         yoaD0NYyjF/U5iG5rQj9z+Iu/J1+20ySMELABGE2czwBcs6a42asRxefJbhT/k1EmeD1
         gRTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531rv0J5r57F+ew/o7+s2l7aDbrSXc3qa16CBPKsC0D1kqLfbqA+
	D50iuvKzmljT+vbyRAJdhzw=
X-Google-Smtp-Source: ABdhPJyURvYaPy7r1NzhYrcyysMXkMKCIcB5wYp/vA529HnbsKhV2lTbSokeLrMxypkAfmoapPopig==
X-Received: by 2002:a17:906:9715:: with SMTP id k21mr8352432ejx.553.1623517182175;
        Sat, 12 Jun 2021 09:59:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:bcfa:: with SMTP id op26ls410736ejb.0.gmail; Sat, 12
 Jun 2021 09:59:41 -0700 (PDT)
X-Received: by 2002:a17:906:b141:: with SMTP id bt1mr8544759ejb.498.1623517181156;
        Sat, 12 Jun 2021 09:59:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623517181; cv=none;
        d=google.com; s=arc-20160816;
        b=ftLLWG/1hqGbgQufbDJ9TixcrdbP7wSYh/kKa0qcIS8PnKy3mywy58RKMNVuNp3YVm
         W6f6qfcunAHrcjgOG3kERvUAL/mkPyqz0IpRF6hwvQ8g+19CpJwEtJ6602a1+uWpRvly
         iS+skkiHLydoqTKPOo8ZhDNzI2WNZOT2YNNldcX8+4Vt3HJvNyNmHz6iTuxLSXfqUH1B
         QwOxkWUuVhJRSL0/iHVExMrs9lh8mNiar+qxDR+y+sbGRZM+4S9T3eu8sSTA4o7Dx+e8
         +DG+OQzokfdCDikLXkRRxzybClatq2AZ1JxC/t4kzNfRSwBksU3IwTNkL/LVKDjQklnj
         NFtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ddh5oJmHNUDvPnkjDyvBawyeYIqU7P8eLWt5TLZPuMU=;
        b=pbe6ZxUIdFeUHmYk8jo31gI370ZXYSsO44UKyhC/EQdt6Yuo9u7sZzJwKAxhx9JUDP
         798Jg9nxVOpEP2zJg/Qm5oUcEXW/YxhiuPdRqGbP2ubA2S0p7l0WHdnY7v6xewszxxIn
         NXmrB8XNbeO07EyzreAuNbI2IpmCGpaGQWcnfgL3n4iTRXGRXhGaEiw9HIMdUbnncHFu
         aIzuMnkcbR6VMQI6FXYOF31ja+3yBRNpOry/Sfr6zOFAeDfgq6htnFKMpWQY34Oq70I0
         BkImy2dEUsuO8V9iWnpedPoXKwVP4jBYhzFQ6XkOSIBtPXuvNuxBgycOMfCv+S+TxkIa
         NF/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=GzSY1ygh;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id s9si503680edw.4.2021.06.12.09.59.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 09:59:41 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ls6yo-006GWf-RV; Sat, 12 Jun 2021 16:59:37 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id C480A30020C;
	Sat, 12 Jun 2021 18:59:35 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id AD4BD2C23AAFF; Sat, 12 Jun 2021 18:59:35 +0200 (CEST)
Date: Sat, 12 Jun 2021 18:59:35 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Bill Wendling <morbo@google.com>
Cc: Kees Cook <keescook@google.com>, Jonathan Corbet <corbet@lwn.net>,
	Masahiro Yamada <masahiroy@kernel.org>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Fangrui Song <maskray@google.com>, x86@kernel.org
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization
 infrastructure
Message-ID: <YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net>
References: <20210111081821.3041587-1-morbo@google.com>
 <20210407211704.367039-1-morbo@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210407211704.367039-1-morbo@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=GzSY1ygh;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as
 permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Apr 07, 2021 at 02:17:04PM -0700, Bill Wendling wrote:
> From: Sami Tolvanen <samitolvanen@google.com>
> 
> Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> profile, the kernel is instrumented with PGO counters, a representative
> workload is run, and the raw profile data is collected from
> /sys/kernel/debug/pgo/profraw.
> 
> The raw profile data must be processed by clang's "llvm-profdata" tool
> before it can be used during recompilation:
> 
>   $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
>   $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> 
> Multiple raw profiles may be merged during this step.
> 
> The data can now be used by the compiler:
> 
>   $ make LLVM=1 KCFLAGS=-fprofile-use=vmlinux.profdata ...
> 
> This initial submission is restricted to x86, as that's the platform we
> know works. This restriction can be lifted once other platforms have
> been verified to work with PGO.

*sigh*, and not a single x86 person on Cc, how nice :-/

> Note that this method of profiling the kernel is clang-native, unlike
> the clang support in kernel/gcov.
> 
> [1] https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimization

Also, and I don't see this answered *anywhere*, why are you not using
perf for this? Your link even mentions Sampling Profilers (and I happen
to know there's been significant effort to make perf output work as
input for the PGO passes of the various compilers).

> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Co-developed-by: Bill Wendling <morbo@google.com>
> Signed-off-by: Bill Wendling <morbo@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Fangrui Song <maskray@google.com>
> ---
>  Documentation/dev-tools/index.rst     |   1 +
>  Documentation/dev-tools/pgo.rst       | 127 +++++++++
>  MAINTAINERS                           |   9 +
>  Makefile                              |   3 +
>  arch/Kconfig                          |   1 +
>  arch/x86/Kconfig                      |   1 +
>  arch/x86/boot/Makefile                |   1 +
>  arch/x86/boot/compressed/Makefile     |   1 +
>  arch/x86/crypto/Makefile              |   4 +
>  arch/x86/entry/vdso/Makefile          |   1 +
>  arch/x86/kernel/vmlinux.lds.S         |   2 +
>  arch/x86/platform/efi/Makefile        |   1 +
>  arch/x86/purgatory/Makefile           |   1 +
>  arch/x86/realmode/rm/Makefile         |   1 +
>  arch/x86/um/vdso/Makefile             |   1 +
>  drivers/firmware/efi/libstub/Makefile |   1 +
>  include/asm-generic/vmlinux.lds.h     |  34 +++
>  kernel/Makefile                       |   1 +
>  kernel/pgo/Kconfig                    |  35 +++
>  kernel/pgo/Makefile                   |   5 +
>  kernel/pgo/fs.c                       | 389 ++++++++++++++++++++++++++
>  kernel/pgo/instrument.c               | 189 +++++++++++++
>  kernel/pgo/pgo.h                      | 203 ++++++++++++++
>  scripts/Makefile.lib                  |  10 +
>  24 files changed, 1022 insertions(+)
>  create mode 100644 Documentation/dev-tools/pgo.rst
>  create mode 100644 kernel/pgo/Kconfig
>  create mode 100644 kernel/pgo/Makefile
>  create mode 100644 kernel/pgo/fs.c
>  create mode 100644 kernel/pgo/instrument.c
>  create mode 100644 kernel/pgo/pgo.h

> --- a/Makefile
> +++ b/Makefile
> @@ -660,6 +660,9 @@ endif # KBUILD_EXTMOD
>  # Defaults to vmlinux, but the arch makefile usually adds further targets
>  all: vmlinux
>  
> +CFLAGS_PGO_CLANG := -fprofile-generate
> +export CFLAGS_PGO_CLANG
> +
>  CFLAGS_GCOV	:= -fprofile-arcs -ftest-coverage \
>  	$(call cc-option,-fno-tree-loop-im) \
>  	$(call cc-disable-warning,maybe-uninitialized,)

And which of the many flags in noinstr disables this?

Basically I would like to NAK this whole thing until someone can
adequately explain the interaction with noinstr and why we need those
many lines of kernel code and can't simply use perf for this.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMTn9yjuemKFLbws%40hirez.programming.kicks-ass.net.
