Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWXC236QKGQEV4FPNAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB6C2B8884
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 00:42:19 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id a8sf2387203pgh.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 15:42:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605742938; cv=pass;
        d=google.com; s=arc-20160816;
        b=AGp404dkiWLRMjtsD2jGcCXGvqkOpq+kX8Pxo7WiOx5Cq0BaKJonByULWm82SgY7NY
         wCubEp8wgVVZ+SOns5qLP2t04sC71/Wyp6cwUrCQm0nTuMJykm/qLIK0/ofM0wTcZfkT
         pwE5I3cM/+vZfdlyFOmkv+AMEGVEtQg/wmR2ttk78+DP9zZCV3HZ69QkNUnGTTGLL0/7
         r0NpHoqevXVzpj4TU+NtUMNSpWd6NzFDaNOAF+0tzg4JAYgeY1ISzy0i4ZrvAPUynSlF
         GpBOv2HZdgOUyS2h3gi1xUU+qOMB27SgMvc2cdp94MaBWalXDhVQLuoPGtf9Js6drW+F
         6Y9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=byL89qINM23905Eq3XFjNXpXLfnws9Oz5evzO1NoRj0=;
        b=HJOojLrdyxS8V3XG5cyaesMq/ETTtq5+JZLmd8X3ImWTZtaI3vpCD/DWA26xavyLih
         YlCgDgiVmN3s+TMdmbAGnZznY/4a+Ket0St2PUWpRonk1Ti8eWluuLt3Jdehy3Dn7a5v
         2VxEL4THUpebO3VWbe91ldp/recoalpagGS1Ny4jAfNkH+hh5q02T37lCMfqc20ecq+3
         N+8a0+77G0bAh4I6or6AWN2LCafRhanb1qoVfbWCYBJE7hOv+LsQYtkIN35zdL9QfOUI
         ZaOQ5sK/cNeBIAer/g9hfg/dJnnZmTLSbJ1QBWvozTW2yig13tFSJ/2uCRPmr+YZlC3R
         D9OA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IclJMrJ5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=byL89qINM23905Eq3XFjNXpXLfnws9Oz5evzO1NoRj0=;
        b=rLYzmW+zhV1v4pkyKHHL1y0PtsB43CTZZWPbGDsQKYBdUY6dvrStl5RuI9i20SD4v8
         lQnbdem7ggktwWaUf1TxCuntMM56BT4YWvDXujPKbeEVHfIOaB13JMl/LUx33A7WGYpf
         DLMKFNbWnhSpBklFEItY1ogfwcs5XvBejfxGCe40gHWuaMKWU6sGvXhanK8/CdbImyc6
         EtsilL8rvkexULTBns6arl5z3HvVvFAHKfXdzv+6KfJO8uP41TBCoB/h/tMej6uoTuyG
         X0siLJqR7KPGigfLs6UZEShaS0cbM+d6zXEJdqHfpKRzwGNEcqsW5Rz3dRzVyImSm1b3
         aPgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=byL89qINM23905Eq3XFjNXpXLfnws9Oz5evzO1NoRj0=;
        b=hOktZMRRbx9XAgqNw8dK7qIvyqQ7idQp0m0XGD9Sv19WxIJrsODsmCqRrVt9Ra78Rn
         6ZOYyV5ABVfwShWmcKbprObLK6/cXQK6BwteQwAzLqrnKYwmjpWoegIDB0zwyrRuC/xh
         Y5tanCLxvkWyEgQzNFx1IrCsTMaLEAok0qDErzeqZ6S2HviSoT5sorZXkfDJnw5qrTql
         vB5zZX+Wu7A5aoe/Kt9/ua8u2z1ZEOLPhS+WGiQmZ5QR8BJux+fYd0x1bdOASe4QP2sn
         uvmbbJ84FsbvzaKwTPdrulxfc7dZHLE+VSf3+iO75053pXjMgA0ZgRshrr4wi80fqnML
         K9jQ==
