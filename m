Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBZVEWX5AKGQEEUJ4VXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C602581EB
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 21:41:27 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id f11sf6791116qtj.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 12:41:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598902886; cv=pass;
        d=google.com; s=arc-20160816;
        b=vjJCOh1bexYaG6wUwskQkQfCU0np54R76hn/1w4TIl1KN+4JKZ6YNhaiUWjGbg99xY
         F5ib5/lsrMYYLHvUZ949Wd1AfyX3cGS7kpwaqSYo+SuDL5Of0vMGrXLJDMQrWFVmDl66
         s/JbUkFEHNPQq+eCizotDjw9MmH31eONXtLISmYQY6Mq+V5vxVISdxG4KEbpT+ayex3Q
         FSUQpGTrdvIA9tNbaUfz58Ivv5qt7nnYhidlPhNmLONLi5+L5Fso9fDREsAxkgTzPkk2
         wASYGmpra5w1Hf1E9HDTMok6txxEifQ1kUC1sEuJ4Oop1N8sHm8ESKiV8Dx7BXrS7YYc
         z9DQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=u9WqR+o5fQMMeuY7Wm/ZmCKhfoArHhIjae+wJx9AYSM=;
        b=p7wgw4jsIRSGhvcFfvtB+rAq0aH3S8HvO3C2deSKJpmvXsX0XLYSs2dFiZ54P8G+9y
         xp8Z3qL+ASoryD1XOzjBBH5BrY9gw2j8sEQnVhhQ+APMZA198BetJ7vtYgRGYET2Qzxz
         R7Z4B5GsLDHfxj0V7M0W3OeJRz3S9uXGGOPrbGQLl3Ojm5diXRVnMo/bN7k6hVfchaKH
         lDig+Td/66DXZcDNhKawmuPf0dcAa1Zo3WmfmX1F2JO9K4ArK8XTyburXM+z1WWNesNJ
         KNkynVqi+LlCcz/45Pos2K+ioyTGYs3iXSF5Wx3vwmcL1G043xtl2CFnCV61Z3s+FOX8
         HLng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="KH/wZ6f6";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u9WqR+o5fQMMeuY7Wm/ZmCKhfoArHhIjae+wJx9AYSM=;
        b=JaetvQHeHXq+JKvKWXakmH0/cX7c/938EZFh5ieDD/QLj1j4klUY2QVIq3LMsG3533
         8JowfwyACfkHGIL9k9hIqWvv0bQdDe0AYeaxFazuATMhDEcWVc9yx+rMQfM/33T9Oh2r
         WBrl6kCAJuM/nFAZFFP4lbD/vQcnlqyxeW+JHNc+aJPLH4SgSDeFcxKS+byR1ok/Qj36
         PgEYztO6USy8hUuBI3yeGV5rnxMkI6BU6OkExrDMs/Uof9Akc8QQH9CkJgcTIRND/qkI
         A/QotrQcH01Zsg/XYYdaIxoO4KUZJOtOmbfD6K+DqyI//6XKv5lVVXfw20PBaeWAgJZZ
         HkhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=u9WqR+o5fQMMeuY7Wm/ZmCKhfoArHhIjae+wJx9AYSM=;
        b=ZeCkb5J40USszTadPvngbm8H3i2QDN9QGrdRiwu0WPiR2CyUbWsfyXUneQZoh2uhiO
         Iwg9jsewJYkF/TvqbBp9jwf4uIa6SoeqEp1fpKX33yCGWpDCafP19F75cKWTPjVUIOG2
         PW4HsIUjIELCMWatrLLthkoMdigyUQXkTMB+quATUjpeD0NTQUIlvon0e4dJ/cB+n4OV
         HWN81P/YwwECwutc4vcjf0RHbP1jBy90Fs/erOrt2jZgcwrCxir6DImtlHV8tw28mt5O
         SJW+IfP2x0bXW9EusB3pb3T0LdS32p+KTUg0p5aAtQ6c0fi9UOR6ZYNaz6I8LUfuKdsU
         4Wnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532A4dV8gtDHi1J5idJxXCXq23ulTEFQ/vKRqV/vB9/bpT4LOr6O
	91pNKkGpCBIXUbZ4tyvhFOE=
X-Google-Smtp-Source: ABdhPJx4BD538pZHW+g/oVR99b1rNcn+ENcuPboCVqyDX2cAp7nE1umk217JemJYbjM085TGuzNcsw==
X-Received: by 2002:a37:6393:: with SMTP id x141mr2462871qkb.238.1598902886492;
        Mon, 31 Aug 2020 12:41:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3405:: with SMTP id u5ls3285961qtb.1.gmail; Mon, 31 Aug
 2020 12:41:26 -0700 (PDT)
