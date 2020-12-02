Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBUMGTT7AKGQEGHCLAPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFF42CB301
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Dec 2020 04:00:34 +0100 (CET)
Received: by mail-qv1-xf38.google.com with SMTP id 12sf167214qvk.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 19:00:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606878033; cv=pass;
        d=google.com; s=arc-20160816;
        b=SfjDkAeGlZpnQZEXtkThxEuLN/ucinNcx6pnFSkcsEDbLAOAqANOqV568VIKtOfGJD
         RE+Tbn3WOIhKnXTm6M9xxN8kp2875d4aA8I1M3IQjNlFUo2FcXhX5rc9nXyl4jAMgk1f
         sxyGaHwIu8Yk5e0FkEs9+VdZQxfEe7YZ2uqW8lUBaXCYuKNBqphzHTs0Pw9omqBSf+/2
         C0PZwXFh837PZHeIbTvyQRAg+Vum0wnoUnuyhY8gueCHyX10DWe6f8WgWxFUyPUd3VaY
         g7Yirve4ytlQEaE5dbC2pIw7qUsZUGzhATc9X9r2YnCso2OATFZzChKTDIPOHbGZNfDL
         wTSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=9sBTGmemX7kUujGLucmtVk+j2+W9HMUAt4K6tUjG9sE=;
        b=k07HEP/ahDIvMFa0raI+zs/6Hmpv0cpcFue+DE6uspFAXpxARVwNBww8veo84FwwO6
         jcUPcdma34ZF8XzswZAk7yHi/PReYYWUJQ7aW/IDxfLUzTOYXUzm6ox/GI43h/5Vm95j
         oqm8zAAXFIpTXYaKDJScQSc1q+gQHxXrkgTblLrPjGnxMyloJQtyZ5nIHnIljF2Xuljb
         DheOZ4XzFBtc/ipHa4dWkl0iGzfRHxOMQu4i8DUCvEzQdhefsv8E78jp+pU9Rdd7IjQS
         vMm6Ufzdin0QyqNt/2Qkh2jb6g4YtRCJVjyxKUU0c7RIwtuGOpnL3YVx+UjkE03c6hy3
         mSxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ucq+5afy;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9sBTGmemX7kUujGLucmtVk+j2+W9HMUAt4K6tUjG9sE=;
        b=SlEJIICouGvd93ZQuiWTDjlRvsafa3DPYoTD9jsOEhS1QsFGyfaU6anqvqi0ztxDNa
         7uGU8ds00CajKEihWS6dnCB1DjMXAiYlhgxqPPHCwAKM9qQKCDdQw0pN0H7XMfLKMw+s
         QUBOjyKSmPG0AhDsSLh4l8C/Y5iejPGkFWcG7u5IEqx0C6D9Fg93E4G8lxlB5OEE2RM/
         T8KVL8eUKv9eHx0jR7Oqcf8ykFUcFfjes8QZXnSpDz3tcMawFk9Fdhe8fyspZ+k0V5hS
         nUFuqPKiqOQXjUzW41ptCeZICYJ2xUau+PFSDVeQe0j302yn32BJTlgLJwGREunAXbIB
         mSeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9sBTGmemX7kUujGLucmtVk+j2+W9HMUAt4K6tUjG9sE=;
        b=dYx3EB9bUQgpVQTLKVRMN1FXt/bG3croR5kd4KOZ4tgQ0LzLQ/Y4SrNaTzAyBMWue3
         2xPd2QHV6oEMPZSww+1KY/jcp7P7OfinOmx8RJlQbGQIXVisYWAXHJrO6+iYkS9+xN1S
         zSC+gK9jOvAHvQa54o2mLuHckRQrwNFPs6IeCjBfQVPgUsK6+qL91S1/kG9vpN8oMJY1
         KY8iGt4u5cTnf9nMB/dYAuexdDmcsEmrhPXQ6/ovDWqemrlj3mkXW8TvnguRERsbOt1x
         j0sZbiW/BnlccJ1rUB2qr/5Th/dpJRYcQI3Uln4hS0P395wdL2JPWso/AtgG3zstpFVE
         i99A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321P2EOPEn58cLtgFVJ5kZgq4rQ/TetY6N7rFtDrCf6Zk45MLva
	cG9joyjlhWdUuwCVOue4spk=
X-Google-Smtp-Source: ABdhPJyLw4O6tfR48hZK9AYFAH0WAsVQjidmBnLHqjGNWPM9nm2LCX6hOGDi1R4yr7QWhgw17W9bwg==
X-Received: by 2002:a05:6214:1848:: with SMTP id d8mr429788qvy.7.1606878033390;
        Tue, 01 Dec 2020 19:00:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:2795:: with SMTP id n143ls93378qkn.9.gmail; Tue, 01 Dec
 2020 19:00:33 -0800 (PST)
