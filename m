Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTPTVD5QKGQEHVNG7KA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1CC2747C3
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 19:52:14 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id y2sf12449865qvs.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 10:52:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600797133; cv=pass;
        d=google.com; s=arc-20160816;
        b=UTGJOHC+Y7sgBaS9PGdKz3qacEoJ4vwOEwPCCBuZPSvDhfbENsFbAbnSCS552iWMhv
         RlCHZwzI6BQuRXA4lJfZVU/Fm0nsNqW/c4z+qC0D1Mv1TeyV4Uad1zDNt9N6GK2NvS/g
         mgahevqRv1ZAja3XEcqF8j2hmMyacxwbwgQCLKMXj9U6grjcAJtkKFT+yrHmnzXpeO/h
         O/XKXxNfZ0s8f0Ia4kUronSvc1LKzElx9u12EHN8l2mlbGu73IirhAVQfUAD+o/ed0wF
         dQR7suk7U7D15FGVgzi/POXi25zSB5Gpbmb7E74JZEDg0/2o1OPfGoCIgp8zY0xxX+wD
         vojQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5VSTfy4GuJCkMJwnF/MyRcQO7jIlHDYRM8UvRMEzcSI=;
        b=tcZ92HRIwczXG/VsWvXtAgPopkmULFwjDGKBkw/fmkYvYtGWrIqj8KmzLsr2iRYiNi
         QZ90YlRMA9z86hwTseQ2oFh5IzotuuC7Gyw22PVw7DS9l+5kf7r8bu0NOtMPTdJVQaDe
         pNqRuJylFS2Qu+hQLVPIO3WebMeJrKb4S95k/LLrAioZkaDZsYWvsmzdZVkEKkc75VAf
         W5Q8oxb7Rn8tV/h4gb0Dljvc1AB11GdIXfyk3lzSv3AKJM35KlxyxMCuau67sOuzIcA3
         +NBsLniqp3M5+us4oEyuCwnvmeTmeG0UiYZuBKlKBp3u03ONRzKUNHly9HV342wMmaBG
         BUHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fm+0Qykd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=5VSTfy4GuJCkMJwnF/MyRcQO7jIlHDYRM8UvRMEzcSI=;
        b=R/p3dmLfc8/i1IVcvfmoehtIUioIZgzakkf/zYRayHmn1T6oUJBJetqbYikxlwrSij
         R+1Jxnzlpk2j0K5Ue42rIVX5cDXap/+K05s3E1hJgUHuJAUrBTDZz8vOZMa75bsCgjw7
         rDogiOfFRA1I1OLRmVU8Jpy9ZRyC+7DJAvOMHsi/5y3HFGquEC9xxN8wLrAcm475FxtM
         zIU9LbHatJQYwnMUJVXy/Qnctk9LWqnOhlkcdfoX2BkbULohfUrHHm67C8SnMd6Td4K8
         74+tywmlxc26LzclX0X1nTNKRjjU+IyFmzPdX2c5vw2IgXf+v0tv3fRvstz5mnBSbZld
         7ldA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5VSTfy4GuJCkMJwnF/MyRcQO7jIlHDYRM8UvRMEzcSI=;
        b=IY2EZE0HiXKZ3DvGvz6wnLsmltkr17jjw71czUOWU2X0OCJ9wRJapn4VpdNdXXROnm
         lAWKpOfw7iThIpnhqd2I5wOtr6JomwrZrHRHHBOhhObUmO6+INcNUBMpFobh4zT7TrwX
         2d1ND0CgOoeSV8IQvFiDpZ3buYe1Q3dOIOnzB73Q0yvpg2mhDQ5E9AP+j0JQ91LUKkVR
         l3GqyMKIb++vZ231ti82MUriWT/gqx7HcEbwaM5ztT4NPNGD1Wmsu+StHvkGM21UJg42
         OBwF+MNi4fH6K08Monz6ev2eQOVSR65/bGkbke868gOGuYcVUQCXE8LvsfOGmR0j00RA
         DL7Q==
X-Gm-Message-State: AOAM5329zJbxMoaXbZuuz+DK4p0UMbSl2A1/Ma5qmXsxjJ+6uydMIMDb
	8TnxnogTtmyW0J4d8QSVS+c=
