Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBKEH477QKGQEPSIA7RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2FD2F0093
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 Jan 2021 15:54:33 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id l9sf8721023oih.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Jan 2021 06:54:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610204072; cv=pass;
        d=google.com; s=arc-20160816;
        b=q5439w7HwL0wFV54FUHg5p9QyJfkVz8CkzCCIWXAvuCBwDS755QtD0AlB8jl/RTMVD
         jnSrU432ZqXTV2k11+miVEoPdikMmva4GsHqjjEaA0qHJ1g7QJ/r+WVW8J+p7BKV6Utc
         +suP5fDs3Jhy0l42rDFLpUa72NoaShh67cKD2jo6E6DAquzV3y5mrnBqkYtCBlDNY4kk
         gNLlxdNAAjt8+3bvruqcB1l2ArNvBti2mXpCN6XQhiFF/oalioo+iGHYiwCioKS7me7f
         +ysgiLbVZI/1O99P6gNlC4sJu3jzOyc9OO9spnT4FCPCT1LQQ6GA+7HnZVxNWgzTpwlX
         q+pA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=FBI/SAeShAYqqdBYlLxQaYQcAMn0rMbQcADh9eOYAjk=;
        b=SEnoF4c7P4fOpLUCbqwEzYsK9t2WvK8L97jkRu/TCgkZ6kPxPGDl3ynq8Waouy7ril
         vnaqDniFIeJdDj77gqLNrBLqncpT0SMDdoq3uWWTBWZ7/ksgCKpeomv9kY5N7cm0HCRx
         J39/IUGmZ9q8pNHOcsxvsAX+VIbiyb/0gm3ADZUR+iasreaN/ERsqcHEwHUCXUCXQvFX
         OntFxnKeby0c/CuFA0WcrXdSwoeNzd8CCEOQx0Rg/c+KqJD141xeNTGESGQOHX5Q+JQe
         0U7hoV1g/TJQ77onZ5Na8cSR8LatHvti/znnOK+dvV9WXUQIvgFWRX5WApvQJbWGuMw6
         6zsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bri5dW58;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FBI/SAeShAYqqdBYlLxQaYQcAMn0rMbQcADh9eOYAjk=;
        b=AmDL8Uv+tPPmEeskDiEKg/oTlEtQWxFTRIrSWDsjjNEcLA76e0oOEw+HwUpMXVyK21
         R+A7wZ5Dj4Bg3t3WQCYh4XoXrB9ekzZ9bvRYhJ0jbYDdrQufyiK5r5J3HitcfWEvKDgk
         0F9JCW6RnOzyJz9wK88B2OhrGsDP39Fv2D2NJFlCKYuNNoKyQTdjSzj5IaRSJOKAV1aU
         BRsRcs38MliMIsmspqF2x/0oEVr97lJek9DwWfBNkknZSG7Ii+DJQFDHu7X89VAVY2ZA
         otJB5/LBHAjMC8ukj+qRB48/Ur7QlnVYzFhtv7v8lfKnZDHlJN5xptFU9j2FEtIJeqRu
         wUuA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FBI/SAeShAYqqdBYlLxQaYQcAMn0rMbQcADh9eOYAjk=;
        b=U3Qks/HRa09HEnrqlHMRvsR4GmAngotfBCyGTsa+LWglULhtcts5AzdHycKbuGTmAH
         eAiZqQtV1cpkWt8bcwmVqDPUvcQ5zjqahpaXzpD1B1A4Ls37lVVSurnXmvt5Zj6jY0Ab
         0pGJ8KdMn3ajGQOs2LAl3pYqtEUJWh5048z2LKmzBmkOH5fEL89VQaM3lC4UZXiBZ26B
         lFfgwqtBUty+KVzg3Acuwz4tKU178EO44T+wld6L5GHiszL2/eJNMoW4y+mKrbmGXNTB
         qIY+44E26+8DQJrN6bUo7KCCZVhZGwNWhDWWtjnwyNWV3UFyBbIqNUMVj9PWC8I8IoWm
         k/Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FBI/SAeShAYqqdBYlLxQaYQcAMn0rMbQcADh9eOYAjk=;
        b=Y/cz4w+j4GTHi3/iOvbAbSZk2LKIB5gusmF4zgvWhykjo0E0xezOYY7fkNuHaj08wI
         LHrl2BVRoLIldmVl7dyQZqI5oMxq9EICbJDeAzDGMwD/oEL8A1Et+kxB/4MIzmDKkuVA
         w+PuZR7DI/+kOsE0lw/dyAR+kZmqMKQ6NEHAQePFzDAL9rJnJ1+WwrlZvEyOcXDf8adE
         h1NY/bOt6me6xwyXxce3tCm/aQyGQuZlVu014ajZmU4+1bBu6CxuoK+BDBoDv6VZ95QE
         7WKspwqNOxe2+D8yvEhnTTZBucWD/75MyRoC1fl5hTfhA9GUTsM6xM36DcapHudQh/uj
         QF9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531NveNtiTfQuq1HSk8kOuhs/zVyQRSdXJ6VCfL5rhHrPJzvcUWB
	EXlsBolYGOtdWRBsEExQiww=
