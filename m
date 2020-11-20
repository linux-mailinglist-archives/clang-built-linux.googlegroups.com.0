Return-Path: <clang-built-linux+bncBC2ORX645YPRB7G2376QKGQEWQKVNBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5DF2BB029
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 17:23:25 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id r3sf7942115ila.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 08:23:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605889404; cv=pass;
        d=google.com; s=arc-20160816;
        b=XiDDPIFYE1nVCIbSzopgA5IccLWou30rh2LDjN1mLEeGoYCO75DRBuM5xwWPk/OOIy
         sQlcywpD9MsrvDlLuhmg2qwiE9Jvsagl7lRHM3Z4BQIGaKRiu0GpR3Cwwns/yz3nDGGw
         jE1khPM5fU1U3XN+CHUc1nWVSGY9C+wTBWmOw60EFf1sbfQljFwmS+7cikDDr0Y5oyUZ
         Y9/X5mkNirF0jdmtO5UbA/8JVCrIMVPTaWspkh6J2Ago+HyIoNSMWeztz4uwZ8TstIa2
         4LxV0HGfsnw2Yxlok2xou5PZgQjM7jg3eiNt8Fg+pCVcSZ2zjkOPwsQnJC1AETbWxwAx
         s5UQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bT08XSVSUIcmHQdxxv8ODCJXUhA5nsP5xz4al3SnA+4=;
        b=tzkSa9GiXU2KYlJfepQMaxZxMNYK2BTIVGLBdQsc1LLclIaK5JsbWBL3FChmynuSAv
         qlU5H7eEyj1jFEEtKJf13i45+9Fz3S3hILCz6oxI+hD8NestTxkZpfuP1bsRrdd9RVEZ
         7+5VOwS6sWUfOex/0pQVZhhca9tEzrKkU1gBjLS9oC/SnXGGtvpO4slfAdSyKj8/VYO2
         AIUGH1O4AAHU7s6YR2Tb4iBWDeTPevpc0pZuWSZTo5meIUWrEC0cLXO2fKnUN7IOc0xO
         mR8gTbK465IdcRUHEmYbKhE/K7bM/pCFfU1XveFZxEgaTSpU4xwD5v3pstbcwxQY7Mav
         QgUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BnDD+UEZ;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bT08XSVSUIcmHQdxxv8ODCJXUhA5nsP5xz4al3SnA+4=;
        b=lQWomQ9NP+jsDyX/ZQR86XLqXeVoQ2AyIa/YnluYhdBxSM3ctVZLClzjhrUrNDW4a/
         G5G3luOgZNNbzu1HAdo/B/1MFihWdr62f4eYYoZnCmQESdiWdtcz2vdRYC+99020nb5X
         +6DTlYwIKBdu7BobwS5wingQ0+Bou5djFXIgx2m/8+gxUwvm/s+aCVIwWPhxAuuxeEWQ
         alXsFe0d8yTJvxPH5B9q1IfHi+c8F4/IpwA2X1drCjZZL4Pc8ADUg8M5aLZFKwCaEeHa
         qt1M0yW2aAG+JWkQ9VNyLpi90IEBXXniRqx3l4lIQhgXOxXASq9JMEVCBl4W59mj3PAu
         0niQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bT08XSVSUIcmHQdxxv8ODCJXUhA5nsP5xz4al3SnA+4=;
        b=Eb3fvoZ3XEUOA9TiPWNCKlgdKho3pz3pi+Ciu06X2yiOb6gl64SyjP/ivwX0onI6Y0
         2S640AGMmw9unEbzc6IRv62e0rjB7Zh0DA4YN4vm5YrTIgscHXyAJp7SM0S4m51snNmW
         FxUre4ot35/M95Aj5o4XjYCb7KC4spviN0mcYov46ImX8dsJhcVO3L79iUtLZJ928KWc
         2IQSHFfyE5FGAN8U6UdCKANc3JDQb3FyO6uD/VL+qfA2mJKuwzuCymTxMEb381tcqrhf
         NjU6MhH7KJTx0+E2Og3Kum6MIkSjeLvfcmhhBvZfgQxaLDiH1atIxsCUJZwljql+GiK3
         K3xw==
