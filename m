Return-Path: <clang-built-linux+bncBD66FMGZA4IMZ5FEQADBUBAYHDKT2@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 345C42FE4DB
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 09:24:45 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id k4sf489642ljb.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 00:24:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611217484; cv=pass;
        d=google.com; s=arc-20160816;
        b=nULk9Xu/JuKA/+f1fMI7zW8KmSAN8Zxiv2zXBPZR9Y/ApX3Fg/0mqtNv3tXk6HU8bp
         +DBqCp1WHlONa1MPx73lwTxzt4r2bpaMeX9uI0lGiESA30HxA8k9dEtBiZZP55FmcxDZ
         QSyHTztTDinhpjxzEnNsU70xibkT+yQU3Yof+rjyTMzLk0AUbUJgsag57FY+DkbOoiqd
         FfA3mGJv9X7VsE9evrf7T6f17UC8bAYgewR438AIhmFSZd5714QdlRqXRpN5T2q5afOD
         /w4FNF28etsv0FghjebCmrSWCd6MUA9J0jp3QVT0BGiy/EBmrzEqgi3hV3f5NOTHcn0z
         ZLXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=f26TotFOAOXp4zdBpj2V9oR0rt7k0awqOJyf8TwCSq4=;
        b=A7CrudM0EZpq18r+BScMnJU8eKk9+8dYKNIrJGj6ZidQp4XlI3ZSDktWWF4gUiTNL/
         59s/hz0t52DPSsS/kJ3zXRxHL5PtrGuTamyy2Vp8FuuBvh52EXCgEtatGOcsYbSrUWko
         Mbz0cFLO5O1Xldzotz8jZb00l/FWk/Bumi2cao+cLlNB4JVTpLKSRuto45jI09ZWDjKK
         UDHFNrq/rP/EVyzSf/DNGbAiybsNXOyTMXakuOB4W+TVgLv/qzOajsutFZEBclXmpDgF
         w4YHQq0mlSi2FcqPNsjkZxZYeIBl1COD5NAv48tJsGqR0DY0REmbOuQAx0biGST/TGlY
         9Viw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n+qby0Bb;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f26TotFOAOXp4zdBpj2V9oR0rt7k0awqOJyf8TwCSq4=;
        b=awYW0i24XZEZzg7SkDxmBEgMRPuR4zuQB7goZDzya6zFLMy+svVCJXnCMP2hUJoHnW
         iQXpEyUf8bMHJHQ41HgG89zrABJf6jJdNCPt3i5aK3c2GV420vHaqVTb0QuZckwQVA7Q
         ibnG1bOu5tcBol+5cHE45nBLaDo141c0K1x459Us0Zh8ONgJajw7W9gaEXO1Mju+ABoK
         oVYkRuo6PX1/+MNxHFhe4zo1L0+YY9br0LNtwfYbU+hRM4ClqtLg3wcYwhLmUxl5tqp4
         wgsqZB8rIUNCCaAJ05s2kIhrQSDHoR8tC62Zwb/Wj91JMzz7u8DkSOjJoAk4bPIsR+yY
         H9Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f26TotFOAOXp4zdBpj2V9oR0rt7k0awqOJyf8TwCSq4=;
        b=b9bPflH2HloVIwuMWyAHWWH+sxj30xknvXPDuEmCb6o4lSjSkOQ+NgK0KtYNg5xVPT
         axu5Y2lMj9FeFJg8GWN0Am8a8+cKDA10S4EBYh67Y1qK13Cy0QzA2NxS6s/Rt7/znPaD
         i/B0NhnLdXQDi06wL+CLiK7WNGuD+sIZ35flif9dsdkigEZugyURJ014InrIw7AB9bRK
         sxyPeyQ58ZyeYUuffPK5wxaBbo4OXsT5qbc77J0AvcXZcWcLvjN8Jvm1fyFDPdBAKEdN
         hZ1xvHoR4y/46dm2DniiIsQvHfsrhpMwdUepOARTyXsxDSzFhDRxGxDOc4KFElKVlzH0
         einA==
X-Gm-Message-State: AOAM530mFkNps9hQbw2ehmNVbE4jEE6mhbf4MFSUWXxRR0cfg+58odGP
	HHu4bUfg/DWtKcahYzmHWrc=
X-Google-Smtp-Source: ABdhPJzATO/zU4PAL+fDEp/WtYNmgw7fO1Xb3bRi0IwlQUCbDqUEhgHN5nyX7NZM3nhDmDyr+WDkYg==
X-Received: by 2002:a05:6512:74d:: with SMTP id c13mr6281999lfs.290.1611217484646;
        Thu, 21 Jan 2021 00:24:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:6145:: with SMTP id m5ls798034lfk.2.gmail; Thu, 21 Jan
 2021 00:24:43 -0800 (PST)
X-Received: by 2002:a05:6512:20d4:: with SMTP id u20mr5847857lfr.116.1611217483553;
        Thu, 21 Jan 2021 00:24:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611217483; cv=none;
        d=google.com; s=arc-20160816;
        b=YVR9mtlQ5AVzzLSaKEfp0mTJ2p+k915sHNDPUj4RzHbnQiO/sMYZcKU2WKq/nLT6hE
         7LB3yxbGfhUVn2eS3dVsofn3NypGIHfyYtAnSt5E3Q5YsPJ+XedbBAPRD/hHSSGKQp+5
         HnciXrhjnH1OA6OGZg2Tt1IEx6tqBLcGJbUvqLVB+F0Ibbqgj5+KymbuxYy5ApDStOln
         k2x7bDoe7/ycG6Q33mnpp9qL0LBwSs/Eip6mV9ARwjvZlYCJqiBjcRlBZiEKZS/uJILh
         sZtihUn9UblfNPo35OpswxngHK2YuaPcXgDQvDP5cifxWnMSDWEn2ByVm3cwspz1jnPe
         PmWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/ekZ32ovcGdvcee5qeIJkDfq4bsKHGm5simMxZxMBUU=;
        b=hU4fK4pbpgX3vJftmWf7Mlfd5P6MbczDs1acrEguSDa//1JRVAJ5K6yeQp2AIZvjiF
         KleQVsqj4gLUiDEQwQXUC4OgEXLaOl2NeKhGWwpyt2PhD5P1BQC6n592Gj8L4ayrIhOB
         pqw8ePjWf+UnAD/EFeSHtfqeZbar26BEVQFD5ueIu8PpJObXbR9CmB4ZN/YAjK9S0iHz
         3vAemaOoe/KDPh7vp+Fl2WKT1Ocb6OB25v9BlUB9HlUXyRSC/M4ddst2PDafraIgNCfl
         aFxExPnuF/qsAUdR8Z/bHTpjwGlnbDG3DbFAYCKxv2MewacCg+M9L5/EHgUcBwLQXNO3
         DszA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n+qby0Bb;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com. [2a00:1450:4864:20::529])
        by gmr-mx.google.com with ESMTPS id m12si185271lfq.6.2021.01.21.00.24.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 00:24:43 -0800 (PST)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::529 as permitted sender) client-ip=2a00:1450:4864:20::529;
Received: by mail-ed1-x529.google.com with SMTP id bx12so1397386edb.8
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 00:24:43 -0800 (PST)
X-Received: by 2002:a05:6402:78f:: with SMTP id d15mr9988430edy.362.1611217482481;
 Thu, 21 Jan 2021 00:24:42 -0800 (PST)
MIME-Version: 1.0
References: <20210113061958.886723-1-morbo@google.com> <20210116094357.3620352-1-morbo@google.com>
 <CAKwvOd=334Nko80NAqrJgqu7Oa6fi5FtVK+4R_Asu2qLRrrDHA@mail.gmail.com>
In-Reply-To: <CAKwvOd=334Nko80NAqrJgqu7Oa6fi5FtVK+4R_Asu2qLRrrDHA@mail.gmail.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 21 Jan 2021 00:24:30 -0800
Message-ID: <CAGG=3QVV0EDL0h0CTVT9bcfZdJ2OeUO8F6=EBOhxcWLHc+ummg@mail.gmail.com>
Subject: Re: [PATCH v5] pgo: add clang's Profile Guided Optimization infrastructure
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=n+qby0Bb;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::529 as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

