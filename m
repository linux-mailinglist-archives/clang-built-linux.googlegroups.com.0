Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAWPXTZAKGQEUTR2PFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F660166BD1
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 01:42:43 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id d7sf245921pjx.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 16:42:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582245762; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bq6YCWSUb2lhWIGbja4cToxZiK8ZCLSiwIQpdL5A4lwYjxXM48o+AAzybwjz9ewbaA
         eMKX3Zs8WQTJevBU3ascvO3ErPigsRntrpGjMTf0oUC6I935A2gUE28eiptSacPv1J+h
         MgnF9iLWDkVavi/Id9NEv33dOECt7GhKCZE0JlKvOct0IXBNrh/MuBog9tEua7IsXXXv
         ocVDo881Dl1Lg6VZQIPFBi+Z5cibO9XGdi9mKlDgvQnJKGdRiiW2yx+9UQZ7z22PhSto
         5nchWidbb/vq4Gp4GLUwrjbkIJyfc7FfqvsFiLnMYM6V9+KqDPFLTEKIZWGlkHrYFEU1
         LYYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=K9rHQXNRuAr96i2NVAQzwezZtEX2SvfG87c5SoocenU=;
        b=OgCJMs/nrF6OSXWkNc/WY7SB1LIQ3O9c2ndMFqK3KF8uWU0PTdGSsc8wseExqs+k63
         7xF5i7GtisSpeb+U6W6FDsLj6H0odQRopn9IlTEHpCFR/JPvaTIopIeOf7asVb+6R/iO
         6Ry2B/rKjxnCnCR/Re5fs2fCK/1oyWl2t7d5iCExVMaVEuyb53I6p3nccUYF3skl6ucv
         BEF/wHJQc6DUZ/TxicpipRplJOtJoiRmBDhhjyqdP2hXPDAnRJwlFhzDdUaiGjj5lIEO
         rnRoGT3AsY128Vm+vcisg9fe0rKVsP5L+3IYDf/lk+jWjaenp600/4x6RwhMGP/PYVyt
         33xQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RoAJUDH+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K9rHQXNRuAr96i2NVAQzwezZtEX2SvfG87c5SoocenU=;
        b=UiybzIrygDunAaqpNBogGMkxSco9j2v0HIzrjVfPpbHWlx5mnTei5pOG8cNctAwQO1
         Vd8BJ6PqgxtTo2q6qOHGiMx9M2Q2cGlXn1q0nN92FMBb5wSc8fUcHCPTMX62th2Rv3ck
         aWxFik10ekiJjmtGOnICAorEwncdVBQQp+pqoWeXFEfMUgCXW5KeV1U1+VuBzrRivh//
         zbndgCnxzBi43THCFbtrVnxViH+qdo3/8rXzU4bzefrJimK8pamy23hQDZd8OVyjKBAK
         EAfAI7ghwXx/W7bwZNUcwueVg4SztvNxVY/ih2Pt8lO3uHto2ag7gW07fz6QM1yczYCk
         l2cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=K9rHQXNRuAr96i2NVAQzwezZtEX2SvfG87c5SoocenU=;
        b=eryJJX4HO1vJIYRU+/QhGmFM0l2x0cS8Ug9XU+GWE4RHgIx+PLuzL231zba/49yVjm
         A3O6tg/Y3lwdsXW91SITnjB98SytIuCeO3QV2Tha0lN94zdsQqiPKhkfzqs+kTYeNbQC
         jcuFPLzmUY8fqHFexTsiHoI5Umjj3wcPKgaYe6xrpkI7Lhy/nJG6Z9dlUAH7eM6nzlT0
         7srpGSG0cXU0k+V6D2XH3jqDf6cgQYhCsg2+qnkQPip8g2uN+cuPM1ep6CnjWgjCcC9m
         M0ZtiowlS7tOChuuZGzPUsT2TpbvB5GjKJu2mD7Si1hUe1cvHX6oRV1CuQt3YnYJrWG9
         BmVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW0/+oc511psw07+0bN4EpOeSyslaO7xZLO/mobwp9rRZVoCwul
	kYcF1337uQAwgEulMKkjBuk=
X-Google-Smtp-Source: APXvYqxQ0GC5CL3M9iLXIpmb5mE+OIwP/a02YzC+TyzWlPkMDOZhYP5wuAcSSlzMh2BGU0Pdu8gnJQ==
X-Received: by 2002:a17:902:9a85:: with SMTP id w5mr35387296plp.323.1582245762300;
        Thu, 20 Feb 2020 16:42:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:b26:: with SMTP id 35ls114745pjq.1.gmail; Thu, 20
 Feb 2020 16:42:41 -0800 (PST)
