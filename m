Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBJX62LZAKGQEYE7L34I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B9B16B9C2
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 07:31:03 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id u20sf1005792lfu.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 22:31:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582612262; cv=pass;
        d=google.com; s=arc-20160816;
        b=sffnVljoWn9QDYJaWxLc3zxxrlDTjsM2f0E0PrSwVuae46D9ynICPiQb/5eF3OEHU9
         oDNXPmKSkl8mRSjy4oIkdbaGL674n0V6xjHxVU1sqe6mkZJCNHcvGsfNgEp0NEIAINCc
         Lni8XxTxmIos+cAZXe/32gSre0tQhFYr66Z0Loj/tB+2CJl7Im++1vBRH1J6/VH8AuSA
         Mc5A91FSKLEDzafT2PmPGfzylfGwHqs8rtMT6u8dY0G+GzZYkaVn6vepoC/KodjtDB32
         k9kd8QT3hQgN/F/WGshxnT5tQwbs2R+r0lIoT/K8B08hCcz4qOY0zpHDWFvhmBLhtaHW
         3Kmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=zfZVreOkKYuLu0G+W1BySWFoGhXkA8QsWilQuclz4po=;
        b=jisvYNlbNoiti72+DS0wh28WO2DA0lBUMY8yanIYyhsTlz/MbkfF/piw7TkFQp3oWa
         m/nRDBXNq5m5Ie3CcsuRZFoSr7RESpKBjl3un9ruPS+j8xa2B7v51d8wrxCB5epUGaL5
         xYJSoBNV5Pb/ToBf0eW7iBbWCsi+gKAgFb/cIjKB5q3L9lUqOBlLzFijTnBSky+PZiG8
         sX7lyiuwKG8tKxBReVxQfySizOj+4GPR6V7+n4qB4A7Wh5kTke7+MyfgCSHYF9n5DnXy
         JTTp5LI5gi57yt34v5AkSbNtaqFjVbnRBPwfISASPKivWQrbQQUgNXDGBJ63wdgUSzEU
         W/Iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MblnRK6L;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zfZVreOkKYuLu0G+W1BySWFoGhXkA8QsWilQuclz4po=;
        b=hXtk8UjI8jWZqRyjOR78pfHW3n1DhRmm5w2UYIgH55wlgS5y9cpjW0JYJcTsek8Fvf
         NglI8mEG7z8+y3gsqjH1sVRKhC2uTf2e52ybWTRUCHP9VUU2H3gm87HstHPyDHfMHa4K
         gLH3diB4tR1/xgVUY8cR/9jYRod92lNx8GvudBOwEkthAWvTEg/ioUXhldkjUqjaQmyY
         bLLfoMe27WJFyzk1ZHJIzpt6HgTTJfOdas+cK3iume/B0H83SlD2wFppiVD1Ym9qjI0k
         jFHrFxok8dNOl0TabpTFLJvCJD5nYVkMATz0JYV33qzpmwLNmr9Xh2KMuDdN1skK773E
         teQg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zfZVreOkKYuLu0G+W1BySWFoGhXkA8QsWilQuclz4po=;
        b=ZlDIUjvceZ/9/3Bc4dkLkQ6cz64Vc0YDH3Jh7R7at7jyzmLcsi4VstCdNkUUTeNFOd
         XI2WyZzHQmk5uPYYt43cqbuJko85fSwgti2j7/gcGTtMN00MXkTmmB5RkUYP5oSZpstD
         bCiDEVGFfoNnYOmSMWjcJ2y7L7Un4UY4DnZ4WEXrdYpd/3DPR/2Ua5pFpPA6gBmyNvt+
         4hkhYlDtZcf0160sPDNmihUYRHbY0n7erUAjODDzgqsPVkWTSKR7IGr33VCsLqmdG5Jm
         YIZQOL368KSYUygP//Gih4GNnVgno+TX8vZ4QbeHllaIJTNzsLwpmJ8my+fX4SrRIC2Z
         pv6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zfZVreOkKYuLu0G+W1BySWFoGhXkA8QsWilQuclz4po=;
        b=ULFIm0HBsvZf3C+0GoSIMpLdfReJVFFe1sK+XxWAgLimuBwOtIDalLVqT7gRaH5ZCc
         XBa0cY6wjPKakNwtJBGJOx5nh3IWoOkLmQFS/CH2kvu/ObGXu+8DhojtbHSfexYgx5G1
         SPzPapL9BrrBq+xsk2gzWfC3ia0N9tJME3bdnO9WP/RJVXjvjn5goNqevDX/NslqbxNX
         5+idV4oainTRiSec4j24HypyHCsKNPNs3vCmdC+x5ntTiXhectq865lhnUdcRpd0RPH6
         YpeP6A1zKXm7+MQmZ924mixSMp41o0O7I+dO7g0XrDwYFG2+mbLOTncnMiRFoEq1OcED
         /+QA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVOthI8OKV5IuScdXmoGhwOLVFRjq1v5BpuQ+F31/hYQrD/wk+9
	W+yqtflEKhXbe/hH4tUsfHU=
