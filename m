Return-Path: <clang-built-linux+bncBAABBHVO3HZAKGQEKZ4GC5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C88D16FDC0
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 12:31:44 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id l17sf1654881pgh.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 03:31:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582716703; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z41dCEgsvyFx6SgYGYxwR7yxlychF/UIgp+xrXzkhum//Q3x/Zz87ugzUVQO/IGP9h
         qiWHYVOsa3wRzzneoHAcSFKnXBs8vfLMepYQh3cJhF1XSCXDT6rEASGnSg36maC1LQfh
         4KVu2EWI2MK0FpoMgKZCvE/+lqljVrEXgAA4d4Hv23Ox24AeFgRp2Bi1AHeEP15vyZsF
         OSb6K5gMLV6EvPF7UpnDH4djTzKfMo2o5MEaRKOkep8TBRqyBHf5ql13zHQSCrJr4D+5
         s9k1JIz3szdxuIHylXfy8Z4mBhf1BXUaxk0NMPr5sqp3UEPq5kEI8MpQ3XJyn4K/bPs2
         DsdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=H6xGeqepgPvlE9X4dOUAk5l9RyBml3tS2TogqTsHmns=;
        b=dGblSy5M4HumiwMHip4W45mr7ux1v9ySi18G+VqwB9A/Td+lwChESJne6BjNMg1JPY
         9UY2UwhIgx2xVMR/T/XeSRPRJefR4N7r7DDwB+5XXLCqp1+kbD+7ITMuleAGDzWbkUtT
         Hbtl4liVd0GUvEpwPcpfH2EJhyLqxFaHid7A+Gi75WtZHm3XK80MokYttdAvwgWu0nsr
         kHohwcUBMfws442qEecp8RTLftx/08l4MehC/KpJhcKIsXHi+GA1KrUcbTpkTcwkIv81
         7lHG5Kn2VbxCdxp+FoXd3JXSB4XZ4pdGnAAs2EzCcmwLrCnVznMPWtr2DX7/IVO5sQgB
         ex6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=VFgWW43I;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H6xGeqepgPvlE9X4dOUAk5l9RyBml3tS2TogqTsHmns=;
        b=bAmY47GJMeuCBz42deR2TcdWOCIfRET6oleAPdx26cQC7OjOH4saVdStCraxdvnUbO
         Ht50/4ADAyfuQ+vj3QzDK2wpTvBmEH6NDqR6j7Z8fuMk+l8SnrfXUhkgDGZkjjy6tfNl
         1rRfSbn9y4fhqJlDErtm3lcvQe7/UEI0lpALzWyQ/JOHEWNh7HJoVaUZe+pb/pa2+F1P
         zO7ASBuTQ0Su5/WA89JKpxoqyz+KYjFQT+gKB6KsBrT9eaoaOQ1VAczF4Se4iq6dQZh4
         tqL+hr2O0NDuyvsp8TO02+BxRlpusdQhFrEsE4eVcBmNRKtHCr0Hv/ud1SmPtlvmVMW0
         fqZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H6xGeqepgPvlE9X4dOUAk5l9RyBml3tS2TogqTsHmns=;
        b=ScdIUTI4kN2dOvHYy7nMcPFOP/w0zinKEDK1lsiX2i2Ox7/FReB8V5GhhpjO8t5xfJ
         L15WzEhLT/N1ycJVPAttIZPfvDIhOHRTiTJl92fTnEUi8Sd867yZNPgPNLecQvBYRSzY
         5VJpKE2dH6pFf96NDN+zZgQ7OyIbMhwD4IxWoFP3f1Tca+79YU7SnA1KJkHWfZnYd+6h
         ImY9ON8IT9vZ1pM/X2bK/aHn5qDW6P/+GIlA+N4lNQ4wz5hB/Qc3vDSCkxnC+uErLc75
         eH/d7oYMyQY+5QEgE1luAFhADbEwx/G/MbctLx3ThEc8vx/X+m5LDCIM6m+vjsHTUBLP
         PvRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX/k6oMTzBvinLu/jR2vwy9M+T3xLI6natDD6oXFuToJEHfmAGK
	WFEVXMwTICv0jjzz+bcIxwg=
X-Google-Smtp-Source: APXvYqxRpp9kKxCg9PGGmUrMwYApGCq/nOVx35noC60AsQnB60uoDAVTLfog64eBVM1gHQluvNyOZQ==
X-Received: by 2002:a17:90a:950b:: with SMTP id t11mr4634706pjo.79.1582716702729;
        Wed, 26 Feb 2020 03:31:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7744:: with SMTP id s65ls844995pgc.3.gmail; Wed, 26 Feb
 2020 03:31:42 -0800 (PST)
