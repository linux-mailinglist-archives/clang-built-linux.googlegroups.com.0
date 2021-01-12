Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB27B6T7QKGQEDNY6SIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id B485F2F279C
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 06:17:32 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id m203sf1342858ybf.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 21:17:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610428651; cv=pass;
        d=google.com; s=arc-20160816;
        b=hNJHyCwEDc2vRajWomYntbRbulwlycugmFASl99UjVr2ADCa0h2P+he6XHsOzgn7ZJ
         Xs8kAKVT8sp3fu2gH1NIT7ELLiDtlyDjS39dRouKGd6xEigjLc90W+Ahx1sv20TRgqeP
         gEl1JE6w9kS6MyX+T5kcYyh00ICQjDXg51L0/Um/Czt00sctm5QhQgAJiNX9z0tsi1vR
         dW2DkOEwi0IuANFCJq5K+vdp/cx2EQWZ195CmOMRBxnG9WZGlIp8I/JHx3B2JQa+nqMo
         87CHQ/i4hZ7GnPrkctTgRdH2nGMF+AlN33sa7ZGr2cMXkbDJT7O+S45cuZFc5BQT+jl0
         Kogg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=c3+nklGYfDbgq4I3nLhuVxVLp5dB7ALWLVDieWTFPug=;
        b=j+MnjEZTpSx2STcUI/XLmuBYL7aN2okjsoaBCSYem/cne303vyCpi5LjzIFpaEffjT
         APhR8NZ9hJF1CVFxZH75murmd8nIol48UnBPNvdCnygLmajUWn1UKKJlZGNf+fEg7Wp5
         ME9lbYLUbOXKUYy2NRCMxKVY2vzMbGiE/vxiq1ulDgLxMQc4o3kzDDrjOSVX2OziLL9o
         D75NM6e0aAkqVAFUwEYNGAPlkXvOWQrUYUq1f8gN2JS9Nwh22QKdZMgsd91Q+xGWMtz2
         gDNtwmPDWTjaaLUpUFnmf9qvMJEOm53DiAFkF9qx27ov1Z9eNqqTbVADofrYk25GRs+i
         Xn3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I7zLjBbf;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c3+nklGYfDbgq4I3nLhuVxVLp5dB7ALWLVDieWTFPug=;
        b=k0IR3C86euAedzC8jlErMpGi+wRtbpM5YjTiw6wvT0lyVCgzppiHiLeExRHXFyIisz
         zRKyJmf0jW4CsYGJ8txC4moyfYFKt6eQ+u6jt+xaPsUPSKqoj0Oe/IUpUmPpKiIiFd20
         ExWz4Nnt+xQY5cawVwPfMh8aNUcaUjHJDhpyWrRf8LbbdyxXKQW+urhRYsqxcalibUnz
         mtljXM4gzhs1NWqM/UgX9zFm//h5TVJBUY+D8OOxOuZi66i4Giui9W1xwkiTdUuqtLf5
         yPQe67D6zP5Prcuk0FeH1+i+ZSfqn6xv9Ecu0gREclCPMb0cVWDIIPGCFRUr9L3Xfk26
         EtIw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c3+nklGYfDbgq4I3nLhuVxVLp5dB7ALWLVDieWTFPug=;
        b=o9e79RPFYrQ8hj2WPt8/YKzhnEgIb2cOqZP2oc6IqngKusMnnQPXSKmswSPf6+rBvr
         7bJcTCgTK6LIXFZ+f2nSZNHlZrNPXWAUGFnbafW1heHfQglyCOHFtf8wVYacOHhJ1Hk1
         HakLgka8eY+DdxR2sg0ioAYybe7ic3BRdtpjdTv9gGGpeH8R1Odwjtt0jXH9s82/LIcG
         XaRWDStUYOyYdCEpOc9dbBwEre2hbRgmjAGWBT7eOFw0v2mR6pNihg1MosGXA3van3FM
         ZBf5b3zv9lhcc0th0LcIqG3/274dzAY51vCR51VkcnqEeN1Tc5aHWDTRlqNVt7XyX3HM
         Z6Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c3+nklGYfDbgq4I3nLhuVxVLp5dB7ALWLVDieWTFPug=;
        b=hp0nlY2+3ZP8dbt7wRvHsf53/fFFAS8zqyVnbsVJcnSvqJ8WBZUmGziNtXu++o9n2Q
         uGYl6Ixtl8SWkpqzyrCNG5vngTrLK7mWNqfTbfrQ2bKyuIe8+ce/WGuIYhHLTyvixIaB
         UbMsr0ILBDx2H5jxP2BP4/yZ8MpWHiu1PyhPt5gfxUtpO2lYOT9iUuX5yo3eBwMTA9EL
         YwxNwXNjCzMlrsVlL5vTWF+7xGdZNbNLtkZKWE6wUqTPOZDfOP00GIGVG3SNUMSrbO3k
         1zcVRJCBi2ucN8cxDKHM4hJi4lSpwhSP9cu0sm8O0tJldIrnE7G5Zxgm8Po0jjWTHGoT
         H7TQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531P48VGIvEO0hg50/+oDowuyFzMOd4TtXOFUdqHOwBxhhj9vUCs
	AEpi4LCuoLymo/IZdFBpQZg=
X-Google-Smtp-Source: ABdhPJyI7tBnpnR8J/AuljRU05Gy/6hJwqrFDeaG8o2BFzGBBfH/4wsYpcI9thXvdSJNRf6uJI3h0w==
X-Received: by 2002:a25:cb88:: with SMTP id b130mr4227544ybg.433.1610428651585;
        Mon, 11 Jan 2021 21:17:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:41d6:: with SMTP id o205ls1011534yba.10.gmail; Mon, 11
 Jan 2021 21:17:31 -0800 (PST)
X-Received: by 2002:a05:6902:6d4:: with SMTP id m20mr4361554ybt.434.1610428651126;
        Mon, 11 Jan 2021 21:17:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610428651; cv=none;
        d=google.com; s=arc-20160816;
        b=h+rahJZOTT81CF+igwLKKeTeuuaq7P+4hyoXBCrMt0Kgi72mmwl1r8mcr7RlWYwHYs
         tm6pNfeb882fJ8wx2W8LVcb9J+DciLqPeFOMlFFCtaDI3a5NA6EYMlzM3KjyMJ8xw0gn
         xdp6GdIIL2BXt7P8Od+sX1ICbdXo88bTpCQ3Yt06Q5oqBhh2wP51+Hypll7TN8t1VmRe
         LIpaAHGI9TRZT6wJsGIjpN37py1V1IPNXkFEzAEV2hNvnUEMZUnDcND+pz5iABGivMPb
         04rnTEcZsATgqZ6Gg+1K6e0PvZhxVUh2ZuveEiLbe138Qi3OJbBE7QeLf0diCAZPBbih
         Q6aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lUYbB1HMyeHCkb9xcYtc6+G14dGP2TSEhhPIQQS7/xM=;
        b=yC01Y116o2Hmes+PuH+wanyhQ+7RiLgHC7CgBt6BH/WD7HFMd9w1Uc7QssdhKHAEho
         1BnP2zWCG4EpJ3j3pFYgAmqy8gP7iXRq0uKhRLvvK0ihkqBz53UgV6/Z34yKtHo1c/tg
         PSV1WV2TnSw/qAWPwDkulDcnF2E2ONO5Hc0+BfUu93YvX8vWeoSUJTbAWbsGLxWy3j/U
         ysyFltVpF6bz6f68uZWp0j7aXXYteb20BWjor+tDeDKJfKhCvmAAIEacbL3EtBUwSC+w
         Nuoq5w1SVHxaqFN7PlMcPsZ2EZLhiMc1lM8DExrCVr+/cuquuTmcz/vabIf40pDCT5u2
         GynA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I7zLjBbf;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com. [2607:f8b0:4864:20::d2b])
        by gmr-mx.google.com with ESMTPS id 23si239646ybc.0.2021.01.11.21.17.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 21:17:31 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) client-ip=2607:f8b0:4864:20::d2b;
Received: by mail-io1-xd2b.google.com with SMTP id p187so1551297iod.4
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 21:17:31 -0800 (PST)
X-Received: by 2002:a92:9e57:: with SMTP id q84mr2466256ili.112.1610428650199;
 Mon, 11 Jan 2021 21:17:30 -0800 (PST)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <20210112051428.4175583-1-morbo@google.com>
In-Reply-To: <20210112051428.4175583-1-morbo@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 12 Jan 2021 06:17:17 +0100
Message-ID: <CA+icZUVL33F1B8pn0WTxDwVZhAvD9VOQZsLLb35iCvyZ4Lpndw@mail.gmail.com>
Subject: Re: [PATCH v2] pgo: add clang's Profile Guided Optimization infrastructure
To: Bill Wendling <morbo@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=I7zLjBbf;       spf=pass
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

On Tue, Jan 12, 2021 at 6:14 AM 'Bill Wendling' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> From: Sami Tolvanen <samitolvanen@google.com>
>
> Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> profile, the kernel is instrumented with PGO counters, a representative
> workload is run, and the raw profile data is collected from
> /sys/kernel/debug/pgo/profraw.
>
> The raw profile data must be processed by clang's "llvm-profdata" tool
> before it can be used during recompilation:
>
>   $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
>   $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
>
> Multiple raw profiles may be merged during this step.
>
> The data can now be used by the compiler:
>
>   $ make LLVM=1 KCFLAGS=-fprofile-use=vmlinux.profdata ...
>
> This initial submission is restricted to x86, as that's the platform we
> know works. This restriction can be lifted once other platforms have
> been verified to work with PGO.
>
> Note that this method of profiling the kernel is clang-native and isn't
> compatible with clang's gcov support in kernel/gcov.
>
> [1] https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimization
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Co-developed-by: Bill Wendling <morbo@google.com>
> Signed-off-by: Bill Wendling <morbo@google.com>

