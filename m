Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBIV4SCAAMGQEVT2YQOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A4C2F91F0
	for <lists+clang-built-linux@lfdr.de>; Sun, 17 Jan 2021 12:23:15 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id u17sf13869760qku.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 17 Jan 2021 03:23:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610882594; cv=pass;
        d=google.com; s=arc-20160816;
        b=p8WJzOwtGTgOgu8iPzB8TqOzHH9GNVbFyMYFZaVnKMLMgY+on4kvVkviwm6fVD2+8I
         R12McrPyMaaNg7FoXz6ytjcsKqu7vZF6JYTdIhJhvT6igTaMYxo3gjBcqBDLcSuk2DZ8
         rB9YzwdJG5iPKJb03sYAsxuHgA18HMWwPw4Xl5TSjQHck5+uPkZKSmLl9wDJ9MDwjP7A
         nwdwCXXxCPQ7OW7B220CLsYh0DJFdCRlLDq6wn0G/lmmKvL25wYILTU8lvyHzVflSzw0
         a5gAhTH9yqHteLJaYjas1ffDTbB9y9YwIOcdi1qC72EFYhaZdjKpsTbytaGXnjvswo/8
         ouvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=msTdZ1Q2R/w8WkX0shD05LlHz/9CsTpqyeZVAcR/Gxg=;
        b=LAQ3a7KkQ+Y+aUMZDJCtKyut/R8Rx87Qd7Iy8xr4NvUi779TMiMD7eRUHk2GoGjRjN
         ct3diNJ/giWwpDAU2VyGLqIQPS97Lwp2a0YkZx2M/NbAW+/A0wKCLhHaPzzJIg2LeSrh
         OpK0dvB67257hXh0NkWD5n+9MjZj8iEzK+1wMMd3iJmeSIeZHep/jKDC5x44YyiqfpJ9
         eURpJq2oPhAYUWmsFB/8w118nJY+o2Dn8ncPCvCmwzgKkEiul1PKCSWagdCcH7pxKOTO
         Zvrbf9arzCqUNWwdUTA5KOLqmcWXhAifasqFZTPaG360T3G6y++97t3tBNC/yOKLTnRz
         1yUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s81+IsKp;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=msTdZ1Q2R/w8WkX0shD05LlHz/9CsTpqyeZVAcR/Gxg=;
        b=NaHgJDEGI/csudIB2ZYtiPz/NuyaIkLdQLrx5DW8EwxMzl4WYvHo6Jdm4hQX+Ozyxb
         +UMi87QheRVKze2bw8pm7P0DjeLdiMhmcbK1ycDeWXJ/o0VtVxqDPddEypqrpxVnKzCU
         fr9fs9RhHnsEo5gsWG+oesIQImL9bMXpZfuEJFKDp2GOeDz8Z30JpdRWQJqAtyQmwQeq
         T32fzUdqAq0M2Nl21BRR89uy1hpNP312fPU/y3YTy2ekRwsjioJVtZdSawhbgSxOV5tN
         Nz9BOUhGCMgy3aWnttP5pIY/fDOtUWoNlGlExt5U1gTDw49mmhERYBawnw+pY2M2uNkK
         fifw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=msTdZ1Q2R/w8WkX0shD05LlHz/9CsTpqyeZVAcR/Gxg=;
        b=IYqUO3L79IOkQPyVTjnz1P00l87ncoD0l7zU3r4kI8y3Q/XvB34NbLOLL7X2myW6s6
         seRQCuC8+IUQmqCDokxKL2vM1L8slB7xWaYZ0nhwWN+6RX2vxG5JWpMPwSnFN+nGSSau
         OvLr/DFL24HzHJ7ws+g1tRh89PJGq33z+x8gmTu+fZoJ5aYKgodkC/vUmj97YtTuY0Jm
         OZTHfNMjZRIFG0QEavf/ShKDxXrCyoE5YUwAS7Btt1SAK8NbBe6cZiDkhHSv8JBcjfBh
         6D9a1UVvwEAwuKw0KlCsSRkSVJmMNpvCWieWL5nU94DnB/ChGJYjFNGV2fG6yeTkxemu
         epnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=msTdZ1Q2R/w8WkX0shD05LlHz/9CsTpqyeZVAcR/Gxg=;
        b=ZJQi7lekLsuCxvY+MnCjB5o3Wk0EpzEs9jDLj40hbnMWcJhCG2FtUfLys/pk4dGiLD
         oPAvhOU4cEF1TlDdAQpaH9Tt8KjuJhyrn6jQaXNszmXDyF/T5VfznPdRvs0Hc6bbSVK2
         Ef5aUuM6CtYw+qZF/AQ5AcxOH7iwi299vjMgPUQvUMp0PheL7JP5Y4ggBtLSgll4GC2e
         lOYkALM2p4NobTSousLFSyoNYyZ84PPdwVKCQ3wys4+J8o1U3ZlinwqW8JFtejEZ9L+G
         hxl5IAiNxRVIldv1oZpiARsfZTRfHUVqpvpw4F52LZE5uz4aq3pDPgCwZjofaqh+I+gb
         xJeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532A8KV3VqERGOHZls+oue4SU68lXo0qK0lCBdkGW0LOJRhrjP9L
	+KqOPO4y/ingKJPtfGiQ5YU=
