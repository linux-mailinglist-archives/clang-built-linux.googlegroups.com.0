Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLN72LZAKGQEZ5F7D7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0CD16B873
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 05:16:47 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id d16sf7230872otp.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 20:16:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582604206; cv=pass;
        d=google.com; s=arc-20160816;
        b=OUl6w4sNK8ILN0LmFfNk4o83XtT7QjwcqHuqjZAHYaqmhUeI3AaQnqw0x3/bdZNc91
         Wv5KdM13QGSERHbSZ35xOew7KVAopJpe6J/xPzv8B9imjluJ+UHNTD2q4UG6D77NHsde
         C2qbA5Rz+25oaDF3gJkGBNKmtnWE3YNucJnGsiSL8lO1XH+JTkDFnUXvZJxt4myrmiwI
         myzGR3HpSswFsSVqZGhHwCFv+sLvKR4q9sDFdFExT1IY8dI0GC36hjnNTl4TxpG57p8F
         mFppIPjSmx5OXJ5GWpsvDTeZct+jq6mzpbC3406rMOlg+XpITk1SbzJBQbCls0gR1RIj
         nUOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=exJEmYK5CKapQVdzrV2dEVIBeZ8+5+y/djuzWvSnyzg=;
        b=YvRmCy4OnmF/s10xAhr8nFv7mRmBnGEBhWZDJ4Jb3y5etILFfTN48WoaXlayyAzI1V
         LMfFoJcfQmFZv/2+B3Yau7hIKjW4TpsBNp6JPQ9YGFKYjl+VU6ci20bpqTzeXHc1tKRa
         dXO56LN5z+DWM6srEoKl25o5xLxCn4Gqrf04mxjugQhUImRiharfMTLHhA5UA+CTQUpI
         HcI1yuv8b0cB03InV9wn9cvx1FIU9dACMcQzOsGhmg6X3dinijMe9B3OuxKLS5iLiBOH
         xvkxB/v+GTtjPkO0BPqwVLau0dmAkwhgJ/XuXRiJbd7j2dZrNzuLv4g8IJvbwOnNsmfj
         hfGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qaEsw+7n;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=exJEmYK5CKapQVdzrV2dEVIBeZ8+5+y/djuzWvSnyzg=;
        b=YCQHd/t517W6AWi+uRvS86949rFhdyjda7iufExswm6OiPuNvgGyOyUSgcZ/mrT7+5
         bgHSSMvEzJ/IcMrDTXHtTzOk7RbFC+CxcfI4CNwDvjOGqYDxPaqSDwoBf/1qxSQB/PXD
         ysIbtBnn/yfSex4Jw7Ml3WSGLhxCKcK58eQXeZLFWCKmRSXkTFCQIUEBCpqMdz1yD/KT
         gblukI/BabplP8eXliMtI79Lf7+tqxP5fBnas7g6ZzPdbUwXSC2x8TVveiSPEZl4CeCa
         lSaqAtTaOY6R6PgFXeQIkVn8mrV/VDq1rcLGnQq/LKLFp8PsZtNmV8xET+HjVITfcOnS
         Azjw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=exJEmYK5CKapQVdzrV2dEVIBeZ8+5+y/djuzWvSnyzg=;
        b=egmCCy5A7hyCNbleFOST/Ys9n6bhgG80WdiVZeYg2JlCiJXEk2PceU7A5CXJdBU3hF
         mg9G3XcfV3jVwrk5ovNEvwLivsgJjRjnkBPC4RIFiHdj0/+yuIarkDvQufMsOqSFyIBc
         xJgRLq9TtKFKwMe81EtqMyq6wiehzuI4AylHHtqgLHVKvbBKFNsMSi4YfZUKK5oeJe4K
         Z2GV0abFWsd4+g44T5vdk1ifJKoC587+g4T+N4/P71ZN1rQsPosQ/04tZ5QC8U7h92SI
         tiuujdWTkplc3XrEb05Y8LUuFj6itrM3mQkQLel61+f6A5IZFdmSO35dxpZ9T2sW/7wv
         YqCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=exJEmYK5CKapQVdzrV2dEVIBeZ8+5+y/djuzWvSnyzg=;
        b=uOvHXI+YslOzCG2i9UDpGUib+sZdCRslNCXC3pFeKdBHOM+QWJqmQhEPyom8kMdk7K
         AFrQ19d/dHC1iest7ATxGGd8FW3ZydggqH6lHiVuDcO24SLJ/g6S1ytLl93WfdXwiMJ6
         HFq9iaEGrYJrLofV4Af/nB+VnVKq1MPYTc5cgBgLmSlc3bPWhqiBn+I3BOoyHi46caI2
         JpGfWKPGirVrlxIzcxLsXWUgwIw3rY+IcB0/fkkd3NpICgzq2/OZlHxQS3zLsZK1vv2e
         lPiVJcB5So/Mf5AKsOf5SL5mnIF/2VEw1VYiE+lmYFpWyxiB4TkWm5Mjqsax10SkuizH
         lfzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWpyGumdMg+saL8yDBrY12t21srQ3YbB+ZiF/J9KDdQMxjdslJq
	T3shr2IhHM61KiV80puAnoM=
