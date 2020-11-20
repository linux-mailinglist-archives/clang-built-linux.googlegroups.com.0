Return-Path: <clang-built-linux+bncBD63HSEZTUIBBLVV336QKGQETZHZZJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 195092BA774
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 11:30:08 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id s201sf6563203pfs.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 02:30:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605868206; cv=pass;
        d=google.com; s=arc-20160816;
        b=MOHXxxM+pUx++rM01jOXblPde2t7Ken0czugLidGydN97u7DSUYWon0FPjLqhdgbp6
         9q6FBkNjyLO9bmvXrvMxy/t0nYoIS74VcgtSk6jvAUUG91KvkRZ7YE4gjo/wGoM6AYfi
         GdWquzCRyetcIXgGFvN/hUKxADsx2p9Zozoa6zrkyqC2OiSkhwvHN5r6nJ5DJmHqiJgU
         aCFOCe1iBLF/xQTIE8V7QoCXf8Dxs/9pPERxDAgytzIaUjrRinRUHcNXSQEfZAWlBxgz
         u+/yLXmyj7SmHAJM4q3hJel8O7z1X52wVkZfeiP4tAoeLZmU9AZnx1FFggPlhiRfAlfj
         sMqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=yrAw4eew9549RzmtFVMFLjrtDTg30OtkurnHK7MAibA=;
        b=xg1GCy1DKtfj4rBMzYQ6tAikrsd74NE7hoH9m6bcAAkFEC9pODd/w3K5TsXQv3NnAR
         kxBGDH5zFSFyw80D5q7OB2Osl/p7MbLnZxObUPV3aG7kDO+kG6LsAq1hyMUOenWZo2xE
         zp3wiJdWuYc0vO7QelBsvhTaQQs+0Z3g28RaNjq5Bkprr/4prtZWmiSt0rLS8hWMnZTf
         nIqy//IuFs/LGS0PHq4MVk6qezR6nVrkTPdsFVv4q8MrS0SR6sQ6+KQQBdk6yEcp/p/x
         wpv5czU+IUd+62MhVao1j2rqMfUQg6teNASfNwOhcYrlR1mPfy2NVPd+bKhwCuVn5wJt
         44xA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SnR3qKLy;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yrAw4eew9549RzmtFVMFLjrtDTg30OtkurnHK7MAibA=;
        b=OenBOHV4fCWlc6YY/afyK0GpaWQEH1NHXSZ3Y4YAPcJbX2WUZGNoL9xEAYb8XXpwxW
         r9NPuvFRKdPGVfzx8Xj3jT1aa8zEMw8bf61L0M/EETjSgZYdtTSsTbiWC3VdnI8dLEfl
         E2ZbnokIPoIrg040okDyQHB640SIaB/7f+vU65kB6cK0Kr+mORjtZGVy3EBAMr79hF9j
         rztxUVQO/l9zHaq/vTWLSfgzGQSxZsYH4XnBDVj/Iiqmw3d+rwh7b7XEbAYhJ2B9iwE3
         3pGCG4q5mduzkas1ZboyoqKjADE6mF8Wy5ZazJ6EMQciNaKc4VyBckuPM1lxRq9v0YzQ
         VG2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yrAw4eew9549RzmtFVMFLjrtDTg30OtkurnHK7MAibA=;
        b=rcBYH9j99ZBiQLbw1JA1S7EevDHIuDTo8J1Vt5P0lTVPNGNQlbZeI4BqI3AmO/1mVV
         JvIhkimvcX0R3UC47XJvXc17C7bNZobdTopHMWbSgWjvXEP8Iqe0oBU8hF/N7rp5HGAO
         XpWnO6z74lxvJVyoZfk2ucqHke0gTKxoF7z1kTd9dVtVfgHlnTaB6r8phZ0vJwZ/EQ2b
         p4wbVgvr2+WMWsiEVL2LKv/pGep2qLtAyHbua0ejj2eI2Q5LGQbhg6vikvLctlOaxhq9
         T41JrQIJltmgu46OaUemcAnLe95yLgbnHShKDuEcY4t7D18cgkx/Q4SoHTD6c101zT91
         6ovA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331uhvh1xcr+FI24eAEyJ3rvorQwaNmSfsxZ13PbEi4IT3vIJaF
	NfpnqZjWxYuPRcn2bHZ/PT4=