X-Google-Smtp-Source: ABdhPJxJyf3R/OwZ7aHC8iRPWnpWepOxdRN1mMJNip+kvH+X3wQFCE4/MIdLJneoB6L+vWo1k1+OdA==
X-Received: by 2002:a05:622a:1cb:: with SMTP id t11mr18266126qtw.282.1610882594209;
        Sun, 17 Jan 2021 03:23:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3bd4:: with SMTP id s20ls608942qte.1.gmail; Sun, 17 Jan
 2021 03:23:13 -0800 (PST)
X-Received: by 2002:aed:2e47:: with SMTP id j65mr18923156qtd.231.1610882593790;
        Sun, 17 Jan 2021 03:23:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610882593; cv=none;
        d=google.com; s=arc-20160816;
        b=G4Yhl3d2gZ5ojp0hMope7p4W43lGKz49+2Bj2bfzqzxK9l9kVIOLmi6u5XeGCT+ruG
         CDd7igY/oofD0yNM3zQA5l1xWJJIMEoRUsXVFAnRmfcAjVPjtAWT3Kaf0viPl5PGdRwr
         yPcUvB1YzXkFSS6Mciwvipub+Fmwt7Ihciok+Gj2Z5R1t3CT3aY8QZNc2cLK1TINCe3B
         SizkAkQU2wQ7eOLwFLKEaYlx6wLx8R6KqjbkREV2DUDkbt+t6bHZhwL2SwyUhzJqj+Q7
         iB2+MSr8gMojgz+ReywKGYlQgxFLFHtRlI4VSi5bIjrbui8LMVlHVIN1sVc+PVYlCqwv
         qlWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=S4qZrHTJoqWGrgOknR46j8Zf3z3PeeF7Z1XzFI9zWws=;
        b=D94M0jdV9Bj5TSfrqT4LzB6uUtITPUqlY9Dr00dOd6wzelwuiBEwL2UveB4WD3J5rh
         notJo4ysY+qhKfQu0wtzhALgisFt7WnSt6luyzCFtyjXpqKVNeLKK7y78/Y6AudfCkv9
         Iw8wtyeBjbbRimbY8UG5ZKJ3EKA/VfXorC6LI/k75MwpOWZGH31M2CGP2gCL3ZBlMen6
         ZvC8DS0c6d7qGrihJj/QKSzKYKos2egovkyaMPBrSSI/azR+3DYMyrWcUAxaniXa4nNg
         bVCn3rbwJ8PczlUNuCHWRnRffM6lV+mmxKJtxgjn2eJOgOhsjVqwuQ9xlnXoIk3+riA+
         9F1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s81+IsKp;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com. [2607:f8b0:4864:20::d2b])
        by gmr-mx.google.com with ESMTPS id n18si966252qkk.7.2021.01.17.03.23.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Jan 2021 03:23:13 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) client-ip=2607:f8b0:4864:20::d2b;
Received: by mail-io1-xd2b.google.com with SMTP id y19so27342202iov.2
        for <clang-built-linux@googlegroups.com>; Sun, 17 Jan 2021 03:23:13 -0800 (PST)
X-Received: by 2002:a5e:9b06:: with SMTP id j6mr13834927iok.171.1610882593176;
 Sun, 17 Jan 2021 03:23:13 -0800 (PST)
