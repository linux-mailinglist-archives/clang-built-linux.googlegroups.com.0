Return-Path: <clang-built-linux+bncBAABB5OU37ZAKGQEBDWAO4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED121722EF
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 17:12:38 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id s4sf1435416vkk.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 08:12:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582819957; cv=pass;
        d=google.com; s=arc-20160816;
        b=e33d5pyxEERFCr8x8GpuZx+Ot/KgSV2Q0NuGuuOBQVTy8lpcgy2Ly5bhL6OWOYP8iM
         yfIkqUu6fp2cJveietuw3ELbHXwzYnWwCo/bdoCQjqXmLsl2eYoCmwQIKH3hTG8OOCCo
         drp/0DvilL0TZdIvBiBnW71/u6WDl2qUc4+uVpHom+agaAa4CW25EEhv4Ze1mheAdLEc
         LIeenSiKenrC5crCXEE3xD6iBeFuzMMH8bbxmP6nKMaDhYSFjwOdrjbT3FPVte2wvcw9
         jG5Z6h/Ro4lwyKxgnIzV/LCtx8Qycjr+fb+XsYwFrTpMUR/7sIb3eMYBbI+COyYTDYY4
         9x3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=0+5XeVq9NoBCeU1lE51lwoMKChpP7Z3OeNKUI7HuR8A=;
        b=J7FpoxTkuSVbyghaGYVtvbAwxk//rNAlvHRAxpCQt3qOQrkToBqHiveQT2ubVPcnlJ
         gK45H4ocnK/Dp1U5ra0lXMNfY7UQdUMSYhROcyTejduI/l0lUhelb1p3ZrlR2MIVIGmH
         38Z72xkZZpspiFAkr6PffZlr9tDFHTTI4E1yQ9pRhxKXQS2GifH+1Lg+gyVIb1Fy7D9+
         1WHPDbPYxbQlYXCvKrMoFeu0gu6d9mFsr/MNwTunbLIR6AcQEHD3NSFkXy4pkZ3pBiGk
         WDUDuxORWxl5L4CKwQMHAl8EKBwIXbJARtDWTiZ1H+k/zNCtLAfh4xNsXLu9xOerAqEm
         fs+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=QX39vqVt;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0+5XeVq9NoBCeU1lE51lwoMKChpP7Z3OeNKUI7HuR8A=;
        b=ktyCngOuC6l18qfhJXb6Xz4Kd0+6Eb8KHMPfaHe2HB9nG8r88RgsaFarwCohcfYcYG
         ZdfkzabV1Z8LVrH3m+U5/dvSs+nMwT3lxoVhY5FecFLSJIDiv3XZKmWzFxE4Q3RxFf4Y
         zfg7pBk5AuURjgMU7Os0VuKKkvnMloB67ZY0dzC6d5zU00DQxEc8vztU1WsthXC2A1Oj
         Vmd8hk4a6wJQw7rhiP00IynwGQKAhg6U/INEFwfjiwXmBclXBtbTnRJ0ehuWveo8BpYh
         t4O8GiuONqbwoA7VwfL6lfSF9xpMCYa9qgYqN3JKG1UTdDrDZxV8ylJqq2D9Fu9hr32r
         WKcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0+5XeVq9NoBCeU1lE51lwoMKChpP7Z3OeNKUI7HuR8A=;
        b=UY4dGzP4OmiGHZ47njmLhcSPL+4TiChKCjN2115XIMnM7doRVyt7p9Sd5J50Lhd3k2
         YNqmKKcBk9gDVTDOjdLC+E7KG/AJQsODhlJ4hxaTSf5cywoCjt9OuGDItkDyrCaxZqPS
         FeUllGIDW4/0zHdQ689waNrWGa2N7H+STVUyqZ/c0+tkMwgdzMYFrdiRYs6CHsXltka7
         FLiaVpKqt0xti/0iZujUukQ9DgRjpYX8qkfevldtNMLDSZiTN3lAp9kEbbWclFC/Kh9C
         E6RYh+EdOVbW9rOf3hQAggFGKjSlI5lRKvXeiThn3XMg+z2APoMZAONHtuwN9Zt+t/xR
         d/NQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXDkUgkMxc9hXX8rhP7dHw89k+6W4pgTvOtbrx5Eq9/4g7G9u6r
	nlbMJlW9ipzkJ6k6bLvttgQ=
X-Google-Smtp-Source: APXvYqyKbR7GR/WCb3ZRAi46OsJm8va4xa774a//gs/zm4QgA2hOQDUXKE3jUB378h6XGixLjd5VyA==
X-Received: by 2002:ab0:5650:: with SMTP id z16mr959540uaa.12.1582819957568;
        Thu, 27 Feb 2020 08:12:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:64d6:: with SMTP id j22ls266766uaq.2.gmail; Thu, 27 Feb
 2020 08:12:37 -0800 (PST)
