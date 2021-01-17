Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBRVOSCAAMGQEXKWRVAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E84B2F91C8
	for <lists+clang-built-linux@lfdr.de>; Sun, 17 Jan 2021 11:54:00 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id 25sf9954792pjb.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 17 Jan 2021 02:54:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610880838; cv=pass;
        d=google.com; s=arc-20160816;
        b=v7KsJUMCJDE2S/lsiUyI9hpS8XzM0+uke+laCbsElfbe7gFAQyN+VBwWZAecQdh3F2
         90AYPMA7S+aQ+xlbHnkPOZMX+fN9GCNKncOskizFTr/tA5ABbcOMKswEKnDcngTHD2Fs
         MpdfQggDTfwN67YMpAcq4xSKzVM61v4USg2k7nLYR02m4M09ZlJoDC/Gq6QiKT4KVyHW
         hZstZjHZyl2TiNFek72oCw+31/ABhtLxGmtH+lth2EqZkE5KzvC+1XRkGnDk7ZRgTQnQ
         RvITIQgGZyCeIeZGYmzy/yrAX0HEUYJsz7xiEZvhg+M/bdkca6PnYvmNfgXpSjdf00IZ
         y/fA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=+pW+YbLD2eHbboKTF3mbnBgN9SGRZ11tM7Lo7MVxUho=;
        b=sJjb7ueTghFJZmg1RdxuTmAr8o2Jv3hdMCLM75CKrJ7vc6beNLO58cbBlK4Cz3akdc
         8JKljJhtoZNds5LXGHebJSJc3FqmZqpB8ac67/a3dKtvjYkuQIOs7Lj+mp0Jjv2ygLJG
         lah/JQq1KEHoh5XetMoEEyURLbGs7CSjKgmi2F67jGEdZ/wvom89XDHvm4zD3xc3QJ0k
         l31a+j5nzCjAZOD22PKHukGAe+6jZDsL9JGhwNoBmvWhzthKSZV9V574n8sp1UZPLEqj
         G3LkrozHnGbwg7HNAEGKCPSqH854lWHIv3gVlTaOzlmFvvLNig98+RBjXk9vDue0UWcy
         2D9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YO9YS7fR;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+pW+YbLD2eHbboKTF3mbnBgN9SGRZ11tM7Lo7MVxUho=;
        b=pu+ecyn2mN+cPaQ9GDjsenvdg+vN9BHpDRBUi5HIK4nnWgx1iY6Tme9ctUf1wfExds
         biPIDEy7QMitJxIl05xapVJDjBE3a9ZHizTxlqqO6wDJp9LRuCXHbWs4oESqYd7SGSQq
         gm3FHG+6+lU7vsGH354/IyiJ4PNoruVxt7CK1i45RBRX77aNRkgdIeWt19yXmqclZwXN
         fM1e2VNHU5OmDqRUDj7w31VvLPz+/1p4JfEH60gdVLash7+3dZ4hBhyX2Lv8zvUClj5A
         QtrbsQRIJ3lLCHvBXTnRoQw4i9nfUvO4LY/RW+9ud/YEnFVvRSIyRSpLYySVj5tsqRwr
         fgMw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+pW+YbLD2eHbboKTF3mbnBgN9SGRZ11tM7Lo7MVxUho=;
        b=qI2kN7d4b1ivR8j62Y/OUmk2T8NIUb4mRrcSnZfkO60wxc6LjVbjnhGlRM+29oikDA
         jwFPikeMy7se/roJpukJrQF4KW/vZVJjxR59sgpLr/IjQjqWnWHUuN706rXZ/Hd7ykjl
         yfauCaGZjsq9V2s+YYWx+Al56Gw+sX2xK0yWTy1PkaSO2LzTEE0ML4+a/CUPU21oaUkf
         w0aas4gxW+nsVh3i9FhaKWf2JZhRuK403YYnchueIWH7ccDqpL29+MQ6SniFAR3weTjB
         K+QgSozdMMMlJ8tkMxZiJe8qiY6kYZ46wErh7mm1xdbmdBG4jtsFB5+4Xvmp/zGi5+fR
         mrEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+pW+YbLD2eHbboKTF3mbnBgN9SGRZ11tM7Lo7MVxUho=;
        b=EFkJCNrxdUBYclRXZhnWUU830bEC7nYc/iYVgLG4WOJ3H0u93PY0eZjR7R4nTyfVep
         ++eNMPJEzs2JH3JrnNOmIO/XdMdb1PXN3pDL4DNslmTtW1HWUyHQNbi2EKBkkVJfnFRm
         G/iGBazWWA728oFT/Y0l9b+5aDRMi3Tom8koZlz8a7MsME8ya/ztwqreJSYrJnHlIwH7
         w6/8OZGX//IvEwT9NU3Mc+g7/P1l+OXGptdXRcB0eD0L1i59mpqDM1EcJebebmwOamTn
         mSzbQOxyRZKd584yhzsq7IRVsd19HFZxixEJYnkr4okiLXXAmajtzQ0zgNwDO3EJyfIC
         NJWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ve5OTnj2FIv+B6lCGheAC2EVIpEInlQukF9lUYpQ+qLFw32Mb
	jd+03LRKK+56shaTb+CKNS8=