On Wed, Jan 20, 2021 at 4:51 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Thanks Bill, mostly questions below.  Patch looks good to me modulo
> disabling profiling for one crypto TU, mixing style of pre/post
> increment, and some comments around locking.  With those addressed,
> I'm hoping akpm@ would consider picking this up.
>
> On Sat, Jan 16, 2021 at 1:44 AM Bill Wendling <morbo@google.com> wrote:
> >
> > From: Sami Tolvanen <samitolvanen@google.com>
> >
> > Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> > profile, the kernel is instrumented with PGO counters, a representative
> > workload is run, and the raw profile data is collected from
> > /sys/kernel/debug/pgo/profraw.
> >
> > The raw profile data must be processed by clang's "llvm-profdata" tool
> > before it can be used during recompilation:
> >
> >   $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
> >   $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> >
> > Multiple raw profiles may be merged during this step.
> >
> > The data can now be used by the compiler:
> >
> >   $ make LLVM=1 KCFLAGS=-fprofile-use=vmlinux.profdata ...
> >
> > This initial submission is restricted to x86, as that's the platform we
> > know works. This restriction can be lifted once other platforms have
> > been verified to work with PGO.
> >
> > Note that this method of profiling the kernel is clang-native, unlike
> > the clang support in kernel/gcov.
> >
> > [1] https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimization
> >
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > Co-developed-by: Bill Wendling <morbo@google.com>
> > Signed-off-by: Bill Wendling <morbo@google.com>
> > ---
> > v2: - Added "__llvm_profile_instrument_memop" based on Nathan Chancellor's
> >       testing.
> >     - Corrected documentation, re PGO flags when using LTO, based on Fangrui
> >       Song's comments.
> > v3: - Added change log section based on Sedat Dilek's comments.
> > v4: - Remove non-x86 Makfile changes and se "hweight64" instead of using our
> >       own popcount implementation, based on Nick Desaulniers's comment.
> > v5: - Correct padding calculation, discovered by Nathan Chancellor.
> > ---
> >  Documentation/dev-tools/index.rst     |   1 +
> >  Documentation/dev-tools/pgo.rst       | 127 +++++++++
> >  MAINTAINERS                           |   9 +
> >  Makefile                              |   3 +
> >  arch/Kconfig                          |   1 +
> >  arch/x86/Kconfig                      |   1 +
> >  arch/x86/boot/Makefile                |   1 +
> >  arch/x86/boot/compressed/Makefile     |   1 +
> >  arch/x86/crypto/Makefile              |   2 +
> >  arch/x86/entry/vdso/Makefile          |   1 +
> >  arch/x86/kernel/vmlinux.lds.S         |   2 +
> >  arch/x86/platform/efi/Makefile        |   1 +
> >  arch/x86/purgatory/Makefile           |   1 +
> >  arch/x86/realmode/rm/Makefile         |   1 +
> >  arch/x86/um/vdso/Makefile             |   1 +
> >  drivers/firmware/efi/libstub/Makefile |   1 +
> >  include/asm-generic/vmlinux.lds.h     |  44 +++
> >  kernel/Makefile                       |   1 +
> >  kernel/pgo/Kconfig                    |  35 +++
> >  kernel/pgo/Makefile                   |   5 +
> >  kernel/pgo/fs.c                       | 382 ++++++++++++++++++++++++++
> >  kernel/pgo/instrument.c               | 185 +++++++++++++
> >  kernel/pgo/pgo.h                      | 206 ++++++++++++++
> >  scripts/Makefile.lib                  |  10 +
> >  24 files changed, 1022 insertions(+)
> >  create mode 100644 Documentation/dev-tools/pgo.rst
> >  create mode 100644 kernel/pgo/Kconfig
> >  create mode 100644 kernel/pgo/Makefile
> >  create mode 100644 kernel/pgo/fs.c
> >  create mode 100644 kernel/pgo/instrument.c
> >  create mode 100644 kernel/pgo/pgo.h
> >
> > diff --git a/Documentation/dev-tools/index.rst b/Documentation/dev-tools/index.rst
> > index f7809c7b1ba9e..8d6418e858062 100644
> > --- a/Documentation/dev-tools/index.rst
> > +++ b/Documentation/dev-tools/index.rst
> > @@ -26,6 +26,7 @@ whole; patches welcome!
> >     kgdb
> >     kselftest
> >     kunit/index
> > +   pgo
> >
> >
> >  .. only::  subproject and html
> > diff --git a/Documentation/dev-tools/pgo.rst b/Documentation/dev-tools/pgo.rst
> > new file mode 100644
> > index 0000000000000..b7f11d8405b73
> > --- /dev/null
> > +++ b/Documentation/dev-tools/pgo.rst
> > @@ -0,0 +1,127 @@
> > +.. SPDX-License-Identifier: GPL-2.0
> > +
> > +===============================
> > +Using PGO with the Linux kernel
> > +===============================
> > +
> > +Clang's profiling kernel support (PGO_) enables profiling of the Linux kernel
> > +when building with Clang. The profiling data is exported via the ``pgo``
> > +debugfs directory.
> > +
> > +.. _PGO: https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimization
> > +
> > +
> > +Preparation
> > +===========
> > +
> > +Configure the kernel with:
> > +
> > +.. code-block:: make
> > +
> > +   CONFIG_DEBUG_FS=y
> > +   CONFIG_PGO_CLANG=y
> > +
> > +Note that kernels compiled with profiling flags will be significantly larger
> > +and run slower.
> > +
> > +Profiling data will only become accessible once debugfs has been mounted:
> > +
> > +.. code-block:: sh
> > +
> > +   mount -t debugfs none /sys/kernel/debug
> > +
> > +
> > +Customization
> > +=============
> > +
> > +You can enable or disable profiling for individual file and directories by
> > +adding a line similar to the following to the respective kernel Makefile:
> > +
> > +- For a single file (e.g. main.o)
> > +
> > +  .. code-block:: make
> > +
> > +     PGO_PROFILE_main.o := y
> > +
> > +- For all files in one directory
> > +
> > +  .. code-block:: make
> > +
> > +     PGO_PROFILE := y
> > +
> > +To exclude files from being profiled use
> > +
> > +  .. code-block:: make
> > +
> > +     PGO_PROFILE_main.o := n
> > +
> > +and
> > +
> > +  .. code-block:: make
> > +
> > +     PGO_PROFILE := n
> > +
> > +Only files which are linked to the main kernel image or are compiled as kernel
> > +modules are supported by this mechanism.
> > +
> > +
> > +Files
> > +=====
> > +
> > +The PGO kernel support creates the following files in debugfs:
> > +
> > +``/sys/kernel/debug/pgo``
> > +       Parent directory for all PGO-related files.
> > +
> > +``/sys/kernel/debug/pgo/reset``
> > +       Global reset file: resets all coverage data to zero when written to.
> > +
> > +``/sys/kernel/debug/profraw``
> > +       The raw PGO data that must be processed with ``llvm_profdata``.
> > +
> > +
> > +Workflow
> > +========
> > +
> > +The PGO kernel can be run on the host or test machines. The data though should
> > +be analyzed with Clang's tools from the same Clang version as the kernel was
> > +compiled. Clang's tolerant of version skew, but it's easier to use the same
> > +Clang version.
> > +
> > +The profiling data is useful for optimizing the kernel, analyzing coverage,
> > +etc. Clang offers tools to perform these tasks.
> > +
> > +Here is an example workflow for profiling an instrumented kernel with PGO and
> > +using the result to optimize the kernel:
> > +
> > +1) Install the kernel on the TEST machine.
> > +
> > +2) Reset the data counters right before running the load tests
> > +
> > +   .. code-block:: sh
> > +
> > +      $ echo 1 > /sys/kernel/debug/pgo/reset
> > +
> > +3) Run the load tests.
> > +
> > +4) Collect the raw profile data
> > +
> > +   .. code-block:: sh
> > +
> > +      $ cp -a /sys/kernel/debug/pgo/profraw /tmp/vmlinux.profraw
> > +
> > +5) (Optional) Download the raw profile data to the HOST machine.
> > +
> > +6) Process the raw profile data
> > +
> > +   .. code-block:: sh
> > +
> > +      $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> > +
> > +   Note that multiple raw profile data files can be merged during this step.
> > +
> > +7) Rebuild the kernel using the profile data (PGO disabled)
> > +
> > +   .. code-block:: sh
> > +
> > +      $ make LLVM=1 KCFLAGS=-fprofile-use=vmlinux.profdata ...
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 79b400c97059f..cb1f1f2b2baf4 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -13948,6 +13948,15 @@ S:     Maintained
> >  F:     include/linux/personality.h
> >  F:     include/uapi/linux/personality.h
> >
> > +PGO BASED KERNEL PROFILING
> > +M:     Sami Tolvanen <samitolvanen@google.com>
> > +M:     Bill Wendling <wcw@google.com>
> > +R:     Nathan Chancellor <natechancellor@gmail.com>
> > +R:     Nick Desaulniers <ndesaulniers@google.com>
> > +S:     Supported
> > +F:     Documentation/dev-tools/pgo.rst
> > +F:     kernel/pgo
> > +
> >  PHOENIX RC FLIGHT CONTROLLER ADAPTER
> >  M:     Marcus Folkesson <marcus.folkesson@gmail.com>
> >  L:     linux-input@vger.kernel.org
> > diff --git a/Makefile b/Makefile
> > index 9e73f82e0d863..9128bfe1ccc97 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -659,6 +659,9 @@ endif # KBUILD_EXTMOD
> >  # Defaults to vmlinux, but the arch makefile usually adds further targets
> >  all: vmlinux
> >
> > +CFLAGS_PGO_CLANG := -fprofile-generate
> > +export CFLAGS_PGO_CLANG
> > +
> >  CFLAGS_GCOV    := -fprofile-arcs -ftest-coverage \
> >         $(call cc-option,-fno-tree-loop-im) \
> >         $(call cc-disable-warning,maybe-uninitialized,)
> > diff --git a/arch/Kconfig b/arch/Kconfig
> > index 24862d15f3a36..f39d3991f6bfe 100644
> > --- a/arch/Kconfig
> > +++ b/arch/Kconfig
> > @@ -1112,6 +1112,7 @@ config ARCH_SPLIT_ARG64
> >            pairs of 32-bit arguments, select this option.
> >
> >  source "kernel/gcov/Kconfig"
> > +source "kernel/pgo/Kconfig"
> >
> >  source "scripts/gcc-plugins/Kconfig"
> >
> > diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> > index 21f851179ff08..36305ea61dc09 100644
> > --- a/arch/x86/Kconfig
> > +++ b/arch/x86/Kconfig
> > @@ -96,6 +96,7 @@ config X86
> >         select ARCH_SUPPORTS_DEBUG_PAGEALLOC
> >         select ARCH_SUPPORTS_NUMA_BALANCING     if X86_64
> >         select ARCH_SUPPORTS_KMAP_LOCAL_FORCE_MAP       if NR_CPUS <= 4096
> > +       select ARCH_SUPPORTS_PGO_CLANG          if X86_64
> >         select ARCH_USE_BUILTIN_BSWAP
> >         select ARCH_USE_QUEUED_RWLOCKS
> >         select ARCH_USE_QUEUED_SPINLOCKS
> > diff --git a/arch/x86/boot/Makefile b/arch/x86/boot/Makefile
> > index fe605205b4ce2..383853e32f673 100644
> > --- a/arch/x86/boot/Makefile
> > +++ b/arch/x86/boot/Makefile
> > @@ -71,6 +71,7 @@ KBUILD_AFLAGS := $(KBUILD_CFLAGS) -D__ASSEMBLY__
> >  KBUILD_CFLAGS  += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
> >  KBUILD_CFLAGS  += -fno-asynchronous-unwind-tables
> >  GCOV_PROFILE := n
> > +PGO_PROFILE := n
> >  UBSAN_SANITIZE := n
> >
> >  $(obj)/bzImage: asflags-y  := $(SVGA_MODE)
> > diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> > index e0bc3988c3faa..ed12ab65f6065 100644
> > --- a/arch/x86/boot/compressed/Makefile
> > +++ b/arch/x86/boot/compressed/Makefile
> > @@ -54,6 +54,7 @@ CFLAGS_sev-es.o += -I$(objtree)/arch/x86/lib/
> >
> >  KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
> >  GCOV_PROFILE := n
> > +PGO_PROFILE := n
> >  UBSAN_SANITIZE :=n
> >
> >  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
> > diff --git a/arch/x86/crypto/Makefile b/arch/x86/crypto/Makefile
> > index a31de0c6ccde2..775fa0b368e98 100644
> > --- a/arch/x86/crypto/Makefile
> > +++ b/arch/x86/crypto/Makefile
> > @@ -4,6 +4,8 @@
> >
> >  OBJECT_FILES_NON_STANDARD := y
> >
> > +PGO_PROFILE_curve25519-x86_64.o := n
> > +
>
> ^ Do you have more info about this?
>
This gave an error during compilation complaining about lacking
registers in some instances. This file is mostly inline asm or code
that doesn't super benefit from profiling, so I disabled it.

