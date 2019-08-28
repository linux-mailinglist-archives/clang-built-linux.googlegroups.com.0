Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBHVBTHVQKGQERSAKYKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D769FF02
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 11:59:59 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id g2sf544029wmk.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 02:59:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566986398; cv=pass;
        d=google.com; s=arc-20160816;
        b=qdK/i8+vKU0cRDPbb2WsX+LxlnUMVGSBDvVyYb5tFLuFY4On7ZBGkgYOce2PZfht4+
         2HoaEkOzRZMlr4y5m4HzpEpIjtO2RFaRKJ7b+SWWB5oueYD40ESG0t6GbOTQGynHn9NL
         hpWhRpZRyVf4Nw6vVVZ6C56IvV0LYHNTR3ZfQp5VzkWuB1YCB/uNar4BkiqepfaeorYB
         ZNP/nz7iqcjeDGkht5i3E3qRF2AtVMLn385tG4Fi+ra0xNoHBx5tP5cED4HewLwPHaMD
         gAegP8+R/deqbUcNuZYWYYGxQP/K4e0HFQz6y/VQNmxDZ3KLOIQESSMETErZF1UBsomM
         JDEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=AIurqzAyH7a91plQ+1YdbC28QDBj1135YLHpGeyz5X4=;
        b=xdOMreIg0qCxpeMVMmkC55s1EmrPFXzocphIwYiWzBO5o8WgofH5TnaOSmiIFlWAte
         Ly9G1SJh3py0LR5x4f33KI/ayK1Ggj4YsVXtXo4e1S/GEjGj8pJO9emXeQwiOUfbVpjJ
         +Gl0x/rU+71FyqeaTccIF5Gny6+sSMHT0oRjcefptyfPzwD0+I+FMQLu63o/T2nKCdIq
         t3ksv0frgR+TuN3uUTedMTz0QCfTfw/vJTJ5sqK0qRNUlyDxEMb76Ugz6h2SVgc5ddII
         6Ts6Gqnhj06c7SmEfvxq1iqoLY51XAmuzcjTZgjNVcResEO+l8INj0EfHk0MGkwKuBFC
         0ndQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T2qOK8B5;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AIurqzAyH7a91plQ+1YdbC28QDBj1135YLHpGeyz5X4=;
        b=cWJT4cSu6emCY0+Ysz6YF0GRa8aKAZzX52eodo6xcHpjHGRGuowv4RgLoGVjBhQ01o
         UH1Wg8cRkMo3oKgOCEE/pYKD7ypPSpiTAXUF/LJZRIjNE9nIuCmWz/J8x7NgRoRguEP1
         7GSZLOlUIRz5ZJjfTKDoGAGaze1GcBBbBumMSUfM8MTZ+ZXci48X1Y6xkqZPwQ+I/Rp7
         EYvJ56h5rPoeRhBeDXMNsKQgFm01jsrxm39WJFU2W/9kNcV9n69RNTU/UD1+Oom9eTt/
         GEceuyuEUzR/JuZ3RtA3Wfk8EkDYIZt/ULBE3b/HwxEpTQSnQyc4HRPHxdd50z8uMmiu
         6qVA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AIurqzAyH7a91plQ+1YdbC28QDBj1135YLHpGeyz5X4=;
        b=T4mMJGwvQ3W7nwS2qS76AFd6IbjFrHuOg+DZeZAtNks3xDxYyEht0PUjkLUu0m7Dw+
         7nssnpCmPM4q+7cxPdjICZGW+UebJXZpee+UvHdPQ/d7ijv42xD3t/XAycOC/4L2Tt0B
         10DancTJMumCqKaFFOGM9GgM0INqNneoVE7df/IKVKON58y0wD9dMuLfGRuz0oWUfHWm
         ptkw5knijLbQbh4tYb6RNgDC3CXOkP88rwnOZzhUJGHdRih/+GC44hUWqTMqGa9PksFm
         guINdRWEtmiIWJZZFV7zPgOlbRxDkJdnwlm87IOCM3V/2bi2QNWcEqGzosCUhXN7yixw
         hTaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AIurqzAyH7a91plQ+1YdbC28QDBj1135YLHpGeyz5X4=;
        b=ozZ2kthpX9cWMGZQDAlZRALNu0k715wiGGl+08rrqogQ8kcKX67NpFiQKwgrZ66x2H
         Lk2SEa6EerecXDAVKdHIo2LGDKyNJNbt9lC+Ub/oRUm2BOdqoGAhfTZM34qe0ny6XW7K
         Y6EONZzPveQB53nfRQKNq9Q9UVTnh+HZHYZ4Rqyg7e5tqfOhOtQc1arlit8fE5ipbcRi
         kSvQNGfPcTJ3hB8QZ4OnxLIECf57WDRIjSPmzqs4K7nlH3eT6iY+lH0s8x0w30/4uGCu
         RdZdlDOUaQ903pSikKt5VrV4fywFJfX9pRife4iR/+3pvBkaVsVDKJ5y/AXIjr/UfO8L
         lizw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXzalN0plhyTBjprVm1dYjHc2/h/etevtHVqbuLHwo3Epo/BCwB
	8EntWEU0ppMvc3pA8aILMXs=