X-Gm-Message-State: AOAM533kvN78kgkPjXNZgCNtjlk4tQFmmI5+cKDsQ2sZK3As2ckY9oKF
	3z25eRnXaySYBJfUKH4uzq4=
X-Google-Smtp-Source: ABdhPJwEMKZLNhllhMveNGbu5qeTkEfEaqw6VTlagkDnspVmUUbIjgLSC2TIWowpTuVhK8lI7jNvOw==
X-Received: by 2002:a17:902:8ec8:b029:d9:d4a5:dc40 with SMTP id x8-20020a1709028ec8b02900d9d4a5dc40mr2239457plo.4.1605742938631;
        Wed, 18 Nov 2020 15:42:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3007:: with SMTP id hg7ls364808pjb.0.gmail; Wed, 18
 Nov 2020 15:42:18 -0800 (PST)
X-Received: by 2002:a17:90b:814:: with SMTP id bk20mr173347pjb.61.1605742937964;
        Wed, 18 Nov 2020 15:42:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605742937; cv=none;
        d=google.com; s=arc-20160816;
        b=frpv6HN4zdt9WqmQ3DQm++VVGxz9pBzHy3ehJLyDVyhZusbApo4Wz6dn3UsJygu71K
         1pIX7jWAL3rXyPmQT9cNeJVHO3LdleegsNQJ4cPLbSqz9+UPTlKrUj+nRnbsvc5l6t1k
         XhvZE46l9s2W45k7MZvWWj7bsH29+DIZAoo7sLBni00dyzNNJkv2ONN+PBvfzRJh4Mea
         hCkv76EZeBTTvtZGeRYOpURZQ0DhD4/hWOKklhb5SwDq+tTGIWrvvQGz6uATFJo7wu90
         SWpDa/3CEeLvSQ6V338WW2z0RvF4f769gcfPtj58mKhUg0pqVP2mnT0Q3JZL6Nn1gvY9
         O1JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wc0yNJXcZws+WRwhlcA3oBkHhr2WzmzBrEHEaOZzgXc=;
        b=08aBmIilea1rz5CBBJ1ElqykTlnt1uyOsyioFOgkmo0KteXT1wu8Oq0EagiztKH4ur
         gpXhwL9TpB8dumRxsG8binrMPT9ij2FhRO2x9QzyY762C+SjFYoyOjo9vVfAvMBA+JXF
         hK2s3BpSVMJv1vb7qSR8zn0cAyd+66DWtvS3bxdtPK9N+HjIXFgWG7PENObfxsMsrWsY
         iIEc/rUxZ0QHQue9cb5I8P+E9HZS57foOYkVS5OTOPN9Wbvtpv3B5d94BNiORDM9imKU
         RITpJLMvzqbXqS5ZbDJ+QGYSVP8Dm2g9rCdW8yfOGeAipqxg10DGi7YOEFsx+nwtrJOQ
         L5tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IclJMrJ5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id lw12si211261pjb.1.2020.11.18.15.42.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 15:42:17 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id b63so2624188pfg.12
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 15:42:17 -0800 (PST)
X-Received: by 2002:a17:90a:6b04:: with SMTP id v4mr1413363pjj.101.1605742937385;
 Wed, 18 Nov 2020 15:42:17 -0800 (PST)