Note that the register issue happens only with PGO. Normal compilation is fine.

> >  obj-$(CONFIG_CRYPTO_GLUE_HELPER_X86) += glue_helper.o
> >
> >  obj-$(CONFIG_CRYPTO_TWOFISH_586) += twofish-i586.o
> > diff --git a/arch/x86/entry/vdso/Makefile b/arch/x86/entry/vdso/Makefile
> > index 02e3e42f380bd..26e2b3af0145c 100644
> > --- a/arch/x86/entry/vdso/Makefile
> > +++ b/arch/x86/entry/vdso/Makefile
> > @@ -179,6 +179,7 @@ quiet_cmd_vdso = VDSO    $@
> >  VDSO_LDFLAGS = -shared --hash-style=both --build-id=sha1 \
> >         $(call ld-option, --eh-frame-hdr) -Bsymbolic
> >  GCOV_PROFILE := n
> > +PGO_PROFILE := n
> >
> >  quiet_cmd_vdso_and_check = VDSO    $@
> >        cmd_vdso_and_check = $(cmd_vdso); $(cmd_vdso_check)
> > diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
> > index efd9e9ea17f25..f6cab2316c46a 100644
> > --- a/arch/x86/kernel/vmlinux.lds.S
> > +++ b/arch/x86/kernel/vmlinux.lds.S
> > @@ -184,6 +184,8 @@ SECTIONS
> >
> >         BUG_TABLE
> >
> > +       PGO_CLANG_DATA
> > +
> >         ORC_UNWIND_TABLE
> >
> >         . = ALIGN(PAGE_SIZE);
> > diff --git a/arch/x86/platform/efi/Makefile b/arch/x86/platform/efi/Makefile
> > index 84b09c230cbd5..5f22b31446ad4 100644
> > --- a/arch/x86/platform/efi/Makefile
> > +++ b/arch/x86/platform/efi/Makefile
> > @@ -2,6 +2,7 @@
> >  OBJECT_FILES_NON_STANDARD_efi_thunk_$(BITS).o := y
> >  KASAN_SANITIZE := n
> >  GCOV_PROFILE := n
> > +PGO_PROFILE := n
> >
> >  obj-$(CONFIG_EFI)              += quirks.o efi.o efi_$(BITS).o efi_stub_$(BITS).o
> >  obj-$(CONFIG_EFI_MIXED)                += efi_thunk_$(BITS).o
> > diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
> > index 95ea17a9d20cb..36f20e99da0bc 100644
> > --- a/arch/x86/purgatory/Makefile
> > +++ b/arch/x86/purgatory/Makefile
> > @@ -23,6 +23,7 @@ targets += purgatory.ro purgatory.chk
> >
> >  # Sanitizer, etc. runtimes are unavailable and cannot be linked here.
> >  GCOV_PROFILE   := n
> > +PGO_PROFILE    := n
> >  KASAN_SANITIZE := n
> >  UBSAN_SANITIZE := n
> >  KCSAN_SANITIZE := n
> > diff --git a/arch/x86/realmode/rm/Makefile b/arch/x86/realmode/rm/Makefile
> > index 83f1b6a56449f..21797192f958f 100644
> > --- a/arch/x86/realmode/rm/Makefile
> > +++ b/arch/x86/realmode/rm/Makefile
> > @@ -76,4 +76,5 @@ KBUILD_CFLAGS := $(REALMODE_CFLAGS) -D_SETUP -D_WAKEUP \
> >  KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
> >  KBUILD_CFLAGS  += -fno-asynchronous-unwind-tables
> >  GCOV_PROFILE := n
> > +PGO_PROFILE := n
> >  UBSAN_SANITIZE := n
> > diff --git a/arch/x86/um/vdso/Makefile b/arch/x86/um/vdso/Makefile
> > index 5943387e3f357..54f5768f58530 100644
> > --- a/arch/x86/um/vdso/Makefile
> > +++ b/arch/x86/um/vdso/Makefile
> > @@ -64,6 +64,7 @@ quiet_cmd_vdso = VDSO    $@
> >
> >  VDSO_LDFLAGS = -fPIC -shared -Wl,--hash-style=sysv
> >  GCOV_PROFILE := n
> > +PGO_PROFILE := n
> >
> >  #
> >  # Install the unstripped copy of vdso*.so listed in $(vdso-install-y).
> > diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> > index 8a94388e38b33..2d81623b33f29 100644
> > --- a/drivers/firmware/efi/libstub/Makefile
> > +++ b/drivers/firmware/efi/libstub/Makefile
> > @@ -40,6 +40,7 @@ KBUILD_CFLAGS                 := $(cflags-y) -Os -DDISABLE_BRANCH_PROFILING \
> >  KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
> >
> >  GCOV_PROFILE                   := n
> > +PGO_PROFILE                    := n
> >  # Sanitizer runtimes are unavailable and cannot be linked here.
> >  KASAN_SANITIZE                 := n
> >  KCSAN_SANITIZE                 := n
> > diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> > index b2b3d81b1535a..3a591bb18c5fb 100644
> > --- a/include/asm-generic/vmlinux.lds.h
> > +++ b/include/asm-generic/vmlinux.lds.h
> > @@ -316,6 +316,49 @@
> >  #define THERMAL_TABLE(name)
> >  #endif
> >
> > +#ifdef CONFIG_PGO_CLANG
> > +#define PGO_CLANG_DATA                                                 \
> > +       __llvm_prf_data : AT(ADDR(__llvm_prf_data) - LOAD_OFFSET) {     \
> > +               . = ALIGN(8);                                           \
> > +               __llvm_prf_start = .;                                   \
> > +               __llvm_prf_data_start = .;                              \
> > +               KEEP(*(__llvm_prf_data))                                \
> > +               . = ALIGN(8);                                           \
> > +               __llvm_prf_data_end = .;                                \
> > +       }                                                               \
> > +       __llvm_prf_cnts : AT(ADDR(__llvm_prf_cnts) - LOAD_OFFSET) {     \
> > +               . = ALIGN(8);                                           \
> > +               __llvm_prf_cnts_start = .;                              \
> > +               KEEP(*(__llvm_prf_cnts))                                \
> > +               . = ALIGN(8);                                           \
> > +               __llvm_prf_cnts_end = .;                                \
> > +       }                                                               \
> > +       __llvm_prf_names : AT(ADDR(__llvm_prf_names) - LOAD_OFFSET) {   \
> > +               . = ALIGN(8);                                           \
> > +               __llvm_prf_names_start = .;                             \
> > +               KEEP(*(__llvm_prf_names))                               \
> > +               . = ALIGN(8);                                           \
> > +               __llvm_prf_names_end = .;                               \
> > +               . = ALIGN(8);                                           \
> > +       }                                                               \
> > +       __llvm_prf_vals : AT(ADDR(__llvm_prf_vals) - LOAD_OFFSET) {     \
> > +               __llvm_prf_vals_start = .;                              \
> > +               KEEP(*(__llvm_prf_vals))                                \
> > +               . = ALIGN(8);                                           \
> > +               __llvm_prf_vals_end = .;                                \
> > +               . = ALIGN(8);                                           \
> > +       }                                                               \
> > +       __llvm_prf_vnds : AT(ADDR(__llvm_prf_vnds) - LOAD_OFFSET) {     \
> > +               __llvm_prf_vnds_start = .;                              \
> > +               KEEP(*(__llvm_prf_vnds))                                \
> > +               . = ALIGN(8);                                           \
> > +               __llvm_prf_vnds_end = .;                                \
> > +               __llvm_prf_end = .;                                     \
> > +       }
> > +#else
> > +#define PGO_CLANG_DATA
> > +#endif
> > +
> >  #define KERNEL_DTB()                                                   \
> >         STRUCT_ALIGN();                                                 \
> >         __dtb_start = .;                                                \
> > @@ -1125,6 +1168,7 @@
> >                 CONSTRUCTORS                                            \
> >         }                                                               \
> >         BUG_TABLE                                                       \
> > +       PGO_CLANG_DATA
>
> ^ since dropping other arch support from v4, could probably drop this,
> too. We should be covered by the modification to
> arch/x86/kernel/vmlinux.lds.S, right?
>
Possibly, but I'd like to keep it here anyway. It's the correct place
for this info, and will benefit us when we do enable other platforms.

