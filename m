Return-Path: <clang-built-linux+bncBC2ORX645YPRBEPD4H6QKGQEHOQ3OEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 304FA2BBBA4
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 02:46:58 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id a13sf14079321ybj.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 17:46:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605923217; cv=pass;
        d=google.com; s=arc-20160816;
        b=hy6xarTH3c5d0UWVk+qemCj7iMLPKgYr+Bm6tKqGX7FN7AE+6mHXT0J07Pa0DZL8Au
         3YcXioAj9GNMSRp8b33GPX8bJfegdWatUPvNEbd1530bAESbk7ZCa1mtr02LDp4CdX+K
         pCytXMzq2k73pCuavipugOp3vv0AT/UDaM9sPXAU5gs4Eppjj+N6E+yEXuulUsTByR+F
         zFrE1JTQd3LZjG8ZIToa/zDrRTKcKHbh1hEJt+1x9RSmaudQ3w/osEdm3aM1PBENbON3
         DPhsK4hHPO7cQr+bnxfY1REZb4N/T0R/BZ81A9ChdHRAkf2tkD8ikjooLIPJ+YeXJebZ
         xrjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/21PhQZzgXd/nPl7kyzT1DQo/1g0O1GTkcQdzYWO/F0=;
        b=uH7QGHgYy5i5NM6P2fgMuFVxYCFprTR62xYb1heiXWohMnMSk3OSeAKLuKLpRSeWs1
         lNRCwa//HGTT8kXf+eImty4HlTYijbfgZb2/DGdTVQ9c8eD8gvJ5uTuyV6qpTISiGcsc
         m/j+eyM1yrzhfD+077m6MJuKyoYlA4bV4GOAHLjjQ1VgfX18r4D9iNAH4Gm/yVpEZxeP
         dENZdq32IVl/DLhLVwRep/O2qsQK1E1SrVvX+OP2j5Guu6f+mFExeS2WG4LODAeEKvEI
         7c6PmtCTzpbFqZmiOxYIeeh8RpB4V0Pj/6i3TTspIwcRSyNYmz0mS5xopmLx6nKACKvv
         4FtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gxEj26Ay;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/21PhQZzgXd/nPl7kyzT1DQo/1g0O1GTkcQdzYWO/F0=;
        b=XPqBbeGil/0iFSm1e+m39pL6f0HE41LTwBMWI+jLNDqJUwA+ploB1u/rLNG8d3Q33h
         5XfZwpOLt/OvWn2lfn370vasDi8/Czu/85jSYHn3KZKZJteNK2oSU8YSm7jI4Zetx/vG
         rPHCApsn7Z5zDLj/teLd0lvUMPCzmQP1sGHKaEML3j/MXsEk2yy2byHf3T+LRwprHn3e
         CFIDbnI7yv5MevtXSGd7D3VXs/EBan5ygtBWnTPfUIWgH4dHTfozSWSzBKjENvnjtuW5
         m2ejOc5oNB5aYINz0wx+lZEo5pm9VojY6ddkbg5VVYAaNolwl7S2SCNgrE6T6l/yQK4C
         se7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/21PhQZzgXd/nPl7kyzT1DQo/1g0O1GTkcQdzYWO/F0=;
        b=Hmki0K/OMS/euq+SAcQQqFoivtz5F5MiAhaoU/mNCKMDiFQvfOI3/F2g0XA9qt0TEg
         CbHwhZit4tuExHZpV5nkBI1FEnso1FeatK4xnoPDSDVXS3/WP49drlZyk7wRUkxinvGl
         Li1XDwaFparcik9EFXFG6TQSeypL5q0k9cSi+yG2CWTCS7Wrupvi0zCtW5r5vyPf9Avm
         7aL7ZXJTogqXZ0MyF8dgeG5MPwtydAjnvj0djvrhYsZV2b6qoe3WMfFK+A5GQcKH2Fiz
         kymF7pMmQpVIN7sE9atTRKlsULtn6u1dpybvFl2oC0dTX3VHocoIHcIYZw8FFFlxtl0k
         +OZg==