X-Received: by 2002:a37:278e:: with SMTP id n136mr611874qkn.192.1606878033058;
        Tue, 01 Dec 2020 19:00:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606878033; cv=none;
        d=google.com; s=arc-20160816;
        b=cORwLChpOim6iSC11ZucWrX/qO/7A1VlEQ1wKRbathS28+3WlbwM70nnbN/HjnIptc
         LcVpC3nQ9pfUHcNMf7/yROSgyYsMuPj+s0b+6OGWr5TNAewQA9OCMXf3PUvUt4LUDNtr
         uh9fgCJ1z2AVt9wC1j1Gl4J5UpaBVVZSK9RUQScEyDWEIpbwwP6YicB8xog9tlP7Wl06
         wk8G8/TjOf1g2IlLWOzLvj+F7H6IThFbDm9M5AB7YtzoYb+xhcuElV6ioWUMy6zsFK92
         exGC9LnaZweqhZKbGlIMHOkXS+e9b6w78OGHGFi90Y/RUFt2OubYVqB5H+OsjAvrdwTk
         MwLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=bae6OEGZccYsxihZZpKD9adLEYkbdiNBF+1eXUN2gTY=;
        b=Kd2bDTAm+cVbMzhME/nsxdjRB+pSgf9SOmViakFm60RJ+k8fFGuk4uEZyg2UzDWUpi
         6GchayLVJDJFFovc7cUbxW+suMb3uyu9pCvHhD4ZD80JviANixyRujWOT4HkT/zBTusx
         HIcQGcym5mJ+kl4JV59febeBRCwe7gBefl/olUogOMY2GkJhsJuT3RnOMYZaINEGMTSs
         2P33b6lejp/4psA8OX38w2PbwKs7hWGCExJ3+gVMKEDiVAeyzMc+NMDYn0IhaYys1Xnn
         LjHI8RzGc1YJ41i5gu8jMU+HhKKO8n+deEibbSt5DxjKvMX0EDk8vVlFXZiPRHilBWaR
         Jp7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ucq+5afy;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id o11si22369qke.2.2020.12.01.19.00.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Dec 2020 19:00:32 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 0B230FSQ013606
	for <clang-built-linux@googlegroups.com>; Wed, 2 Dec 2020 12:00:15 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 0B230FSQ013606
X-Nifty-SrcIP: [209.85.214.175]
Received: by mail-pl1-f175.google.com with SMTP id v21so290045plo.12
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 19:00:15 -0800 (PST)
X-Received: by 2002:a17:902:bc86:b029:da:9da4:3092 with SMTP id
 bb6-20020a170902bc86b02900da9da43092mr549251plb.71.1606878014719; Tue, 01 Dec
 2020 19:00:14 -0800 (PST)