X-Google-Smtp-Source: APXvYqwXUDnVW14eSluIaZJDiaenYebHPQeSz/elAms4jHyj7NKhWR84wGG0OkRwPn09CaD3die8ag==
X-Received: by 2002:a19:4208:: with SMTP id p8mr29567713lfa.160.1582612262642;
        Mon, 24 Feb 2020 22:31:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1051:: with SMTP id x17ls1910378ljm.8.gmail; Mon,
 24 Feb 2020 22:31:01 -0800 (PST)
X-Received: by 2002:a2e:808a:: with SMTP id i10mr32211379ljg.151.1582612261861;
        Mon, 24 Feb 2020 22:31:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582612261; cv=none;
        d=google.com; s=arc-20160816;
        b=YfRWU5V9zQDCVBWjC4cgde9PHNwhw2iCoPjqUMuVB4T71bvwcgzuoAjzBwApvNCgoY
         O71X0gy59s9ZcEg9h7VXyu/lJ8ERO4kdz96pfUvF4vbaj4LqYBiAELVSGnf5/K6RqYp5
         mTofb5jsERnQSa/jDfwxv488zBdvUxoPv9rzhT0Q1Y8n6yr67usz3iUWHTqHRwgnxgWw
         f4/g3UVw123u89DW265Z4dEWOMlq2I99HMChgPy+H4NVKwV5KmpDsSSR6GkyMKLQuqSI
         QiRv5UliL5KqN28c2wQ87M5XQUmEjhp+qSoK205OPObVmm8cBDyblLt8cnPY/QUDfM3s
         nK7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZjrDQL3LER0qAgx1gMeLpsXVl1KwKwuKmN0OHczFSk4=;
        b=mHbGEiGmHDT2H2NbJrGppZahtyuM596UlwdyXuOsRNxmC0Lr+5KlVO+0wcZ23YsKcc
         Pf8oM5cU4NLCN71VRDerR7WGEOPb6VrvmazR5MB9tzDHtPSIVYL3Nli99AkeVPQZNY1V
         OpWe2rKQ5kEAZPA5cWlMlykvlbs2vKR/qfYVvbJwhRuXBcMXC1UDnpZjbWukRfT4s3z9
         0t1ljA2hfAqAAY7JwLsxl3Qh6Wn1lFtDi5XQzlNr2FUvioyHNGxKxMbuN45FwDrUCLK1
         QjqfkIKInF2jNAgC5Kklzp0WKyi/iYHUIa56o4jrSZtUQt9gqjW1pn6rPo+y9D9NJOqc
         VLsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MblnRK6L;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id b10si1117516lfi.1.2020.02.24.22.31.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 22:31:01 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id z3so13255834wru.3
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 22:31:01 -0800 (PST)
X-Received: by 2002:a05:6000:114f:: with SMTP id d15mr44810682wrx.130.1582612261176;
 Mon, 24 Feb 2020 22:31:01 -0800 (PST)
MIME-Version: 1.0
References: <20200224174129.2664-1-ndesaulniers@google.com> <202002242003.870E5F80@keescook>
In-Reply-To: <202002242003.870E5F80@keescook>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 25 Feb 2020 07:33:27 +0100
Message-ID: <CA+icZUWVybtEW3bxw5p8UFvoRr5OU=sgcpL=EbQTW7sTWYsRqg@mail.gmail.com>
Subject: Re: [PATCH] Documentation/llvm: add documentation on building w/ Clang/LLVM
To: Kees Cook <keescook@chromium.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, corbet@lwn.net, masahiroy@kernel.org, 
	Nathan Chancellor <natechancellor@gmail.com>, Michal Marek <michal.lkml@markovi.net>, 
	linux-kbuild@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=MblnRK6L;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::441
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