> >
> >  #define INIT_TEXT_SECTION(inittext_align)                              \
> >         . = ALIGN(inittext_align);                                      \
> > diff --git a/kernel/Makefile b/kernel/Makefile
> > index aa7368c7eabf3..0b34ca228ba46 100644
> > --- a/kernel/Makefile
> > +++ b/kernel/Makefile
> > @@ -111,6 +111,7 @@ obj-$(CONFIG_BPF) += bpf/
> >  obj-$(CONFIG_KCSAN) += kcsan/
> >  obj-$(CONFIG_SHADOW_CALL_STACK) += scs.o
> >  obj-$(CONFIG_HAVE_STATIC_CALL_INLINE) += static_call.o
> > +obj-$(CONFIG_PGO_CLANG) += pgo/
> >
> >  obj-$(CONFIG_PERF_EVENTS) += events/
> >
> > diff --git a/kernel/pgo/Kconfig b/kernel/pgo/Kconfig
> > new file mode 100644
> > index 0000000000000..76a640b6cf6ed
> > --- /dev/null
> > +++ b/kernel/pgo/Kconfig
> > @@ -0,0 +1,35 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +menu "Profile Guided Optimization (PGO) (EXPERIMENTAL)"
> > +
> > +config ARCH_SUPPORTS_PGO_CLANG
> > +       bool
> > +
> > +config PGO_CLANG
> > +       bool "Enable clang's PGO-based kernel profiling"
> > +       depends on DEBUG_FS
> > +       depends on ARCH_SUPPORTS_PGO_CLANG
> > +       depends on CC_IS_CLANG && CLANG_VERSION >= 120000
> > +       help
> > +         This option enables clang's PGO (Profile Guided Optimization) based
> > +         code profiling to better optimize the kernel.
> > +
> > +         If unsure, say N.
> > +
> > +         Run a representative workload for your application on a kernel
> > +         compiled with this option and download the raw profile file from
> > +         /sys/kernel/debug/pgo/profraw. This file needs to be processed with
> > +         llvm-profdata. It may be merged with other collected raw profiles.
> > +
> > +         Copy the resulting profile file into vmlinux.profdata, and enable
> > +         KCFLAGS=-fprofile-use=vmlinux.profdata to produce an optimized
> > +         kernel.
> > +
> > +         Note that a kernel compiled with profiling flags will be
> > +         significantly larger and run slower. Also be sure to exclude files
> > +         from profiling which are not linked to the kernel image to prevent
> > +         linker errors.
> > +
> > +         Note that the debugfs filesystem has to be mounted to access
> > +         profiling data.
> > +
> > +endmenu
> > diff --git a/kernel/pgo/Makefile b/kernel/pgo/Makefile
> > new file mode 100644
> > index 0000000000000..41e27cefd9a47
> > --- /dev/null
> > +++ b/kernel/pgo/Makefile
> > @@ -0,0 +1,5 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +GCOV_PROFILE   := n
> > +PGO_PROFILE    := n
> > +
> > +obj-y  += fs.o instrument.o
> > diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
> > new file mode 100644
> > index 0000000000000..68b24672be10a
> > --- /dev/null
> > +++ b/kernel/pgo/fs.c
> > @@ -0,0 +1,382 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2019 Google, Inc.
> > + *
> > + * Author:
> > + *     Sami Tolvanen <samitolvanen@google.com>
> > + *
> > + * This software is licensed under the terms of the GNU General Public
> > + * License version 2, as published by the Free Software Foundation, and
> > + * may be copied, distributed, and modified under those terms.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + *
> > + */
> > +
> > +#define pr_fmt(fmt)    "pgo: " fmt
> > +
> > +#include <linux/kernel.h>
> > +#include <linux/debugfs.h>
> > +#include <linux/fs.h>
> > +#include <linux/module.h>
> > +#include <linux/slab.h>
> > +#include <linux/vmalloc.h>
> > +#include "pgo.h"
> > +
> > +static struct dentry *directory;
> > +
> > +struct prf_private_data {
> > +       void *buffer;
> > +       unsigned long size;
> > +};
> > +
> > +/*
> > + * Raw profile data format:
> > + *
> > + *     - llvm_prf_header
> > + *     - __llvm_prf_data
> > + *     - __llvm_prf_cnts
> > + *     - __llvm_prf_names
> > + *     - zero padding to 8 bytes
> > + *     - for each llvm_prf_data in __llvm_prf_data:
> > + *             - llvm_prf_value_data
> > + *                     - llvm_prf_value_record + site count array
> > + *                             - llvm_prf_value_node_data
> > + *                             ...
> > + *                     ...
> > + *             ...
> > + */
> > +
> > +static void prf_fill_header(void **buffer)
> > +{
> > +       struct llvm_prf_header *header = *(struct llvm_prf_header **)buffer;
> > +
> > +       header->magic = LLVM_PRF_MAGIC;
> > +       header->version = LLVM_PRF_VARIANT_MASK_IR | LLVM_PRF_VERSION;
> > +       header->data_size = prf_data_count();
> > +       header->padding_bytes_before_counters = 0;
> > +       header->counters_size = prf_cnts_count();
> > +       header->padding_bytes_after_counters = 0;
> > +       header->names_size = prf_names_count();
> > +       header->counters_delta = (u64)__llvm_prf_cnts_start;
> > +       header->names_delta = (u64)__llvm_prf_names_start;
> > +       header->value_kind_last = LLVM_PRF_IPVK_LAST;
> > +
> > +       *buffer += sizeof(*header);
> > +}
> > +
> > +/*
> > + * Copy the source into the buffer, incrementing the pointer into buffer in the
> > + * process.
> > + */
> > +static void prf_copy_to_buffer(void **buffer, void *src, unsigned long size)
> > +{
> > +       memcpy(*buffer, src, size);
> > +       *buffer += size;
> > +}
> > +
> > +static u32 __prf_get_value_size(struct llvm_prf_data *p, u32 *value_kinds)
> > +{
> > +       struct llvm_prf_value_node **nodes =
> > +               (struct llvm_prf_value_node **)p->values;
> > +       u32 kinds = 0;
> > +       u32 size = 0;
> > +       unsigned int kind;
> > +       unsigned int n;
> > +       unsigned int s = 0;
> > +
> > +       for (kind = 0; kind < ARRAY_SIZE(p->num_value_sites); kind++) {
> > +               unsigned int sites = p->num_value_sites[kind];
> > +
> > +               if (!sites)
> > +                       continue;
> > +
> > +               /* Record + site count array */
> > +               size += prf_get_value_record_size(sites);
> > +               kinds++;
> > +
> > +               if (!nodes)
> > +                       continue;
> > +
> > +               for (n = 0; n < sites; n++) {
> > +                       u32 count = 0;
> > +                       struct llvm_prf_value_node *site = nodes[s + n];
> > +
> > +                       while (site && ++count <= U8_MAX)
> > +                               site = site->next;
> > +
> > +                       size += count *
> > +                               sizeof(struct llvm_prf_value_node_data);
> > +               }
> > +
> > +               s += sites;
> > +       }
> > +
> > +       if (size)
> > +               size += sizeof(struct llvm_prf_value_data);
> > +
> > +       if (value_kinds)
> > +               *value_kinds = kinds;
> > +
> > +       return size;
> > +}
> > +
> > +static u32 prf_get_value_size(void)
> > +{
> > +       u32 size = 0;
> > +       struct llvm_prf_data *p;
> > +
> > +       for (p = __llvm_prf_data_start; p < __llvm_prf_data_end; p++)
> > +               size += __prf_get_value_size(p, NULL);
> > +
> > +       return size;
> > +}
> > +
> > +/* Serialize the profiling's value. */
> > +static void prf_serialize_value(struct llvm_prf_data *p, void **buffer)
> > +{
> > +       struct llvm_prf_value_data header;
> > +       struct llvm_prf_value_node **nodes =
> > +               (struct llvm_prf_value_node **)p->values;
> > +       unsigned int kind;
> > +       unsigned int n;
> > +       unsigned int s = 0;
> > +
> > +       header.total_size = __prf_get_value_size(p, &header.num_value_kinds);
> > +
> > +       if (!header.num_value_kinds)
> > +               /* Nothing to write. */
> > +               return;
> > +
> > +       prf_copy_to_buffer(buffer, &header, sizeof(header));
> > +
> > +       for (kind = 0; kind < ARRAY_SIZE(p->num_value_sites); kind++) {
> > +               struct llvm_prf_value_record *record;
> > +               u8 *counts;
> > +               unsigned int sites = p->num_value_sites[kind];
> > +
> > +               if (!sites)
> > +                       continue;
> > +
> > +               /* Profiling value record. */
> > +               record = *(struct llvm_prf_value_record **)buffer;
> > +               *buffer += prf_get_value_record_header_size();
> > +
> > +               record->kind = kind;
> > +               record->num_value_sites = sites;
> > +
> > +               /* Site count array. */
> > +               counts = *(u8 **)buffer;
> > +               *buffer += prf_get_value_record_site_count_size(sites);
> > +
> > +               /*
> > +                * If we don't have nodes, we can skip updating the site count
> > +                * array, because the buffer is zero filled.
> > +                */
> > +               if (!nodes)
> > +                       continue;
> > +
> > +               for (n = 0; n < sites; n++) {
> > +                       u32 count = 0;
> > +                       struct llvm_prf_value_node *site = nodes[s + n];
> > +
> > +                       while (site && ++count <= U8_MAX) {
> > +                               prf_copy_to_buffer(buffer, site,
> > +                                                  sizeof(struct llvm_prf_value_node_data));
> > +                               site = site->next;
> > +                       }
> > +
> > +                       counts[n] = (u8)count;
> > +               }
> > +
> > +               s += sites;
> > +       }
> > +}
> > +
> > +static void prf_serialize_values(void **buffer)
> > +{
> > +       struct llvm_prf_data *p;
> > +
> > +       for (p = __llvm_prf_data_start; p < __llvm_prf_data_end; p++)
> > +               prf_serialize_value(p, buffer);
> > +}
> > +
> > +static inline unsigned long prf_get_padding(unsigned long size)
> > +{
> > +       return 7 & (8 - size % 8);
> > +}
>
> This is ugly but it looks like this corresponds with
> __llvm_profile_get_num_padding_bytes() in
> llvm-project/compiler-rt/lib/profile/InstrProfiling.c?  If there are
> platforms where `sizeof(unsigned long) != 8` and are supported by the
> kernel, it might be nicer to spell out `sizeof(unsigned long)` rather
> than hardcode 8. Should we also use u64 for the parameter and u8 for
> the return type?
>
It's probably best to use what llvm uses in that function
(sizeof(uint64_t)). I can replace it.