X-Received: by 2002:a17:902:8b8a:: with SMTP id ay10mr34236666plb.288.1582245761778;
        Thu, 20 Feb 2020 16:42:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582245761; cv=none;
        d=google.com; s=arc-20160816;
        b=UqsOWdApWSw4Tk4qEeKYEpVzzNBiUWaPJrm6IB4ZfzCBknBXs0eURk8U0FU+mwRfrg
         qdmT/ZFGZIuhdx5Vi5JZx/J9TP8wssKIrobH+g6JxJT96hK3J6dLGJ1HTDudqVRLpBu1
         3ktlTgKoKXT3K7PyDXNwREx44AQlUkT+4zsZBUdF3KlY8/ETYhFI8pLXPgZjWN2mTOs0
         1G+wzEejfOqxlZ+Eom7qEHgRp4nEf9tm24ndriIzKcbBmCLz6+w3rpZALDKQqIQ9RTVQ
         v8RHdYJjkyVCyRO2TwbhCbgOmgUzu0d27XWXtCrYA06I4TRdyWatsrVmSxNfnzz8EsOf
         H2lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=I/j9NYI73y+nFlbnAaPnwIeDDUo5H/DD5y1r9J0+XTY=;
        b=DNiv2dFdIGvBtSoY8CgaFbrYO5QGGJpLWPC7beVssLyiKJ7Rf90qt/Ems0fCM+GL10
         X09cfdt1dbPPkqjDeV/nj8vqy5nB81WkhnJR8v5G0ta6nQab/W1dvUYdqZBN9oYqNi1U
         mYQq583kp1CBkHqNABk6W/OlpJcwoOKbVVtvFA0d6mKudzsVWpaADsNofql7i9uuFFIP
         b1612+e6AYcTdJvrZwwr5pRPZ0DvuwqB0nYi8rwkSwI+fFERmQPn5FJF/hQVg3Qw+kHz
         fWoSlwpW+J+o35YE8xjOR2mjiyDgCZyk/PbVoFkXL9Z4lGX1Rp/82mSnfCYrk9eBHum1
         lEyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RoAJUDH+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id 12si3035pgx.4.2020.02.20.16.42.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2020 16:42:41 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Received: by mail-pg1-x52b.google.com with SMTP id z7so99322pgk.7
        for <clang-built-linux@googlegroups.com>; Thu, 20 Feb 2020 16:42:41 -0800 (PST)
X-Received: by 2002:aa7:9829:: with SMTP id q9mr35774270pfl.31.1582245761415;
        Thu, 20 Feb 2020 16:42:41 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id t65sm711882pfd.178.2020.02.20.16.42.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2020 16:42:40 -0800 (PST)
Date: Thu, 20 Feb 2020 16:42:39 -0800
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux@googlegroups.com
Subject: Re: [RFC 1/2] Documentation/llvm: add documentation on building w/
 Clang/LLVM
Message-ID: <202002201639.EAE5416C83@keescook>
References: <20200220234858.145546-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200220234858.145546-1-ndesaulniers@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=RoAJUDH+;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52b
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Feb 20, 2020 at 03:48:57PM -0800, 'Nick Desaulniers' via Clang Built Linux wrote:
> Added to kbuild documentation. Provides more official info on building
> kernels with Clang and LLVM than our wiki.
> 
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  Documentation/kbuild/index.rst |  1 +
>  Documentation/kbuild/llvm.rst  | 59 ++++++++++++++++++++++++++++++++++
>  2 files changed, 60 insertions(+)
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
> index 000000000000..05c9a28a5a6d
> --- /dev/null
> +++ b/Documentation/kbuild/llvm.rst
> @@ -0,0 +1,59 @@
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
> +such as GCC and binutils. On going work has allowed for `Clang
> +<https://clang.llvm.org/>`_ and `LLVM <https://llvm.org/>`_ utilities to be
> +used as viable substitutes. Distributions such as Android, ChromeOS, and
> +OpenMandriva use Clang built kernels.  `LLVM is a collection of toolchain
> +components implemented in terms of C++ objects
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
> +	make CC=clang defconfig
> +
> +	make CC=clang
> +
> +Cross Compiling
> +---------------
> +
> +A single Clang binary will typically contain all supported backends, which can

For clarity for people who have only ever seen GCC, I would add
"compiler":

	"A single Clang compiler binary ..."

> +help simplify cross compiling.
> +
> +	ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang

Maybe note that CROSS_COMPILE, when using Clang, gets parse for the
architecture triple, and doesn't get used (as with GCC) as an executable
prefix for locating the appropriate compiler binary...

> +
> +LLVM Utilities
> +--------------
> +
> +LLVM has substitutes for GNU binutils utilities. These can be invoked as
> +additional parameters to `make`.
> +
> +	make CC=clang AS=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \\
> +	  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-objsize \\
> +	  READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \\
> +	  HOSTLD=ld.lld

Do you want to add a section for "building latest Clang" here, or is
that just asking for needing constant updates to this doc?

Otherwise, yes, looks great!

-Kees

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
> -- 
> 2.25.0.265.gbab2e86ba0-goog
> 
> -- 
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200220234858.145546-1-ndesaulniers%40google.com.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002201639.EAE5416C83%40keescook.