MIME-Version: 1.0
References: <20210113061958.886723-1-morbo@google.com> <20210116094357.3620352-1-morbo@google.com>
 <CA+icZUUgTuD6fO_AZFs9KoRFS8FUmyhezvYeeoRX2dveG_ifDA@mail.gmail.com>
 <CAGG=3QXZTR_f9pKzAR=LrALmMzdDqsvWM_zrTXOb2PpiDGB-+A@mail.gmail.com>
 <CA+icZUWf05ek+DFsJNyBc-4cg0s6cVrn=rNJDyL4RJ6=fMO5NA@mail.gmail.com> <CA+icZUVD1AHaXYu4Ne8JhzmtMR5DReL4C=ZxKfA0hjLtbC79qQ@mail.gmail.com>
In-Reply-To: <CA+icZUVD1AHaXYu4Ne8JhzmtMR5DReL4C=ZxKfA0hjLtbC79qQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sun, 17 Jan 2021 12:23:00 +0100
Message-ID: <CA+icZUUTJbwmTYCDJhyRtif3BdsB_yzQ3bSdLR62EmttJf3Row@mail.gmail.com>
Subject: Re: [PATCH v5] pgo: add clang's Profile Guided Optimization infrastructure
To: Bill Wendling <morbo@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=s81+IsKp;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b
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