X-Google-Smtp-Source: ABdhPJyj9AuvDBCpJ3bLNl9IlJbo5CfbVlPkYRc6MCoqpj5aPiYVqx5oP07hMfkmP6mXmz5V7YmBtA==
X-Received: by 2002:a17:90a:2ec1:: with SMTP id h1mr20766325pjs.18.1610880838630;
        Sun, 17 Jan 2021 02:53:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7583:: with SMTP id j3ls6536204pll.0.gmail; Sun, 17
 Jan 2021 02:53:58 -0800 (PST)
X-Received: by 2002:a17:90b:1495:: with SMTP id js21mr4792977pjb.167.1610880837997;
        Sun, 17 Jan 2021 02:53:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610880837; cv=none;
        d=google.com; s=arc-20160816;
        b=k7V10YQR9qwhl4CsoAKtrEzbW+juQ7gcHvOwj+v3fBTMLBXtIqhY/yg2yPWr2sQ/al
         No6JFpCGuSndXnfasfa9EZ9FvQPwaWLLxhFOSAu9vkblF+jHhF7mKVczBQyMWflLoEC+
         9HvY4xcdfBpe0iDRkYlvB0HVpDjcmHTuJlybWsQtqOWdPQ9qEQ+etPFY8dzCPZZHdVfd
         4K245OhCbdoefOsvJ1YBPWy9Ta23oyU/Rn3abR0mgUuXI/Eiui1UlNbpWHDNgOMmE5jB
         MMfQsLhtO3SVLhwfy54EnS0wekP68MvZQGp8BJT8nOed00NumPlns+vSdIQjmNGOehDh
         8NTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PA+G0U9vot5i+tkUVo5GTDXewdny56kVm/268T+A2fE=;
        b=wEWTLOzPttGdFFywPcbhK0iV+6SY43dXMWDIFvPOU8ltTc8aJkKeA1rk0ugR+dRnAx
         OMo650a7+adNGWsMYCWbLNQfKnShRrhdWIGjLcYi8uI8TJd53ELIYyRxlcrXLjmrP6rD
         J21ZzbiykXwn0vOChN/t1zsesdcQ59NM0WlpLz5NxMTuBMXcvUFDiDPdq6i1GdkmipGs
         I9QIpv1lp38tWsR9UYAdItO70U+TT7d/hJ4Geqliu/vZdTtbnIftXEmF+oVO+WJQBkUu
         H1dspDHl8zxm3AFGcX8XvzRHBey2YDiiftWDy3Wk2PCM4fB7a1gHgMqFDXw+5SKUkfkt
         uajg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YO9YS7fR;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com. [2607:f8b0:4864:20::d34])
        by gmr-mx.google.com with ESMTPS id g11si2549pjp.3.2021.01.17.02.53.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Jan 2021 02:53:57 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) client-ip=2607:f8b0:4864:20::d34;