> > +
> > +static unsigned long prf_buffer_size(void)
> > +{
> > +       return sizeof(struct llvm_prf_header) +
> > +                       prf_data_size() +
> > +                       prf_cnts_size() +
> > +                       prf_names_size() +
> > +                       prf_get_padding(prf_names_size()) +
> > +                       prf_get_value_size();
> > +}
> > +
> > +/* Serialize the profiling data into a format LLVM's tools can understand. */
> > +static int prf_serialize(struct prf_private_data *p)
> > +{
> > +       int err = 0;
> > +       void *buffer;
> > +
> > +       p->size = prf_buffer_size();
> > +       p->buffer = vzalloc(p->size);
> > +
> > +       if (!p->buffer) {
> > +               err = -ENOMEM;
> > +               goto out;
> > +       }
> > +
> > +       buffer = p->buffer;
> > +
> > +       prf_fill_header(&buffer);
> > +       prf_copy_to_buffer(&buffer, __llvm_prf_data_start,  prf_data_size());
> > +       prf_copy_to_buffer(&buffer, __llvm_prf_cnts_start,  prf_cnts_size());
> > +       prf_copy_to_buffer(&buffer, __llvm_prf_names_start, prf_names_size());
> > +       buffer += prf_get_padding(prf_names_size());
> > +
> > +       prf_serialize_values(&buffer);
> > +
> > +out:
> > +       return err;
> > +}
> > +
> > +/* open() implementation for PGO. Creates a copy of the profiling data set. */
> > +static int prf_open(struct inode *inode, struct file *file)
> > +{
> > +       struct prf_private_data *data;
> > +       unsigned long flags;
> > +       int err;
> > +
> > +       data = kzalloc(sizeof(*data), GFP_KERNEL);
> > +       if (!data) {
> > +               err = -ENOMEM;
> > +               goto out;
> > +       }
> > +
> > +       flags = prf_lock();
> > +
> > +       err = prf_serialize(data);
> > +       if (err) {
> > +               kfree(data);
> > +               goto out_unlock;
> > +       }
> > +
> > +       file->private_data = data;
> > +
> > +out_unlock:
> > +       prf_unlock(flags);
>
> This is an improvement over earlier editions, but kfree() is still
> within the critical section.  I wonder if it can be moved out? If not,
> why, precisely? Otherwise are we sure we have the concurrency correct?
> Might be worth pursuing in a follow up patch once the core has landed.
>
The kfree() isn't on the critical path, but done only when an error
occurs. I could add an "unlikely()" in the if-conditional hoping that
it's moved out-of-line, but the code it would be skipping would be a
couple of asm instructions. While I appreciate that performance in the
kernel is super important, we've already warned that performance with
an instrumented kernel won't be as good. :-)

> Also, it looks like the comment above the definition of pgo_lock and
> allocate_node() seem to indicate the same lock is used for
> serialization.  I'm curious to know more about why we can't access
> current_node and serialize at the same time? At the least, it seems
> that `prf_serialize` should have a similar comment to `allocate_node`
> regarding the caller being expected to hold the `pgo_lock` via a call
> to `prf_lock()`, yeah?
>
> I can't help but look at the two call sites of prf_lock() and be
> suspicious that pgo_lock is technically guarding access to more
> variables than described in the comment.  It would be good to explain
> exactly what is going on should we need to revisit the concurrency
> here in the future (and lower the bus factor).
>
I'll update the comments.

> > +out:
> > +       return err;
> > +}
> > +
> > +/* read() implementation for PGO. */
> > +static ssize_t prf_read(struct file *file, char __user *buf, size_t count,
> > +                       loff_t *ppos)
> > +{
> > +       struct prf_private_data *data = file->private_data;
> > +
> > +       BUG_ON(!data);
> > +
> > +       return simple_read_from_buffer(buf, count, ppos, data->buffer,
> > +                                      data->size);
> > +}
> > +
> > +/* release() implementation for PGO. Release resources allocated by open(). */
> > +static int prf_release(struct inode *inode, struct file *file)
> > +{
> > +       struct prf_private_data *data = file->private_data;
> > +
> > +       if (data) {
> > +               vfree(data->buffer);
> > +               kfree(data);
> > +       }
> > +
> > +       return 0;
> > +}
> > +
> > +static const struct file_operations prf_fops = {
> > +       .owner          = THIS_MODULE,
> > +       .open           = prf_open,
> > +       .read           = prf_read,
> > +       .llseek         = default_llseek,
> > +       .release        = prf_release
> > +};
> > +
> > +/* write() implementation for resetting PGO's profile data. */
> > +static ssize_t reset_write(struct file *file, const char __user *addr,
> > +                          size_t len, loff_t *pos)
> > +{
> > +       struct llvm_prf_data *data;
> > +
> > +       memset(__llvm_prf_cnts_start, 0, prf_cnts_size());
> > +
> > +       for (data = __llvm_prf_data_start; data < __llvm_prf_data_end; ++data) {
>
> ^ this patch mixes pre-increment and post-increment in loops.  The
> kernel coding style docs (Documentation/process/coding-style.rst)
> don't make a call on this, but it might be nice to be internally
> consistent throughout the patch.  I assume that's from having mixed
> authors.  Not a huge issue, but I'm pedantic.
>
Okay.

> > +               struct llvm_prf_value_node **vnodes;
> > +               u64 current_vsite_count;
> > +               u32 i;
> > +
> > +               if (!data->values)
> > +                       continue;
> > +
> > +               current_vsite_count = 0;
> > +               vnodes = (struct llvm_prf_value_node **)data->values;
> > +
> > +               for (i = LLVM_PRF_IPVK_FIRST; i <= LLVM_PRF_IPVK_LAST; ++i)
> > +                       current_vsite_count += data->num_value_sites[i];
> > +
> > +               for (i = 0; i < current_vsite_count; ++i) {
> > +                       struct llvm_prf_value_node *current_vnode = vnodes[i];
> > +
> > +                       while (current_vnode) {
> > +                               current_vnode->count = 0;
> > +                               current_vnode = current_vnode->next;
> > +                       }
> > +               }
> > +       }
> > +
> > +       return len;
> > +}
> > +
> > +static const struct file_operations prf_reset_fops = {
> > +       .owner          = THIS_MODULE,
> > +       .write          = reset_write,
> > +       .llseek         = noop_llseek,
> > +};
> > +
> > +/* Create debugfs entries. */
> > +static int __init pgo_init(void)
> > +{
> > +       directory = debugfs_create_dir("pgo", NULL);
> > +       if (!directory)
> > +               goto err_remove;
> > +
> > +       if (!debugfs_create_file("profraw", 0600, directory, NULL,
> > +                                &prf_fops))
> > +               goto err_remove;
> > +
> > +       if (!debugfs_create_file("reset", 0200, directory, NULL,
> > +                                &prf_reset_fops))
> > +               goto err_remove;
> > +
> > +       return 0;
> > +
> > +err_remove:
> > +       pr_err("initialization failed\n");
> > +       return -EIO;
> > +}
> > +
> > +/* Remove debugfs entries. */
> > +static void __exit pgo_exit(void)
> > +{
> > +       debugfs_remove_recursive(directory);
> > +}
> > +
> > +module_init(pgo_init);
> > +module_exit(pgo_exit);
> > diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
> > new file mode 100644
> > index 0000000000000..6084ff0652e85
> > --- /dev/null
> > +++ b/kernel/pgo/instrument.c
> > @@ -0,0 +1,185 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2019 Google, Inc.
> > + *
> > + * Author:
> > + *     Sami Tolvanen <samitolvanen@google.com>
> > + *
> > + * This software is licensed under the terms of the GNU General Public
> > + * License version 2, as published by the Free Software Foundation, and
> > + * may be copied, distributed, and modified under those terms.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + *
> > + */
> > +
> > +#define pr_fmt(fmt)    "pgo: " fmt
> > +
> > +#include <linux/bitops.h>
> > +#include <linux/kernel.h>
> > +#include <linux/export.h>
> > +#include <linux/spinlock.h>
> > +#include <linux/types.h>
> > +#include "pgo.h"
> > +
> > +/* Lock guarding value node access and serialization. */
> > +static DEFINE_SPINLOCK(pgo_lock);
> > +static int current_node;
> > +
> > +unsigned long prf_lock(void)
> > +{
> > +       unsigned long flags;
> > +
> > +       spin_lock_irqsave(&pgo_lock, flags);
> > +
> > +       return flags;
> > +}
> > +
> > +void prf_unlock(unsigned long flags)
> > +{
> > +       spin_unlock_irqrestore(&pgo_lock, flags);
> > +}
> > +
> > +/*
> > + * Return a newly allocated profiling value node which contains the tracked
> > + * value by the value profiler.
> > + * Note: caller *must* hold pgo_lock.
> > + */
> > +static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data *p,
> > +                                                u32 index, u64 value)
> > +{
> > +       if (&__llvm_prf_vnds_start[current_node + 1] >= __llvm_prf_vnds_end)
> > +               return NULL; /* Out of nodes */
> > +
> > +       current_node++;
> > +
> > +       /* Make sure the node is entirely within the section */
> > +       if (&__llvm_prf_vnds_start[current_node] >= __llvm_prf_vnds_end ||
> > +           &__llvm_prf_vnds_start[current_node + 1] > __llvm_prf_vnds_end)
> > +               return NULL;
> > +
> > +       return &__llvm_prf_vnds_start[current_node];
> > +}
> > +
> > +/*
> > + * Counts the number of times a target value is seen.
> > + *
> > + * Records the target value for the CounterIndex if not seen before. Otherwise,
> > + * increments the counter associated w/ the target value.
> > + */
> > +void __llvm_profile_instrument_target(u64 target_value, void *data, u32 index);
> > +void __llvm_profile_instrument_target(u64 target_value, void *data, u32 index)
> > +{
> > +       struct llvm_prf_data *p = (struct llvm_prf_data *)data;
> > +       struct llvm_prf_value_node **counters;
> > +       struct llvm_prf_value_node *curr;
> > +       struct llvm_prf_value_node *min = NULL;
> > +       struct llvm_prf_value_node *prev = NULL;
> > +       u64 min_count = U64_MAX;
> > +       u8 values = 0;
> > +       unsigned long flags;
> > +
> > +       if (!p || !p->values)
> > +               return;
> > +
> > +       counters = (struct llvm_prf_value_node **)p->values;
> > +       curr = counters[index];
> > +
> > +       while (curr) {
> > +               if (target_value == curr->value) {
> > +                       curr->count++;
> > +                       return;
> > +               }
> > +
> > +               if (curr->count < min_count) {
> > +                       min_count = curr->count;
> > +                       min = curr;
> > +               }
> > +
> > +               prev = curr;
> > +               curr = curr->next;
> > +               values++;
> > +       }
> > +
> > +       if (values >= LLVM_PRF_MAX_NUM_VALS_PER_SITE) {
> > +               if (!min->count || !(--min->count)) {
> > +                       curr = min;
> > +                       curr->value = target_value;
> > +                       curr->count++;
> > +               }
> > +               return;
> > +       }
> > +
> > +       /* Lock when updating the value node structure. */
> > +       flags = prf_lock();
> > +
> > +       curr = allocate_node(p, index, target_value);
> > +       if (!curr)
> > +               goto out;
> > +
> > +       curr->value = target_value;
> > +       curr->count++;
> > +
> > +       if (!counters[index])
> > +               counters[index] = curr;
> > +       else if (prev && !prev->next)
> > +               prev->next = curr;
> > +
> > +out:
> > +       prf_unlock(flags);
> > +}
> > +EXPORT_SYMBOL(__llvm_profile_instrument_target);
> > +
> > +/* Counts the number of times a range of targets values are seen. */
> > +void __llvm_profile_instrument_range(u64 target_value, void *data,
> > +                                    u32 index, s64 precise_start,
> > +                                    s64 precise_last, s64 large_value);
> > +void __llvm_profile_instrument_range(u64 target_value, void *data,
> > +                                    u32 index, s64 precise_start,
> > +                                    s64 precise_last, s64 large_value)
> > +{
> > +       if (large_value != S64_MIN && (s64)target_value >= large_value)
> > +               target_value = large_value;
> > +       else if ((s64)target_value < precise_start ||
> > +                (s64)target_value > precise_last)
> > +               target_value = precise_last + 1;
> > +
> > +       __llvm_profile_instrument_target(target_value, data, index);
> > +}
> > +EXPORT_SYMBOL(__llvm_profile_instrument_range);
> > +
> > +static u64 inst_prof_get_range_rep_value(u64 value)
> > +{
> > +       if (value <= 8)
> > +               /* The first ranges are individually tracked, us it as is. */
>
> ^ typo, "use"
>
> > +               return value;
> > +       else if (value >= 513)
> > +               /* The last range is mapped to its lowest value. */
> > +               return 513;
> > +       else if (hweight64(value) == 1)
> > +               /* If it's a power of two, use it as is. */
> > +               return value;
> > +
> > +       /* Otherwise, take to the previous power of two + 1. */
> > +       return (1 << (64 - __builtin_clzll(value) - 1)) + 1;
> > +}
> > +
> > +/*
> > + * The target values are partitioned into multiple ranges. The range spec is
> > + * defined in compiler-rt/include/profile/InstrProfData.inc.
> > + */
> > +void __llvm_profile_instrument_memop(u64 target_value, void *data,
> > +                                    u32 counter_index);
> > +void __llvm_profile_instrument_memop(u64 target_value, void *data,
> > +                                    u32 counter_index)
> > +{
> > +       u64 rep_value;
> > +
> > +       /* Map the target value to the representative value of its range. */
> > +       rep_value = inst_prof_get_range_rep_value(target_value);
> > +       __llvm_profile_instrument_target(rep_value, data, counter_index);
> > +}
> > +EXPORT_SYMBOL(__llvm_profile_instrument_memop);
> > diff --git a/kernel/pgo/pgo.h b/kernel/pgo/pgo.h
> > new file mode 100644
> > index 0000000000000..df0aa278f28bd
> > --- /dev/null
> > +++ b/kernel/pgo/pgo.h
> > @@ -0,0 +1,206 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Copyright (C) 2019 Google, Inc.
> > + *
> > + * Author:
> > + *     Sami Tolvanen <samitolvanen@google.com>
> > + *
> > + * This software is licensed under the terms of the GNU General Public
> > + * License version 2, as published by the Free Software Foundation, and
> > + * may be copied, distributed, and modified under those terms.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + *
> > + */
> > +
> > +#ifndef _PGO_H
> > +#define _PGO_H
> > +
> > +/*
> > + * Note: These internal LLVM definitions must match the compiler version.
> > + * See llvm/include/llvm/ProfileData/InstrProfData.inc in LLVM's source code.
> > + */
> > +
> > +#ifdef CONFIG_64BIT
> > +       #define LLVM_PRF_MAGIC          \
> > +               ((u64)255 << 56 |       \
> > +                (u64)'l' << 48 |       \
> > +                (u64)'p' << 40 |       \
> > +                (u64)'r' << 32 |       \
> > +                (u64)'o' << 24 |       \
> > +                (u64)'f' << 16 |       \
> > +                (u64)'r' << 8  |       \
> > +                (u64)129)
> > +#else
> > +       #define LLVM_PRF_MAGIC          \
> > +               ((u64)255 << 56 |       \
> > +                (u64)'l' << 48 |       \
> > +                (u64)'p' << 40 |       \
> > +                (u64)'r' << 32 |       \
> > +                (u64)'o' << 24 |       \
> > +                (u64)'f' << 16 |       \
> > +                (u64)'R' << 8  |       \
> > +                (u64)129)
> > +#endif
> > +
> > +#define LLVM_PRF_VERSION               5
> > +#define LLVM_PRF_DATA_ALIGN            8
> > +#define LLVM_PRF_IPVK_FIRST            0
> > +#define LLVM_PRF_IPVK_LAST             1
> > +#define LLVM_PRF_MAX_NUM_VALS_PER_SITE 16
>
> llvm/include/llvm/ProfileData/InstrProfData.inc defines
> INSTR_PROF_MAX_NUM_VAL_PER_SITE as 255; does that need to match?
>
Sure. I also updated the names to better match LLVM's names.