X-Received: by 2002:a63:fe43:: with SMTP id x3mr3635229pgj.119.1582716702332;
        Wed, 26 Feb 2020 03:31:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582716702; cv=none;
        d=google.com; s=arc-20160816;
        b=MKav/Clt8aXkIP7S6AfQTK68o4S8TrRdQQZTQkCgrxqpzkAVRldyaNHNhPXS3bdvAs
         eMMOwnxRM3uO9ygLFBgC4BmMYv3HaFNPfhikxN6gr5iJ0CMZAqPVvG9BZ4k9cUb2hAGt
         5l9fzIOWHy4/zzn29tX+i83v9Xv7dXatoKyGJ3hMO7sUktuS/D8EgTD5LMAa+yl4o1PB
         l37qfE5bsXHPgtmNBkEAtiQ4th3JNTMxaZSHwlApQduRsFZiDqvgRkfUHukQcihQim57
         AQQ96Ft8gwhegkR0h0LLYuzI/Oye38X8tfI2CGd0oOqGG87gxfFd47RPRPfprY/5Bo9n
         J5Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=GDjPsWzrsBjPpbXYwVdhVCcx22MBva9/iaabNI2DfMY=;
        b=p+ekHdoNGPJ6KJYhCEvdlGW00NxLuSWW65Fs1LBT1Rop8D7GCAxyJ7Slbzoax9au+K
         hfJMy8KGuljAfTnryZQLEZvrctpcedvgDDqIjx5B3AybjIHzXSvhHiiJu/4AfPIvJHD0
         Ycb2B2H/9+iA2DlFYARigGmwCD0bQlfx+7lfz/hsIhuYs0EEUPwxuHzQ35vkhzNe7P5P
         lC+4VtgiIcoYpri6dYsQHlLjGXHfV7aNF8sBMBJ9/pmek8qurP1MNVP0whF9dtfVGIL8
         fydWFekp0svrq9u0h6dA+gXWZ4RQ5UtprV66gnKZE5jDW5RAciArtOjAmm4J9zvKvt1N
         DjoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=VFgWW43I;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id a5si106443pjv.2.2020.02.26.03.31.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Feb 2020 03:31:42 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 01QBVS1x006894
	for <clang-built-linux@googlegroups.com>; Wed, 26 Feb 2020 20:31:29 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 01QBVS1x006894
X-Nifty-SrcIP: [209.85.221.182]
Received: by mail-vk1-f182.google.com with SMTP id w4so690178vkd.5
        for <clang-built-linux@googlegroups.com>; Wed, 26 Feb 2020 03:31:28 -0800 (PST)
X-Received: by 2002:a1f:6344:: with SMTP id x65mr3398079vkb.26.1582716687661;
 Wed, 26 Feb 2020 03:31:27 -0800 (PST)
MIME-Version: 1.0
References: <20200224174129.2664-1-ndesaulniers@google.com> <20200225210250.64366-1-ndesaulniers@google.com>
In-Reply-To: <20200225210250.64366-1-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 26 Feb 2020 20:30:51 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQJuF__26R+fEsdfYH1SAJuo3-8grGQAE4htjxzEG-nqw@mail.gmail.com>
Message-ID: <CAK7LNAQJuF__26R+fEsdfYH1SAJuo3-8grGQAE4htjxzEG-nqw@mail.gmail.com>
Subject: Re: [PATCH v2] Documentation/llvm: add documentation on building w/ Clang/LLVM
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Randy Dunlap <rdunlap@infradead.org>,
        Kees Cook <keescook@chromium.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Sedat Dilek <sedat.dilek@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=VFgWW43I;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hi.


On Wed, Feb 26, 2020 at 6:02 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Added to kbuild documentation. Provides more official info on building
> kernels with Clang and LLVM than our wiki.
>
> Suggested-by: Randy Dunlap <rdunlap@infradead.org>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes V1 -> V2:
> * s/On going/ongoing/
> * add Randy's Suggested-by


I do not understand this tag update.

As far as I saw the review process,
I do not think Randy deserves to have Suggested-by
because he just pointed out a typo (on going -> ongoing) :
https://patchwork.kernel.org/patch/11401189/#23179575

(or, was there off-line activity I had missed?)


> * add Nathan and Sedat's Reviewed-by
> * Upgrade Kees' Sugguested-by to Reviewed-by

We can add both

Suggested-by: Kees Cook <keescook@chromium.org>

and

Reviewed-by: Kees Cook <keescook@chromium.org>