X-Gm-Message-State: AOAM5303Exy67LFtjQfl3bXfxdNrU8V83RTDtktk7qXp0zV6WeKptSHQ
	s+lGc0JAFbtidqnRAFg7Ag0=
X-Google-Smtp-Source: ABdhPJwDlaefbo5kl8jCrZAwJoQzHPICW/x70EH+LgnChUc9YHJ2qAFEbX8tr/qWIdsl9LWD6wC/ug==
X-Received: by 2002:a25:1344:: with SMTP id 65mr24027085ybt.440.1605923217227;
        Fri, 20 Nov 2020 17:46:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:19c3:: with SMTP id 186ls4205563ybz.7.gmail; Fri, 20 Nov
 2020 17:46:56 -0800 (PST)
X-Received: by 2002:a25:5f07:: with SMTP id t7mr24340703ybb.121.1605923216807;
        Fri, 20 Nov 2020 17:46:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605923216; cv=none;
        d=google.com; s=arc-20160816;
        b=LOT+tiKSS7jugzvz4Sgxko6lYrW47EnN8DxYDX84w7byh1mILGMf5WDCL3zUYzQ3zB
         LmHQ/Z7b+3L1QEBXhUBZuvgDZO2fSXOCPAxMV5geGhDYM99Y/Ti/UEmwrGdJM61r/L/5
         rnGDFI4gMTj4yi8za6+DvEKbU4nmxKdNC6AL4hPjYXC7AMOtizby8NKT1NH39LFxswYW
         hictWq2C0j1qv9kov7xbGD0LXAgp6OueP6pdIu3/qJ96FBlhREsU6+xgY0pPPMaj2efi
         +y6W9tSfrEv3aWb5IxucBC+CXRWI8CIs0WgVBlTAfm9zCBdLFl/o6pvpY2nldppmPtpp
         w0hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=v8J7ye6KqEOqzvSxgHSVDOvhErTqxQnjIzQcu9TjNgY=;
        b=lmORBOxUoZVKJ2sWhx7/oCxOXCKhuls2aIjyMg5DS6NgCIDnRsItPPYlkFfzxdBeqf
         /NQWMQCt34JxRQIClG90ORg+nANBHjeP4IZRB+s6TDZpk7SVjIQogyKcn62AbAT3ZFBU
         cL5LFQT6yvOeRunDLIL3uSHU5Sxk+vib6LVLT0lHIySeMUXvGoGc6PXSzonyqHQPVW7e
         YGo4CWVyyYnHdelAvN6VS+yNN18EBWU45riyr/wU5Ek2G3kXM+ws651H3FZ9JJRWDSCX
         AJj9xGXCF3JQVbCgOUjY08jvW82HaoRgAShN6RDnG9tXgVjHCNZunrf31D5Smq8n1LjZ
         0e8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gxEj26Ay;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id m3si524740ybf.1.2020.11.20.17.46.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Nov 2020 17:46:56 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Received: by mail-vs1-xe42.google.com with SMTP id v8so5571388vso.2
        for <clang-built-linux@googlegroups.com>; Fri, 20 Nov 2020 17:46:56 -0800 (PST)
X-Received: by 2002:a05:6102:22da:: with SMTP id a26mr15670580vsh.13.1605923216073;
 Fri, 20 Nov 2020 17:46:56 -0800 (PST)
MIME-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
 <20201118220731.925424-3-samitolvanen@google.com> <CAKwvOdnYTMzaahnBqdNYPz3KMdnkp=jZ4hxiqkTYzM5+BBdezA@mail.gmail.com>
 <CABCJKucj_jUwoiLc35R7qFe+cNKTWgT+gsCa5pPiY66+1--3Lg@mail.gmail.com>
 <202011201144.3F2BB70C@keescook> <20201120202935.GA1220359@ubuntu-m3-large-x86>
 <202011201241.B159562D7@keescook> <CABCJKucJ87wa73YJkN_dYUyE7foQT+12gdWJZw1PgZ_decFr4w@mail.gmail.com>
 <202011201556.3B910EF@keescook>