On Sun, Jan 17, 2021 at 11:53 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Sun, Jan 17, 2021 at 11:44 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Sat, Jan 16, 2021 at 9:23 PM Bill Wendling <morbo@google.com> wrote:
> > >
> > > On Sat, Jan 16, 2021 at 9:39 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > On Sat, Jan 16, 2021 at 10:44 AM 'Bill Wendling' via Clang Built Linux
> > > > <clang-built-linux@googlegroups.com> wrote:
> > > > >
> > > > > From: Sami Tolvanen <samitolvanen@google.com>
> > > > >
> > > > > Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> > > > > profile, the kernel is instrumented with PGO counters, a representative
> > > > > workload is run, and the raw profile data is collected from
> > > > > /sys/kernel/debug/pgo/profraw.
> > > > >
> > > > > The raw profile data must be processed by clang's "llvm-profdata" tool
> > > > > before it can be used during recompilation:
> > > > >
> > > > >   $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
> > > > >   $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> > > > >
> > > > > Multiple raw profiles may be merged during this step.
> > > > >
> > > > > The data can now be used by the compiler:
> > > > >
> > > > >   $ make LLVM=1 KCFLAGS=-fprofile-use=vmlinux.profdata ...
> > > > >
> > > > > This initial submission is restricted to x86, as that's the platform we
> > > > > know works. This restriction can be lifted once other platforms have
> > > > > been verified to work with PGO.
> > > > >
> > > > > Note that this method of profiling the kernel is clang-native, unlike
> > > > > the clang support in kernel/gcov.
> > > > >
> > > > > [1] https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimization
> > > > >
> > > > > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > > > > Co-developed-by: Bill Wendling <morbo@google.com>
> > > > > Signed-off-by: Bill Wendling <morbo@google.com>
> > > > > ---
> > > > > v2: - Added "__llvm_profile_instrument_memop" based on Nathan Chancellor's
> > > > >       testing.
> > > > >     - Corrected documentation, re PGO flags when using LTO, based on Fangrui
> > > > >       Song's comments.
> > > > > v3: - Added change log section based on Sedat Dilek's comments.
> > > > > v4: - Remove non-x86 Makfile changes and se "hweight64" instead of using our
> > > > >       own popcount implementation, based on Nick Desaulniers's comment.
> > > > > v5: - Correct padding calculation, discovered by Nathan Chancellor.
> > > > > ---
> > > > >  Documentation/dev-tools/index.rst     |   1 +
> > > > >  Documentation/dev-tools/pgo.rst       | 127 +++++++++
> > > > >  MAINTAINERS                           |   9 +
> > > > >  Makefile                              |   3 +
> > > > >  arch/Kconfig                          |   1 +
> > > > >  arch/x86/Kconfig                      |   1 +
> > > > >  arch/x86/boot/Makefile                |   1 +
> > > > >  arch/x86/boot/compressed/Makefile     |   1 +
> > > > >  arch/x86/crypto/Makefile              |   2 +
> > > > >  arch/x86/entry/vdso/Makefile          |   1 +
> > > > >  arch/x86/kernel/vmlinux.lds.S         |   2 +
> > > > >  arch/x86/platform/efi/Makefile        |   1 +
> > > > >  arch/x86/purgatory/Makefile           |   1 +
> > > > >  arch/x86/realmode/rm/Makefile         |   1 +
> > > > >  arch/x86/um/vdso/Makefile             |   1 +
> > > > >  drivers/firmware/efi/libstub/Makefile |   1 +
> > > > >  include/asm-generic/vmlinux.lds.h     |  44 +++
> > > > >  kernel/Makefile                       |   1 +
> > > > >  kernel/pgo/Kconfig                    |  35 +++
> > > > >  kernel/pgo/Makefile                   |   5 +
> > > > >  kernel/pgo/fs.c                       | 382 ++++++++++++++++++++++++++
> > > > >  kernel/pgo/instrument.c               | 185 +++++++++++++
> > > > >  kernel/pgo/pgo.h                      | 206 ++++++++++++++
> > > > >  scripts/Makefile.lib                  |  10 +
> > > > >  24 files changed, 1022 insertions(+)
> > > > >  create mode 100644 Documentation/dev-tools/pgo.rst
> > > > >  create mode 100644 kernel/pgo/Kconfig
> > > > >  create mode 100644 kernel/pgo/Makefile
> > > > >  create mode 100644 kernel/pgo/fs.c
> > > > >  create mode 100644 kernel/pgo/instrument.c
> > > > >  create mode 100644 kernel/pgo/pgo.h
> > > > >
> > > > > diff --git a/Documentation/dev-tools/index.rst b/Documentation/dev-tools/index.rst
> > > > > index f7809c7b1ba9e..8d6418e858062 100644
> > > > > --- a/Documentation/dev-tools/index.rst
> > > > > +++ b/Documentation/dev-tools/index.rst
> > > > > @@ -26,6 +26,7 @@ whole; patches welcome!
> > > > >     kgdb
> > > > >     kselftest
> > > > >     kunit/index
> > > > > +   pgo
> > > > >
> > > > >
> > > > >  .. only::  subproject and html
> > > > > diff --git a/Documentation/dev-tools/pgo.rst b/Documentation/dev-tools/pgo.rst
> > > > > new file mode 100644
> > > > > index 0000000000000..b7f11d8405b73
> > > > > --- /dev/null
> > > > > +++ b/Documentation/dev-tools/pgo.rst
> > > > > @@ -0,0 +1,127 @@
> > > > > +.. SPDX-License-Identifier: GPL-2.0
> > > > > +
> > > > > +===============================
> > > > > +Using PGO with the Linux kernel
> > > > > +===============================
> > > > > +
> > > > > +Clang's profiling kernel support (PGO_) enables profiling of the Linux kernel
> > > > > +when building with Clang. The profiling data is exported via the ``pgo``
> > > > > +debugfs directory.
> > > > > +
> > > > > +.. _PGO: https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimization
> > > > > +
> > > > > +
> > > > > +Preparation
> > > > > +===========
> > > > > +
> > > > > +Configure the kernel with:
> > > > > +
> > > > > +.. code-block:: make
> > > > > +
> > > > > +   CONFIG_DEBUG_FS=y
> > > > > +   CONFIG_PGO_CLANG=y
> > > > > +
> > > > > +Note that kernels compiled with profiling flags will be significantly larger
> > > > > +and run slower.
> > > > > +
> > > > > +Profiling data will only become accessible once debugfs has been mounted:
> > > > > +
> > > > > +.. code-block:: sh
> > > > > +
> > > > > +   mount -t debugfs none /sys/kernel/debug
> > > > > +
> > > > > +
> > > > > +Customization
> > > > > +=============
> > > > > +
> > > > > +You can enable or disable profiling for individual file and directories by
> > > > > +adding a line similar to the following to the respective kernel Makefile:
> > > > > +
> > > > > +- For a single file (e.g. main.o)
> > > > > +
> > > > > +  .. code-block:: make
> > > > > +
> > > > > +     PGO_PROFILE_main.o := y
> > > > > +
> > > > > +- For all files in one directory
> > > > > +
> > > > > +  .. code-block:: make
> > > > > +
> > > > > +     PGO_PROFILE := y
> > > > > +
> > > > > +To exclude files from being profiled use
> > > > > +
> > > > > +  .. code-block:: make
> > > > > +
> > > > > +     PGO_PROFILE_main.o := n
> > > > > +
> > > > > +and
> > > > > +
> > > > > +  .. code-block:: make
> > > > > +
> > > > > +     PGO_PROFILE := n
> > > > > +
> > > > > +Only files which are linked to the main kernel image or are compiled as kernel
> > > > > +modules are supported by this mechanism.
> > > > > +
> > > > > +
> > > > > +Files
> > > > > +=====
> > > > > +
> > > > > +The PGO kernel support creates the following files in debugfs:
> > > > > +
> > > > > +``/sys/kernel/debug/pgo``
> > > > > +       Parent directory for all PGO-related files.
> > > > > +
> > > > > +``/sys/kernel/debug/pgo/reset``
> > > > > +       Global reset file: resets all coverage data to zero when written to.
> > > > > +
> > > > > +``/sys/kernel/debug/profraw``
> > > > > +       The raw PGO data that must be processed with ``llvm_profdata``.
> > > > > +
> > > > > +
> > > > > +Workflow
> > > > > +========
> > > > > +
> > > > > +The PGO kernel can be run on the host or test machines. The data though should
> > > > > +be analyzed with Clang's tools from the same Clang version as the kernel was
> > > > > +compiled. Clang's tolerant of version skew, but it's easier to use the same
> > > > > +Clang version.
> > > > > +
> > > > > +The profiling data is useful for optimizing the kernel, analyzing coverage,
> > > > > +etc. Clang offers tools to perform these tasks.
> > > > > +
> > > > > +Here is an example workflow for profiling an instrumented kernel with PGO and
> > > > > +using the result to optimize the kernel:
> > > > > +
> > > > > +1) Install the kernel on the TEST machine.
> > > > > +
> > > > > +2) Reset the data counters right before running the load tests
> > > > > +
> > > > > +   .. code-block:: sh
> > > > > +
> > > > > +      $ echo 1 > /sys/kernel/debug/pgo/reset
> > > > > +
> > > >
> > > > I do not get this...
> > > >
> > > > # mount | grep debugfs
> > > > debugfs on /sys/kernel/debug type debugfs (rw,nosuid,nodev,noexec,relatime)
> > > >
> > > > After the load-test...?
> > > >
> > > > echo 0 > /sys/kernel/debug/pgo/reset
> > > >
> > > Writing anything to /sys/kernel/debug/pgo/reset will cause it to reset
> > > the profiling counters. I picked 1 (one) semi-randomly, but it could
> > > be any number, letter, your favorite short story, etc. You don't want
> > > to reset it before collecting the profiling data from your load tests
> > > though.
> > >
> > > > > +3) Run the load tests.
> > > > > +
> > > > > +4) Collect the raw profile data
> > > > > +
> > > > > +   .. code-block:: sh
> > > > > +
> > > > > +      $ cp -a /sys/kernel/debug/pgo/profraw /tmp/vmlinux.profraw
> > > > > +
> > > >
> > > > This is only 4,9M small and seen from the date 5mins before I run the
> > > > echo-1 line.
> > > >
> > > > # ll /sys/kernel/debug/pgo
> > > > insgesamt 0
> > > > drwxr-xr-x  2 root root 0 16. Jan 17:29 .
> > > > drwx------ 41 root root 0 16. Jan 17:29 ..
> > > > -rw-------  1 root root 0 16. Jan 17:29 profraw
> > > > --w-------  1 root root 0 16. Jan 18:19 reset
> > > >
> > > > # cp -a /sys/kernel/debug/pgo/profraw /tmp/vmlinux.profraw
> > > >
> > > > # ll /tmp/vmlinux.profraw
> > > > -rw------- 1 root root 4,9M 16. Jan 17:29 /tmp/vmlinux.profraw
> > > >
> > > > For me there was no prof-data collected from my defconfig kernel-build.
> > > >
> > > The /sys/kernel/debug/pgo/profraw file is read-only. Nothing writes to
> > > it, not even the kernel. All it does is serialize the profiling
> > > counters from a memory location in the kernel into a format that
> > > LLVM's tools can understand.
> > >
> > > > > +5) (Optional) Download the raw profile data to the HOST machine.
> > > > > +
> > > > > +6) Process the raw profile data
> > > > > +
> > > > > +   .. code-block:: sh
> > > > > +
> > > > > +      $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> > > > > +
> > > >
> > > > Is that executed in /path/to/linux/git?
> > > >
> > > The llvm-profdata tool is not in the linux source tree. You need to
> > > grab it from a clang distribution (or built from clang's git repo).
> > >
> > > > > +   Note that multiple raw profile data files can be merged during this step.
> > > > > +
> > > > > +7) Rebuild the kernel using the profile data (PGO disabled)
> > > > > +
> > > > > +   .. code-block:: sh
> > > > > +
> > > > > +      $ make LLVM=1 KCFLAGS=-fprofile-use=vmlinux.profdata ...
> > > >
> > > > How big is vmlinux.profdata (make defconfig)?
> > > >
> > > I don't have numbers for this, but from what you listed here, it's ~5M
> > > in size. The size is proportional to the number of counters
> > > instrumented in the kernel.
> > >
> > > > Do I need to do a full defconfig build or can I stop the build after
> > > > let me say 10mins?
> > > >
> > > You should do a full rebuild. Make sure that PGO is disabled during the rebuild.
> > >
> >
> > Thanks Bill for all the information.
> >
> > And sorry if I am so pedantic.
> >
> > I have installed my Debian system with Legacy-BIOS enabled.
> >
> > When I rebuild with KCFLAGS=-fprofile-use=vmlinux.profdata (LLVM=1 I
> > have as a default) my system hangs on reboot.
> >
> > [ diffconfig ]
> > $ scripts/diffconfig /boot/config-5.11.0-rc3-8-amd64-clang12-pgo
> > /boot/config-5.11.0-rc3-9-amd64-clang12-pgo
> > BUILD_SALT "5.11.0-rc3-8-amd64-clang12-pgo" -> "5.11.0-rc3-9-amd64-clang12-pgo"
> > PGO_CLANG y -> n
> >
> > [ my make line ]
> > $ cat ../start-build_5.11.0-rc3-9-amd64-clang12-pgo.txt
> > dileks     63120   63095  0 06:47 pts/2    00:00:00 /usr/bin/perf_5.10
> > stat make V=1 -j4 HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang
> > LD=ld.lld LLVM=1 LLVM_IAS=1 PAHOLE=/opt/pahole/bin/pahole
> > LOCALVERSION=-9-amd64-clang12-pgo KBUILD_VERBOSE=1
> > KBUILD_BUILD_HOST=iniza KBUILD_BUILD_USER=sedat.dilek@gmail.com
> > KBUILD_BUILD_TIMESTAMP=2021-01-17 bindeb-pkg
> > KDEB_PKGVERSION=5.11.0~rc3-9~bullseye+dileks1
> > KCFLAGS=-fprofile-use=vmlinux.profdata
> >
> > ( Yes, 06:47 a.m. in the morning :-). )
> >
> > When I boot with the rebuild Linux-kernel I see:
> >
> > Wrong EFI loader signature
> > ...
> > Decompressing
> > Parsing EFI
> > Performing Relocations done.
> > Booting the Kernel.
> >
> > *** SYSTEM HANGS ***
> > ( I waited for approx 1 min )
> >
> > I tried to turn UEFI support ON and OFF.
> > No success.
> >
> > Does Clang-PGO support Legacy-BIOS or is something different wrong?
> >
> > Thanks.
> >
>
> My bootloader is GRUB.
>
> In UEFI-BIOS settings there is no secure-boot disable option.
> Just simple "Use UEFI BIOS" enabled|disabled.
>
> Installed Debian packages:
>
> ii grub-common 2.04-12
> ii grub-pc 2.04-12
> ii grub-pc-bin 2.04-12
> ii grub2-common 2.04-12
>
> I found in the below link to do in grub-shell:
>
> set check_signatures=no
>
> But this is when grub-efi is installed.
>
> - Sedat -
>
> Link: https://unix.stackexchange.com/questions/126286/grub-efi-disable-signature-check