MIME-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com> <20201201213707.541432-3-samitolvanen@google.com>
In-Reply-To: <20201201213707.541432-3-samitolvanen@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 2 Dec 2020 11:59:37 +0900
X-Gmail-Original-Message-ID: <CAK7LNASMh1KysAB4+gU7_iuTW+5GT2_yMDevwpLwx0iqjxwmWw@mail.gmail.com>
Message-ID: <CAK7LNASMh1KysAB4+gU7_iuTW+5GT2_yMDevwpLwx0iqjxwmWw@mail.gmail.com>
Subject: Re: [PATCH v8 02/16] kbuild: add support for Clang LTO
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
        Josh Poimboeuf <jpoimboe@redhat.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        Kees Cook <keescook@chromium.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Kernel Hardening <kernel-hardening@lists.openwall.com>,
        linux-arch <linux-arch@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=ucq+5afy;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Dec 2, 2020 at 6:37 AM 'Sami Tolvanen' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
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
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  Makefile                          | 19 ++++++-
>  arch/Kconfig                      | 88 +++++++++++++++++++++++++++++++
>  include/asm-generic/vmlinux.lds.h | 11 ++--
>  scripts/Makefile.build            |  9 +++-
>  scripts/Makefile.modfinal         |  9 +++-
>  scripts/Makefile.modpost          | 21 +++++++-
>  scripts/link-vmlinux.sh           | 32 ++++++++---
>  7 files changed, 171 insertions(+), 18 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index 16b7f0890e75..f5cac2428efc 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -891,6 +891,21 @@ KBUILD_CFLAGS      += $(CC_FLAGS_SCS)
>  export CC_FLAGS_SCS
>  endif
>
> +ifdef CONFIG_LTO_CLANG
> +ifdef CONFIG_LTO_CLANG_THIN
> +CC_FLAGS_LTO   += -flto=thin -fsplit-lto-unit
> +KBUILD_LDFLAGS += --thinlto-cache-dir=$(extmod-prefix).thinlto-cache
> +else
> +CC_FLAGS_LTO   += -flto
> +endif
> +CC_FLAGS_LTO   += -fvisibility=default
> +endif
> +
> +ifdef CONFIG_LTO
> +KBUILD_CFLAGS  += $(CC_FLAGS_LTO)
> +export CC_FLAGS_LTO
> +endif
> +
>  ifdef CONFIG_DEBUG_FORCE_FUNCTION_ALIGN_32B
>  KBUILD_CFLAGS += -falign-functions=32
>  endif
> @@ -1471,7 +1486,7 @@ MRPROPER_FILES += include/config include/generated          \
>                   *.spec
>
>  # Directories & files removed with 'make distclean'
> -DISTCLEAN_FILES += tags TAGS cscope* GPATH GTAGS GRTAGS GSYMS
> +DISTCLEAN_FILES += tags TAGS cscope* GPATH GTAGS GRTAGS GSYMS .thinlto-cache
>
>  # clean - Delete most, but leave enough to build external modules
>  #
> @@ -1717,7 +1732,7 @@ PHONY += compile_commands.json
>
>  clean-dirs := $(KBUILD_EXTMOD)
>  clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers $(KBUILD_EXTMOD)/modules.nsdeps \
> -       $(KBUILD_EXTMOD)/compile_commands.json
> +       $(KBUILD_EXTMOD)/compile_commands.json $(KBUILD_EXTMOD)/.thinlto-cache
>
>  PHONY += help
>  help:
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 56b6ccc0e32d..30907b554451 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -598,6 +598,94 @@ config SHADOW_CALL_STACK
>           reading and writing arbitrary memory may be able to locate them
>           and hijack control flow by modifying the stacks.
>
> +config LTO
> +       bool
> +       help
> +         Selected if the kernel will be built using the compiler's LTO feature.
> +
> +config LTO_CLANG
> +       bool
> +       select LTO
> +       help
> +         Selected if the kernel will be built using Clang's LTO feature.
> +
> +config ARCH_SUPPORTS_LTO_CLANG
> +       bool
> +       help
> +         An architecture should select this option if it supports:
> +         - compiling with Clang,
> +         - compiling inline assembly with Clang's integrated assembler,
> +         - and linking with LLD.
> +
> +config ARCH_SUPPORTS_LTO_CLANG_THIN
> +       bool
> +       help
> +         An architecture should select this option if it can support Clang's
> +         ThinLTO mode.
> +
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
> +       depends on !MODVERSIONS
> +       help
> +         The compiler and Kconfig options support building with Clang's
> +         LTO.
> +
> +choice
> +       prompt "Link Time Optimization (LTO)"
> +       default LTO_NONE
> +       help
> +         This option enables Link Time Optimization (LTO), which allows the
> +         compiler to optimize binaries globally.
> +
> +         If unsure, select LTO_NONE. Note that LTO is very resource-intensive
> +         so it's disabled by default.
> +
> +config LTO_NONE
> +       bool "None"
> +       help
> +         Build the kernel normally, without Link Time Optimization (LTO).
> +
> +config LTO_CLANG_FULL
> +       bool "Clang Full LTO (EXPERIMENTAL)"
> +       depends on HAS_LTO_CLANG
> +       select LTO_CLANG
> +       help
> +          This option enables Clang's full Link Time Optimization (LTO), which
> +          allows the compiler to optimize the kernel globally. If you enable
> +          this option, the compiler generates LLVM bitcode instead of ELF
> +          object files, and the actual compilation from bitcode happens at
> +          the LTO link step, which may take several minutes depending on the
> +          kernel configuration. More information can be found from LLVM's
> +          documentation:
> +
> +           https://llvm.org/docs/LinkTimeOptimization.html
> +

This help document is misleading.
People who read the document would misunderstand how great this feature would.

This should be added in the commit log and Kconfig help:

            In contrast to the example in the documentation, Clang LTO
            for the kernel cannot remove any unreachable function or data.
            In fact, this results in even bigger vmlinux and modules.




-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASMh1KysAB4%2BgU7_iuTW%2B5GT2_yMDevwpLwx0iqjxwmWw%40mail.gmail.com.