X-Google-Smtp-Source: ABdhPJx0i4oFFYJ9JhBPQkRIwpZUsbZ/EwQxTnMisY0DKyeJyQkxmagg/Hw5o2rQ+IHi6boWo44ynA==
X-Received: by 2002:aca:c582:: with SMTP id v124mr5355825oif.115.1610204072647;
        Sat, 09 Jan 2021 06:54:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c413:: with SMTP id u19ls3677993oif.11.gmail; Sat, 09
 Jan 2021 06:54:32 -0800 (PST)
X-Received: by 2002:aca:3554:: with SMTP id c81mr5357960oia.23.1610204072201;
        Sat, 09 Jan 2021 06:54:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610204072; cv=none;
        d=google.com; s=arc-20160816;
        b=rhf2IkT8Jhzx4vIuQSj8j7lrK4ZJcHVGLti1P3qgmhIzv+W1DiiybYeSO2umg/d4Pl
         dHHWVKiSAQzez+OOZNw2fnPHFNr26w4BteVGU6jfnIPwN0IySbukvJveh1xfU4tjTymT
         12NA1OUIqWyRu1sFaYQYqnCHh/mxsv5GttNooKNZeqD4DlJ7rhCRsaowUlsqovdEsrX3
         5BsAWGxtxH/QgNZ/S3DlPS5I11MUF5g6kozfvogyrmwa05uRJ6U+20J8I3aw0JM9gdlU
         GHQDnAE3W3lWebGck4BUzo8eWF+XvFsNA/1ZedzXBG5PkqRA7/QHJgG0UpiwY3SJBPpy
         aXmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=D12F/5eqLacVjkZjRiSdLFKTLkLrM01QiwzEKmGG7kg=;
        b=c0N3z27QoIxRn/zG8CaQaSu2w8vSvOHz5nDxSVmATdGJfhaZZvHKkEBnmOvjW0Rqqm
         B6/O3xoFRwjrm/QZlo9Cuhq1/HtdJiUb7sZ30hpr2v5UtXw7hwBrwgXmYQfPSYaVhJKU
         gxCd9Ffr7PMNL6KpjXjWdwptLZnHrqtUiSJE9OZ7S0f/ONj3/tXN05rOtaB8a7NYASu4
         prEOZP9kJoQ6VOvIwr/x+2X8J1sLhN6ErVOv9m9ubrFnaDW45YUv3TpRAsYrH2Q87rlT
         6AX6hCTUqTjJFytuXFyZOLcb5ymDt8/M1U/5vnDCRJepoKrBCulwOJa1GBhrEL/SUGl1
         p1lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bri5dW58;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com. [2607:f8b0:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id 7si1003591otq.5.2021.01.09.06.54.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jan 2021 06:54:32 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) client-ip=2607:f8b0:4864:20::12e;
Received: by mail-il1-x12e.google.com with SMTP id q1so13429256ilt.6
        for <clang-built-linux@googlegroups.com>; Sat, 09 Jan 2021 06:54:32 -0800 (PST)
X-Received: by 2002:a05:6e02:1a43:: with SMTP id u3mr8682427ilv.209.1610204071843;
 Sat, 09 Jan 2021 06:54:31 -0800 (PST)
MIME-Version: 1.0
References: <20201211184633.3213045-1-samitolvanen@google.com>
In-Reply-To: <20201211184633.3213045-1-samitolvanen@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 9 Jan 2021 15:54:20 +0100
Message-ID: <CA+icZUWYxO1hHW-_vrJid7EstqQRYQphjO3Xn6pj6qfEYEONbA@mail.gmail.com>
Subject: Re: [PATCH v9 00/16] Add support for Clang LTO
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Bri5dW58;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e
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

On Fri, Dec 11, 2020 at 7:46 PM 'Sami Tolvanen' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> This patch series adds support for building the kernel with Clang's
> Link Time Optimization (LTO). In addition to performance, the primary
> motivation for LTO is to allow Clang's Control-Flow Integrity (CFI)
> to be used in the kernel. Google has shipped millions of Pixel
> devices running three major kernel versions with LTO+CFI since 2018.
>
> Most of the patches are build system changes for handling LLVM
> bitcode, which Clang produces with LTO instead of ELF object files,
> postponing ELF processing until a later stage, and ensuring initcall
> ordering.
>
> Note that arm64 support depends on Will's memory ordering patches
> [1]. I will post x86_64 patches separately after we have fixed the
> remaining objtool warnings [2][3].
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/lto
> [2] https://lore.kernel.org/lkml/20201120040424.a3wctajzft4ufoiw@treble/
> [3] https://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git/log/?h=objtool-vmlinux
>

Hi Sami,

Thanks for the update.

I am interested in having Clang LTO (Clang-CFI) for x86-64 working and
help with testing.