Forget about that "Wrong EFI bootloader" - I see this with all other
kernels (all boot fine).

I tried in QEMU with and without KASLR:

[ run_qemu.sh ]
KPATH=$(pwd)

APPEND="root=/dev/ram0 console=ttyS0 hung_task_panic=1 earlyprintk=ttyS0,115200"
APPEND="$APPEND nokaslr"

qemu-system-x86_64 -enable-kvm -M pc -kernel $KPATH/bzImage -initrd
$KPATH/initrd.img -m 512 -net none -serial stdio -append "${APPEND}"
[ /run_qemu.sh ]

$ ./run_qemu.sh
Probing EDD (edd=off to disable)... ok
Wrong EFI loader signature.
early console in extract_kernel
input_data: 0x000000000289940d
input_len: 0x000000000069804a
output: 0x0000000001000000
output_len: 0x0000000001ef2010
kernel_total_size: 0x0000000001c2c000
needed_size: 0x0000000002000000
trampoline_32bit: 0x000000000009d000


KASLR disabled: 'nokaslr' on cmdline.


Decompressing Linux... Parsing ELF... No relocation needed... done.
Booting the kernel.

QEMU run stops, too.

- Sedat

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUTJbwmTYCDJhyRtif3BdsB_yzQ3bSdLR62EmttJf3Row%40mail.gmail.com.