X-Google-Smtp-Source: ABdhPJxdM1nrMl/eQBz8tf3BXCmqi8zReOhFTisLtX5y94bniHpUHJ1muxFpjXTakQ9mGmR279p7YA==
X-Received: by 2002:a05:620a:4084:: with SMTP id f4mr6403289qko.449.1600797133409;
        Tue, 22 Sep 2020 10:52:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4ce:: with SMTP id 197ls8338019qke.1.gmail; Tue, 22 Sep
 2020 10:52:12 -0700 (PDT)
X-Received: by 2002:a05:620a:4d9:: with SMTP id 25mr1184833qks.285.1600797132871;
        Tue, 22 Sep 2020 10:52:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600797132; cv=none;
        d=google.com; s=arc-20160816;
        b=JHQUvGfONXqsttQhr2eySYh/yrKhlrrzzLXblb32yCRd0BLYnH5Nu3uvsNexRYEZA5
         tzb9nhcTPbTE68eOgduGcQCVzJytKUpQZuIjZPyAC9TegOezSWXlBqVDFbhA6RGKGpnA
         O7cAZkdFjBdDJAzY5zbqUzYNVKFNKiFKjFXm5SNrJvXDdQLZfec6feamXk3zk9/1mMaY
         GaTrfaXBtmiOMmAcIs6Qi/zCFWVzMlChKCTGUHAnS5uwrqGVaolFH5MCOPqK7MocPt8h
         oODqZiVg7vpQDWC8qdDKunbqADjJE3BiYmrpBjSgfgsPeB4ux0CQBmv0OeBij1S6f7Dp
         qRvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jTXWpy7gfL9tTR5TRIOW48TXOYuyfWFDt2cXXxVYgbY=;
        b=w0+QDJIrUCmTw4XaiicquoAoxKq3xWKHcyvTWFg6o6QWyKvFk+um+vMreYc5gwMFNW
         dI5wvcpeIeD2AV/yH9rm64W1FGW6Rq6px6mn1cAoH3zTe+yjvBNmGcFE7mG8/bzdmPul
         2xSKTooiTpjHKyWYOIRgaVqgQ8B/iOnJQ5lu7wQUq7pSVYYGZmjssl6yvxg6uFcZda9o
         SINZhoKFtL3KNb2hyPtaqXDwq3NF+II0cb93SrTX/inyrUVwvIGILTd0hQVi3HfrPcx3
         1jjbNcjsBSVoBp51mtxiHEIqHI3Uzjkn1JaSGwrZ4bGjB4Zzz4ls9heCpb3Wli3oErj6
         Oinw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fm+0Qykd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id e1si685116qka.0.2020.09.22.10.52.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Sep 2020 10:52:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id bw23so1852589pjb.2
        for <clang-built-linux@googlegroups.com>; Tue, 22 Sep 2020 10:52:12 -0700 (PDT)
X-Received: by 2002:a17:90b:f18:: with SMTP id br24mr4768321pjb.32.1600797131731;
 Tue, 22 Sep 2020 10:52:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com> <CAKwvOdkbkvXdfXLzTNOj8m8_YWjL6=bSn4-AbRyd-5oYGJVNSw@mail.gmail.com>
 <MW2PR2101MB1099A1D58A9C062006E92569FF3B0@MW2PR2101MB1099.namprd21.prod.outlook.com>
In-Reply-To: <MW2PR2101MB1099A1D58A9C062006E92569FF3B0@MW2PR2101MB1099.namprd21.prod.outlook.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 22 Sep 2020 10:52:00 -0700
Message-ID: <CAKwvOd=F0_0RyjCzZKarbVXTsG+NfVdANF9mENHe7=8+LNc+Rw@mail.gmail.com>
Subject: Re: [EXTERNAL] Re: [PATCH v2 00/28] Add support for Clang LTO
To: Ian Bearman <Ian.Bearman@microsoft.com>, rhadley@microsoft.com
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Sasha Levin <sashal@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fm+0Qykd;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Tue, Sep 22, 2020 at 9:27 AM Ian Bearman <Ian.Bearman@microsoft.com> wro=
te:
>
> Hi, Nick. Thanks for reaching out again. I'm excited to see other groups =
taking an interest in LTO and PGO for Linux. CFI for the kernel sounds like=
 a huge deal, nice!