X-Received: by 2002:ab0:136e:: with SMTP id h43mr2885646uae.90.1582819957224;
        Thu, 27 Feb 2020 08:12:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582819957; cv=none;
        d=google.com; s=arc-20160816;
        b=vgGyE1Fi0Y84IJTrmXztNNKrp305Wtfo6hotGgQEzjnSMKuLwfAbanaXqACqZwNslY
         8bmBilPDem13JtSb8dFuZdf7eVA0xSPi2/x+ig+4hTekoJ3cgZ2p9G+lLyjAvvpXSaX5
         gCs4KTPULrSIxFN43ItskxwKn2wQqmz38ak4ZIrN7boXyhHtawTaSfCF1OPVDq3H+oma
         R/tdow+WOr3pEsa7Vdr9pKqvU/xNfNY3NyFxE2QRa6F3EJtaupjiOZxRvtrzO4h6G1f3
         6EPISLcDi13XYq7Rn/axLa+mpKT1zeQeuBGyXYd6j21QiltJHd1L3WlZaXKjNS29AF/8
         SHhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=dCIdExQy8zrf9NhMRaOGJJL9zPcIodXfI3s7oSAI5p4=;
        b=k9BpsXghRFCbk8z/7aaGewIsYyj8n//s9KBt62IJYjcLZarzCHOwXole0dMx62fWi7
         ijF9decmHxJJfG5qfzUziWcJ4JyZsAaLfy6sAufDp+RM6rP5COyMuDH/eqwiaVFzI0+O
         RoZP7YwarL2iHaQWSI7ISpol1eOF9w6Gnhis/JUzQYNwvr/hSWZu70xFrL6Kw9DHyR/N
         cMG7isQcxyl7vPzWbpL9v8CTYeFJirykzmVLWEPBj69wOn8/MdGqdJczEykGE1xbO2Ha
         QprgKytbWy9oUqQBZQUhVk0uAuZbq3VugnnScSzKxEv8tFODE8Ma6varV4jRYSxnZGLf
         5t3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=QX39vqVt;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id u11si3053vkb.1.2020.02.27.08.12.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Feb 2020 08:12:37 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 01RGCAwp000680
	for <clang-built-linux@googlegroups.com>; Fri, 28 Feb 2020 01:12:11 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 01RGCAwp000680
X-Nifty-SrcIP: [209.85.217.47]
Received: by mail-vs1-f47.google.com with SMTP id a2so2198340vso.3
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 08:12:11 -0800 (PST)
X-Received: by 2002:a05:6102:48b:: with SMTP id n11mr3071450vsa.181.1582819930147;
 Thu, 27 Feb 2020 08:12:10 -0800 (PST)
MIME-Version: 1.0
References: <20200225210250.64366-1-ndesaulniers@google.com> <20200226232336.252872-1-ndesaulniers@google.com>
In-Reply-To: <20200226232336.252872-1-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 28 Feb 2020 01:11:32 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT=O9+VMEy1j9Un9rznnb_qaxtC-C_xO1DLwiZAhCxZ0g@mail.gmail.com>
Message-ID: <CAK7LNAT=O9+VMEy1j9Un9rznnb_qaxtC-C_xO1DLwiZAhCxZ0g@mail.gmail.com>
Subject: Re: [PATCH v3] Documentation/llvm: add documentation on building w/ Clang/LLVM
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Randy Dunlap <rdunlap@infradead.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Kees Cook <keescook@chromium.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Sedat Dilek <sedat.dilek@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=QX39vqVt;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Thu, Feb 27, 2020 at 8:23 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Added to kbuild documentation. Provides more official info on building
> kernels with Clang and LLVM than our wiki.
>
> Suggested-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---

Applied to linux-kbuild.

Thanks.


> Changes V2 -> V3:
> * Drop Randy's Suggested-by tag. Sorry Randy, I do appreciate the review
>   though.
> * Add F: line to MAINTAINERS.
>
> Changes V1 -> V2:
> * s/On going/ongoing/
> * add Randy's Suggested-by
> * add Nathan and Sedat's Reviewed-by
> * Upgrade Kees' Sugguested-by to Reviewed-by
> * s/suffix/prefix/
>
>  Documentation/kbuild/index.rst |  1 +
>  Documentation/kbuild/llvm.rst  | 80 ++++++++++++++++++++++++++++++++++
>  MAINTAINERS                    |  1 +
>  3 files changed, 82 insertions(+)
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
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 8b85f22b9b69..79e1f9bfb2b6 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4124,6 +4124,7 @@ B:        https://github.com/ClangBuiltLinux/linux/issues
>  C:     irc://chat.freenode.net/clangbuiltlinux
>  S:     Supported
>  K:     \b(?i:clang|llvm)\b
> +F:     Documentation/kbuild/llvm.rst
>
>  CLEANCACHE API
>  M:     Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
> --
> 2.25.0.265.gbab2e86ba0-goog
>


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAT%3DO9%2BVMEy1j9Un9rznnb_qaxtC-C_xO1DLwiZAhCxZ0g%40mail.gmail.com.