Hi Bill,

can you add a history for the changelog of v2, please?
Thanks.

Regards,
- Sedat -

> ---
>  Documentation/dev-tools/index.rst     |   1 +
>  Documentation/dev-tools/pgo.rst       | 127 +++++++++
>  MAINTAINERS                           |   9 +
>  Makefile                              |   3 +
>  arch/Kconfig                          |   1 +
>  arch/arm/boot/bootp/Makefile          |   1 +
>  arch/arm/boot/compressed/Makefile     |   1 +
>  arch/arm/vdso/Makefile                |   3 +-
>  arch/arm64/kernel/vdso/Makefile       |   3 +-
>  arch/arm64/kvm/hyp/nvhe/Makefile      |   1 +
>  arch/mips/boot/compressed/Makefile    |   1 +
>  arch/mips/vdso/Makefile               |   1 +
>  arch/nds32/kernel/vdso/Makefile       |   4 +-
>  arch/parisc/boot/compressed/Makefile  |   1 +
>  arch/powerpc/kernel/Makefile          |   6 +-
>  arch/powerpc/kernel/trace/Makefile    |   3 +-
>  arch/powerpc/kernel/vdso32/Makefile   |   1 +
>  arch/powerpc/kernel/vdso64/Makefile   |   1 +
>  arch/powerpc/kexec/Makefile           |   3 +-
>  arch/powerpc/xmon/Makefile            |   1 +
>  arch/riscv/kernel/vdso/Makefile       |   3 +-
>  arch/s390/boot/Makefile               |   1 +
>  arch/s390/boot/compressed/Makefile    |   1 +
>  arch/s390/kernel/Makefile             |   1 +
>  arch/s390/kernel/vdso64/Makefile      |   3 +-
>  arch/s390/purgatory/Makefile          |   1 +
>  arch/sh/boot/compressed/Makefile      |   1 +
>  arch/sh/mm/Makefile                   |   1 +
>  arch/sparc/vdso/Makefile              |   1 +
>  arch/x86/Kconfig                      |   1 +
>  arch/x86/boot/Makefile                |   1 +
>  arch/x86/boot/compressed/Makefile     |   1 +
>  arch/x86/entry/vdso/Makefile          |   1 +
>  arch/x86/kernel/vmlinux.lds.S         |   2 +
>  arch/x86/platform/efi/Makefile        |   1 +
>  arch/x86/purgatory/Makefile           |   1 +
>  arch/x86/realmode/rm/Makefile         |   1 +
>  arch/x86/um/vdso/Makefile             |   1 +
>  drivers/firmware/efi/libstub/Makefile |   1 +
>  drivers/s390/char/Makefile            |   1 +
>  include/asm-generic/vmlinux.lds.h     |  44 +++
>  kernel/Makefile                       |   1 +
>  kernel/pgo/Kconfig                    |  34 +++
>  kernel/pgo/Makefile                   |   5 +
>  kernel/pgo/fs.c                       | 382 ++++++++++++++++++++++++++
>  kernel/pgo/instrument.c               | 188 +++++++++++++
>  kernel/pgo/pgo.h                      | 206 ++++++++++++++
>  scripts/Makefile.lib                  |  10 +
>  48 files changed, 1058 insertions(+), 9 deletions(-)
>  create mode 100644 Documentation/dev-tools/pgo.rst
>  create mode 100644 kernel/pgo/Kconfig
>  create mode 100644 kernel/pgo/Makefile
>  create mode 100644 kernel/pgo/fs.c
>  create mode 100644 kernel/pgo/instrument.c
>  create mode 100644 kernel/pgo/pgo.h
>
> diff --git a/Documentation/dev-tools/index.rst b/Documentation/dev-tools/index.rst
> index f7809c7b1ba9e..8d6418e858062 100644
> --- a/Documentation/dev-tools/index.rst
> +++ b/Documentation/dev-tools/index.rst
> @@ -26,6 +26,7 @@ whole; patches welcome!
>     kgdb
>     kselftest
>     kunit/index
> +   pgo
>
>
>  .. only::  subproject and html
> diff --git a/Documentation/dev-tools/pgo.rst b/Documentation/dev-tools/pgo.rst
> new file mode 100644
> index 0000000000000..da0e654ae7078
> --- /dev/null
> +++ b/Documentation/dev-tools/pgo.rst
> @@ -0,0 +1,127 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +
> +===============================
> +Using PGO with the Linux kernel
> +===============================
> +
> +Clang's profiling kernel support (PGO_) enables profiling of the Linux kernel
> +when building with Clang. The profiling data is exported via the ``pgo``
> +debugfs directory.
> +
> +.. _PGO: https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimization
> +
> +
> +Preparation
> +===========
> +
> +Configure the kernel with:
> +
> +.. code-block:: make
> +
> +   CONFIG_DEBUG_FS=y
> +   CONFIG_PGO_CLANG=y
> +
> +Note that kernels compiled with profiling flags will be significantly larger
> +and run slower.
> +
> +Profiling data will only become accessible once debugfs has been mounted:
> +
> +.. code-block:: sh
> +
> +   mount -t debugfs none /sys/kernel/debug
> +
> +
> +Customization
> +=============
> +
> +You can enable or disable profiling for individual file and directories by
> +adding a line similar to the following to the respective kernel Makefile:
> +
> +- For a single file (e.g. main.o)
> +
> +  .. code-block:: make
> +
> +     PGO_PROFILE_main.o := y
> +
> +- For all files in one directory
> +
> +  .. code-block:: make
> +
> +     PGO_PROFILE := y
> +
> +To exclude files from being profiled use
> +
> +  .. code-block:: make
> +
> +     PGO_PROFILE_main.o := n
> +
> +and
> +
> +  .. code-block:: make
> +
> +     PGO_PROFILE := n
> +
> +Only files which are linked to the main kernel image or are compiled as kernel
> +modules are supported by this mechanism.
> +
> +
> +Files
> +=====
> +
> +The PGO kernel support creates the following files in debugfs:
> +
> +``/sys/kernel/debug/pgo``
> +       Parent directory for all PGO-related files.
> +
> +``/sys/kernel/debug/pgo/reset``
> +       Global reset file: resets all coverage data to zero when written to.
> +
> +``/sys/kernel/debug/profraw``
> +       The raw PGO data that must be processed with ``llvm_profdata``.
> +
> +
> +Workflow
> +========
> +
> +The PGO kernel can be run on the host or test machines. The data though should
> +be analyzed with Clang's tools from the same Clang version as the kernel was
> +compiled. Clang's tolerant of version skew, but it's easier to use the same
> +Clang version.
> +
> +The profiling data is useful for optimizing the kernel, analyzing coverage,
> +etc. Clang offers tools to perform these tasks.
> +
> +Here is an example workflow for profiling an instrumented kernel with PGO and
> +using the result to optimize the kernel:
> +
> +1) Install the kernel on the TEST machine.
> +
> +2) Reset the data counters right before running the load tests
> +
> +   .. code-block:: sh
> +
> +      echo 1 > /sys/kernel/debug/pgo/reset
> +
> +3) Run the load tests.
> +
> +4) Collect the raw profile data
> +
> +   .. code-block:: sh
> +
> +      cp -a /sys/kernel/debug/pgo/profraw /tmp/vmlinux.profraw
> +
> +5) (Optional) Download the raw profile data to the HOST machine.
> +
> +6) Process the raw profile data
> +
> +   .. code-block:: sh
> +
> +      llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> +
> +   Note that multiple raw profile data files can be merged during this step.
> +
> +7) Rebuild the kernel using the profile data (PGO disabled)
> +
> +   .. code-block:: sh
> +
> +      make LLVM=1 KCFLAGS=-fprofile-use=vmlinux.profdata ...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index cc1e6a5ee6e67..1b979da316fa4 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -13954,6 +13954,15 @@ S:     Maintained
>  F:     include/linux/personality.h
>  F:     include/uapi/linux/personality.h
>
> +PGO BASED KERNEL PROFILING
> +M:     Sami Tolvanen <samitolvanen@google.com>
> +M:     Bill Wendling <wcw@google.com>
> +R:     Nathan Chancellor <natechancellor@gmail.com>
> +R:     Nick Desaulniers <ndesaulniers@google.com>
> +S:     Supported
> +F:     Documentation/dev-tools/pgo.rst
> +F:     kernel/pgo
> +
>  PHOENIX RC FLIGHT CONTROLLER ADAPTER
>  M:     Marcus Folkesson <marcus.folkesson@gmail.com>
>  L:     linux-input@vger.kernel.org
> diff --git a/Makefile b/Makefile
> index 9e73f82e0d863..9128bfe1ccc97 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -659,6 +659,9 @@ endif # KBUILD_EXTMOD
>  # Defaults to vmlinux, but the arch makefile usually adds further targets
>  all: vmlinux
>
> +CFLAGS_PGO_CLANG := -fprofile-generate
> +export CFLAGS_PGO_CLANG
> +
>  CFLAGS_GCOV    := -fprofile-arcs -ftest-coverage \
>         $(call cc-option,-fno-tree-loop-im) \
>         $(call cc-disable-warning,maybe-uninitialized,)
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 24862d15f3a36..f39d3991f6bfe 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -1112,6 +1112,7 @@ config ARCH_SPLIT_ARG64
>            pairs of 32-bit arguments, select this option.
>
>  source "kernel/gcov/Kconfig"
> +source "kernel/pgo/Kconfig"
>
>  source "scripts/gcc-plugins/Kconfig"
>
> diff --git a/arch/arm/boot/bootp/Makefile b/arch/arm/boot/bootp/Makefile
> index 981a8d03f064c..523bd58df0a4b 100644
> --- a/arch/arm/boot/bootp/Makefile
> +++ b/arch/arm/boot/bootp/Makefile
> @@ -7,6 +7,7 @@
>  #
>
>  GCOV_PROFILE   := n
> +PGO_PROFILE    := n
>
>  LDFLAGS_bootp  := --no-undefined -X \
>                  --defsym initrd_phys=$(INITRD_PHYS) \
> diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
> index fb521efcc6c20..5fd0fd85fc0e5 100644
> --- a/arch/arm/boot/compressed/Makefile
> +++ b/arch/arm/boot/compressed/Makefile
> @@ -24,6 +24,7 @@ OBJS          += hyp-stub.o
>  endif
>
>  GCOV_PROFILE           := n
> +PGO_PROFILE            := n
>  KASAN_SANITIZE         := n
>
>  # Prevents link failures: __sanitizer_cov_trace_pc() is not linked in.
> diff --git a/arch/arm/vdso/Makefile b/arch/arm/vdso/Makefile
> index b558bee0e1f6b..11f6ce4b48b56 100644
> --- a/arch/arm/vdso/Makefile
> +++ b/arch/arm/vdso/Makefile
> @@ -36,8 +36,9 @@ else
>  CFLAGS_vgettimeofday.o = -O2 -include $(c-gettimeofday-y)
>  endif
>
> -# Disable gcov profiling for VDSO code
> +# Disable gcov and PGO profiling for VDSO code
>  GCOV_PROFILE := n
> +PGO_PROFILE := n
>
>  # Prevents link failures: __sanitizer_cov_trace_pc() is not linked in.
>  KCOV_INSTRUMENT := n
> diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
> index cd9c3fa25902f..d48fc0df07020 100644
> --- a/arch/arm64/kernel/vdso/Makefile
> +++ b/arch/arm64/kernel/vdso/Makefile
> @@ -41,8 +41,9 @@ ifneq ($(c-gettimeofday-y),)
>    CFLAGS_vgettimeofday.o += -include $(c-gettimeofday-y)
>  endif
>
> -# Disable gcov profiling for VDSO code
> +# Disable gcov and PGO profiling for VDSO code
>  GCOV_PROFILE := n
> +PGO_PROFILE := n
>
>  obj-y += vdso.o
>  targets += vdso.lds
> diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
> index 1f1e351c5fe2b..ad128ecdbfbdf 100644
> --- a/arch/arm64/kvm/hyp/nvhe/Makefile
> +++ b/arch/arm64/kvm/hyp/nvhe/Makefile
> @@ -60,6 +60,7 @@ KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_FTRACE) $(CC_FLAGS_SCS), $(KBUILD_CFLAG
>  # compiler instrumentation that inserts callbacks or checks into the code may
>  # cause crashes. Just disable it.
>  GCOV_PROFILE   := n
> +PGO_PROFILE    := n
>  KASAN_SANITIZE := n
>  UBSAN_SANITIZE := n
>  KCOV_INSTRUMENT        := n
> diff --git a/arch/mips/boot/compressed/Makefile b/arch/mips/boot/compressed/Makefile
> index 47cd9dc7454af..0855ea12f2c7f 100644
> --- a/arch/mips/boot/compressed/Makefile
> +++ b/arch/mips/boot/compressed/Makefile
> @@ -37,6 +37,7 @@ KBUILD_AFLAGS := $(KBUILD_AFLAGS) -D__ASSEMBLY__ \
>  # Prevents link failures: __sanitizer_cov_trace_pc() is not linked in.
>  KCOV_INSTRUMENT                := n
>  GCOV_PROFILE := n
> +PGO_PROFILE := n
>
>  # decompressor objects (linked with vmlinuz)
>  vmlinuzobjs-y := $(obj)/head.o $(obj)/decompress.o $(obj)/string.o
> diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
> index 5810cc12bc1d9..d7eb64de35eae 100644
> --- a/arch/mips/vdso/Makefile
> +++ b/arch/mips/vdso/Makefile
> @@ -66,6 +66,7 @@ ldflags-y := -Bsymbolic --no-undefined -soname=linux-vdso.so.1 \
>  CFLAGS_REMOVE_vdso.o = -pg
>
>  GCOV_PROFILE := n
> +PGO_PROFILE := n
>  UBSAN_SANITIZE := n
>  KCOV_INSTRUMENT := n
>
> diff --git a/arch/nds32/kernel/vdso/Makefile b/arch/nds32/kernel/vdso/Makefile
> index 55df25ef00578..f2b53ee2124b7 100644
> --- a/arch/nds32/kernel/vdso/Makefile
> +++ b/arch/nds32/kernel/vdso/Makefile
> @@ -15,9 +15,9 @@ obj-vdso := $(addprefix $(obj)/, $(obj-vdso))
>  ccflags-y := -shared -fno-common -fno-builtin -nostdlib -fPIC -Wl,-shared -g \
>         -Wl,-soname=linux-vdso.so.1 -Wl,--hash-style=sysv
>
> -# Disable gcov profiling for VDSO code
> +# Disable gcov and PGO profiling for VDSO code
>  GCOV_PROFILE := n
> -
> +PGO_PROFILE := n
>
>  obj-y += vdso.o
>  targets += vdso.lds
> diff --git a/arch/parisc/boot/compressed/Makefile b/arch/parisc/boot/compressed/Makefile
> index dff4536875305..5cf93a67f7da7 100644
> --- a/arch/parisc/boot/compressed/Makefile
> +++ b/arch/parisc/boot/compressed/Makefile
> @@ -7,6 +7,7 @@
>
>  KCOV_INSTRUMENT := n
>  GCOV_PROFILE := n
> +PGO_PROFILE := n
>  UBSAN_SANITIZE := n
>
>  targets := vmlinux.lds vmlinux vmlinux.bin vmlinux.bin.gz vmlinux.bin.bz2
> diff --git a/arch/powerpc/kernel/Makefile b/arch/powerpc/kernel/Makefile
> index fe2ef598e2ead..c642c046660d7 100644
> --- a/arch/powerpc/kernel/Makefile
> +++ b/arch/powerpc/kernel/Makefile
> @@ -153,17 +153,21 @@ endif
>  obj-$(CONFIG_PPC_SECURE_BOOT)  += secure_boot.o ima_arch.o secvar-ops.o
>  obj-$(CONFIG_PPC_SECVAR_SYSFS) += secvar-sysfs.o
>
> -# Disable GCOV, KCOV & sanitizers in odd or sensitive code
> +# Disable GCOV, PGO, KCOV & sanitizers in odd or sensitive code
>  GCOV_PROFILE_prom_init.o := n
> +PGO_PROFILE_prom_init.o := n
>  KCOV_INSTRUMENT_prom_init.o := n
>  UBSAN_SANITIZE_prom_init.o := n
>  GCOV_PROFILE_kprobes.o := n
> +PGO_PROFILE_kprobes.o := n
>  KCOV_INSTRUMENT_kprobes.o := n
>  UBSAN_SANITIZE_kprobes.o := n
>  GCOV_PROFILE_kprobes-ftrace.o := n
> +PGO_PROFILE_kprobes-ftrace.o := n
>  KCOV_INSTRUMENT_kprobes-ftrace.o := n
>  UBSAN_SANITIZE_kprobes-ftrace.o := n
>  GCOV_PROFILE_syscall_64.o := n
> +PGO_PROFILE_syscall_64.o := n
>  KCOV_INSTRUMENT_syscall_64.o := n
>  UBSAN_SANITIZE_syscall_64.o := n
>  UBSAN_SANITIZE_vdso.o := n
> diff --git a/arch/powerpc/kernel/trace/Makefile b/arch/powerpc/kernel/trace/Makefile
> index 858503775c583..7d72ae7d4f8c6 100644
> --- a/arch/powerpc/kernel/trace/Makefile
> +++ b/arch/powerpc/kernel/trace/Makefile
> @@ -23,7 +23,8 @@ obj-$(CONFIG_TRACING)                 += trace_clock.o
>  obj-$(CONFIG_PPC64)                    += $(obj64-y)
>  obj-$(CONFIG_PPC32)                    += $(obj32-y)
>
> -# Disable GCOV, KCOV & sanitizers in odd or sensitive code
> +# Disable GCOV, PGO, KCOV & sanitizers in odd or sensitive code
>  GCOV_PROFILE_ftrace.o := n
> +PGO_PROFILE_ftrace.o := n
>  KCOV_INSTRUMENT_ftrace.o := n
>  UBSAN_SANITIZE_ftrace.o := n
> diff --git a/arch/powerpc/kernel/vdso32/Makefile b/arch/powerpc/kernel/vdso32/Makefile
> index 9cb6f524854b9..655e159975a04 100644
> --- a/arch/powerpc/kernel/vdso32/Makefile
> +++ b/arch/powerpc/kernel/vdso32/Makefile
> @@ -34,6 +34,7 @@ targets := $(obj-vdso32) vdso32.so.dbg
>  obj-vdso32 := $(addprefix $(obj)/, $(obj-vdso32))
>
>  GCOV_PROFILE := n
> +PGO_PROFILE := n
>  KCOV_INSTRUMENT := n
>  UBSAN_SANITIZE := n
>  KASAN_SANITIZE := n
> diff --git a/arch/powerpc/kernel/vdso64/Makefile b/arch/powerpc/kernel/vdso64/Makefile
> index bf363ff371521..12c286f5afc16 100644
> --- a/arch/powerpc/kernel/vdso64/Makefile
> +++ b/arch/powerpc/kernel/vdso64/Makefile
> @@ -21,6 +21,7 @@ targets := $(obj-vdso64) vdso64.so.dbg
>  obj-vdso64 := $(addprefix $(obj)/, $(obj-vdso64))
>
>  GCOV_PROFILE := n
> +PGO_PROFILE := n
>  KCOV_INSTRUMENT := n
>  UBSAN_SANITIZE := n
>  KASAN_SANITIZE := n
> diff --git a/arch/powerpc/kexec/Makefile b/arch/powerpc/kexec/Makefile
> index 4aff6846c7726..1c7f65e3cb969 100644
> --- a/arch/powerpc/kexec/Makefile
> +++ b/arch/powerpc/kexec/Makefile
> @@ -16,7 +16,8 @@ endif
>  endif
>
>
> -# Disable GCOV, KCOV & sanitizers in odd or sensitive code
> +# Disable GCOV, PGO, KCOV & sanitizers in odd or sensitive code
>  GCOV_PROFILE_core_$(BITS).o := n
> +PGO_PROFILE_core_$(BITS).o := n
>  KCOV_INSTRUMENT_core_$(BITS).o := n
>  UBSAN_SANITIZE_core_$(BITS).o := n
> diff --git a/arch/powerpc/xmon/Makefile b/arch/powerpc/xmon/Makefile
> index eb25d7554ffd1..7aff80d18b44b 100644
> --- a/arch/powerpc/xmon/Makefile
> +++ b/arch/powerpc/xmon/Makefile
> @@ -2,6 +2,7 @@
>  # Makefile for xmon
>
>  GCOV_PROFILE := n
> +PGO_PROFILE := n
>  KCOV_INSTRUMENT := n
>  UBSAN_SANITIZE := n
>  KASAN_SANITIZE := n
> diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
> index 0cfd6da784f84..882340dc3c647 100644
> --- a/arch/riscv/kernel/vdso/Makefile
> +++ b/arch/riscv/kernel/vdso/Makefile
> @@ -32,8 +32,9 @@ CPPFLAGS_vdso.lds += -P -C -U$(ARCH)
>  # Disable -pg to prevent insert call site
>  CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
>
> -# Disable gcov profiling for VDSO code
> +# Disable gcov and PGO profiling for VDSO code
>  GCOV_PROFILE := n
> +PGO_PROFILE := n
>  KCOV_INSTRUMENT := n
>
>  # Force dependency
> diff --git a/arch/s390/boot/Makefile b/arch/s390/boot/Makefile
> index 41a64b8dce252..bee4a32040e79 100644
> --- a/arch/s390/boot/Makefile
> +++ b/arch/s390/boot/Makefile
> @@ -5,6 +5,7 @@
>
>  KCOV_INSTRUMENT := n
>  GCOV_PROFILE := n
> +PGO_PROFILE := n
>  UBSAN_SANITIZE := n
>  KASAN_SANITIZE := n
>
> diff --git a/arch/s390/boot/compressed/Makefile b/arch/s390/boot/compressed/Makefile
> index de18dab518bb6..c3ab883e8425a 100644
> --- a/arch/s390/boot/compressed/Makefile
> +++ b/arch/s390/boot/compressed/Makefile
> @@ -7,6 +7,7 @@
>
>  KCOV_INSTRUMENT := n
>  GCOV_PROFILE := n
> +PGO_PROFILE := n
>  UBSAN_SANITIZE := n
>  KASAN_SANITIZE := n
>
> diff --git a/arch/s390/kernel/Makefile b/arch/s390/kernel/Makefile
> index dd73b7f074237..bd857aacad794 100644
> --- a/arch/s390/kernel/Makefile
> +++ b/arch/s390/kernel/Makefile
> @@ -14,6 +14,7 @@ CFLAGS_REMOVE_early.o         = $(CC_FLAGS_FTRACE)
>  endif
>
>  GCOV_PROFILE_early.o           := n
> +PGO_PROFILE_early.o            := n
>  KCOV_INSTRUMENT_early.o                := n
>  UBSAN_SANITIZE_early.o         := n
>  KASAN_SANITIZE_ipl.o           := n
> diff --git a/arch/s390/kernel/vdso64/Makefile b/arch/s390/kernel/vdso64/Makefile
> index a6e0fb6b91d6c..d7c43b7c1db96 100644
> --- a/arch/s390/kernel/vdso64/Makefile
> +++ b/arch/s390/kernel/vdso64/Makefile
> @@ -35,8 +35,9 @@ obj-y += vdso64_wrapper.o
>  targets += vdso64.lds
>  CPPFLAGS_vdso64.lds += -P -C -U$(ARCH)
>
> -# Disable gcov profiling, ubsan and kasan for VDSO code
> +# Disable gcov and PGO profiling, ubsan and kasan for VDSO code
>  GCOV_PROFILE := n
> +PGO_PROFILE := n
>  UBSAN_SANITIZE := n
>  KASAN_SANITIZE := n
>
> diff --git a/arch/s390/purgatory/Makefile b/arch/s390/purgatory/Makefile
> index c57f8c40e9926..9aef584e98466 100644
> --- a/arch/s390/purgatory/Makefile
> +++ b/arch/s390/purgatory/Makefile
> @@ -17,6 +17,7 @@ $(obj)/mem.o: $(srctree)/arch/s390/lib/mem.S FORCE
>
>  KCOV_INSTRUMENT := n
>  GCOV_PROFILE := n
> +PGO_PROFILE := n
>  UBSAN_SANITIZE := n
>  KASAN_SANITIZE := n
>
> diff --git a/arch/sh/boot/compressed/Makefile b/arch/sh/boot/compressed/Makefile
> index 589d2d8a573db..ae19aeeb3964c 100644
> --- a/arch/sh/boot/compressed/Makefile
> +++ b/arch/sh/boot/compressed/Makefile
> @@ -13,6 +13,7 @@ targets               := vmlinux vmlinux.bin vmlinux.bin.gz \
>  OBJECTS = $(obj)/head_32.o $(obj)/misc.o $(obj)/cache.o
>
>  GCOV_PROFILE := n
> +PGO_PROFILE := n
>
>  #
>  # IMAGE_OFFSET is the load offset of the compression loader
> diff --git a/arch/sh/mm/Makefile b/arch/sh/mm/Makefile
> index f69ddc70b1465..ea2782c631f43 100644
> --- a/arch/sh/mm/Makefile
> +++ b/arch/sh/mm/Makefile
> @@ -43,3 +43,4 @@ obj-$(CONFIG_UNCACHED_MAPPING)        += uncached.o
>  obj-$(CONFIG_HAVE_SRAM_POOL)   += sram.o
>
>  GCOV_PROFILE_pmb.o := n
> +PGO_PROFILE_pmb.o := n
> diff --git a/arch/sparc/vdso/Makefile b/arch/sparc/vdso/Makefile
> index c5e1545bc5cf9..ab5f3783fe199 100644
> --- a/arch/sparc/vdso/Makefile
> +++ b/arch/sparc/vdso/Makefile
> @@ -115,6 +115,7 @@ quiet_cmd_vdso = VDSO    $@
>
>  VDSO_LDFLAGS = -shared --hash-style=both --build-id=sha1 -Bsymbolic
>  GCOV_PROFILE := n
> +PGO_PROFILE := n
>
>  #
>  # Install the unstripped copies of vdso*.so.  If our toolchain supports
> diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> index 21f851179ff08..36305ea61dc09 100644
> --- a/arch/x86/Kconfig
> +++ b/arch/x86/Kconfig
> @@ -96,6 +96,7 @@ config X86
>         select ARCH_SUPPORTS_DEBUG_PAGEALLOC
>         select ARCH_SUPPORTS_NUMA_BALANCING     if X86_64
>         select ARCH_SUPPORTS_KMAP_LOCAL_FORCE_MAP       if NR_CPUS <= 4096
> +       select ARCH_SUPPORTS_PGO_CLANG          if X86_64
>         select ARCH_USE_BUILTIN_BSWAP
>         select ARCH_USE_QUEUED_RWLOCKS
>         select ARCH_USE_QUEUED_SPINLOCKS
> diff --git a/arch/x86/boot/Makefile b/arch/x86/boot/Makefile
> index fe605205b4ce2..383853e32f673 100644
> --- a/arch/x86/boot/Makefile
> +++ b/arch/x86/boot/Makefile
> @@ -71,6 +71,7 @@ KBUILD_AFLAGS := $(KBUILD_CFLAGS) -D__ASSEMBLY__
>  KBUILD_CFLAGS  += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
>  KBUILD_CFLAGS  += -fno-asynchronous-unwind-tables
>  GCOV_PROFILE := n
> +PGO_PROFILE := n
>  UBSAN_SANITIZE := n
>
>  $(obj)/bzImage: asflags-y  := $(SVGA_MODE)
> diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> index e0bc3988c3faa..ed12ab65f6065 100644
> --- a/arch/x86/boot/compressed/Makefile
> +++ b/arch/x86/boot/compressed/Makefile
> @@ -54,6 +54,7 @@ CFLAGS_sev-es.o += -I$(objtree)/arch/x86/lib/
>
>  KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
>  GCOV_PROFILE := n
> +PGO_PROFILE := n
>  UBSAN_SANITIZE :=n
>
>  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
> diff --git a/arch/x86/entry/vdso/Makefile b/arch/x86/entry/vdso/Makefile
> index 02e3e42f380bd..26e2b3af0145c 100644
> --- a/arch/x86/entry/vdso/Makefile
> +++ b/arch/x86/entry/vdso/Makefile
> @@ -179,6 +179,7 @@ quiet_cmd_vdso = VDSO    $@
>  VDSO_LDFLAGS = -shared --hash-style=both --build-id=sha1 \
>         $(call ld-option, --eh-frame-hdr) -Bsymbolic
>  GCOV_PROFILE := n
> +PGO_PROFILE := n
>
>  quiet_cmd_vdso_and_check = VDSO    $@
>        cmd_vdso_and_check = $(cmd_vdso); $(cmd_vdso_check)
> diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
> index efd9e9ea17f25..f6cab2316c46a 100644
> --- a/arch/x86/kernel/vmlinux.lds.S
> +++ b/arch/x86/kernel/vmlinux.lds.S
> @@ -184,6 +184,8 @@ SECTIONS
>
>         BUG_TABLE
>
> +       PGO_CLANG_DATA
> +
>         ORC_UNWIND_TABLE
>
>         . = ALIGN(PAGE_SIZE);
> diff --git a/arch/x86/platform/efi/Makefile b/arch/x86/platform/efi/Makefile
> index 84b09c230cbd5..5f22b31446ad4 100644
> --- a/arch/x86/platform/efi/Makefile
> +++ b/arch/x86/platform/efi/Makefile
> @@ -2,6 +2,7 @@
>  OBJECT_FILES_NON_STANDARD_efi_thunk_$(BITS).o := y
>  KASAN_SANITIZE := n
>  GCOV_PROFILE := n
> +PGO_PROFILE := n
>
>  obj-$(CONFIG_EFI)              += quirks.o efi.o efi_$(BITS).o efi_stub_$(BITS).o
>  obj-$(CONFIG_EFI_MIXED)                += efi_thunk_$(BITS).o
> diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
> index 95ea17a9d20cb..36f20e99da0bc 100644
> --- a/arch/x86/purgatory/Makefile
> +++ b/arch/x86/purgatory/Makefile
> @@ -23,6 +23,7 @@ targets += purgatory.ro purgatory.chk
>
>  # Sanitizer, etc. runtimes are unavailable and cannot be linked here.
>  GCOV_PROFILE   := n
> +PGO_PROFILE    := n
>  KASAN_SANITIZE := n
>  UBSAN_SANITIZE := n
>  KCSAN_SANITIZE := n
> diff --git a/arch/x86/realmode/rm/Makefile b/arch/x86/realmode/rm/Makefile
> index 83f1b6a56449f..21797192f958f 100644
> --- a/arch/x86/realmode/rm/Makefile
> +++ b/arch/x86/realmode/rm/Makefile
> @@ -76,4 +76,5 @@ KBUILD_CFLAGS := $(REALMODE_CFLAGS) -D_SETUP -D_WAKEUP \
>  KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
>  KBUILD_CFLAGS  += -fno-asynchronous-unwind-tables
>  GCOV_PROFILE := n
> +PGO_PROFILE := n
>  UBSAN_SANITIZE := n
> diff --git a/arch/x86/um/vdso/Makefile b/arch/x86/um/vdso/Makefile
> index 5943387e3f357..54f5768f58530 100644
> --- a/arch/x86/um/vdso/Makefile
> +++ b/arch/x86/um/vdso/Makefile
> @@ -64,6 +64,7 @@ quiet_cmd_vdso = VDSO    $@
>
>  VDSO_LDFLAGS = -fPIC -shared -Wl,--hash-style=sysv
>  GCOV_PROFILE := n
> +PGO_PROFILE := n
>
>  #
>  # Install the unstripped copy of vdso*.so listed in $(vdso-install-y).
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index 8a94388e38b33..2d81623b33f29 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -40,6 +40,7 @@ KBUILD_CFLAGS                 := $(cflags-y) -Os -DDISABLE_BRANCH_PROFILING \
>  KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
>
>  GCOV_PROFILE                   := n
> +PGO_PROFILE                    := n
>  # Sanitizer runtimes are unavailable and cannot be linked here.
>  KASAN_SANITIZE                 := n
>  KCSAN_SANITIZE                 := n
> diff --git a/drivers/s390/char/Makefile b/drivers/s390/char/Makefile
> index c6fdb81a068a6..bf6c5db5da1fc 100644
> --- a/drivers/s390/char/Makefile
> +++ b/drivers/s390/char/Makefile
> @@ -9,6 +9,7 @@ CFLAGS_REMOVE_sclp_early_core.o = $(CC_FLAGS_FTRACE)
>  endif
>
>  GCOV_PROFILE_sclp_early_core.o         := n
> +PGO_PROFILE_sclp_early_core.o          := n
>  KCOV_INSTRUMENT_sclp_early_core.o      := n
>  UBSAN_SANITIZE_sclp_early_core.o       := n
>  KASAN_SANITIZE_sclp_early_core.o       := n
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index b2b3d81b1535a..3a591bb18c5fb 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -316,6 +316,49 @@
>  #define THERMAL_TABLE(name)
>  #endif
>
> +#ifdef CONFIG_PGO_CLANG
> +#define PGO_CLANG_DATA                                                 \
> +       __llvm_prf_data : AT(ADDR(__llvm_prf_data) - LOAD_OFFSET) {     \
> +               . = ALIGN(8);                                           \
> +               __llvm_prf_start = .;                                   \
> +               __llvm_prf_data_start = .;                              \
> +               KEEP(*(__llvm_prf_data))                                \
> +               . = ALIGN(8);                                           \
> +               __llvm_prf_data_end = .;                                \
> +       }                                                               \
> +       __llvm_prf_cnts : AT(ADDR(__llvm_prf_cnts) - LOAD_OFFSET) {     \
> +               . = ALIGN(8);                                           \
> +               __llvm_prf_cnts_start = .;                              \
> +               KEEP(*(__llvm_prf_cnts))                                \
> +               . = ALIGN(8);                                           \
> +               __llvm_prf_cnts_end = .;                                \
> +       }                                                               \
> +       __llvm_prf_names : AT(ADDR(__llvm_prf_names) - LOAD_OFFSET) {   \
> +               . = ALIGN(8);                                           \
> +               __llvm_prf_names_start = .;                             \
> +               KEEP(*(__llvm_prf_names))                               \
> +               . = ALIGN(8);                                           \
> +               __llvm_prf_names_end = .;                               \
> +               . = ALIGN(8);                                           \
> +       }                                                               \
> +       __llvm_prf_vals : AT(ADDR(__llvm_prf_vals) - LOAD_OFFSET) {     \
> +               __llvm_prf_vals_start = .;                              \
> +               KEEP(*(__llvm_prf_vals))                                \
> +               . = ALIGN(8);                                           \
> +               __llvm_prf_vals_end = .;                                \
> +               . = ALIGN(8);                                           \
> +       }                                                               \
> +       __llvm_prf_vnds : AT(ADDR(__llvm_prf_vnds) - LOAD_OFFSET) {     \
> +               __llvm_prf_vnds_start = .;                              \
> +               KEEP(*(__llvm_prf_vnds))                                \
> +               . = ALIGN(8);                                           \
> +               __llvm_prf_vnds_end = .;                                \
> +               __llvm_prf_end = .;                                     \
> +       }
> +#else
> +#define PGO_CLANG_DATA
> +#endif
> +
>  #define KERNEL_DTB()                                                   \
>         STRUCT_ALIGN();                                                 \
>         __dtb_start = .;                                                \
> @@ -1125,6 +1168,7 @@
>                 CONSTRUCTORS                                            \
>         }                                                               \
>         BUG_TABLE                                                       \
> +       PGO_CLANG_DATA
>
>  #define INIT_TEXT_SECTION(inittext_align)                              \
>         . = ALIGN(inittext_align);                                      \
> diff --git a/kernel/Makefile b/kernel/Makefile
> index aa7368c7eabf3..0b34ca228ba46 100644
> --- a/kernel/Makefile
> +++ b/kernel/Makefile
> @@ -111,6 +111,7 @@ obj-$(CONFIG_BPF) += bpf/
>  obj-$(CONFIG_KCSAN) += kcsan/
>  obj-$(CONFIG_SHADOW_CALL_STACK) += scs.o
>  obj-$(CONFIG_HAVE_STATIC_CALL_INLINE) += static_call.o
> +obj-$(CONFIG_PGO_CLANG) += pgo/
>
>  obj-$(CONFIG_PERF_EVENTS) += events/
>
> diff --git a/kernel/pgo/Kconfig b/kernel/pgo/Kconfig
> new file mode 100644
> index 0000000000000..318d36bb3d106
> --- /dev/null
> +++ b/kernel/pgo/Kconfig
> @@ -0,0 +1,34 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +menu "Profile Guided Optimization (PGO) (EXPERIMENTAL)"
> +
> +config ARCH_SUPPORTS_PGO_CLANG
> +       bool
> +
> +config PGO_CLANG
> +       bool "Enable clang's PGO-based kernel profiling"
> +       depends on DEBUG_FS
> +       depends on ARCH_SUPPORTS_PGO_CLANG
> +       help
> +         This option enables clang's PGO (Profile Guided Optimization) based
> +         code profiling to better optimize the kernel.
> +
> +         If unsure, say N.
> +
> +         Run a representative workload for your application on a kernel
> +         compiled with this option and download the raw profile file from
> +         /sys/kernel/debug/pgo/profraw. This file needs to be processed with
> +         llvm-profdata. It may be merged with other collected raw profiles.
> +
> +         Copy the resulting profile file into vmlinux.profdata, and enable
> +         KCFLAGS=-fprofile-use=vmlinux.profdata to produce an optimized
> +         kernel.
> +
> +         Note that a kernel compiled with profiling flags will be
> +         significatnly larger and run slower. Also be sure to exclude files
> +         from profiling which are not linked to the kernel image to prevent
> +         linker errors.
> +
> +         Note that the debugfs filesystem has to be mounted to access
> +         profiling data.
> +
> +endmenu
> diff --git a/kernel/pgo/Makefile b/kernel/pgo/Makefile
> new file mode 100644
> index 0000000000000..41e27cefd9a47
> --- /dev/null
> +++ b/kernel/pgo/Makefile
> @@ -0,0 +1,5 @@
> +# SPDX-License-Identifier: GPL-2.0
> +GCOV_PROFILE   := n
> +PGO_PROFILE    := n
> +
> +obj-y  += fs.o instrument.o
> diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
> new file mode 100644
> index 0000000000000..790a8df037bfc
> --- /dev/null
> +++ b/kernel/pgo/fs.c
> @@ -0,0 +1,382 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2019 Google, Inc.
> + *
> + * Author:
> + *     Sami Tolvanen <samitolvanen@google.com>
> + *
> + * This software is licensed under the terms of the GNU General Public
> + * License version 2, as published by the Free Software Foundation, and
> + * may be copied, distributed, and modified under those terms.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#define pr_fmt(fmt)    "pgo: " fmt
> +
> +#include <linux/kernel.h>
> +#include <linux/debugfs.h>
> +#include <linux/fs.h>
> +#include <linux/module.h>
> +#include <linux/slab.h>
> +#include <linux/vmalloc.h>
> +#include "pgo.h"
> +
> +static struct dentry *directory;
> +
> +struct prf_private_data {
> +       void *buffer;
> +       unsigned long size;
> +};
> +
> +/*
> + * Raw profile data format:
> + *
> + *     - llvm_prf_header
> + *     - __llvm_prf_data
> + *     - __llvm_prf_cnts
> + *     - __llvm_prf_names
> + *     - zero padding to 8 bytes
> + *     - for each llvm_prf_data in __llvm_prf_data:
> + *             - llvm_prf_value_data
> + *                     - llvm_prf_value_record + site count array
> + *                             - llvm_prf_value_node_data
> + *                             ...
> + *                     ...
> + *             ...
> + */
> +
> +static void prf_fill_header(void **buffer)
> +{
> +       struct llvm_prf_header *header = *(struct llvm_prf_header **)buffer;
> +
> +       header->magic = LLVM_PRF_MAGIC;
> +       header->version = LLVM_PRF_VARIANT_MASK_IR | LLVM_PRF_VERSION;
> +       header->data_size = prf_data_count();
> +       header->padding_bytes_before_counters = 0;
> +       header->counters_size = prf_cnts_count();
> +       header->padding_bytes_after_counters = 0;
> +       header->names_size = prf_names_count();
> +       header->counters_delta = (u64)__llvm_prf_cnts_start;
> +       header->names_delta = (u64)__llvm_prf_names_start;
> +       header->value_kind_last = LLVM_PRF_IPVK_LAST;
> +
> +       *buffer += sizeof(*header);
> +}
> +
> +/*
> + * Copy the source into the buffer, incrementing the pointer into buffer in the
> + * process.
> + */
> +static void prf_copy_to_buffer(void **buffer, void *src, unsigned long size)
> +{
> +       memcpy(*buffer, src, size);
> +       *buffer += size;
> +}
> +
> +static u32 __prf_get_value_size(struct llvm_prf_data *p, u32 *value_kinds)
> +{
> +       struct llvm_prf_value_node **nodes =
> +               (struct llvm_prf_value_node **)p->values;
> +       u32 kinds = 0;
> +       u32 size = 0;
> +       unsigned int kind;
> +       unsigned int n;
> +       unsigned int s = 0;
> +
> +       for (kind = 0; kind < ARRAY_SIZE(p->num_value_sites); kind++) {
> +               unsigned int sites = p->num_value_sites[kind];
> +
> +               if (!sites)
> +                       continue;
> +
> +               /* Record + site count array */
> +               size += prf_get_value_record_size(sites);
> +               kinds++;
> +
> +               if (!nodes)
> +                       continue;
> +
> +               for (n = 0; n < sites; n++) {
> +                       u32 count = 0;
> +                       struct llvm_prf_value_node *site = nodes[s + n];
> +
> +                       while (site && ++count <= U8_MAX)
> +                               site = site->next;
> +
> +                       size += count *
> +                               sizeof(struct llvm_prf_value_node_data);
> +               }
> +
> +               s += sites;
> +       }
> +
> +       if (size)
> +               size += sizeof(struct llvm_prf_value_data);
> +
> +       if (value_kinds)
> +               *value_kinds = kinds;
> +
> +       return size;
> +}
> +
> +static u32 prf_get_value_size(void)
> +{
> +       u32 size = 0;
> +       struct llvm_prf_data *p;
> +
> +       for (p = __llvm_prf_data_start; p < __llvm_prf_data_end; p++)
> +               size += __prf_get_value_size(p, NULL);
> +
> +       return size;
> +}
> +
> +/* Serialize the profiling's value. */
> +static void prf_serialize_value(struct llvm_prf_data *p, void **buffer)
> +{
> +       struct llvm_prf_value_data header;
> +       struct llvm_prf_value_node **nodes =
> +               (struct llvm_prf_value_node **)p->values;
> +       unsigned int kind;
> +       unsigned int n;
> +       unsigned int s = 0;
> +
> +       header.total_size = __prf_get_value_size(p, &header.num_value_kinds);
> +
> +       if (!header.num_value_kinds)
> +               /* Nothing to write. */
> +               return;
> +
> +       prf_copy_to_buffer(buffer, &header, sizeof(header));
> +
> +       for (kind = 0; kind < ARRAY_SIZE(p->num_value_sites); kind++) {
> +               struct llvm_prf_value_record *record;
> +               u8 *counts;
> +               unsigned int sites = p->num_value_sites[kind];
> +
> +               if (!sites)
> +                       continue;
> +
> +               /* Profiling value record. */
> +               record = *(struct llvm_prf_value_record **)buffer;
> +               *buffer += prf_get_value_record_header_size();
> +
> +               record->kind = kind;
> +               record->num_value_sites = sites;
> +
> +               /* Site count array. */
> +               counts = *(u8 **)buffer;
> +               *buffer += prf_get_value_record_site_count_size(sites);
> +
> +               /*
> +                * If we don't have nodes, we can skip updating the site count
> +                * array, because the buffer is zero filled.
> +                */
> +               if (!nodes)
> +                       continue;
> +
> +               for (n = 0; n < sites; n++) {
> +                       u32 count = 0;
> +                       struct llvm_prf_value_node *site = nodes[s + n];
> +
> +                       while (site && ++count <= U8_MAX) {
> +                               prf_copy_to_buffer(buffer, site,
> +                                                  sizeof(struct llvm_prf_value_node_data));
> +                               site = site->next;
> +                       }
> +
> +                       counts[n] = (u8)count;
> +               }
> +
> +               s += sites;
> +       }
> +}
> +
> +static void prf_serialize_values(void **buffer)
> +{
> +       struct llvm_prf_data *p;
> +
> +       for (p = __llvm_prf_data_start; p < __llvm_prf_data_end; p++)
> +               prf_serialize_value(p, buffer);
> +}
> +
> +static inline unsigned long prf_get_padding(unsigned long size)
> +{
> +       return 8 - (size % 8);
> +}
> +
> +static unsigned long prf_buffer_size(void)
> +{
> +       return sizeof(struct llvm_prf_header) +
> +                       prf_data_size() +
> +                       prf_cnts_size() +
> +                       prf_names_size() +
> +                       prf_get_padding(prf_names_size()) +
> +                       prf_get_value_size();
> +}
> +
> +/* Serialize the profling data into a format LLVM's tools can understand. */
> +static int prf_serialize(struct prf_private_data *p)
> +{
> +       int err = 0;
> +       void *buffer;
> +
> +       p->size = prf_buffer_size();
> +       p->buffer = vzalloc(p->size);
> +
> +       if (!p->buffer) {
> +               err = -ENOMEM;
> +               goto out;
> +       }
> +
> +       buffer = p->buffer;
> +
> +       prf_fill_header(&buffer);
> +       prf_copy_to_buffer(&buffer, __llvm_prf_data_start,  prf_data_size());
> +       prf_copy_to_buffer(&buffer, __llvm_prf_cnts_start,  prf_cnts_size());
> +       prf_copy_to_buffer(&buffer, __llvm_prf_names_start, prf_names_size());
> +       buffer += prf_get_padding(prf_names_size());
> +
> +       prf_serialize_values(&buffer);
> +
> +out:
> +       return err;
> +}
> +
> +/* open() implementation for PGO. Creates a copy of the profiling data set. */
> +static int prf_open(struct inode *inode, struct file *file)
> +{
> +       struct prf_private_data *data;
> +       unsigned long flags;
> +       int err;
> +
> +       data = kzalloc(sizeof(*data), GFP_KERNEL);
> +       if (!data) {
> +               err = -ENOMEM;
> +               goto out;
> +       }
> +
> +       flags = prf_lock();
> +
> +       err = prf_serialize(data);
> +       if (err) {
> +               kfree(data);
> +               goto out_unlock;
> +       }
> +
> +       file->private_data = data;
> +
> +out_unlock:
> +       prf_unlock(flags);
> +out:
> +       return err;
> +}
> +
> +/* read() implementation for PGO. */
> +static ssize_t prf_read(struct file *file, char __user *buf, size_t count,
> +                       loff_t *ppos)
> +{
> +       struct prf_private_data *data = file->private_data;
> +
> +       BUG_ON(!data);
> +
> +       return simple_read_from_buffer(buf, count, ppos, data->buffer,
> +                                      data->size);
> +}
> +
> +/* release() implementation for PGO. Release resources allocated by open(). */
> +static int prf_release(struct inode *inode, struct file *file)
> +{
> +       struct prf_private_data *data = file->private_data;
> +
> +       if (data) {
> +               vfree(data->buffer);
> +               kfree(data);
> +       }
> +
> +       return 0;
> +}
> +
> +static const struct file_operations prf_fops = {
> +       .owner          = THIS_MODULE,
> +       .open           = prf_open,
> +       .read           = prf_read,
> +       .llseek         = default_llseek,
> +       .release        = prf_release
> +};
> +
> +/* write() implementation for resetting PGO's profile data. */
> +static ssize_t reset_write(struct file *file, const char __user *addr,
> +                          size_t len, loff_t *pos)
> +{
> +       struct llvm_prf_data *data;
> +
> +       memset(__llvm_prf_cnts_start, 0, prf_cnts_size());
> +
> +       for (data = __llvm_prf_data_start; data < __llvm_prf_data_end; ++data) {
> +               struct llvm_prf_value_node **vnodes;
> +               u64 current_vsite_count;
> +               u32 i;
> +
> +               if (!data->values)
> +                       continue;
> +
> +               current_vsite_count = 0;
> +               vnodes = (struct llvm_prf_value_node **)data->values;
> +
> +               for (i = LLVM_PRF_IPVK_FIRST; i <= LLVM_PRF_IPVK_LAST; ++i)
> +                       current_vsite_count += data->num_value_sites[i];
> +
> +               for (i = 0; i < current_vsite_count; ++i) {
> +                       struct llvm_prf_value_node *current_vnode = vnodes[i];
> +
> +                       while (current_vnode) {
> +                               current_vnode->count = 0;
> +                               current_vnode = current_vnode->next;
> +                       }
> +               }
> +       }
> +
> +       return len;
> +}
> +
> +static const struct file_operations prf_reset_fops = {
> +       .owner          = THIS_MODULE,
> +       .write          = reset_write,
> +       .llseek         = noop_llseek,
> +};
> +
> +/* Create debugfs entries. */
> +static int __init pgo_init(void)
> +{
> +       directory = debugfs_create_dir("pgo", NULL);
> +       if (!directory)
> +               goto err_remove;
> +
> +       if (!debugfs_create_file("profraw", 0600, directory, NULL,
> +                                &prf_fops))
> +               goto err_remove;
> +
> +       if (!debugfs_create_file("reset", 0200, directory, NULL,
> +                                &prf_reset_fops))
> +               goto err_remove;
> +
> +       return 0;
> +
> +err_remove:
> +       pr_err("initialization failed\n");
> +       return -EIO;
> +}
> +
> +/* Remove debufs entries. */
> +static void __exit pgo_exit(void)
> +{
> +       debugfs_remove_recursive(directory);
> +}
> +
> +module_init(pgo_init);
> +module_exit(pgo_exit);
> diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
> new file mode 100644
> index 0000000000000..465615b7f8735
> --- /dev/null
> +++ b/kernel/pgo/instrument.c
> @@ -0,0 +1,188 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2019 Google, Inc.
> + *
> + * Author:
> + *     Sami Tolvanen <samitolvanen@google.com>
> + *
> + * This software is licensed under the terms of the GNU General Public
> + * License version 2, as published by the Free Software Foundation, and
> + * may be copied, distributed, and modified under those terms.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#define pr_fmt(fmt)    "pgo: " fmt
> +
> +#include <linux/kernel.h>
> +#include <linux/export.h>
> +#include <linux/spinlock.h>
> +#include <linux/types.h>
> +#include "pgo.h"
> +
> +/* Lock guarding value node access and serialization. */
> +static DEFINE_SPINLOCK(pgo_lock);
> +static int current_node;
> +
> +unsigned long prf_lock(void)
> +{
> +       unsigned long flags;
> +
> +       spin_lock_irqsave(&pgo_lock, flags);
> +
> +       return flags;
> +}
> +
> +void prf_unlock(unsigned long flags)
> +{
> +       spin_unlock_irqrestore(&pgo_lock, flags);
> +}
> +
> +/*
> + * Return a newly allocated profiling value node which contains the tracked
> + * value by the value profiler.
> + * Note: caller *must* hold pgo_lock.
> + */
> +static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data *p,
> +                                                u32 index, u64 value)
> +{
> +       if (&__llvm_prf_vnds_start[current_node + 1] >= __llvm_prf_vnds_end)
> +               return NULL; /* Out of nodes */
> +
> +       current_node++;
> +
> +       /* Make sure the node is entirely within the section */
> +       if (&__llvm_prf_vnds_start[current_node] >= __llvm_prf_vnds_end ||
> +           &__llvm_prf_vnds_start[current_node + 1] > __llvm_prf_vnds_end)
> +               return NULL;
> +
> +       return &__llvm_prf_vnds_start[current_node];
> +}
> +
> +/*
> + * Counts the number of times a target value is seen.
> + *
> + * Records the target value for the CounterIndex if not seen before. Otherwise,
> + * increments the counter associated w/ the target value.
> + */
> +void __llvm_profile_instrument_target(u64 target_value, void *data, u32 index)
> +{
> +       struct llvm_prf_data *p = (struct llvm_prf_data *)data;
> +       struct llvm_prf_value_node **counters;
> +       struct llvm_prf_value_node *curr;
> +       struct llvm_prf_value_node *min = NULL;
> +       struct llvm_prf_value_node *prev = NULL;
> +       u64 min_count = U64_MAX;
> +       u8 values = 0;
> +       unsigned long flags;
> +
> +       if (!p || !p->values)
> +               return;
> +
> +       counters = (struct llvm_prf_value_node **)p->values;
> +       curr = counters[index];
> +
> +       while (curr) {
> +               if (target_value == curr->value) {
> +                       curr->count++;
> +                       return;
> +               }
> +
> +               if (curr->count < min_count) {
> +                       min_count = curr->count;
> +                       min = curr;
> +               }
> +
> +               prev = curr;
> +               curr = curr->next;
> +               values++;
> +       }
> +
> +       if (values >= LLVM_PRF_MAX_NUM_VALS_PER_SITE) {
> +               if (!min->count || !(--min->count)) {
> +                       curr = min;
> +                       curr->value = target_value;
> +                       curr->count++;
> +               }
> +               return;
> +       }
> +
> +       /* Lock when updating the value node structure. */
> +       flags = prf_lock();
> +
> +       curr = allocate_node(p, index, target_value);
> +       if (!curr)
> +               goto out;
> +
> +       curr->value = target_value;
> +       curr->count++;
> +
> +       if (!counters[index])
> +               counters[index] = curr;
> +       else if (prev && !prev->next)
> +               prev->next = curr;
> +
> +out:
> +       prf_unlock(flags);
> +}
> +EXPORT_SYMBOL(__llvm_profile_instrument_target);
> +
> +/* Counts the number of times a range of targets values are seen. */
> +void __llvm_profile_instrument_range(u64 target_value, void *data,
> +                                    u32 index, s64 precise_start,
> +                                    s64 precise_last, s64 large_value)
> +{
> +       if (large_value != S64_MIN && (s64)target_value >= large_value)
> +               target_value = large_value;
> +       else if ((s64)target_value < precise_start ||
> +                (s64)target_value > precise_last)
> +               target_value = precise_last + 1;
> +
> +       __llvm_profile_instrument_target(target_value, data, index);
> +}
> +EXPORT_SYMBOL(__llvm_profile_instrument_range);
> +
> +static inline int inst_prof_popcount(unsigned long long value)
> +{
> +       value = value - ((value >> 1) & 0x5555555555555555ULL);
> +       value = (value & 0x3333333333333333ULL) +
> +               ((value >> 2) & 0x3333333333333333ULL);
> +       value = (value + (value >> 4)) & 0x0F0F0F0F0F0F0F0FULL;
> +
> +       return (int)((unsigned long long)(value * 0x0101010101010101ULL) >> 56);
> +}
> +
> +static u64 inst_prof_get_range_rep_value(u64 value)
> +{
> +       if (value <= 8)
> +               /* The first ranges are individually tracked, us it as is. */
> +               return value;
> +       else if (value >= 513)
> +               /* The last range is mapped to its lowest value. */
> +               return 513;
> +       else if (inst_prof_popcount(value) == 1)
> +               /* If it's a power of two, use it as is. */
> +               return value;
> +
> +       /* Otherwise, take to the previous power of two + 1. */
> +       return (1 << (64 - __builtin_clzll(value) - 1)) + 1;
> +}
> +
> +/*
> + * The target values are partitioned into multiple ranges. The range spec is
> + * defined in compiler-rt/include/profile/InstrProfData.inc.
> + */
> +void __llvm_profile_instrument_memop(u64 target_value, void *data,
> +                                    u32 counter_index)
> +{
> +       u64 rep_value;
> +
> +       /* Map the target value to the representative value of its range. */
> +       rep_value = inst_prof_get_range_rep_value(target_value);
> +       __llvm_profile_instrument_target(rep_value, data, counter_index);
> +}
> +EXPORT_SYMBOL(__llvm_profile_instrument_memop);
> diff --git a/kernel/pgo/pgo.h b/kernel/pgo/pgo.h
> new file mode 100644
> index 0000000000000..df0aa278f28bd
> --- /dev/null
> +++ b/kernel/pgo/pgo.h
> @@ -0,0 +1,206 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2019 Google, Inc.
> + *
> + * Author:
> + *     Sami Tolvanen <samitolvanen@google.com>
> + *
> + * This software is licensed under the terms of the GNU General Public
> + * License version 2, as published by the Free Software Foundation, and
> + * may be copied, distributed, and modified under those terms.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#ifndef _PGO_H
> +#define _PGO_H
> +
> +/*
> + * Note: These internal LLVM definitions must match the compiler version.
> + * See llvm/include/llvm/ProfileData/InstrProfData.inc in LLVM's source code.
> + */
> +
> +#ifdef CONFIG_64BIT
> +       #define LLVM_PRF_MAGIC          \
> +               ((u64)255 << 56 |       \
> +                (u64)'l' << 48 |       \
> +                (u64)'p' << 40 |       \
> +                (u64)'r' << 32 |       \
> +                (u64)'o' << 24 |       \
> +                (u64)'f' << 16 |       \
> +                (u64)'r' << 8  |       \
> +                (u64)129)
> +#else
> +       #define LLVM_PRF_MAGIC          \
> +               ((u64)255 << 56 |       \
> +                (u64)'l' << 48 |       \
> +                (u64)'p' << 40 |       \
> +                (u64)'r' << 32 |       \
> +                (u64)'o' << 24 |       \
> +                (u64)'f' << 16 |       \
> +                (u64)'R' << 8  |       \
> +                (u64)129)
> +#endif
> +
> +#define LLVM_PRF_VERSION               5
> +#define LLVM_PRF_DATA_ALIGN            8
> +#define LLVM_PRF_IPVK_FIRST            0
> +#define LLVM_PRF_IPVK_LAST             1
> +#define LLVM_PRF_MAX_NUM_VALS_PER_SITE 16
> +
> +#define LLVM_PRF_VARIANT_MASK_IR       (0x1ull << 56)
> +#define LLVM_PRF_VARIANT_MASK_CSIR     (0x1ull << 57)
> +
> +/**
> + * struct llvm_prf_header - represents the raw profile header data structure.
> + * @magic: the magic token for the file format.
> + * @version: the version of the file format.
> + * @data_size: the number of entries in the profile data section.
> + * @padding_bytes_before_counters: the number of padding bytes before the
> + *   counters.
> + * @counters_size: the size in bytes of the LLVM profile section containing the
> + *   counters.
> + * @padding_bytes_after_counters: the number of padding bytes after the
> + *   counters.
> + * @names_size: the size in bytes of the LLVM profile section containing the
> + *   counters' names.
> + * @counters_delta: the beginning of the LLMV profile counters section.
> + * @names_delta: the beginning of the LLMV profile names section.
> + * @value_kind_last: the last profile value kind.
> + */
> +struct llvm_prf_header {
> +       u64 magic;
> +       u64 version;
> +       u64 data_size;
> +       u64 padding_bytes_before_counters;
> +       u64 counters_size;
> +       u64 padding_bytes_after_counters;
> +       u64 names_size;
> +       u64 counters_delta;
> +       u64 names_delta;
> +       u64 value_kind_last;
> +};
> +
> +/**
> + * struct llvm_prf_data - represents the per-function control structure.
> + * @name_ref: the reference to the function's name.
> + * @func_hash: the hash value of the function.
> + * @counter_ptr: a pointer to the profile counter.
> + * @function_ptr: a pointer to the function.
> + * @values: the profiling values associated with this function.
> + * @num_counters: the number of counters in the function.
> + * @num_value_sites: the number of value profile sites.
> + */
> +struct llvm_prf_data {
> +       const u64 name_ref;
> +       const u64 func_hash;
> +       const void *counter_ptr;
> +       const void *function_ptr;
> +       void *values;
> +       const u32 num_counters;
> +       const u16 num_value_sites[LLVM_PRF_IPVK_LAST + 1];
> +} __aligned(LLVM_PRF_DATA_ALIGN);
> +
> +/**
> + * structure llvm_prf_value_node_data - represents the data part of the struct
> + *   llvm_prf_value_node data structure.
> + * @value: the value counters.
> + * @count: the counters' count.
> + */
> +struct llvm_prf_value_node_data {
> +       u64 value;
> +       u64 count;
> +};
> +
> +/**
> + * struct llvm_prf_value_node - represents an internal data structure used by
> + *   the value profiler.
> + * @value: the value counters.
> + * @count: the counters' count.
> + * @next: the next value node.
> + */
> +struct llvm_prf_value_node {
> +       u64 value;
> +       u64 count;
> +       struct llvm_prf_value_node *next;
> +};
> +
> +/**
> + * struct llvm_prf_value_data - represents the value profiling data in indexed
> + *   format.
> + * @total_size: the total size in bytes including this field.
> + * @num_value_kinds: the number of value profile kinds that has value profile
> + *   data.
> + */
> +struct llvm_prf_value_data {
> +       u32 total_size;
> +       u32 num_value_kinds;
> +};
> +
> +/**
> + * struct llvm_prf_value_record - represents the on-disk layout of the value
> + *   profile data of a particular kind for one function.
> + * @kind: the kind of the value profile record.
> + * @num_value_sites: the number of value profile sites.
> + * @site_count_array: the first element of the array that stores the number
> + *   of profiled values for each value site.
> + */
> +struct llvm_prf_value_record {
> +       u32 kind;
> +       u32 num_value_sites;
> +       u8 site_count_array[];
> +};
> +
> +#define prf_get_value_record_header_size()             \
> +       offsetof(struct llvm_prf_value_record, site_count_array)
> +#define prf_get_value_record_site_count_size(sites)    \
> +       roundup((sites), 8)
> +#define prf_get_value_record_size(sites)               \
> +       (prf_get_value_record_header_size() +           \
> +        prf_get_value_record_site_count_size((sites)))
> +
> +/* Data sections */
> +extern struct llvm_prf_data __llvm_prf_data_start[];
> +extern struct llvm_prf_data __llvm_prf_data_end[];
> +
> +extern u64 __llvm_prf_cnts_start[];
> +extern u64 __llvm_prf_cnts_end[];
> +
> +extern char __llvm_prf_names_start[];
> +extern char __llvm_prf_names_end[];
> +
> +extern struct llvm_prf_value_node __llvm_prf_vnds_start[];
> +extern struct llvm_prf_value_node __llvm_prf_vnds_end[];
> +
> +/* Locking for vnodes */
> +extern unsigned long prf_lock(void);
> +extern void prf_unlock(unsigned long flags);
> +
> +#define __DEFINE_PRF_SIZE(s) \
> +       static inline unsigned long prf_ ## s ## _size(void)            \
> +       {                                                               \
> +               unsigned long start =                                   \
> +                       (unsigned long)__llvm_prf_ ## s ## _start;      \
> +               unsigned long end =                                     \
> +                       (unsigned long)__llvm_prf_ ## s ## _end;        \
> +               return roundup(end - start,                             \
> +                               sizeof(__llvm_prf_ ## s ## _start[0])); \
> +       }                                                               \
> +       static inline unsigned long prf_ ## s ## _count(void)           \
> +       {                                                               \
> +               return prf_ ## s ## _size() /                           \
> +                       sizeof(__llvm_prf_ ## s ## _start[0]);          \
> +       }
> +
> +__DEFINE_PRF_SIZE(data);
> +__DEFINE_PRF_SIZE(cnts);
> +__DEFINE_PRF_SIZE(names);
> +__DEFINE_PRF_SIZE(vnds);
> +
> +#undef __DEFINE_PRF_SIZE
> +
> +#endif /* _PGO_H */
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 213677a5ed33e..9b218afb5cb87 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -143,6 +143,16 @@ _c_flags += $(if $(patsubst n%,, \
>                 $(CFLAGS_GCOV))
>  endif
>
> +#
> +# Enable clang's PGO profiling flags for a file or directory depending on
> +# variables PGO_PROFILE_obj.o and PGO_PROFILE.
> +#
> +ifeq ($(CONFIG_PGO_CLANG),y)
> +_c_flags += $(if $(patsubst n%,, \
> +               $(PGO_PROFILE_$(basetarget).o)$(PGO_PROFILE)y), \
> +               $(CFLAGS_PGO_CLANG))
> +endif
> +
>  #
>  # Enable address sanitizer flags for kernel except some files or directories
>  # we don't want to check (depends on variables KASAN_SANITIZE_obj.o, KASAN_SANITIZE)
> --
> 2.30.0.284.gd98b1dd5eaa7-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210112051428.4175583-1-morbo%40google.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVL33F1B8pn0WTxDwVZhAvD9VOQZsLLb35iCvyZ4Lpndw%40mail.gmail.com.