X-Google-Smtp-Source: APXvYqxdGe+ZxjLTxnWdpZK4iZ8yL2Q0DEohOaY+9UH4aIGIO7eFt27zszqE97oLTLcv872SVe8PLA==
X-Received: by 2002:a5d:4703:: with SMTP id y3mr3807565wrq.63.1566986398637;
        Wed, 28 Aug 2019 02:59:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9d02:: with SMTP id g2ls725825wme.3.canary-gmail; Wed,
 28 Aug 2019 02:59:58 -0700 (PDT)
X-Received: by 2002:a1c:4c02:: with SMTP id z2mr4013240wmf.92.1566986397980;
        Wed, 28 Aug 2019 02:59:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566986397; cv=none;
        d=google.com; s=arc-20160816;
        b=szqUKDTIWuVXHVTaFKE+cyZ4IT4lD60FcdndJv2jRqpVWuF7MTedqSx5h0xxrPxD0p
         +BLI36mtUgnvkMuJkQBtlhOXTi0A7wvBsb+YqjuCdY8t5jrwxLvNyh+DMmgZyZVd5ft/
         ADoGGDJPBwIrXq+CFKpbxcbH7ditsj/CsGFfJUbO64S/YN+410HOHro+uHuGT7oOzP6f
         4GWbP3P2zh/DCecYFLXc8BkaJNCEQuH1QywxrkTTqIpLwsEVQtO4jz65A2Gf9PpU/W/i
         PNRoNpTJduMtJx5veXvHU0vEig5gqnghub/rcUMse68yeIWxP4a0LD+FvJzF4GjDbxAJ
         ahPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Nz++kIJqul0wPSRdmkNJtLbYUtvatvDKV4U+pZdOE0E=;
        b=IwERHXzeCwzGujaNwLrWEgVhQFsU61GEbee1WjGWllwc14Bxi+4Ctfnhv8XDKwhjrH
         40+JmtlLqapBXHfrivzMQrl6PjKWzRaRhpQyWclHqEnlaRiFGMYmnQe3jlyhnmrSlV4k
         hZOhdqoYx7mV2vDXJhYiGY5/GGif5GMEPp8ItHa6PRHD4mfBw9OniK8WpK+JhndvSHkQ
         w4KXXCfrsRY0oy2nloXvr7bXcFdQqV46bMzRri7TvZhAQ1Wb895Uf3Z3VkT+uvZKAFxU
         MZufRhOp8Wv0cuwAUGLldKW6tKrwk/hNfKB09X6EMUKajOlMsokqtdEXnPYPMoG4hfGo
         7sIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T2qOK8B5;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id w17si93969wmk.1.2019.08.28.02.59.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 02:59:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id e16so1843919wro.5
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 02:59:57 -0700 (PDT)
X-Received: by 2002:adf:a54d:: with SMTP id j13mr3425130wrb.261.1566986397568;
 Wed, 28 Aug 2019 02:59:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190827204007.201890-1-ndesaulniers@google.com>
In-Reply-To: <20190827204007.201890-1-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 28 Aug 2019 11:59:46 +0200
Message-ID: <CA+icZUVT8GJCPSSB=jLKLu=-OrWAj5W3Rkbx1ar0SGcEq0-D0g@mail.gmail.com>
Subject: Re: [PATCH v2 00/14] treewide: prefer __section from compiler_attributes.h
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=T2qOK8B5;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442
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