MIME-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
In-Reply-To: <20201118220731.925424-1-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 18 Nov 2020 15:42:05 -0800
Message-ID: <CAKwvOd=5PhCTZ-yHr08gPYNEsGEjZa=rDY0-unhkhofjXhqwLQ@mail.gmail.com>
Subject: Re: [PATCH v7 00/17] Add support for Clang LTO
To: Sami Tolvanen <samitolvanen@google.com>
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
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IclJMrJ5;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Nov 18, 2020 at 2:07 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> This patch series adds support for building the kernel with Clang's
> Link Time Optimization (LTO). In addition to performance, the primary
> motivation for LTO is to allow Clang's Control-Flow Integrity (CFI) to
> be used in the kernel. Google has shipped millions of Pixel devices
> running three major kernel versions with LTO+CFI since 2018.
>
> Most of the patches are build system changes for handling LLVM bitcode,
> which Clang produces with LTO instead of ELF object files, postponing
> ELF processing until a later stage, and ensuring initcall ordering.
>
> Note that v7 brings back arm64 support as Will has now staged the
> prerequisite memory ordering patches [1], and drops x86_64 while we work
> on fixing the remaining objtool warnings [2].
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/lto
> [2] https://lore.kernel.org/lkml/20201114004911.aip52eimk6c2uxd4@treble/
>
> You can also pull this series from
>
>   https://github.com/samitolvanen/linux.git lto-v7

Thanks for continuing to drive this series Sami.  For the series,

Tested-by: Nick Desaulniers <ndesaulniers@google.com>

I did virtualized boot tests with the series applied to aarch64
defconfig without CONFIG_LTO, with CONFIG_LTO_CLANG, and a third time
with CONFIG_THINLTO.  If you make changes to the series in follow ups,
please drop my tested by tag from the modified patches and I'll help
re-test.  Some minor feedback on the Kconfig change, but I'll post it
off of that patch.