X-Google-Smtp-Source: ABdhPJx7dRq5s+gW0PO8Ery3zwVsSbNpKMeCeuZOX+GGj7LdMlQscV/dZ61ru1nbMmBwgpGbrOOZYQ==
X-Received: by 2002:a17:90b:4b87:: with SMTP id lr7mr8504147pjb.40.1605868206401;
        Fri, 20 Nov 2020 02:30:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c113:: with SMTP id 19ls3005123pli.11.gmail; Fri, 20
 Nov 2020 02:30:04 -0800 (PST)
X-Received: by 2002:a17:90a:fa93:: with SMTP id cu19mr10020473pjb.117.1605868203988;
        Fri, 20 Nov 2020 02:30:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605868203; cv=none;
        d=google.com; s=arc-20160816;
        b=rh0NeMyNVLoiykx5VVGpGNe4pEd7XtugrddKpn4oPHd8url+Xw2g/dTQ47n9iEZyk3
         y14rv2RjqH2Ey69H9vQRnBXeQATaOMe6D25UTObrRpjETms+5+vUJ79mki2SnYy0fEUL
         AAR6c3VtJ+oFd7Jh7zgnTrKMDcHAJ41b/rCPk13oj3aanL4XtTAkFmHmIyw44dBfy1Fz
         FYb3wCUnIQW85Y/n4f+V9xbLFgUtXTc3MMHfOGuw9sxb7fKWuyAS86vlUle53aVNc/Lf
         wGo+F9zbcl7FyTaEhYu8pZBTnFhgYRr5PddNPUrxpVC/RxwJ5LqMkn5/RltfUT/CCi28
         y70Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QRM4IfGIEw4jLZIZbawNQa16GnDDzjz7zIxsA4PDLrI=;
        b=Ew8Zt2vbF338IU8LydCUnsgTAGjbrv66bX7ctX4AK5wpPC1XsRpV4PrxJA+6W9fmsE
         lUl0Q0+RCiVukowk48pKWQYnaYOl+DYxq8cwaKHRxZ4zB1d6L62I7e6PVzAUZ0e0O7IP
         aCi9E7sRfnaEnnfTVAsqQvsb1Q+naLeXzjduh0mCTMGd55UXWW27zktZY/ac52aulAwy
         fjfVe3X6Ui2I0RvvDs9I4xfea9VpJZEY1w+Vaw+6lP0zipSy36uq2LSr4jJh/P54BqMH
         caSGN/DFIe985zLk6Cz61axY+Skcs+SvQ/dpv2bRHlfFzfPGGnpHFYvDv0QcdOc900cV
         P2ZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SnR3qKLy;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 38si190136pgq.3.2020.11.20.02.30.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Nov 2020 02:30:03 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 470D222255
	for <clang-built-linux@googlegroups.com>; Fri, 20 Nov 2020 10:30:03 +0000 (UTC)
Received: by mail-ot1-f44.google.com with SMTP id f16so8257336otl.11
        for <clang-built-linux@googlegroups.com>; Fri, 20 Nov 2020 02:30:03 -0800 (PST)
X-Received: by 2002:a05:6830:214c:: with SMTP id r12mr12560072otd.90.1605868202443;
 Fri, 20 Nov 2020 02:30:02 -0800 (PST)