On Tue, Aug 27, 2019 at 10:40 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> GCC unescapes escaped string section names while Clang does not. Because
> __section uses the `#` stringification operator for the section name, it
> doesn't need to be escaped.
>
> This fixes an Oops observed in distro's that use systemd and not
> net.core.bpf_jit_enable=1, when their kernels are compiled with Clang.
>
> Instead, we should:
> 1. Prefer __section(.section_name_no_quotes).
> 2. Only use __attribute__((__section(".section"))) when creating the
> section name via C preprocessor (see the definition of __define_initcall
> in arch/um/include/shared/init.h).
>
> This antipattern was found with:
> $ grep -e __section\(\" -e __section__\(\" -r
>

Hi Nick,

thanks for the v2 of your patch-series.

I just checked v2 on top of Linux v5.3-rc6...

sdi@iniza:~/src/linux-kernel/linux$ grep -e __section\(\" -e __section__\(\" -r
include/linux/compiler_attributes.h: *        __section(".foo")
include/linux/compiler_attributes.h: *        verbose
__attribute__((__section__(".foo" x))) should be preferred.

OK: Description of the problem ^^

arch/sh/include/asm/cache.h:#define __read_mostly
__attribute__((__section__(".data..read_mostly")))

PATCH next-20190827 ^^
sh: prefer __section from compiler_attributes.h
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20190827&id=baf58858e8b6d853a7a8308901fcdd438e92a522

arch/arm64/kernel/smp_spin_table.c:volatile unsigned long
__section(".mmuoff.data.read")
arch/arm64/include/asm/cache.h:#define __read_mostly
__attribute__((__section__(".data..read_mostly")))

PATCH next-20190827 ^^
arm64: prefer __section from compiler_attributes.h
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20190827&id=80d838122643a09a9f99824adea4b4261e4451e6

arch/um/include/shared/init.h:  __attribute__((__section__(".initcall"
level ".init"))) = fn

??? ^^

> See the discussions in:
> https://bugs.llvm.org/show_bug.cgi?id=42950
> https://marc.info/?l=linux-netdev&m=156412960619946&w=2
>

List CBL issue tracker to discussions:
https://github.com/ClangBuiltLinux/linux/issues/619

- Sedat -

> Changes V1 -> V2:
> * drop arm64, arc, and sh patches as they were picked up by their
>   maintainers.
> * Split the previous V1 hunk from include/linux that touched
>   include/linux/compiler.h off into its own patch for inclusion in
>   stable, as it fixes a user visible issue.
> * Collect Acks and Tested by tags.
>
> Nick Desaulniers (14):
>   s390/boot: prefer __section from compiler_attributes.h
>   include/linux/compiler.h: prefer __section from compiler_attributes.h
>   parisc: prefer __section from compiler_attributes.h
>   um: prefer __section from compiler_attributes.h
>   ia64: prefer __section from compiler_attributes.h
>   arm: prefer __section from compiler_attributes.h
>   mips: prefer __section from compiler_attributes.h
>   sparc: prefer __section from compiler_attributes.h
>   powerpc: prefer __section and __printf from compiler_attributes.h
>   x86: prefer __section from compiler_attributes.h
>   include/asm-generic: prefer __section from compiler_attributes.h
>   include/linux: prefer __section from compiler_attributes.h
>   include/linux/compiler.h: remove unused KENTRY macro
>   compiler_attributes.h: add note about __section
>
>  arch/arm/include/asm/cache.h          |  2 +-
>  arch/arm/include/asm/mach/arch.h      |  4 ++--
>  arch/arm/include/asm/setup.h          |  2 +-
>  arch/ia64/include/asm/cache.h         |  2 +-
>  arch/mips/include/asm/cache.h         |  2 +-
>  arch/parisc/include/asm/cache.h       |  2 +-
>  arch/parisc/include/asm/ldcw.h        |  2 +-
>  arch/powerpc/boot/main.c              |  3 +--
>  arch/powerpc/boot/ps3.c               |  6 ++----
>  arch/powerpc/include/asm/cache.h      |  2 +-
>  arch/powerpc/kernel/btext.c           |  2 +-
>  arch/s390/boot/startup.c              |  2 +-
>  arch/sparc/include/asm/cache.h        |  2 +-
>  arch/sparc/kernel/btext.c             |  2 +-
>  arch/um/kernel/um_arch.c              |  6 +++---
>  arch/x86/include/asm/cache.h          |  2 +-
>  arch/x86/include/asm/intel-mid.h      |  2 +-
>  arch/x86/include/asm/iommu_table.h    |  5 ++---
>  arch/x86/include/asm/irqflags.h       |  2 +-
>  arch/x86/include/asm/mem_encrypt.h    |  2 +-
>  arch/x86/kernel/cpu/cpu.h             |  3 +--
>  include/asm-generic/error-injection.h |  2 +-
>  include/asm-generic/kprobes.h         |  5 ++---
>  include/linux/cache.h                 |  6 +++---
>  include/linux/compiler.h              | 31 ++++-----------------------
>  include/linux/compiler_attributes.h   | 10 +++++++++
>  include/linux/cpu.h                   |  2 +-
>  include/linux/export.h                |  2 +-
>  include/linux/init_task.h             |  4 ++--
>  include/linux/interrupt.h             |  5 ++---
>  include/linux/sched/debug.h           |  2 +-
>  include/linux/srcutree.h              |  2 +-
>  32 files changed, 54 insertions(+), 74 deletions(-)
>
> --
> 2.23.0.187.g17f5b7556c-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVT8GJCPSSB%3DjLKLu%3D-OrWAj5W3Rkbx1ar0SGcEq0-D0g%40mail.gmail.com.