X-Gm-Message-State: AOAM533BFMnZBS29Mg/nrd4wIW6Bpt3WcsQVy3jLGhWy4UKoorJLmeEe
	3rKTsZ9y/9G/8ec119wBC7Q=
X-Google-Smtp-Source: ABdhPJy16jnohSfiYEQtnyOnedNt//T/4JaOaJR4a5+btPji4gOYZPfaJQIEI51AzkdU1AnJmTJOzw==
X-Received: by 2002:a02:c7c1:: with SMTP id s1mr18914739jao.94.1605889404315;
        Fri, 20 Nov 2020 08:23:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:860d:: with SMTP id f13ls1009766iol.9.gmail; Fri, 20 Nov
 2020 08:23:23 -0800 (PST)
X-Received: by 2002:a6b:d006:: with SMTP id x6mr5886599ioa.53.1605889403737;
        Fri, 20 Nov 2020 08:23:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605889403; cv=none;
        d=google.com; s=arc-20160816;
        b=VlenT67dnnMj9OmKdUKcCOpK3otc/zRBL8lgXtZohI8SFhazpK0TzOc8vEgMdZ6w9x
         81lI0yudY2KhhjEYOTLdaEM8Sfn6Aooa9OUBL6gDFeOb9COKwFMcy0vE8Ydp0HhfRjjr
         IwcB59je4YQ35apLv+mHnuN7LMg//xw7/xOukmUVqA3N1iDwj+PZAOfuKd7bA7NYRaxG
         aDdkbVhsRlJcxw1yODx2PsNQD8e202NtCk0afWgJ2/5Yr6Gxyt1+jSeJKhxJ75Iu/zGT
         84DUreBMR/dnvyLhCrz28VHGT8CrRqWiPirDz8DGNY3+GIQhM5Fg7YZvT2QalmKKhTPS
         cWoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vOo6J2qOaNEsmcSt6ibqCSmyULbkJ5ut9vT5313WIA4=;
        b=b2W1122DXhpxr2QrlF43c6z7XHvgE1cUMd4ZipmAEJjAZA/VQYwSu+T+Zr+1o13jNT
         eBSnhFfeczXPdtJh7XnBFB4GJIGkmURl7f9f8iTVbUrJWUn1x+eGT77DypIauCPfP7+l
         JPMi4SbINUiEbVv+CuvDiKa7BOsMgXcAldjgkKkf22b3riw6yTxcdUp/R/L2VWpqdfOr
         0fKglLtiDJANzKZAfVkNlGi4daBwYNTycSy3mWrLbDVHf044S7YQDLa6EXu/GWzzgM7i
         ALJ8ex6XmY4EDgewjak/87fz7BiQ+UWISf0UDccNZhGouzoQs86QggG0U2o44LQKWb8G
         /PTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BnDD+UEZ;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com. [2607:f8b0:4864:20::941])
        by gmr-mx.google.com with ESMTPS id o11si196619ilo.0.2020.11.20.08.23.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Nov 2020 08:23:23 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941 as permitted sender) client-ip=2607:f8b0:4864:20::941;
Received: by mail-ua1-x941.google.com with SMTP id n5so2289151uao.2
        for <clang-built-linux@googlegroups.com>; Fri, 20 Nov 2020 08:23:23 -0800 (PST)
X-Received: by 2002:ab0:36db:: with SMTP id v27mr12115443uau.66.1605889402882;
 Fri, 20 Nov 2020 08:23:22 -0800 (PST)
MIME-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
 <20201118220731.925424-3-samitolvanen@google.com> <CAKwvOdnYTMzaahnBqdNYPz3KMdnkp=jZ4hxiqkTYzM5+BBdezA@mail.gmail.com>