X-Received: by 2002:ac8:4d1a:: with SMTP id w26mr2948725qtv.220.1598902886145;
        Mon, 31 Aug 2020 12:41:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598902886; cv=none;
        d=google.com; s=arc-20160816;
        b=jProGcELmqe+ONlGOfKtL2vmkccIW5Z4j16/3ehzgz2ZxMDtbo9pyjZLzRqZN9tRw8
         5lg/C6a1N41woEpgub0C7Hi3k3LX5HaSmn9WzyyAiOWrajWoKQQQ8+hyxAFBHo6InlgI
         l7fBE5Rdp5wj2o+Z8KZxQACihFSgOq7tsZkvUc+U+2wlqJSvC4SRYqjxdmwqvXbJLzkf
         tWXUPbBH71vbnIszDnwA1FlATQH1F9HT1DRpoM7lPM2e+U0XSBgIc1H9hJ39+grX8auf
         wg1SNzfCaQ+KBA61TIGo5+07jD6Wnb986a5ILbNmK2fcdxZuBYFbiXep0wCfkiERROeJ
         pDJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BoCMpob6AiQsu+kxWHd5oJKfOs4R1dZWuQK+Zd6WM1s=;
        b=xeT3jPkQFsEu+vuEHN4Burn4C0+wfms8v19QYvZ2pRG1K8zRetW6v/exH9HwG/QOqe
         pUS3h30yAB80Pfht94jeRU3uK70KX6xqzbrOo9asO9fzk6Ywo/IHRszl2w8cpVnmzXz4
         7ttu+1C0VPSB6Wp2WxX2wC3o1e271jA2jjpLwAR94F4+D6PBxG2AgYQCNH2WwJ/JzjIV
         xUch7YRWFQfUPBI8oQwNdBBPzPYwVTAutif9Pz5ARILKDJ4yMcwKTNNyyL6r3J5k5HJO
         pJ/jZiQPPAQeARYqICPga4+3jdGgs/mFu2WwKCkuaPsww/rPpDu+4NVX1iNhsal5pXFn
         VeQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="KH/wZ6f6";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id a2si360287qkl.4.2020.08.31.12.41.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 12:41:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id u128so1207151pfb.6
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 12:41:26 -0700 (PDT)
X-Received: by 2002:a63:e018:: with SMTP id e24mr2361162pgh.175.1598902885705;
        Mon, 31 Aug 2020 12:41:25 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s28sm4183844pfd.111.2020.08.31.12.41.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2020 12:41:24 -0700 (PDT)
Date: Mon, 31 Aug 2020 12:41:23 -0700
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>, Borislav Petkov <bp@suse.de>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 00/29] Warn on orphan section placement
Message-ID: <202008311240.9F94A39@keescook>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="KH/wZ6f6";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Aug 21, 2020 at 12:42:41PM -0700, Kees Cook wrote:
> Hi Ingo,
> 
> Based on my testing, this is ready to go. I've reviewed the feedback on
> v5 and made a few small changes, noted below.

If no one objects, I'll pop this into my tree for -next. I'd prefer it
go via -tip though! :)

Thanks!

-Kees