X-Google-Smtp-Source: APXvYqwWmdrLcmh2F4Gxp54+nj90yiu1l5gtjekR2dkMTff6qpjwzfpruZOLxfRhpUeebZWsU3RflA==
X-Received: by 2002:a9d:6f82:: with SMTP id h2mr42231072otq.69.1582604205876;
        Mon, 24 Feb 2020 20:16:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a01:: with SMTP id g1ls3588205otn.6.gmail; Mon, 24 Feb
 2020 20:16:45 -0800 (PST)
X-Received: by 2002:a05:6830:22ca:: with SMTP id q10mr4376694otc.280.1582604205549;
        Mon, 24 Feb 2020 20:16:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582604205; cv=none;
        d=google.com; s=arc-20160816;
        b=bxCjAveeiR0ETP5hhJTCQ9njHd+ZSyiZuW2iG7f86i6Knhw61jsrIm8j0CYW9dXDUI
         A0OOKXyqMQ5fBPk7Ti91xTRq0Ae5eGZ7t53VvZv0XCXvkA8fujbAGOi7+V5yEzWFfPgW
         zXw9u0EFJyeAaixMD9OyBQcpFZxsRoDuu3Svis8nwuea+2KqtbmWYjuKj0FHsdABh1XI
         lFpp+tc4V9OgKzLRXvHZecmqgd+YWpi5uyWrt/csMqV7J5tRE3SY3jTvGNtk9jRzhiXl
         SDXpOQoWcZ6spthy04TV+1fugi9QJOWK+nLKy8hwPYGLgLB+z22DQwdpZBoowXyNxHvi
         AL+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=CwbxN8jRmY5eVOPJl0TgfnUY2fSeiSALtWWh37BgEkk=;
        b=FKC0ii1l9sux2mKHlX2vJ2QOOwXSatdEdpWkrbzllljJhMeOAPcRcksoyGFNlJ18W6
         wEpyNsAkJ2IkF8zAUK9lvmondBZa1GPkfs1Tom4RxvmPkBJ/c9s+ELpRM8TH9rhu7jE9
         TZxOxblbDwFMpud/cL5Snv91DgxLxzmFuJITfUEu6z3saMyzgTjg7/9yPr9e+YHJSHMx
         DeJ73tNZdAuIHBzzTok7Xj9OLxFyAmMEPXXJpClx6tocneuww9IAVCg+UiP18eqyJbsR
         HM/hD9FKeHPKaFTVbVfzbDg00tBTx6xR06ZR/cHLMkx5G7Ap5CarCt3FNE1tSjNmPyj7
         6HGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qaEsw+7n;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id a17si1127272otr.1.2020.02.24.20.16.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 20:16:45 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id a142so11267073oii.7
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 20:16:45 -0800 (PST)
X-Received: by 2002:a05:6808:99c:: with SMTP id a28mr1893240oic.164.1582604205156;
        Mon, 24 Feb 2020 20:16:45 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id i2sm5212840oth.39.2020.02.24.20.16.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 24 Feb 2020 20:16:44 -0800 (PST)
Date: Mon, 24 Feb 2020 21:16:43 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, corbet@lwn.net,
	masahiroy@kernel.org, Michal Marek <michal.lkml@markovi.net>,
	linux-kbuild@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] Documentation/llvm: add documentation on building w/
 Clang/LLVM
Message-ID: <20200225041643.GA17425@ubuntu-m2-xlarge-x86>
References: <20200224174129.2664-1-ndesaulniers@google.com>
 <202002242003.870E5F80@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202002242003.870E5F80@keescook>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qaEsw+7n;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Feb 24, 2020 at 08:08:26PM -0800, Kees Cook wrote:
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
> > +	make CC=clang defconfig
> > +
> > +	make CC=clang
> > +
> > +Cross Compiling
> > +---------------
> > +
> > +A single Clang compiler binary will typically contain all supported backends,
> > +which can help simplify cross compiling.
> > +
> > +	ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang
> > +
> > +`CROSS_COMPILE` is not used to suffix the Clang compiler binary, instead
> 
> s/suffix/prefix/
> 
> > +`CROSS_COMPILE` is used to set a command line flag: `--target <triple>`. For
> > +example:
> > +
> > +	clang --target aarch64-linux-gnu foo.c
> > +
> > +LLVM Utilities
> > +--------------
> > +
> > +LLVM has substitutes for GNU binutils utilities. These can be invoked as
> > +additional parameters to `make`.
> > +
> > +	make CC=clang AS=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \\
> > +	  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-objsize \\
> > +	  READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \\
> > +	  HOSTLD=ld.lld
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

I think the clang one should be added in a separate patch that
solidifies that in include/linux/compiler-clang.h with a CLANG_VERSION
macro and version check, like in include/linux/compiler-gcc.h.

ld.lld's minimum version should also be 9, what is the blocking issue
that makes it 11?

> Otherwise, yes, with Randy and Masahiro's suggestions, please consider it:
> 
> Reviewed-by: Kees Cook <keescook@chromium.org>
> 
> -- 
> Kees Cook

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200225041643.GA17425%40ubuntu-m2-xlarge-x86.