I tried the Git tree mentioned in [3] <jpoimboe.git#objtool-vmlinux>
(together with changes from <peterz.git#x86/urgent>).

I only see in my build-log...

drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
eb_relocate_parse_slow()+0x3d0: stack state mismatch: cfa1=7+120
cfa2=-1+0
drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
eb_copy_relocations()+0x229: stack state mismatch: cfa1=7+120
cfa2=-1+0

...which was reported and worked on in [1].

This is with Clang-IAS version 11.0.1.

Unfortunately, the recent changes in <samitolvanen.github#clang-cfi>
do not cleanly apply with Josh stuff.
My intention/wish was to report this combination of patchsets "heals"
a lot of objtool-warnings for vmlinux.o I observed with Clang-CFI.

Is it possible to have a Git branch where Josh's objtool-vmlinux is
working together with Clang-LTO?
For testing purposes.

Thanks.

Regards,
- Sedat -

[1] https://github.com/ClangBuiltLinux/linux/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc

> You can also pull this series from
>
>   https://github.com/samitolvanen/linux.git lto-v9
>
> ---
> Changes in v9:
>
>   - Added HAS_LTO_CLANG dependencies to LLVM=1 and LLVM_IAS=1 to avoid
>     issues with mismatched toolchains.
>
>   - Dropped the .mod patch as Masahiro landed a better solution to
>     the split line issue in commit 7d32358be8ac ("kbuild: avoid split
>     lines in .mod files").
>
>   - Updated CC_FLAGS_LTO to use -fvisibility=hidden to avoid weak symbol
>     visibility issues with ThinLTO on x86.
>
>   - Changed LTO_CLANG_FULL to depend on !COMPILE_TEST to prevent
>     timeouts in automated testing.
>
>   - Added a dependency to CPU_LITTLE_ENDIAN to ARCH_SUPPORTS_LTO_CLANG
>     in arch/arm64/Kconfig.
>
>   - Added a default symbol list to fix an issue with TRIM_UNUSED_KSYMS.
>
>   Changes in v8:
>
>   - Cleaned up the LTO Kconfig options based on suggestions from
>     Nick and Kees.
>
>   - Dropped the patch to disable LTO for the arm64 nVHE KVM code as
>     David pointed out it's not needed anymore.
>
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
> Sami Tolvanen (16):
>   tracing: move function tracer options to Kconfig
>   kbuild: add support for Clang LTO
>   kbuild: lto: fix module versioning
>   kbuild: lto: limit inlining
>   kbuild: lto: merge module sections
>   kbuild: lto: add a default list of used symbols
>   init: lto: ensure initcall ordering
>   init: lto: fix PREL32 relocations
>   PCI: Fix PREL32 relocations for LTO
>   modpost: lto: strip .lto from module names
>   scripts/mod: disable LTO for empty.c
>   efi/libstub: disable LTO
>   drivers/misc/lkdtm: disable LTO for rodata.o
>   arm64: vdso: disable LTO
>   arm64: disable recordmcount with DYNAMIC_FTRACE_WITH_REGS
>   arm64: allow LTO to be selected
>
>  .gitignore                            |   1 +
>  Makefile                              |  45 +++--
>  arch/Kconfig                          |  90 +++++++++
>  arch/arm64/Kconfig                    |   4 +
>  arch/arm64/kernel/vdso/Makefile       |   3 +-
>  drivers/firmware/efi/libstub/Makefile |   2 +
>  drivers/misc/lkdtm/Makefile           |   1 +
>  include/asm-generic/vmlinux.lds.h     |  11 +-
>  include/linux/init.h                  |  79 +++++++-
>  include/linux/pci.h                   |  19 +-
>  init/Kconfig                          |   1 +
>  kernel/trace/Kconfig                  |  16 ++
>  scripts/Makefile.build                |  48 ++++-
>  scripts/Makefile.lib                  |   6 +-
>  scripts/Makefile.modfinal             |   9 +-
>  scripts/Makefile.modpost              |  25 ++-
>  scripts/generate_initcall_order.pl    | 270 ++++++++++++++++++++++++++
>  scripts/link-vmlinux.sh               |  70 ++++++-
>  scripts/lto-used-symbollist           |   5 +
>  scripts/mod/Makefile                  |   1 +
>  scripts/mod/modpost.c                 |  16 +-
>  scripts/mod/modpost.h                 |   9 +
>  scripts/mod/sumversion.c              |   6 +-
>  scripts/module.lds.S                  |  24 +++
>  24 files changed, 696 insertions(+), 65 deletions(-)
>  create mode 100755 scripts/generate_initcall_order.pl
>  create mode 100644 scripts/lto-used-symbollist
>
>
> base-commit: 33dc9614dc208291d0c4bcdeb5d30d481dcd2c4c
> --
> 2.29.2.576.ga3fc446d84-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211184633.3213045-1-samitolvanen%40google.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWYxO1hHW-_vrJid7EstqQRYQphjO3Xn6pj6qfEYEONbA%40mail.gmail.com.