On Tue, Feb 25, 2020 at 5:08 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Mon, Feb 24, 2020 at 09:41:28AM -0800, Nick Desaulniers wrote:
> > Added to kbuild documentation. Provides more official info on building
> > kernels with Clang and LLVM than our wiki.
> >
> > Suggested-by: Kees Cook <keescook@chromium.org>
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  Documentation/kbuild/index.rst |  1 +
> >  Documentation/kbuild/llvm.rst  | 80 ++++++++++++++++++++++++++++++++++
> >  2 files changed, 81 insertions(+)
> >  create mode 100644 Documentation/kbuild/llvm.rst
> >
> > diff --git a/Documentation/kbuild/index.rst b/Documentation/kbuild/index.rst
> > index 0f144fad99a6..3882bd5f7728 100644
> > --- a/Documentation/kbuild/index.rst
> > +++ b/Documentation/kbuild/index.rst
> > @@ -19,6 +19,7 @@ Kernel Build System
> >
> >      issues
> >      reproducible-builds
> > +    llvm
> >
> >  .. only::  subproject and html
> >
> > diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> > new file mode 100644
> > index 000000000000..68ae022aebc0
> > --- /dev/null
> > +++ b/Documentation/kbuild/llvm.rst
> > @@ -0,0 +1,80 @@
> > +==============================
> > +Building Linux with Clang/LLVM
> > +==============================
> > +
> > +This document covers how to build the Linux kernel with Clang and LLVM
> > +utilities.
> > +
> > +About
> > +-----
> > +
> > +The Linux kernel has always traditionally been compiled with GNU toolchains
> > +such as GCC and binutils. On going work has allowed for `Clang
> > +<https://clang.llvm.org/>`_ and `LLVM <https://llvm.org/>`_ utilities to be
> > +used as viable substitutes. Distributions such as `Android
> > +<https://www.android.com/>`_, `ChromeOS
> > +<https://www.chromium.org/chromium-os>`_, and `OpenMandriva
> > +<https://www.openmandriva.org/>`_ use Clang built kernels.  `LLVM is a
> > +collection of toolchain components implemented in terms of C++ objects
> > +<https://www.aosabook.org/en/llvm.html>`_. Clang is a front-end to LLVM that
> > +supports C and the GNU C extensions required by the kernel, and is pronounced
> > +"klang," not "see-lang."
> > +
> > +Clang
> > +-----
> > +
> > +The compiler used can be swapped out via `CC=` command line argument to `make`.
> > +`CC=` should be set when selecting a config and during a build.
> > +
> > +     make CC=clang defconfig
> > +
> > +     make CC=clang
> > +
> > +Cross Compiling
> > +---------------
> > +
> > +A single Clang compiler binary will typically contain all supported backends,
> > +which can help simplify cross compiling.
> > +
> > +     ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang
> > +
> > +`CROSS_COMPILE` is not used to suffix the Clang compiler binary, instead
>
> s/suffix/prefix/
>
> > +`CROSS_COMPILE` is used to set a command line flag: `--target <triple>`. For
> > +example:
> > +
> > +     clang --target aarch64-linux-gnu foo.c
> > +
> > +LLVM Utilities
> > +--------------
> > +
> > +LLVM has substitutes for GNU binutils utilities. These can be invoked as
> > +additional parameters to `make`.
> > +
> > +     make CC=clang AS=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \\
> > +       OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-objsize \\
> > +       READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \\
> > +       HOSTLD=ld.lld
> > +
> > +Getting Help
> > +------------
> > +
> > +- `Website <https://clangbuiltlinux.github.io/>`_
> > +- `Mailing List <https://groups.google.com/forum/#!forum/clang-built-linux>`_: <clang-built-linux@googlegroups.com>
> > +- `Issue Tracker <https://github.com/ClangBuiltLinux/linux/issues>`_
> > +- IRC: #clangbuiltlinux on chat.freenode.net
> > +- `Telegram <https://t.me/ClangBuiltLinux>`_: @ClangBuiltLinux
> > +- `Wiki <https://github.com/ClangBuiltLinux/linux/wiki>`_
> > +- `Beginner Bugs <https://github.com/ClangBuiltLinux/linux/issues?q=is%3Aopen+is%3Aissue+label%3A%22good+first+issue%22>`_
> > +
> > +Getting LLVM
> > +-------------
> > +
> > +- http://releases.llvm.org/download.html
> > +- https://github.com/llvm/llvm-project
> > +- https://llvm.org/docs/GettingStarted.html
> > +- https://llvm.org/docs/CMake.html
> > +- https://apt.llvm.org/
> > +- https://www.archlinux.org/packages/extra/x86_64/llvm/
> > +- https://github.com/ClangBuiltLinux/tc-build
> > +- https://github.com/ClangBuiltLinux/linux/wiki/Building-Clang-from-source
> > +- https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/
>
> Should this also include an update to Documentation/process/changes.rst
> with the minimum version required? (I would expect this to be "9" for Clang,
> and "11" for ld.lld.)
>
> Otherwise, yes, with Randy and Masahiro's suggestions, please consider it:
>
> Reviewed-by: Kees Cook <keescook@chromium.org>
>

Hi,

that update for documentation purposes was overdue.

My last experiments were with Linux v5.3 and llvm-toolchain 9.0 means
Clang compiler v9.0 and LLD linker v9.0 on x86-64.
With Debian's kernel-config I was able to build OOTB (out-of-the-box)
with no extra patches.
I cannot speak for higher Linux and/or llvm-toolchain versions/combinations.

I would prefer such an information also for the *supported* Linux
versions, so people have a good orientation.

So for the above scenario, you can add:

Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>.(Clang and LLD v9.0,
Linux v5.3, x86-64)

Regards,
- Sedat -




> --
> Kees Cook
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002242003.870E5F80%40keescook.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWVybtEW3bxw5p8UFvoRr5OU%3DsgcpL%3DEbQTW7sTWYsRqg%40mail.gmail.com.