In-Reply-To: <CAKwvOdnYTMzaahnBqdNYPz3KMdnkp=jZ4hxiqkTYzM5+BBdezA@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 20 Nov 2020 08:23:11 -0800
Message-ID: <CABCJKucj_jUwoiLc35R7qFe+cNKTWgT+gsCa5pPiY66+1--3Lg@mail.gmail.com>
Subject: Re: [PATCH v7 02/17] kbuild: add support for Clang LTO
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BnDD+UEZ;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941
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

On Wed, Nov 18, 2020 at 3:49 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Nov 18, 2020 at 2:07 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > This change adds build system support for Clang's Link Time
> > Optimization (LTO). With -flto, instead of ELF object files, Clang
> > produces LLVM bitcode, which is compiled into native code at link
> > time, allowing the final binary to be optimized globally. For more
> > details, see:
> >
> >   https://llvm.org/docs/LinkTimeOptimization.html
> >
> > The Kconfig option CONFIG_LTO_CLANG is implemented as a choice,
> > which defaults to LTO being disabled. To use LTO, the architecture
> > must select ARCH_SUPPORTS_LTO_CLANG and support:
> >
> >   - compiling with Clang,
> >   - compiling inline assembly with Clang's integrated assembler,
> >   - and linking with LLD.
> >
> > While using full LTO results in the best runtime performance, the
> > compilation is not scalable in time or memory. CONFIG_THINLTO
> > enables ThinLTO, which allows parallel optimization and faster
> > incremental builds. ThinLTO is used by default if the architecture
> > also selects ARCH_SUPPORTS_THINLTO:
> >
> >   https://clang.llvm.org/docs/ThinLTO.html
> >
> > To enable LTO, LLVM tools must be used to handle bitcode files. The
> > easiest way is to pass the LLVM=1 option to make:
> >
> >   $ make LLVM=1 defconfig
> >   $ scripts/config -e LTO_CLANG
> >   $ make LLVM=1
> >
> > Alternatively, at least the following LLVM tools must be used:
> >
> >   CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm
> >
> > To prepare for LTO support with other compilers, common parts are
> > gated behind the CONFIG_LTO option, and LTO can be disabled for
> > specific files by filtering out CC_FLAGS_LTO.
> >
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> > ---
> >  Makefile                          | 19 +++++++-
> >  arch/Kconfig                      | 75 +++++++++++++++++++++++++++++++
> >  include/asm-generic/vmlinux.lds.h | 11 +++--
> >  scripts/Makefile.build            |  9 +++-
> >  scripts/Makefile.modfinal         |  9 +++-
> >  scripts/Makefile.modpost          | 21 ++++++++-
> >  scripts/link-vmlinux.sh           | 32 +++++++++----
> >  7 files changed, 158 insertions(+), 18 deletions(-)
> >
> > diff --git a/Makefile b/Makefile
> > index 8c8feb4245a6..240560e88d69 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -893,6 +893,21 @@ KBUILD_CFLAGS      += $(CC_FLAGS_SCS)
> >  export CC_FLAGS_SCS
> >  endif
> >
> > +ifdef CONFIG_LTO_CLANG
> > +ifdef CONFIG_THINLTO
> > +CC_FLAGS_LTO   += -flto=thin -fsplit-lto-unit
> > +KBUILD_LDFLAGS += --thinlto-cache-dir=$(extmod-prefix).thinlto-cache
> > +else
> > +CC_FLAGS_LTO   += -flto
> > +endif
> > +CC_FLAGS_LTO   += -fvisibility=default
> > +endif
> > +
> > +ifdef CONFIG_LTO
> > +KBUILD_CFLAGS  += $(CC_FLAGS_LTO)
> > +export CC_FLAGS_LTO
> > +endif
> > +
> >  ifdef CONFIG_DEBUG_FORCE_FUNCTION_ALIGN_32B
> >  KBUILD_CFLAGS += -falign-functions=32
> >  endif
> > @@ -1473,7 +1488,7 @@ MRPROPER_FILES += include/config include/generated          \
> >                   *.spec
> >
> >  # Directories & files removed with 'make distclean'
> > -DISTCLEAN_FILES += tags TAGS cscope* GPATH GTAGS GRTAGS GSYMS
> > +DISTCLEAN_FILES += tags TAGS cscope* GPATH GTAGS GRTAGS GSYMS .thinlto-cache
> >
> >  # clean - Delete most, but leave enough to build external modules
> >  #
> > @@ -1719,7 +1734,7 @@ PHONY += compile_commands.json
> >
> >  clean-dirs := $(KBUILD_EXTMOD)
> >  clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers $(KBUILD_EXTMOD)/modules.nsdeps \
> > -       $(KBUILD_EXTMOD)/compile_commands.json
> > +       $(KBUILD_EXTMOD)/compile_commands.json $(KBUILD_EXTMOD)/.thinlto-cache
> >
> >  PHONY += help
> >  help:
> > diff --git a/arch/Kconfig b/arch/Kconfig
> > index 56b6ccc0e32d..a41fcb3ca7c6 100644
> > --- a/arch/Kconfig
> > +++ b/arch/Kconfig
> > @@ -598,6 +598,81 @@ config SHADOW_CALL_STACK
> >           reading and writing arbitrary memory may be able to locate them
> >           and hijack control flow by modifying the stacks.
> >
> > +config LTO
> > +       bool
> > +
> > +config ARCH_SUPPORTS_LTO_CLANG
> > +       bool
> > +       help
> > +         An architecture should select this option if it supports:
> > +         - compiling with Clang,
> > +         - compiling inline assembly with Clang's integrated assembler,
> > +         - and linking with LLD.
> > +
> > +config ARCH_SUPPORTS_THINLTO
> > +       bool
> > +       help
> > +         An architecture should select this option if it supports Clang's
> > +         ThinLTO.
> > +
> > +config THINLTO
> > +       bool "Clang ThinLTO"
> > +       depends on LTO_CLANG && ARCH_SUPPORTS_THINLTO
> > +       default y
> > +       help
> > +         This option enables Clang's ThinLTO, which allows for parallel
> > +         optimization and faster incremental compiles. More information
> > +         can be found from Clang's documentation:
> > +
> > +           https://clang.llvm.org/docs/ThinLTO.html
> > +
> > +         If you say N here, the compiler will use full LTO, which may
> > +         produce faster code, but building the kernel will be significantly
> > +         slower as the linker won't efficiently utilize multiple threads.
> > +
> > +         If unsure, say Y.
>
> I think the order of these new configs makes it so that ThinLTO
> appears above LTO in menuconfig; I don't like that, and wish it came
> immediately after.  Does `THINLTO` have to be defined _after_ the
> choice for LTO_NONE/LTO_CLANG, perhaps?
>
> Secondly, I don't like how ThinLTO is a config and not a choice.  If I
> don't set ThinLTO, what am I getting?  That's a rhetorical question; I
> know its full LTO, and I guess the help text does talk about the
> tradeoffs and what you would get.  I guess what's curious to me is
> "why does it display ThinLTO? Why not FullLTO?"  I can't help but
> wonder if a kconfig `choice` rather than a `config` would be better
> here, that way it's more obvious the user is making a choice between
> ThinLTO vs Full LTO, rather than the current patches which look like
> "ThinkLTO on/off."

Changing the ThinLTO config to a choice and moving it after the main
LTO config sounds like a good idea to me. I'll see if I can change
this in v8. Thanks!

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucj_jUwoiLc35R7qFe%2BcNKTWgT%2BgsCa5pPiY66%2B1--3Lg%40mail.gmail.com.