> > +
> > +#define LLVM_PRF_VARIANT_MASK_IR       (0x1ull << 56)
> > +#define LLVM_PRF_VARIANT_MASK_CSIR     (0x1ull << 57)
> > +
> > +/**
> > + * struct llvm_prf_header - represents the raw profile header data structure.
> > + * @magic: the magic token for the file format.
> > + * @version: the version of the file format.
> > + * @data_size: the number of entries in the profile data section.
> > + * @padding_bytes_before_counters: the number of padding bytes before the
> > + *   counters.
> > + * @counters_size: the size in bytes of the LLVM profile section containing the
> > + *   counters.
> > + * @padding_bytes_after_counters: the number of padding bytes after the
> > + *   counters.
> > + * @names_size: the size in bytes of the LLVM profile section containing the
> > + *   counters' names.
> > + * @counters_delta: the beginning of the LLMV profile counters section.
> > + * @names_delta: the beginning of the LLMV profile names section.
> > + * @value_kind_last: the last profile value kind.
> > + */
> > +struct llvm_prf_header {
> > +       u64 magic;
> > +       u64 version;
> > +       u64 data_size;
> > +       u64 padding_bytes_before_counters;
> > +       u64 counters_size;
> > +       u64 padding_bytes_after_counters;
> > +       u64 names_size;
> > +       u64 counters_delta;
> > +       u64 names_delta;
> > +       u64 value_kind_last;
> > +};
> > +
> > +/**
> > + * struct llvm_prf_data - represents the per-function control structure.
> > + * @name_ref: the reference to the function's name.
> > + * @func_hash: the hash value of the function.
> > + * @counter_ptr: a pointer to the profile counter.
> > + * @function_ptr: a pointer to the function.
> > + * @values: the profiling values associated with this function.
> > + * @num_counters: the number of counters in the function.
> > + * @num_value_sites: the number of value profile sites.
> > + */
> > +struct llvm_prf_data {
> > +       const u64 name_ref;
> > +       const u64 func_hash;
> > +       const void *counter_ptr;
> > +       const void *function_ptr;
> > +       void *values;
> > +       const u32 num_counters;
> > +       const u16 num_value_sites[LLVM_PRF_IPVK_LAST + 1];
> > +} __aligned(LLVM_PRF_DATA_ALIGN);
> > +
> > +/**
> > + * structure llvm_prf_value_node_data - represents the data part of the struct
> > + *   llvm_prf_value_node data structure.
> > + * @value: the value counters.
> > + * @count: the counters' count.
> > + */
> > +struct llvm_prf_value_node_data {
> > +       u64 value;
> > +       u64 count;
> > +};
> > +
> > +/**
> > + * struct llvm_prf_value_node - represents an internal data structure used by
> > + *   the value profiler.
> > + * @value: the value counters.
> > + * @count: the counters' count.
> > + * @next: the next value node.
> > + */
> > +struct llvm_prf_value_node {
> > +       u64 value;
> > +       u64 count;
> > +       struct llvm_prf_value_node *next;
> > +};
> > +
> > +/**
> > + * struct llvm_prf_value_data - represents the value profiling data in indexed
> > + *   format.
> > + * @total_size: the total size in bytes including this field.
> > + * @num_value_kinds: the number of value profile kinds that has value profile
> > + *   data.
> > + */
> > +struct llvm_prf_value_data {
> > +       u32 total_size;
> > +       u32 num_value_kinds;
> > +};
> > +
> > +/**
> > + * struct llvm_prf_value_record - represents the on-disk layout of the value
> > + *   profile data of a particular kind for one function.
> > + * @kind: the kind of the value profile record.
> > + * @num_value_sites: the number of value profile sites.
> > + * @site_count_array: the first element of the array that stores the number
> > + *   of profiled values for each value site.
> > + */
> > +struct llvm_prf_value_record {
> > +       u32 kind;
> > +       u32 num_value_sites;
> > +       u8 site_count_array[];
> > +};
> > +
> > +#define prf_get_value_record_header_size()             \
> > +       offsetof(struct llvm_prf_value_record, site_count_array)
> > +#define prf_get_value_record_site_count_size(sites)    \
> > +       roundup((sites), 8)
> > +#define prf_get_value_record_size(sites)               \
> > +       (prf_get_value_record_header_size() +           \
> > +        prf_get_value_record_site_count_size((sites)))
> > +
> > +/* Data sections */
> > +extern struct llvm_prf_data __llvm_prf_data_start[];
> > +extern struct llvm_prf_data __llvm_prf_data_end[];
> > +
> > +extern u64 __llvm_prf_cnts_start[];
> > +extern u64 __llvm_prf_cnts_end[];
> > +
> > +extern char __llvm_prf_names_start[];
> > +extern char __llvm_prf_names_end[];
> > +
> > +extern struct llvm_prf_value_node __llvm_prf_vnds_start[];
> > +extern struct llvm_prf_value_node __llvm_prf_vnds_end[];
> > +
> > +/* Locking for vnodes */
> > +extern unsigned long prf_lock(void);
> > +extern void prf_unlock(unsigned long flags);
> > +
> > +#define __DEFINE_PRF_SIZE(s) \
> > +       static inline unsigned long prf_ ## s ## _size(void)            \
> > +       {                                                               \
> > +               unsigned long start =                                   \
> > +                       (unsigned long)__llvm_prf_ ## s ## _start;      \
> > +               unsigned long end =                                     \
> > +                       (unsigned long)__llvm_prf_ ## s ## _end;        \
> > +               return roundup(end - start,                             \
> > +                               sizeof(__llvm_prf_ ## s ## _start[0])); \
> > +       }                                                               \
> > +       static inline unsigned long prf_ ## s ## _count(void)           \
> > +       {                                                               \
> > +               return prf_ ## s ## _size() /                           \
> > +                       sizeof(__llvm_prf_ ## s ## _start[0]);          \
> > +       }
> > +
> > +__DEFINE_PRF_SIZE(data);
> > +__DEFINE_PRF_SIZE(cnts);
> > +__DEFINE_PRF_SIZE(names);
> > +__DEFINE_PRF_SIZE(vnds);
> > +
> > +#undef __DEFINE_PRF_SIZE
> > +
> > +#endif /* _PGO_H */
> > diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> > index 213677a5ed33e..9b218afb5cb87 100644
> > --- a/scripts/Makefile.lib
> > +++ b/scripts/Makefile.lib
> > @@ -143,6 +143,16 @@ _c_flags += $(if $(patsubst n%,, \
> >                 $(CFLAGS_GCOV))
> >  endif
> >
> > +#
> > +# Enable clang's PGO profiling flags for a file or directory depending on
> > +# variables PGO_PROFILE_obj.o and PGO_PROFILE.
> > +#
> > +ifeq ($(CONFIG_PGO_CLANG),y)
> > +_c_flags += $(if $(patsubst n%,, \
> > +               $(PGO_PROFILE_$(basetarget).o)$(PGO_PROFILE)y), \
> > +               $(CFLAGS_PGO_CLANG))
> > +endif
> > +
> >  #
> >  # Enable address sanitizer flags for kernel except some files or directories
> >  # we don't want to check (depends on variables KASAN_SANITIZE_obj.o, KASAN_SANITIZE)
> > --
> > 2.30.0.284.gd98b1dd5eaa7-goog
> >

Sending patch v6. PTAL.

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QVV0EDL0h0CTVT9bcfZdJ2OeUO8F6%3DEBOhxcWLHc%2Bummg%40mail.gmail.com.
