Return-Path: <clang-built-linux+bncBD66FMGZA4IM5FUNQADBUBFNCWAA2@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8C42F8F29
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 21:23:42 +0100 (CET)
Received: by mail-lf1-x140.google.com with SMTP id v187sf4798914lfa.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 12:23:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610828622; cv=pass;
        d=google.com; s=arc-20160816;
        b=0m4HNqS1fUreT/cYIQ8BqKOu6zRFrPV8hedRVhIV+BpUorrD7HPp15DN9n1J3G2cjL
         /fcn5mI1Kt4xtdaKd8yVQjsSmCV/i5BQmWUd5Yeh/4sAXEaJ245hxSEJoDgSBDiTs90M
         Fq0XeKNu2WVjq98xRdz61rU8E7TXOtkjvf625lGTRP5yjeaYL4+dqaPO29Upc6JG9bq/
         bFhxPGxPY/QqtQrOHe+ShfK8/ch+Jw2gb15eMqFMCc0Z1ceeccb5mFRI1ls6Dy/Elcil
         /+hEFnXdZAEliOlp6a/6jZMzd55rnJpvdpziwdXAixafxTESvXtONzZKyZD7dwLFWjOu
         qItw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=E0WnswRMaqtdhCrunR5XL/j/b6T+7utK5X2HfIkME78=;
        b=yi/tp35q3WNFqL8/X2zfvZYcxpM5t7Gr6PA1zj93QcBZLntEjniJjxUgh5DZ3ocIbo
         ujADizDAxYSKh7Z8D3PkaOb7yLUATTHR+MU6p9GBkXe4bOputBDaj+GLj2A9dwztvAyd
         ryUiGa/BJBQXhae8cTSfZTQ41Tc1l7PIFKF8AiO2a8diKTxGjc218lgCw/3XCSaE6lst
         J7YcF7jYbGvjKRHjdYywLSM16y+kgOF0PD25bWrjqkCyGLssOHje8PKk65/kCECd+iRb
         6ZPW0MB8kABC+lTqXLXaZ7Mgi/90Qd0JIAz/U+NpN9u4LPEmQEaICk7vz7fYX54o5+k7
         ZgyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="V/PF3zTR";
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::632 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E0WnswRMaqtdhCrunR5XL/j/b6T+7utK5X2HfIkME78=;
        b=JeTChYnwyVH0nZFhseKZXdOKgxwOUzH1VIEBpEF4zD7VXXPBpPzQQ/taFbj0CkGTZQ
         3baXvV8efih5jrSKA3uWpHIbkrOTgYbzjK8kwCafXYINwW6VNUp94nZ4w51GpvIijvYn
         qa32Nqez3cMk4h/ukbeCohCZQYgnUsP+mVtPxDBqCw4skSMt24lpo7qGM0kseMf1EQUg
         aRKa2q9wAydDvKUmpfalXJJjxM0/BVUsEFsjN8iJvu34g3oUT2yX6lUXMybYWZBSYaFs
         uYXI3jNDghD/Dc4bzGiLSifLkGdLnUdXtsYd7pvCAEs7vwyTQwvIGCHh8xqjJn9y1Hk+
         8aDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E0WnswRMaqtdhCrunR5XL/j/b6T+7utK5X2HfIkME78=;
        b=lRooAZmsU35DWrRso2gh5vj8f0gtSFRuicIMCbOCFyeEzxWLcqRtq4lGE+GTFHPr8h
         sigKJeh1LAUphmP741lOWg4fffNtVeS51km8pfJ/8J1IT7xUmlUxrYVjEaZUIyKlHkOH
         fkecYknQboA4znN/rnV7JvV1Zl6G/r8OPGN7K4yS36TXxcEFubAf2QUUh+/Mj9shgjgv
         A5PebPxVL/0SiLsnwmBhnFF4LmY3mRoyxGeKvhgfvDaBD32qBZHDNxjSEgFbbZHZjnhL
         8KMsEccKzgobqjmhQ4rrojFdnoICi3DnJA9rpP4oDZTmanZAOndcrvS8bhbDGY6YdB3L
         jLsg==
X-Gm-Message-State: AOAM531j/x+HR0HHh6PL4yeNLJx4Zr9IO13VYgDuS566W4gaaL7uCmov
	i0oJPt8e/0f5WijVUNO8qIQ=
X-Google-Smtp-Source: ABdhPJw34D3P7gb2hZxCLfpCoJciiyav7m/MUXejC+H3tqTNwHEYoP8l2NJ5e8XD5YbPmiylEW/ywg==
X-Received: by 2002:a2e:8852:: with SMTP id z18mr8042478ljj.94.1610828622363;
        Sat, 16 Jan 2021 12:23:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:51c4:: with SMTP id u4ls272515lfm.0.gmail; Sat, 16 Jan
 2021 12:23:41 -0800 (PST)