In-Reply-To: <202011201556.3B910EF@keescook>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 20 Nov 2020 17:46:44 -0800
Message-ID: <CABCJKudy5xFfjBFpFPR255-NAb1yOSuVqsL4fFUwJGGWKDnmQQ@mail.gmail.com>
Subject: Re: [PATCH v7 02/17] kbuild: add support for Clang LTO
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gxEj26Ay;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Fri, Nov 20, 2020 at 3:59 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Fri, Nov 20, 2020 at 12:58:41PM -0800, Sami Tolvanen wrote:
> > On Fri, Nov 20, 2020 at 12:43 PM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > On Fri, Nov 20, 2020 at 01:29:35PM -0700, Nathan Chancellor wrote:
> > > > On Fri, Nov 20, 2020 at 11:47:21AM -0800, Kees Cook wrote:
> > > > > On Fri, Nov 20, 2020 at 08:23:11AM -0800, Sami Tolvanen wrote:
> > > > > > Changing the ThinLTO config to a choice and moving it after the main
> > > > > > LTO config sounds like a good idea to me. I'll see if I can change
> > > > > > this in v8. Thanks!
> > > > >
> > > > > Originally, I thought this might be a bit ugly once GCC LTO is added,
> > > > > but this could be just a choice like we're done for the stack
> > > > > initialization. Something like an "LTO" choice of NONE, CLANG_FULL,
> > > > > CLANG_THIN, and in the future GCC, etc.
> > > >
> > > > Having two separate choices might be a little bit cleaner though? One
> > > > for the compiler (LTO_CLANG versus LTO_GCC) and one for the type
> > > > (THINLTO versus FULLLTO). The type one could just have a "depends on
> > > > CC_IS_CLANG" to ensure it only showed up when needed.
> > >
> > > Right, that's how the stack init choice works. Kconfigs that aren't
> > > supported by the compiler won't be shown. I.e. after Sami's future
> > > patch, the only choice for GCC will be CONFIG_LTO_NONE. But building
> > > under Clang, it would offer CONFIG_LTO_NONE, CONFIG_LTO_CLANG_FULL,
> > > CONFIG_LTO_CLANG_THIN, or something.
> > >
> > > (and I assume  CONFIG_LTO would be def_bool y, depends on !LTO_NONE)
> >
> > I'm fine with adding ThinLTO as another option to the LTO choice, but
> > it would duplicate the dependencies and a lot of the help text. I
> > suppose we could add another config for the dependencies and have both
> > LTO options depend on that instead.
>
> How about something like this? This separates the arch support, compiler
> support, and user choice into three separate Kconfig areas, which I
> think should work.

Sure, this looks good to me, I'll use this in v8. The only minor
concern I have is that ThinLTO cannot be set as the default LTO mode,
but I assume anyone who selects LTO is also capable of deciding which
mode is better for them.