MIME-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com> <CAKwvOd=5PhCTZ-yHr08gPYNEsGEjZa=rDY0-unhkhofjXhqwLQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=5PhCTZ-yHr08gPYNEsGEjZa=rDY0-unhkhofjXhqwLQ@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 20 Nov 2020 11:29:51 +0100
X-Gmail-Original-Message-ID: <CAMj1kXEVzDi5=uteUAzG5E=j+aTCHEbMxwDfor-s=DthpREpyw@mail.gmail.com>
Message-ID: <CAMj1kXEVzDi5=uteUAzG5E=j+aTCHEbMxwDfor-s=DthpREpyw@mail.gmail.com>
Subject: Re: [PATCH v7 00/17] Add support for Clang LTO
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	PCI <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=SnR3qKLy;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, 19 Nov 2020 at 00:42, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Wed, Nov 18, 2020 at 2:07 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > This patch series adds support for building the kernel with Clang's
> > Link Time Optimization (LTO). In addition to performance, the primary
> > motivation for LTO is to allow Clang's Control-Flow Integrity (CFI) to
> > be used in the kernel. Google has shipped millions of Pixel devices
> > running three major kernel versions with LTO+CFI since 2018.
> >
> > Most of the patches are build system changes for handling LLVM bitcode,
> > which Clang produces with LTO instead of ELF object files, postponing
> > ELF processing until a later stage, and ensuring initcall ordering.
> >
> > Note that v7 brings back arm64 support as Will has now staged the
> > prerequisite memory ordering patches [1], and drops x86_64 while we work
> > on fixing the remaining objtool warnings [2].
> >
> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/lto
> > [2] https://lore.kernel.org/lkml/20201114004911.aip52eimk6c2uxd4@treble/
> >
> > You can also pull this series from
> >
> >   https://github.com/samitolvanen/linux.git lto-v7
>
> Thanks for continuing to drive this series Sami.  For the series,
>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>
> I did virtualized boot tests with the series applied to aarch64
> defconfig without CONFIG_LTO, with CONFIG_LTO_CLANG, and a third time
> with CONFIG_THINLTO.  If you make changes to the series in follow ups,
> please drop my tested by tag from the modified patches and I'll help
> re-test.  Some minor feedback on the Kconfig change, but I'll post it
> off of that patch.
>

When you say 'virtualized" do you mean QEMU on x86? Or actual
virtualization on an AArch64 KVM host?

The distinction is important here, given the potential impact of LTO
on things that QEMU simply does not model when it runs in TCG mode on
a foreign host architecture.