X-Received: by 2002:a19:7ecd:: with SMTP id z196mr8318915lfc.52.1610828621368;
        Sat, 16 Jan 2021 12:23:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610828621; cv=none;
        d=google.com; s=arc-20160816;
        b=rEa1ELAbaA2mHJdOTT9YkC3HhaJhQTaqCoCwbBMcIL+srNbz2zb1VoDvhJfK1G2HPs
         TDySTmL6197gkcsbgelmx458T1inspyfwuN3PI3DqSkDKJ+VaSg5nFz5KL7LHrLPUnw8
         jbKStw9N2ID685O7/rK0PLfwlATlUN8JhU2RpJIL+xp04t3cseDJjUS68sE0lHZ9mnWw
         RJGRYQjxh8ROLViW9gkZIlxTzzaVL767fEWjSpBgX52n4Q1Zbp3dhfOeKKrfFjwjCKOf
         fLsp7EkNW+TZtZwfwSWAvAEEoTmwv7L+EsqHUi1El+/bcQiqc373VY+9qA+esqSzxpFK
         ZS0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Rwd0e1UxPf4jra+cHgWc0pdWvVXVnpNKf6ZNL9rziWo=;
        b=EScDWm7ukiHcIyeFwWxQCUwcUtJHdnF4eA6+LOot08EHJzGsc5I+LQjS3IvyHUnCDi
         JECxcI0fVzwGXY12B4xtuOwOwdoUKv9VBhCHfDW4XyLA5BYmpQhYkIZTFDdazdmfTPs7
         rwMaNTUKOqsUu2nqw1VVo9dOCYmf+rXrdne2QZU8RevKs9CXR0PySWYCu0kyHZLQesyd
         mUdIk1h6T806vG62M5g6o/Fpld/w0kydNLtnqhe3j9Zk1PjNb5zuKoNwemMbZvl+d7Px
         6pJAiGCM1jfPvXOXiOuMcZaksHwaeVbVF++xmTpKr15JHiTsBmHAhcZ+QtqJ4suK/G4c
         Z5sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="V/PF3zTR";
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::632 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com. [2a00:1450:4864:20::632])
        by gmr-mx.google.com with ESMTPS id h21si718734ljj.6.2021.01.16.12.23.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 Jan 2021 12:23:41 -0800 (PST)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::632 as permitted sender) client-ip=2a00:1450:4864:20::632;
Received: by mail-ej1-x632.google.com with SMTP id ke15so10556437ejc.12
        for <clang-built-linux@googlegroups.com>; Sat, 16 Jan 2021 12:23:41 -0800 (PST)
X-Received: by 2002:a17:906:b002:: with SMTP id v2mr12976263ejy.531.1610828620606;
 Sat, 16 Jan 2021 12:23:40 -0800 (PST)
MIME-Version: 1.0
References: <20210113061958.886723-1-morbo@google.com> <20210116094357.3620352-1-morbo@google.com>
 <CA+icZUUgTuD6fO_AZFs9KoRFS8FUmyhezvYeeoRX2dveG_ifDA@mail.gmail.com>
In-Reply-To: <CA+icZUUgTuD6fO_AZFs9KoRFS8FUmyhezvYeeoRX2dveG_ifDA@mail.gmail.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 16 Jan 2021 12:23:29 -0800
Message-ID: <CAGG=3QXZTR_f9pKzAR=LrALmMzdDqsvWM_zrTXOb2PpiDGB-+A@mail.gmail.com>
Subject: Re: [PATCH v5] pgo: add clang's Profile Guided Optimization infrastructure
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="V/PF3zTR";       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::632 as
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

On Sat, Jan 16, 2021 at 9:39 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> On Sat, Jan 16, 2021 at 10:44 AM 'Bill Wendling' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
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
>
> I do not get this...
>
> # mount | grep debugfs
> debugfs on /sys/kernel/debug type debugfs (rw,nosuid,nodev,noexec,relatime)
>
> After the load-test...?
>
> echo 0 > /sys/kernel/debug/pgo/reset
>
Writing anything to /sys/kernel/debug/pgo/reset will cause it to reset
the profiling counters. I picked 1 (one) semi-randomly, but it could
be any number, letter, your favorite short story, etc. You don't want
to reset it before collecting the profiling data from your load tests
though.

> > +3) Run the load tests.
> > +
> > +4) Collect the raw profile data
> > +
> > +   .. code-block:: sh
> > +
> > +      $ cp -a /sys/kernel/debug/pgo/profraw /tmp/vmlinux.profraw
> > +
>
> This is only 4,9M small and seen from the date 5mins before I run the
> echo-1 line.
>
> # ll /sys/kernel/debug/pgo
> insgesamt 0
> drwxr-xr-x  2 root root 0 16. Jan 17:29 .
> drwx------ 41 root root 0 16. Jan 17:29 ..
> -rw-------  1 root root 0 16. Jan 17:29 profraw
> --w-------  1 root root 0 16. Jan 18:19 reset
>
> # cp -a /sys/kernel/debug/pgo/profraw /tmp/vmlinux.profraw
>
> # ll /tmp/vmlinux.profraw
> -rw------- 1 root root 4,9M 16. Jan 17:29 /tmp/vmlinux.profraw
>
> For me there was no prof-data collected from my defconfig kernel-build.
>
The /sys/kernel/debug/pgo/profraw file is read-only. Nothing writes to
it, not even the kernel. All it does is serialize the profiling
counters from a memory location in the kernel into a format that
LLVM's tools can understand.

> > +5) (Optional) Download the raw profile data to the HOST machine.
> > +
> > +6) Process the raw profile data
> > +
> > +   .. code-block:: sh
> > +
> > +      $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> > +
>
> Is that executed in /path/to/linux/git?
>
The llvm-profdata tool is not in the linux source tree. You need to
grab it from a clang distribution (or built from clang's git repo).

> > +   Note that multiple raw profile data files can be merged during this step.
> > +
> > +7) Rebuild the kernel using the profile data (PGO disabled)
> > +
> > +   .. code-block:: sh
> > +
> > +      $ make LLVM=1 KCFLAGS=-fprofile-use=vmlinux.profdata ...
>
> How big is vmlinux.profdata (make defconfig)?
>
I don't have numbers for this, but from what you listed here, it's ~5M
in size. The size is proportional to the number of counters
instrumented in the kernel.

> Do I need to do a full defconfig build or can I stop the build after
> let me say 10mins?
>
You should do a full rebuild. Make sure that PGO is disabled during the rebuild.

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QXZTR_f9pKzAR%3DLrALmMzdDqsvWM_zrTXOb2PpiDGB-%2BA%40mail.gmail.com.