Yes, CFI is quite nice.  There are some hardware extensions in the
works, but CFI has some additional coverage implemented in software.
That said, all new compiler technologies have bugs, and expose issues
in various code bases.

>
> I'd like to introduce you to @Russell Hadley. Russell wears a couple of h=
ats right now, he's both the group manager for the MSVC code generation tea=
m as well as the (interim) team for the Linux tools team that i built and l=
ead last year. He has inherited the various efforts my team was working on =
and is the right contact going forward to collaborate on Linux compiler and=
 tools efforts.

Hey Russell, Ian,

Russel, Ian mentioned shipping LTO+PGO for a "downstream customer."  I
assume they'd like to rebase at some point, so getting tweaks to the
build system upstream will help them lower their technical debt.
We're in the process of upstreaming LTO patches for Clang and would
love help collaborating on getting it working for GCC, too.

If you'd like to speak more about this virtually, we have our public
meeting every other week coming up tomorrow.  It's noon pacific time,
see https://clangbuiltlinux.github.io/ for calendar invite and Google
meet link.  Please stop by, even if it's just to say hello!

>
> ian Bearman
> Principal Software Engineering Manager
> Microsoft Visual C++ Team: ML Optimization & Code Generation
> #BlackLivesMatter
> /* Making your code faster, smaller, smarter! */
>
> -----Original Message-----
> From: Nick Desaulniers <ndesaulniers@google.com>
> Sent: Thursday, September 10, 2020 10:46 AM
> To: Ian Bearman <Ian.Bearman@microsoft.com>
> Cc: clang-built-linux <clang-built-linux@googlegroups.com>; LKML <linux-k=
ernel@vger.kernel.org>; Sami Tolvanen <samitolvanen@google.com>
> Subject: [EXTERNAL] Re: [PATCH v2 00/28] Add support for Clang LTO
>
> Hey Ian,
> It was nice to meet you at Linux plumbers.  You might want to take a look=
 at this series.  It implements builds of the Linux kernel with LTO.  It wo=
uld be good to get eyes on it and help review it from folks working on this=
 from the GCC angle.  The series has some configs that split where Clang sp=
ecific changes need to be made; it might be of interest to think about what=
 would the similar changes be needed for GCC.  Also, congrats on your LWN a=