I think Suggested-by and Reviewed-by should be orthogonal.


Thanks.






> * s/suffix/prefix/
>
>
>  Documentation/kbuild/index.rst |  1 +
>  Documentation/kbuild/llvm.rst  | 80 ++++++++++++++++++++++++++++++++++
>  2 files changed, 81 insertions(+)
>  create mode 100644 Documentation/kbuild/llvm.rst
>
> diff --git a/Documentation/kbuild/index.rst b/Documentation/kbuild/index.rst
> index 0f144fad99a6..3882bd5f7728 100644
> --- a/Documentation/kbuild/index.rst
> +++ b/Documentation/kbuild/index.rst
> @@ -19,6 +19,7 @@ Kernel Build System
>
>      issues
>      reproducible-builds
> +    llvm
>
>  .. only::  subproject and html
>
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> new file mode 100644
> index 000000000000..d6c79eb4e23e
> --- /dev/null
> +++ b/Documentation/kbuild/llvm.rst
> @@ -0,0 +1,80 @@
> +==============================
> +Building Linux with Clang/LLVM
> +==============================
> +
> +This document covers how to build the Linux kernel with Clang and LLVM
> +utilities.
> +
> +About
> +-----
> +
> +The Linux kernel has always traditionally been compiled with GNU toolchains
> +such as GCC and binutils. Ongoing work has allowed for `Clang
> +<https://clang.llvm.org/>`_ and `LLVM <https://llvm.org/>`_ utilities to be
> +used as viable substitutes. Distributions such as `Android
> +<https://www.android.com/>`_, `ChromeOS
> +<https://www.chromium.org/chromium-os>`_, and `OpenMandriva
> +<https://www.openmandriva.org/>`_ use Clang built kernels.  `LLVM is a
> +collection of toolchain components implemented in terms of C++ objects
> +<https://www.aosabook.org/en/llvm.html>`_. Clang is a front-end to LLVM that
> +supports C and the GNU C extensions required by the kernel, and is pronounced
> +"klang," not "see-lang."
> +
> +Clang
> +-----
> +
> +The compiler used can be swapped out via `CC=` command line argument to `make`.
> +`CC=` should be set when selecting a config and during a build.
> +
> +       make CC=clang defconfig
> +
> +       make CC=clang
> +
> +Cross Compiling
> +---------------
> +
> +A single Clang compiler binary will typically contain all supported backends,
> +which can help simplify cross compiling.
> +
> +       ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang
> +
> +`CROSS_COMPILE` is not used to prefix the Clang compiler binary, instead
> +`CROSS_COMPILE` is used to set a command line flag: `--target <triple>`. For
> +example:
> +
> +       clang --target aarch64-linux-gnu foo.c
> +
> +LLVM Utilities
> +--------------
> +
> +LLVM has substitutes for GNU binutils utilities. These can be invoked as
> +additional parameters to `make`.
> +
> +       make CC=clang AS=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \\
> +         OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-objsize \\
> +         READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \\
> +         HOSTLD=ld.lld
> +
> +Getting Help
> +------------
> +
> +- `Website <https://clangbuiltlinux.github.io/>`_
> +- `Mailing List <https://groups.google.com/forum/#!forum/clang-built-linux>`_: <clang-built-linux@googlegroups.com>
> +- `Issue Tracker <https://github.com/ClangBuiltLinux/linux/issues>`_
> +- IRC: #clangbuiltlinux on chat.freenode.net
> +- `Telegram <https://t.me/ClangBuiltLinux>`_: @ClangBuiltLinux
> +- `Wiki <https://github.com/ClangBuiltLinux/linux/wiki>`_
> +- `Beginner Bugs <https://github.com/ClangBuiltLinux/linux/issues?q=is%3Aopen+is%3Aissue+label%3A%22good+first+issue%22>`_
> +
> +Getting LLVM
> +-------------
> +
> +- http://releases.llvm.org/download.html
> +- https://github.com/llvm/llvm-project
> +- https://llvm.org/docs/GettingStarted.html
> +- https://llvm.org/docs/CMake.html
> +- https://apt.llvm.org/
> +- https://www.archlinux.org/packages/extra/x86_64/llvm/
> +- https://github.com/ClangBuiltLinux/tc-build
> +- https://github.com/ClangBuiltLinux/linux/wiki/Building-Clang-from-source
> +- https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/
> --
> 2.25.0.265.gbab2e86ba0-goog
>


--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQJuF__26R%2BfEsdfYH1SAJuo3-8grGQAE4htjxzEG-nqw%40mail.gmail.com.