> diff --git a/Makefile b/Makefile
> index e397c4caec1b..af902718e882 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -897,7 +897,7 @@ export CC_FLAGS_SCS
>  endif
>
>  ifdef CONFIG_LTO_CLANG
> -ifdef CONFIG_THINLTO
> +ifdef CONFIG_LTO_CLANG_THIN
>  CC_FLAGS_LTO   += -flto=thin -fsplit-lto-unit
>  KBUILD_LDFLAGS += --thinlto-cache-dir=$(extmod-prefix).thinlto-cache
>  else
> diff --git a/arch/Kconfig b/arch/Kconfig
> index cdd29b5fdb56..5c22e10e4c12 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -600,6 +600,14 @@ config SHADOW_CALL_STACK
>
>  config LTO
>         bool
> +       help
> +         Selected if the kernel will be built using the compiler's LTO feature.
> +
> +config LTO_CLANG
> +       bool
> +       select LTO
> +       help
> +         Selected if the kernel will be built using Clang's LTO feature.
>
>  config ARCH_SUPPORTS_LTO_CLANG
>         bool
> @@ -609,28 +617,25 @@ config ARCH_SUPPORTS_LTO_CLANG
>           - compiling inline assembly with Clang's integrated assembler,
>           - and linking with LLD.
>
> -config ARCH_SUPPORTS_THINLTO
> +config ARCH_SUPPORTS_LTO_CLANG_THIN
>         bool
>         help
> -         An architecture should select this option if it supports Clang's
> -         ThinLTO.
> +         An architecture should select this option if it can supports Clang's
> +         ThinLTO mode.
>
> -config THINLTO
> -       bool "Clang ThinLTO"
> -       depends on LTO_CLANG && ARCH_SUPPORTS_THINLTO
> -       default y
> +config HAS_LTO_CLANG
> +       def_bool y
> +       # Clang >= 11: https://github.com/ClangBuiltLinux/linux/issues/510
> +       depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD
> +       depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
> +       depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
> +       depends on ARCH_SUPPORTS_LTO_CLANG
> +       depends on !FTRACE_MCOUNT_USE_RECORDMCOUNT
> +       depends on !KASAN
> +       depends on !GCOV_KERNEL
>         help
> -         This option enables Clang's ThinLTO, which allows for parallel
> -         optimization and faster incremental compiles. More information
> -         can be found from Clang's documentation:
> -
> -           https://clang.llvm.org/docs/ThinLTO.html
> -
> -         If you say N here, the compiler will use full LTO, which may
> -         produce faster code, but building the kernel will be significantly
> -         slower as the linker won't efficiently utilize multiple threads.
> -
> -         If unsure, say Y.
> +         The compiler and Kconfig options support building with Clang's
> +         LTO.
>
>  choice
>         prompt "Link Time Optimization (LTO)"
> @@ -644,20 +649,14 @@ choice
>
>  config LTO_NONE
>         bool "None"
> +       help
> +         Build the kernel normally, without Link Time Optimization (LTO).
>
> -config LTO_CLANG
> -       bool "Clang's Link Time Optimization (EXPERIMENTAL)"
> -       # Clang >= 11: https://github.com/ClangBuiltLinux/linux/issues/510
> -       depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD
> -       depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
> -       depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
> -       depends on ARCH_SUPPORTS_LTO_CLANG
> -       depends on !FTRACE_MCOUNT_USE_RECORDMCOUNT
> -       depends on !KASAN
> -       depends on !GCOV_KERNEL
> -       select LTO
> +config LTO_CLANG_FULL
> +       bool "Clang Full LTO (EXPERIMENTAL)"
> +       select LTO_CLANG
>         help
> -          This option enables Clang's Link Time Optimization (LTO), which
> +          This option enables Clang's full Link Time Optimization (LTO), which
>            allows the compiler to optimize the kernel globally. If you enable
>            this option, the compiler generates LLVM bitcode instead of ELF
>            object files, and the actual compilation from bitcode happens at
> @@ -667,9 +666,22 @@ config LTO_CLANG
>
>             https://llvm.org/docs/LinkTimeOptimization.html
>
> -         To select this option, you also need to use LLVM tools to handle
> -         the bitcode by passing LLVM=1 to make.
> +         During link time, this option can use a large amount of RAM, and
> +         may take much longer than the ThinLTO option.
>
> +config LTO_CLANG_THIN
> +       bool "Clang ThinLTO (EXPERIMENTAL)"
> +       depends on ARCH_SUPPORTS_LTO_CLANG_THIN
> +       select LTO_CLANG
> +       help
> +         This option enables Clang's ThinLTO, which allows for parallel
> +         optimization and faster incremental compiles compared to the
> +         CONFIG_LTO_CLANG_FULL option. More information can be found
> +         from Clang's documentation:
> +
> +           https://clang.llvm.org/docs/ThinLTO.html
> +
> +         If unsure, say Y.
>  endchoice

The two LTO_CLANG_* options need to depend on HAS_LTO_CLANG, of course.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudy5xFfjBFpFPR255-NAb1yOSuVqsL4fFUwJGGWKDnmQQ%40mail.gmail.com.