> 
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=linker/orphans/warn/v6
> 
> v6:
> - rebase to -tip x86/boot
> - remove 0-sized NOLOAD
> - move .got.plt to end with INFO (NOLOAD warns)
> - add Reviewed-bys
> v5: https://lore.kernel.org/lkml/20200731230820.1742553-1-keescook@chromium.org/
> v4: https://lore.kernel.org/lkml/20200629061840.4065483-1-keescook@chromium.org/
> v3: https://lore.kernel.org/lkml/20200624014940.1204448-1-keescook@chromium.org/
> v2: https://lore.kernel.org/lkml/20200622205815.2988115-1-keescook@chromium.org/
> v1: https://lore.kernel.org/lkml/20200228002244.15240-1-keescook@chromium.org/
> 
> A recent bug[1] was solved for builds linked with ld.lld, and tracking
> it down took way longer than it needed to (a year). Ultimately, it
> boiled down to differences between ld.bfd and ld.lld's handling of
> orphan sections. Similar situation have continued to recur, and it's
> clear the kernel build needs to be much more explicit about linker
> sections. Similarly, the recent FGKASLR series brought up orphan section
> handling too[2]. In all cases, it would have been nice if the linker was
> running with --orphan-handling=warn so that surprise sections wouldn't
> silently get mapped into the kernel image at locations up to the whim
> of the linker's orphan handling logic. Instead, all desired sections
> should be explicitly identified in the linker script (to be either kept,
> discarded, or verified to be zero-sized) with any orphans throwing a
> warning. The powerpc architecture has actually been doing this for some
> time, so this series just extends that coverage to x86, arm, and arm64.
> 
> This has gotten sucecssful build testing under the following matrix:
> 
> compiler/linker: gcc+ld.bfd, clang+ld.lld
> targets: defconfig, allmodconfig
> architectures: x86, i386, arm64, arm
> versions: -tip x86/boot
> 
> All three architectures depend on the first several commits to
> vmlinux.lds.h. x86 depends on Arvind's GOT series (in -tip x86/boot now).
> arm64 depends on the efi/libstub patch. As such, I'd like to land this
> series as a whole. Ingo has suggested he'd take it into -tip.
> 
> Thanks!
> 
> -Kees
> 
> [1] https://github.com/ClangBuiltLinux/linux/issues/282
> [2] https://lore.kernel.org/lkml/202002242122.AA4D1B8@keescook/
> 
> Kees Cook (28):
>   vmlinux.lds.h: Create COMMON_DISCARDS
>   vmlinux.lds.h: Add .gnu.version* to COMMON_DISCARDS
>   vmlinux.lds.h: Avoid KASAN and KCSAN's unwanted sections
>   vmlinux.lds.h: Split ELF_DETAILS from STABS_DEBUG
>   vmlinux.lds.h: Add .symtab, .strtab, and .shstrtab to ELF_DETAILS
>   efi/libstub: Disable -mbranch-protection
>   arm64/mm: Remove needless section quotes
>   arm64/kernel: Remove needless Call Frame Information annotations
>   arm64/build: Remove .eh_frame* sections due to unwind tables
>   arm64/build: Use common DISCARDS in linker script
>   arm64/build: Add missing DWARF sections
>   arm64/build: Assert for unwanted sections
>   arm64/build: Warn on orphan section placement
>   arm/build: Refactor linker script headers
>   arm/build: Explicitly keep .ARM.attributes sections
>   arm/build: Add missing sections
>   arm/build: Assert for unwanted sections
>   arm/build: Warn on orphan section placement
>   arm/boot: Handle all sections explicitly
>   arm/boot: Warn on orphan section placement
>   x86/asm: Avoid generating unused kprobe sections
>   x86/build: Enforce an empty .got.plt section
>   x86/build: Assert for unwanted sections
>   x86/build: Warn on orphan section placement
>   x86/boot/compressed: Reorganize zero-size section asserts
>   x86/boot/compressed: Remove, discard, or assert for unwanted sections
>   x86/boot/compressed: Add missing debugging sections to output
>   x86/boot/compressed: Warn on orphan section placement
> 
> Nick Desaulniers (1):
>   vmlinux.lds.h: add PGO and AutoFDO input sections
> 
>  arch/alpha/kernel/vmlinux.lds.S               |  1 +
>  arch/arc/kernel/vmlinux.lds.S                 |  1 +
>  arch/arm/Makefile                             |  4 ++
>  arch/arm/boot/compressed/Makefile             |  2 +
>  arch/arm/boot/compressed/vmlinux.lds.S        | 20 +++----
>  .../arm/{kernel => include/asm}/vmlinux.lds.h | 30 ++++++++--
>  arch/arm/kernel/vmlinux-xip.lds.S             |  8 ++-
>  arch/arm/kernel/vmlinux.lds.S                 |  8 ++-
>  arch/arm64/Makefile                           |  9 ++-
>  arch/arm64/kernel/smccc-call.S                |  2 -
>  arch/arm64/kernel/vmlinux.lds.S               | 28 +++++++--
>  arch/arm64/mm/mmu.c                           |  2 +-
>  arch/csky/kernel/vmlinux.lds.S                |  1 +
>  arch/hexagon/kernel/vmlinux.lds.S             |  1 +
>  arch/ia64/kernel/vmlinux.lds.S                |  1 +
>  arch/mips/kernel/vmlinux.lds.S                |  1 +
>  arch/nds32/kernel/vmlinux.lds.S               |  1 +
>  arch/nios2/kernel/vmlinux.lds.S               |  1 +
>  arch/openrisc/kernel/vmlinux.lds.S            |  1 +
>  arch/parisc/boot/compressed/vmlinux.lds.S     |  1 +
>  arch/parisc/kernel/vmlinux.lds.S              |  1 +
>  arch/powerpc/kernel/vmlinux.lds.S             |  2 +-
>  arch/riscv/kernel/vmlinux.lds.S               |  1 +
>  arch/s390/kernel/vmlinux.lds.S                |  1 +
>  arch/sh/kernel/vmlinux.lds.S                  |  1 +
>  arch/sparc/kernel/vmlinux.lds.S               |  1 +
>  arch/um/kernel/dyn.lds.S                      |  2 +-
>  arch/um/kernel/uml.lds.S                      |  2 +-
>  arch/x86/Makefile                             |  4 ++
>  arch/x86/boot/compressed/Makefile             |  2 +
>  arch/x86/boot/compressed/vmlinux.lds.S        | 58 +++++++++++++------
>  arch/x86/include/asm/asm.h                    |  6 +-
>  arch/x86/kernel/vmlinux.lds.S                 | 39 ++++++++++++-
>  drivers/firmware/efi/libstub/Makefile         |  9 ++-
>  include/asm-generic/vmlinux.lds.h             | 49 +++++++++++++---
>  35 files changed, 241 insertions(+), 60 deletions(-)
>  rename arch/arm/{kernel => include/asm}/vmlinux.lds.h (84%)
> 
> -- 
> 2.25.1
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008311240.9F94A39%40keescook.