Received: by mail-io1-xd34.google.com with SMTP id n2so10099519iom.7
        for <clang-built-linux@googlegroups.com>; Sun, 17 Jan 2021 02:53:57 -0800 (PST)
X-Received: by 2002:a05:6e02:eb0:: with SMTP id u16mr17087763ilj.209.1610880837434;
 Sun, 17 Jan 2021 02:53:57 -0800 (PST)
MIME-Version: 1.0
References: <20210113061958.886723-1-morbo@google.com> <20210116094357.3620352-1-morbo@google.com>
 <CA+icZUUgTuD6fO_AZFs9KoRFS8FUmyhezvYeeoRX2dveG_ifDA@mail.gmail.com>
 <CAGG=3QXZTR_f9pKzAR=LrALmMzdDqsvWM_zrTXOb2PpiDGB-+A@mail.gmail.com> <CA+icZUWf05ek+DFsJNyBc-4cg0s6cVrn=rNJDyL4RJ6=fMO5NA@mail.gmail.com>
In-Reply-To: <CA+icZUWf05ek+DFsJNyBc-4cg0s6cVrn=rNJDyL4RJ6=fMO5NA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sun, 17 Jan 2021 11:53:45 +0100
Message-ID: <CA+icZUVD1AHaXYu4Ne8JhzmtMR5DReL4C=ZxKfA0hjLtbC79qQ@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=YO9YS7fR;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34
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