> >
> > ---
> > Changes in v7:
> >
> >   - Rebased to master again.
> >
> >   - Added back arm64 patches as the prerequisites are now staged,
> >     and dropped x86_64 support until the remaining objtool issues
> >     are resolved.
> >
> >   - Dropped ifdefs from module.lds.S.
> >
> > Changes in v6:
> >
> >   - Added the missing --mcount flag to patch 5.
> >
> >   - Dropped the arm64 patches from this series and will repost them
> >     later.
> >
> > Changes in v5:
> >
> >   - Rebased on top of tip/master.
> >
> >   - Changed the command line for objtool to use --vmlinux --duplicate
> >     to disable warnings about retpoline thunks and to fix .orc_unwind
> >     generation for vmlinux.o.
> >
> >   - Added --noinstr flag to objtool, so we can use --vmlinux without
> >     also enabling noinstr validation.
> >
> >   - Disabled objtool's unreachable instruction warnings with LTO to
> >     disable false positives for the int3 padding in vmlinux.o.
> >
> >   - Added ANNOTATE_RETPOLINE_SAFE annotations to the indirect jumps
> >     in x86 assembly code to fix objtool warnings with retpoline.
> >
> >   - Fixed modpost warnings about missing version information with
> >     CONFIG_MODVERSIONS.
> >
> >   - Included Makefile.lib into Makefile.modpost for ld_flags. Thanks
> >     to Sedat for pointing this out.
> >
> >   - Updated the help text for ThinLTO to better explain the trade-offs.
> >
> >   - Updated commit messages with better explanations.
> >
> > Changes in v4:
> >
> >   - Fixed a typo in Makefile.lib to correctly pass --no-fp to objtool.
> >
> >   - Moved ftrace configs related to generating __mcount_loc to Kconfig,
> >     so they are available also in Makefile.modfinal.
> >
> >   - Dropped two prerequisite patches that were merged to Linus' tree.
> >
> > Changes in v3:
> >
> >   - Added a separate patch to remove the unused DISABLE_LTO treewide,
> >     as filtering out CC_FLAGS_LTO instead is preferred.
> >
> >   - Updated the Kconfig help to explain why LTO is behind a choice
> >     and disabled by default.
> >
> >   - Dropped CC_FLAGS_LTO_CLANG, compiler-specific LTO flags are now
> >     appended directly to CC_FLAGS_LTO.
> >
> >   - Updated $(AR) flags as KBUILD_ARFLAGS was removed earlier.
> >
> >   - Fixed ThinLTO cache handling for external module builds.
> >
> >   - Rebased on top of Masahiro's patch for preprocessing modules.lds,
> >     and moved the contents of module-lto.lds to modules.lds.S.
> >
> >   - Moved objtool_args to Makefile.lib to avoid duplication of the
> >     command line parameters in Makefile.modfinal.
> >
> >   - Clarified in the commit message for the initcall ordering patch
> >     that the initcall order remains the same as without LTO.
> >
> >   - Changed link-vmlinux.sh to use jobserver-exec to control the
> >     number of jobs started by generate_initcall_ordering.pl.
> >
> >   - Dropped the x86/relocs patch to whitelist L4_PAGE_OFFSET as it's
> >     no longer needed with ToT kernel.
> >
> >   - Disabled LTO for arch/x86/power/cpu.c to work around a Clang bug
> >     with stack protector attributes.
> >
> > Changes in v2:
> >
> >   - Fixed -Wmissing-prototypes warnings with W=1.
> >
> >   - Dropped cc-option from -fsplit-lto-unit and added .thinlto-cache
> >     scrubbing to make distclean.
> >
> >   - Added a comment about Clang >=11 being required.
> >
> >   - Added a patch to disable LTO for the arm64 KVM nVHE code.
> >
> >   - Disabled objtool's noinstr validation with LTO unless enabled.
> >
> >   - Included Peter's proposed objtool mcount patch in the series
> >     and replaced recordmcount with the objtool pass to avoid
> >     whitelisting relocations that are not calls.
> >
> >   - Updated several commit messages with better explanations.
> >
> >
> > Sami Tolvanen (17):
> >   tracing: move function tracer options to Kconfig
> >   kbuild: add support for Clang LTO
> >   kbuild: lto: fix module versioning
> >   kbuild: lto: limit inlining
> >   kbuild: lto: merge module sections
> >   kbuild: lto: remove duplicate dependencies from .mod files
> >   init: lto: ensure initcall ordering
> >   init: lto: fix PREL32 relocations
> >   PCI: Fix PREL32 relocations for LTO
> >   modpost: lto: strip .lto from module names
> >   scripts/mod: disable LTO for empty.c
> >   efi/libstub: disable LTO
> >   drivers/misc/lkdtm: disable LTO for rodata.o
> >   arm64: vdso: disable LTO
> >   KVM: arm64: disable LTO for the nVHE directory
> >   arm64: disable recordmcount with DYNAMIC_FTRACE_WITH_REGS
> >   arm64: allow LTO_CLANG and THINLTO to be selected
> >
> >  .gitignore                            |   1 +
> >  Makefile                              |  45 +++--
> >  arch/Kconfig                          |  74 +++++++
> >  arch/arm64/Kconfig                    |   4 +
> >  arch/arm64/kernel/vdso/Makefile       |   3 +-
> >  arch/arm64/kvm/hyp/nvhe/Makefile      |   4 +-
> >  drivers/firmware/efi/libstub/Makefile |   2 +
> >  drivers/misc/lkdtm/Makefile           |   1 +
> >  include/asm-generic/vmlinux.lds.h     |  11 +-
> >  include/linux/init.h                  |  79 +++++++-
> >  include/linux/pci.h                   |  19 +-
> >  kernel/trace/Kconfig                  |  16 ++
> >  scripts/Makefile.build                |  50 ++++-
> >  scripts/Makefile.lib                  |   6 +-
> >  scripts/Makefile.modfinal             |   9 +-
> >  scripts/Makefile.modpost              |  25 ++-
> >  scripts/generate_initcall_order.pl    | 270 ++++++++++++++++++++++++++
> >  scripts/link-vmlinux.sh               |  70 ++++++-
> >  scripts/mod/Makefile                  |   1 +
> >  scripts/mod/modpost.c                 |  16 +-
> >  scripts/mod/modpost.h                 |   9 +
> >  scripts/mod/sumversion.c              |   6 +-
> >  scripts/module.lds.S                  |  24 +++
> >  23 files changed, 677 insertions(+), 68 deletions(-)
> >  create mode 100755 scripts/generate_initcall_order.pl
> >
> >
> > base-commit: 0fa8ee0d9ab95c9350b8b84574824d9a384a9f7d
> > --
> > 2.29.2.299.gdc1121823c-goog
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXEVzDi5%3DuteUAzG5E%3Dj%2BaTCHEbMxwDfor-s%3DDthpREpyw%40mail.gmail.com.