>
> ---
> Changes in v7:
>
>   - Rebased to master again.
>
>   - Added back arm64 patches as the prerequisites are now staged,
>     and dropped x86_64 support until the remaining objtool issues
>     are resolved.
>
>   - Dropped ifdefs from module.lds.S.
>
> Changes in v6:
>
>   - Added the missing --mcount flag to patch 5.
>
>   - Dropped the arm64 patches from this series and will repost them
>     later.
>
> Changes in v5:
>
>   - Rebased on top of tip/master.
>
>   - Changed the command line for objtool to use --vmlinux --duplicate
>     to disable warnings about retpoline thunks and to fix .orc_unwind
>     generation for vmlinux.o.
>
>   - Added --noinstr flag to objtool, so we can use --vmlinux without
>     also enabling noinstr validation.
>
>   - Disabled objtool's unreachable instruction warnings with LTO to
>     disable false positives for the int3 padding in vmlinux.o.
>
>   - Added ANNOTATE_RETPOLINE_SAFE annotations to the indirect jumps
>     in x86 assembly code to fix objtool warnings with retpoline.
>
>   - Fixed modpost warnings about missing version information with
>     CONFIG_MODVERSIONS.
>
>   - Included Makefile.lib into Makefile.modpost for ld_flags. Thanks
>     to Sedat for pointing this out.
>
>   - Updated the help text for ThinLTO to better explain the trade-offs.
>
>   - Updated commit messages with better explanations.
>
> Changes in v4:
>
>   - Fixed a typo in Makefile.lib to correctly pass --no-fp to objtool.
>
>   - Moved ftrace configs related to generating __mcount_loc to Kconfig,
>     so they are available also in Makefile.modfinal.
>
>   - Dropped two prerequisite patches that were merged to Linus' tree.
>
> Changes in v3:
>
>   - Added a separate patch to remove the unused DISABLE_LTO treewide,
>     as filtering out CC_FLAGS_LTO instead is preferred.
>
>   - Updated the Kconfig help to explain why LTO is behind a choice
>     and disabled by default.
>
>   - Dropped CC_FLAGS_LTO_CLANG, compiler-specific LTO flags are now
>     appended directly to CC_FLAGS_LTO.
>
>   - Updated $(AR) flags as KBUILD_ARFLAGS was removed earlier.
>
>   - Fixed ThinLTO cache handling for external module builds.
>
>   - Rebased on top of Masahiro's patch for preprocessing modules.lds,
>     and moved the contents of module-lto.lds to modules.lds.S.
>
>   - Moved objtool_args to Makefile.lib to avoid duplication of the
>     command line parameters in Makefile.modfinal.
>
>   - Clarified in the commit message for the initcall ordering patch
>     that the initcall order remains the same as without LTO.
>
>   - Changed link-vmlinux.sh to use jobserver-exec to control the
>     number of jobs started by generate_initcall_ordering.pl.
>
>   - Dropped the x86/relocs patch to whitelist L4_PAGE_OFFSET as it's
>     no longer needed with ToT kernel.
>
>   - Disabled LTO for arch/x86/power/cpu.c to work around a Clang bug
>     with stack protector attributes.
>
> Changes in v2:
>
>   - Fixed -Wmissing-prototypes warnings with W=1.
>
>   - Dropped cc-option from -fsplit-lto-unit and added .thinlto-cache
>     scrubbing to make distclean.
>
>   - Added a comment about Clang >=11 being required.
>
>   - Added a patch to disable LTO for the arm64 KVM nVHE code.
>
>   - Disabled objtool's noinstr validation with LTO unless enabled.
>
>   - Included Peter's proposed objtool mcount patch in the series
>     and replaced recordmcount with the objtool pass to avoid
>     whitelisting relocations that are not calls.
>
>   - Updated several commit messages with better explanations.
>
>
> Sami Tolvanen (17):
>   tracing: move function tracer options to Kconfig
>   kbuild: add support for Clang LTO
>   kbuild: lto: fix module versioning
>   kbuild: lto: limit inlining
>   kbuild: lto: merge module sections
>   kbuild: lto: remove duplicate dependencies from .mod files
>   init: lto: ensure initcall ordering
>   init: lto: fix PREL32 relocations
>   PCI: Fix PREL32 relocations for LTO
>   modpost: lto: strip .lto from module names
>   scripts/mod: disable LTO for empty.c
>   efi/libstub: disable LTO
>   drivers/misc/lkdtm: disable LTO for rodata.o
>   arm64: vdso: disable LTO
>   KVM: arm64: disable LTO for the nVHE directory
>   arm64: disable recordmcount with DYNAMIC_FTRACE_WITH_REGS
>   arm64: allow LTO_CLANG and THINLTO to be selected
>
>  .gitignore                            |   1 +
>  Makefile                              |  45 +++--
>  arch/Kconfig                          |  74 +++++++
>  arch/arm64/Kconfig                    |   4 +
>  arch/arm64/kernel/vdso/Makefile       |   3 +-
>  arch/arm64/kvm/hyp/nvhe/Makefile      |   4 +-
>  drivers/firmware/efi/libstub/Makefile |   2 +
>  drivers/misc/lkdtm/Makefile           |   1 +
>  include/asm-generic/vmlinux.lds.h     |  11 +-
>  include/linux/init.h                  |  79 +++++++-
>  include/linux/pci.h                   |  19 +-
>  kernel/trace/Kconfig                  |  16 ++
>  scripts/Makefile.build                |  50 ++++-
>  scripts/Makefile.lib                  |   6 +-
>  scripts/Makefile.modfinal             |   9 +-
>  scripts/Makefile.modpost              |  25 ++-
>  scripts/generate_initcall_order.pl    | 270 ++++++++++++++++++++++++++
>  scripts/link-vmlinux.sh               |  70 ++++++-
>  scripts/mod/Makefile                  |   1 +
>  scripts/mod/modpost.c                 |  16 +-
>  scripts/mod/modpost.h                 |   9 +
>  scripts/mod/sumversion.c              |   6 +-
>  scripts/module.lds.S                  |  24 +++
>  23 files changed, 677 insertions(+), 68 deletions(-)
>  create mode 100755 scripts/generate_initcall_order.pl
>
>
> base-commit: 0fa8ee0d9ab95c9350b8b84574824d9a384a9f7d
> --
> 2.29.2.299.gdc1121823c-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D5PhCTZ-yHr08gPYNEsGEjZa%3DrDY0-unhkhofjXhqwLQ%40mail.gmail.com.