On Sun, Jan 17, 2021 at 11:44 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Sat, Jan 16, 2021 at 9:23 PM Bill Wendling <morbo@google.com> wrote:
> >
> > On Sat, Jan 16, 2021 at 9:39 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > On Sat, Jan 16, 2021 at 10:44 AM 'Bill Wendling' via Clang Built Linux
> > > <clang-built-linux@googlegroups.com> wrote:
> > > >
> > > > From: Sami Tolvanen <samitolvanen@google.com>
> > > >
> > > > Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> > > > profile, the kernel is instrumented with PGO counters, a representative
> > > > workload is run, and the raw profile data is collected from
> > > > /sys/kernel/debug/pgo/profraw.
> > > >
> > > > The raw profile data must be processed by clang's "llvm-profdata" tool
> > > > before it can be used during recompilation:
> > > >
> > > >   $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
> > > >   $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> > > >
> > > > Multiple raw profiles may be merged during this step.
> > > >
> > > > The data can now be used by the compiler:
> > > >
> > > >   $ make LLVM=1 KCFLAGS=-fprofile-use=vmlinux.profdata ...
> > > >
> > > > This initial submission is restricted to x86, as that's the platform we
> > > > know works. This restriction can be lifted once other platforms have
> > > > been verified to work with PGO.
> > > >
> > > > Note that this method of profiling the kernel is clang-native, unlike
> > > > the clang support in kernel/gcov.
> > > >
> > > > [1] https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimization
> > > >
> > > > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > > > Co-developed-by: Bill Wendling <morbo@google.com>
> > > > Signed-off-by: Bill Wendling <morbo@google.com>
> > > > ---
> > > > v2: - Added "__llvm_profile_instrument_memop" based on Nathan Chancellor's
> > > >       testing.
> > > >     - Corrected documentation, re PGO flags when using LTO, based on Fangrui
> > > >       Song's comments.
> > > > v3: - Added change log section based on Sedat Dilek's comments.
> > > > v4: - Remove non-x86 Makfile changes and se "hweight64" instead of using our
> > > >       own popcount implementation, based on Nick Desaulniers's comment.
> > > > v5: - Correct padding calculation, discovered by Nathan Chancellor.
> > > > ---
> > > >  Documentation/dev-tools/index.rst     |   1 +
> > > >  Documentation/dev-tools/pgo.rst       | 127 +++++++++
> > > >  MAINTAINERS                           |   9 +
> > > >  Makefile                              |   3 +
> > > >  arch/Kconfig                          |   1 +
> > > >  arch/x86/Kconfig                      |   1 +
> > > >  arch/x86/boot/Makefile                |   1 +
> > > >  arch/x86/boot/compressed/Makefile     |   1 +
> > > >  arch/x86/crypto/Makefile              |   2 +
> > > >  arch/x86/entry/vdso/Makefile          |   1 +
> > > >  arch/x86/kernel/vmlinux.lds.S         |   2 +
> > > >  arch/x86/platform/efi/Makefile        |   1 +
> > > >  arch/x86/purgatory/Makefile           |   1 +
> > > >  arch/x86/realmode/rm/Makefile         |   1 +
> > > >  arch/x86/um/vdso/Makefile             |   1 +
> > > >  drivers/firmware/efi/libstub/Makefile |   1 +
> > > >  include/asm-generic/vmlinux.lds.h     |  44 +++
> > > >  kernel/Makefile                       |   1 +
> > > >  kernel/pgo/Kconfig                    |  35 +++
> > > >  kernel/pgo/Makefile                   |   5 +
> > > >  kernel/pgo/fs.c                       | 382 ++++++++++++++++++++++++++
> > > >  kernel/pgo/instrument.c               | 185 +++++++++++++
> > > >  kernel/pgo/pgo.h                      | 206 ++++++++++++++
> > > >  scripts/Makefile.lib                  |  10 +
> > > >  24 files changed, 1022 insertions(+)
> > > >  create mode 100644 Documentation/dev-tools/pgo.rst
> > > >  create mode 100644 kernel/pgo/Kconfig
> > > >  create mode 100644 kernel/pgo/Makefile
> > > >  create mode 100644 kernel/pgo/fs.c
> > > >  create mode 100644 kernel/pgo/instrument.c
> > > >  create mode 100644 kernel/pgo/pgo.h
> > > >
> > > > diff --git a/Documentation/dev-tools/index.rst b/Documentation/dev-tools/index.rst
> > > > index f7809c7b1ba9e..8d6418e858062 100644
> > > > --- a/Documentation/dev-tools/index.rst
> > > > +++ b/Documentation/dev-tools/index.rst
> > > > @@ -26,6 +26,7 @@ whole; patches welcome!
> > > >     kgdb
> > > >     kselftest
> > > >     kunit/index
> > > > +   pgo
> > > >
> > > >
> > > >  .. only::  subproject and html
> > > > diff --git a/Documentation/dev-tools/pgo.rst b/Documentation/dev-tools/pgo.rst
> > > > new file mode 100644
> > > > index 0000000000000..b7f11d8405b73
> > > > --- /dev/null
> > > > +++ b/Documentation/dev-tools/pgo.rst
> > > > @@ -0,0 +1,127 @@
> > > > +.. SPDX-License-Identifier: GPL-2.0
> > > > +
> > > > +===============================
> > > > +Using PGO with the Linux kernel
> > > > +===============================
> > > > +
> > > > +Clang's profiling kernel support (PGO_) enables profiling of the Linux kernel
> > > > +when building with Clang. The profiling data is exported via the ``pgo``
> > > > +debugfs directory.
> > > > +
> > > > +.. _PGO: https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimization
> > > > +
> > > > +
> > > > +Preparation
> > > > +===========
> > > > +
> > > > +Configure the kernel with:
> > > > +
> > > > +.. code-block:: make
> > > > +
> > > > +   CONFIG_DEBUG_FS=y
> > > > +   CONFIG_PGO_CLANG=y
> > > > +
> > > > +Note that kernels compiled with profiling flags will be significantly larger
> > > > +and run slower.
> > > > +
> > > > +Profiling data will only become accessible once debugfs has been mounted:
> > > > +
> > > > +.. code-block:: sh
> > > > +
> > > > +   mount -t debugfs none /sys/kernel/debug
> > > > +
> > > > +
> > > > +Customization
> > > > +=============
> > > > +
> > > > +You can enable or disable profiling for individual file and directories by
> > > > +adding a line similar to the following to the respective kernel Makefile:
> > > > +
> > > > +- For a single file (e.g. main.o)
> > > > +
> > > > +  .. code-block:: make
> > > > +
> > > > +     PGO_PROFILE_main.o := y
> > > > +
> > > > +- For all files in one directory
> > > > +
> > > > +  .. code-block:: make
> > > > +
> > > > +     PGO_PROFILE := y
> > > > +
> > > > +To exclude files from being profiled use
> > > > +
> > > > +  .. code-block:: make
> > > > +
> > > > +     PGO_PROFILE_main.o := n
> > > > +
> > > > +and
> > > > +
> > > > +  .. code-block:: make
> > > > +
> > > > +     PGO_PROFILE := n
> > > > +
> > > > +Only files which are linked to the main kernel image or are compiled as kernel
> > > > +modules are supported by this mechanism.
> > > > +
> > > > +
> > > > +Files
> > > > +=====
> > > > +
> > > > +The PGO kernel support creates the following files in debugfs:
> > > > +
> > > > +``/sys/kernel/debug/pgo``
> > > > +       Parent directory for all PGO-related files.
> > > > +
> > > > +``/sys/kernel/debug/pgo/reset``
> > > > +       Global reset file: resets all coverage data to zero when written to.
> > > > +
> > > > +``/sys/kernel/debug/profraw``
> > > > +       The raw PGO data that must be processed with ``llvm_profdata``.
> > > > +
> > > > +
> > > > +Workflow
> > > > +========
> > > > +
> > > > +The PGO kernel can be run on the host or test machines. The data though should
> > > > +be analyzed with Clang's tools from the same Clang version as the kernel was
> > > > +compiled. Clang's tolerant of version skew, but it's easier to use the same
> > > > +Clang version.
> > > > +
> > > > +The profiling data is useful for optimizing the kernel, analyzing coverage,
> > > > +etc. Clang offers tools to perform these tasks.
> > > > +
> > > > +Here is an example workflow for profiling an instrumented kernel with PGO and
> > > > +using the result to optimize the kernel:
> > > > +
> > > > +1) Install the kernel on the TEST machine.
> > > > +
> > > > +2) Reset the data counters right before running the load tests
> > > > +
> > > > +   .. code-block:: sh
> > > > +
> > > > +      $ echo 1 > /sys/kernel/debug/pgo/reset
> > > > +
> > >
> > > I do not get this...
> > >
> > > # mount | grep debugfs
> > > debugfs on /sys/kernel/debug type debugfs (rw,nosuid,nodev,noexec,relatime)
> > >
> > > After the load-test...?
> > >
> > > echo 0 > /sys/kernel/debug/pgo/reset
> > >
> > Writing anything to /sys/kernel/debug/pgo/reset will cause it to reset
> > the profiling counters. I picked 1 (one) semi-randomly, but it could
> > be any number, letter, your favorite short story, etc. You don't want
> > to reset it before collecting the profiling data from your load tests
> > though.
> >
> > > > +3) Run the load tests.
> > > > +
> > > > +4) Collect the raw profile data
> > > > +
> > > > +   .. code-block:: sh
> > > > +
> > > > +      $ cp -a /sys/kernel/debug/pgo/profraw /tmp/vmlinux.profraw
> > > > +
> > >
> > > This is only 4,9M small and seen from the date 5mins before I run the
> > > echo-1 line.
> > >
> > > # ll /sys/kernel/debug/pgo
> > > insgesamt 0
> > > drwxr-xr-x  2 root root 0 16. Jan 17:29 .
> > > drwx------ 41 root root 0 16. Jan 17:29 ..
> > > -rw-------  1 root root 0 16. Jan 17:29 profraw
> > > --w-------  1 root root 0 16. Jan 18:19 reset
> > >
> > > # cp -a /sys/kernel/debug/pgo/profraw /tmp/vmlinux.profraw
> > >
> > > # ll /tmp/vmlinux.profraw
> > > -rw------- 1 root root 4,9M 16. Jan 17:29 /tmp/vmlinux.profraw
> > >
> > > For me there was no prof-data collected from my defconfig kernel-build.
> > >
> > The /sys/kernel/debug/pgo/profraw file is read-only. Nothing writes to
> > it, not even the kernel. All it does is serialize the profiling
> > counters from a memory location in the kernel into a format that
> > LLVM's tools can understand.
> >
> > > > +5) (Optional) Download the raw profile data to the HOST machine.
> > > > +
> > > > +6) Process the raw profile data
> > > > +
> > > > +   .. code-block:: sh
> > > > +
> > > > +      $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> > > > +
> > >
> > > Is that executed in /path/to/linux/git?
> > >
> > The llvm-profdata tool is not in the linux source tree. You need to
> > grab it from a clang distribution (or built from clang's git repo).
> >
> > > > +   Note that multiple raw profile data files can be merged during this step.
> > > > +
> > > > +7) Rebuild the kernel using the profile data (PGO disabled)
> > > > +
> > > > +   .. code-block:: sh
> > > > +
> > > > +      $ make LLVM=1 KCFLAGS=-fprofile-use=vmlinux.profdata ...
> > >
> > > How big is vmlinux.profdata (make defconfig)?
> > >
> > I don't have numbers for this, but from what you listed here, it's ~5M
> > in size. The size is proportional to the number of counters
> > instrumented in the kernel.
> >
> > > Do I need to do a full defconfig build or can I stop the build after
> > > let me say 10mins?
> > >
> > You should do a full rebuild. Make sure that PGO is disabled during the rebuild.
> >
>
> Thanks Bill for all the information.
>
> And sorry if I am so pedantic.
>
> I have installed my Debian system with Legacy-BIOS enabled.
>
> When I rebuild with KCFLAGS=-fprofile-use=vmlinux.profdata (LLVM=1 I
> have as a default) my system hangs on reboot.
>
> [ diffconfig ]
> $ scripts/diffconfig /boot/config-5.11.0-rc3-8-amd64-clang12-pgo
> /boot/config-5.11.0-rc3-9-amd64-clang12-pgo
> BUILD_SALT "5.11.0-rc3-8-amd64-clang12-pgo" -> "5.11.0-rc3-9-amd64-clang12-pgo"
> PGO_CLANG y -> n
>
> [ my make line ]
> $ cat ../start-build_5.11.0-rc3-9-amd64-clang12-pgo.txt
> dileks     63120   63095  0 06:47 pts/2    00:00:00 /usr/bin/perf_5.10
> stat make V=1 -j4 HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang
> LD=ld.lld LLVM=1 LLVM_IAS=1 PAHOLE=/opt/pahole/bin/pahole
> LOCALVERSION=-9-amd64-clang12-pgo KBUILD_VERBOSE=1
> KBUILD_BUILD_HOST=iniza KBUILD_BUILD_USER=sedat.dilek@gmail.com
> KBUILD_BUILD_TIMESTAMP=2021-01-17 bindeb-pkg
> KDEB_PKGVERSION=5.11.0~rc3-9~bullseye+dileks1
> KCFLAGS=-fprofile-use=vmlinux.profdata
>
> ( Yes, 06:47 a.m. in the morning :-). )
>
> When I boot with the rebuild Linux-kernel I see:
>
> Wrong EFI loader signature
> ...
> Decompressing
> Parsing EFI
> Performing Relocations done.
> Booting the Kernel.
>
> *** SYSTEM HANGS ***
> ( I waited for approx 1 min )
>
> I tried to turn UEFI support ON and OFF.
> No success.
>
> Does Clang-PGO support Legacy-BIOS or is something different wrong?
>
> Thanks.
>

My bootloader is GRUB.

In UEFI-BIOS settings there is no secure-boot disable option.
Just simple "Use UEFI BIOS" enabled|disabled.

Installed Debian packages:

ii grub-common 2.04-12
ii grub-pc 2.04-12
ii grub-pc-bin 2.04-12
ii grub2-common 2.04-12

I found in the below link to do in grub-shell:

set check_signatures=no

But this is when grub-efi is installed.

- Sedat -

Link: https://unix.stackexchange.com/questions/126286/grub-efi-disable-signature-check

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVD1AHaXYu4Ne8JhzmtMR5DReL4C%3DZxKfA0hjLtbC79qQ%40mail.gmail.com.