rticle!
> https://nam06.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flwn.n=
et%2FArticles%2F830300%2F&amp;data=3D02%7C01%7Cian.bearman%40microsoft.com%=
7C9adc842104f640d3ebb308d855b17221%7C72f988bf86f141af91ab2d7cd011db47%7C1%7=
C0%7C637353568334933757&amp;sdata=3DuM6%2BGj5z0gNAuIravVWOeVeIVsRI5YaPIJqB8=
qYsZ94%3D&amp;reserved=3D0
>
> On Thu, Sep 3, 2020 at 1:30 PM Sami Tolvanen <samitolvanen@google.com> wr=
ote:
> >
> > This patch series adds support for building x86_64 and arm64 kernels
> > with Clang's Link Time Optimization (LTO).
> >
> > In addition to performance, the primary motivation for LTO is to allow
> > Clang's Control-Flow Integrity (CFI) to be used in the kernel. Google
> > has shipped millions of Pixel devices running three major kernel
> > versions with LTO+CFI since 2018.
> >
> > Most of the patches are build system changes for handling LLVM
> > bitcode, which Clang produces with LTO instead of ELF object files,
> > postponing ELF processing until a later stage, and ensuring initcall
> > ordering.
> >
> > Note that patches 1-4 are not directly related to LTO, but are needed
> > to compile LTO kernels with ToT Clang, so I'm including them in the
> > series for your convenience:
> >
> >  - Patches 1-3 are required for building the kernel with ToT Clang,
> >    and IAS, and patch 4 is needed to build allmodconfig with LTO.
> >
> >  - Patches 3-4 are already in linux-next, but not yet in 5.9-rc.
> >
> > ---
> > Changes in v2:
> >
> >   - Fixed -Wmissing-prototypes warnings with W=3D1.
> >
> >   - Dropped cc-option from -fsplit-lto-unit and added .thinlto-cache
> >     scrubbing to make distclean.
> >
> >   - Added a comment about Clang >=3D11 being required.
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
> > Arvind Sankar (2):
> >   x86/boot/compressed: Disable relocation relaxation
> >   x86/asm: Replace __force_order with memory clobber
> >
> > Luca Stefani (1):
> >   RAS/CEC: Fix cec_init() prototype
> >
> > Nick Desaulniers (1):
> >   lib/string.c: implement stpcpy
> >
> > Peter Zijlstra (1):
> >   objtool: Add a pass for generating __mcount_loc
> >
> > Sami Tolvanen (23):
> >   objtool: Don't autodetect vmlinux.o
> >   kbuild: add support for objtool mcount
> >   x86, build: use objtool mcount
> >   kbuild: add support for Clang LTO
> >   kbuild: lto: fix module versioning
> >   kbuild: lto: postpone objtool
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
> >   arm64: export CC_USING_PATCHABLE_FUNCTION_ENTRY
> >   arm64: vdso: disable LTO
> >   KVM: arm64: disable LTO for the nVHE directory
> >   arm64: allow LTO_CLANG and THINLTO to be selected
> >   x86, vdso: disable LTO only for vDSO
> >   x86, relocs: Ignore L4_PAGE_OFFSET relocations
> >   x86, build: allow LTO_CLANG and THINLTO to be selected
> >
> >  .gitignore                            |   1 +
> >  Makefile                              |  65 ++++++-
> >  arch/Kconfig                          |  67 +++++++
> >  arch/arm64/Kconfig                    |   2 +
> >  arch/arm64/Makefile                   |   1 +
> >  arch/arm64/kernel/vdso/Makefile       |   4 +-
> >  arch/arm64/kvm/hyp/nvhe/Makefile      |   4 +-
> >  arch/x86/Kconfig                      |   3 +
> >  arch/x86/Makefile                     |   5 +
> >  arch/x86/boot/compressed/Makefile     |   2 +
> >  arch/x86/boot/compressed/pgtable_64.c |   9 -
> >  arch/x86/entry/vdso/Makefile          |   5 +-
> >  arch/x86/include/asm/special_insns.h  |  28 +--
> >  arch/x86/kernel/cpu/common.c          |   4 +-
> >  arch/x86/tools/relocs.c               |   1 +
> >  drivers/firmware/efi/libstub/Makefile |   2 +
> >  drivers/misc/lkdtm/Makefile           |   1 +
> >  drivers/ras/cec.c                     |   9 +-
> >  include/asm-generic/vmlinux.lds.h     |  11 +-
> >  include/linux/init.h                  |  79 +++++++-
> >  include/linux/pci.h                   |  19 +-
> >  kernel/trace/Kconfig                  |   5 +
> >  lib/string.c                          |  24 +++
> >  scripts/Makefile.build                |  55 +++++-
> >  scripts/Makefile.lib                  |   6 +-
> >  scripts/Makefile.modfinal             |  31 ++-
> >  scripts/Makefile.modpost              |  26 ++-
> >  scripts/generate_initcall_order.pl    | 270 ++++++++++++++++++++++++++
> >  scripts/link-vmlinux.sh               |  94 ++++++++-
> >  scripts/mod/Makefile                  |   1 +
> >  scripts/mod/modpost.c                 |  16 +-
> >  scripts/mod/modpost.h                 |   9 +
> >  scripts/mod/sumversion.c              |   6 +-
> >  scripts/module-lto.lds                |  26 +++
> >  tools/objtool/builtin-check.c         |  13 +-
> >  tools/objtool/builtin.h               |   2 +-
> >  tools/objtool/check.c                 |  83 ++++++++
> >  tools/objtool/check.h                 |   1 +
> >  tools/objtool/objtool.h               |   1 +
> >  39 files changed, 883 insertions(+), 108 deletions(-)  create mode
> > 100755 scripts/generate_initcall_order.pl
> >  create mode 100644 scripts/module-lto.lds
> >
> >
> > base-commit: e28f0104343d0c132fa37f479870c9e43355fee4
> > --
> > 2.28.0.402.g5ffc5be6b7-goog
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3DF0_0RyjCzZKarbVXTsG%2BNfVdANF9mENHe7%3D8%2BLNc%=
2BRw%40mail.gmail.com.
