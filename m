Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBVG2QKAAMGQEPFU3I2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id F21822F6C68
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 21:45:09 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id w204sf5777383qka.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 12:45:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610657109; cv=pass;
        d=google.com; s=arc-20160816;
        b=UBU92vQceF3i9PcpFWLPo+aXDEzyiVGWoN66xgwPKrY7PF9euI+S6I56XuOQYNKei9
         PjIxCbWjoM9MCbrue4GO3o07pbuuGOAtY47T9AVXv+rtvZI8XBtTNZFUkSgQ1g8B4ONX
         2KgcdYhlGqmrGRTXopnMlj/9wI1/Q/deRk6KbSaFXj+f8AnLK9GO3+jlT82hniLE7Ybk
         YbnOqYXKePeSRa6jWirE0BeS+yjKaJK2M7pfrpk6EFSbcU4aD4buR0nFpmI9armdu2bq
         jKZr4FhmmSL5mFTErEf2YWxDuwvE8PgDhzXj+gfjR0xxMHNbPLZ353YAlA7KxLXMKSdE
         6gIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=00XiLpVN/HoWRb3PAfEb9rbvWjGCZ0bd6aWn1Y7uZho=;
        b=BG2VGXGrFWncmCkf6DXtRwqyFz/CneEu3WE224lIyQXmfTcZQoRIZfSIuPkeCdEy+7
         emU8b93WK7WH8hW+uRNCV9s8XP5jR9GPTJl9q0dfQYiFzxE8nXT4G3wCN6JHGT71yERv
         fwwbJzqvxVdBXOyXueyNlmUyRGidp9/f7k59EQnuY0D58sfxO6RMrzVWSnwJmKL9zVMT
         6Rvi5r9ECwsqQd1otoC8j+zHvwzr/0vBQYzD9moxMFe6fDCRf+a1j+cBJ2ldS8mjV45n
         MNMY/MrCQXW1GkNHhgZX15qP6NfXY3nOxNLeTpw8jQ77XtCS0c9e28T6BK66RkeTAQPU
         HUtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pRoMF7Ds;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=00XiLpVN/HoWRb3PAfEb9rbvWjGCZ0bd6aWn1Y7uZho=;
        b=J6sCeLMGcVW+rg5hJAxviaLSboit8+5h5blFnfdrCgaUnaz7PdPIPlDEAvGd2Whete
         mO0nf1TSaLK2jvmKfcl2TCU799Z+Am8U/Srm8Hattgx2REa8ILb+Ja4XxvYNBwZxIVzk
         f6zOqc+jlvDREckBBiqIEHgEB6l7/RgjZhSIv1TUiWTPO9FhcVelZYogIO5+a5GAC36y
         UhYHP4FCE14WxSOwQbEwmlSxBpH10cOKuyN/PpoVkcjBxQuwRyFVqIDPaaGQ889A1Ycy
         gMKT/GPn6Xupvk7tI411wM9nl4DSv0dIWneKKFocXtfvX5/zFSnK6AJRPeuhARb22TdD
         g4GQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=00XiLpVN/HoWRb3PAfEb9rbvWjGCZ0bd6aWn1Y7uZho=;
        b=ljwim8TXltUX6BAtnTDEPKKF3gZw7U8DE0p5ROoFoMTB2snltrW/4HYIYSHudEfWKu
         MoHslWCqARgimxWQlwf/YOmt7Xgr1TORqZIq57O3Xrg5OBiwZEehH3vV0zA2Vy9S59Do
         h3oHJZ2weiBjla7549xyldca9O5x3IQv2F40dhNti+TPlzvk4P6I7vtPUKjKzmKBQpkF
         PshLcq19F4n53GQ5fQ30Tv8Ddkwjrg2zDoN7O9rUGsxk3NfKBXR1eZ2luD7KApw0b/3G
         zC7b6obeeKk7MpQoKy5YQBiqYwjroNvPI8JCaSkjJxBrFLGiPd6RwlYIQUrN5fvabmmH
         RNyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=00XiLpVN/HoWRb3PAfEb9rbvWjGCZ0bd6aWn1Y7uZho=;
        b=JeMQ5drW/PIjTpTpjX6hWYdLLkwdDnWeLCW9+/gTFUoRqkzu5qs6AjkMw2NbDavVTs
         55sll1PhADRT5SCc+b9u5JxBmOmxhgR+0BqKrcPug2WNG/TZh6us2mhRSAw4VtWcgRDS
         M+HaVLRCwxibZn/Rc5GT8CZ9Es0URrD55WWKKg4mLxWoXhm+ne+xItjZ+JZYe6ej5hLd
         wH8EmN4EV1H90+lvIdW2f/T6maM6KkQuE+BO75Gt/HLrxuCzdYTTjhkgkbG1igmM7yiz
         bywVkUNXvCvZOcO0FSzbFBBimAQnnvNKMrt0zyLS7l7AxMGpsDz7jtFJOfBtNEQDc9m+
         bQig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530dRmVqT5RQl1ApiqGGQuRyZ56GPfu+2sc43TgAcCK7Q1cHUWR2
	XksDboiiHLG7rhRBIE4lDio=
X-Google-Smtp-Source: ABdhPJx0rq0F2dDi4O0I0mszUZ8W5JwLZHftypSrhAmhyrx1jJj/M7m1R/k7JbdCY0Ki9fMISnvcBA==
X-Received: by 2002:a05:620a:4ef:: with SMTP id b15mr8735182qkh.267.1610657109017;
        Thu, 14 Jan 2021 12:45:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:242:: with SMTP id q2ls3388249qkn.9.gmail; Thu, 14
 Jan 2021 12:45:08 -0800 (PST)
X-Received: by 2002:a37:aace:: with SMTP id t197mr9033561qke.175.1610657108531;
        Thu, 14 Jan 2021 12:45:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610657108; cv=none;
        d=google.com; s=arc-20160816;
        b=iTonzruwj/XSrHXyiSRF3oIt1MDnNTP+AD7nq+s5lyXDm2srtNt6MEtfB4xcqxCjXL
         bfrUOLK+mFnEeIX4rLOd/9PZP0kM2ofyirl4KBqP3catJjvzILx1fX9uettd42jpVGg1
         MHZ33O4RZ5Z9zRhSSOZW4v4XvcUTzwe5c0FJj79iLH26TwFJCbb1kYHza9GG9+Odexva
         O17UnfrLXiLA2VIpXxzwe4rHcX7MniGwB7dQk+9WIgfFBFktWF/ikRYsqV/T0F0LW0Fg
         LG17bwv3a4NgGW4TlTt+iuTE31Lhh8P8bD67+LnyryJ4f5hWljgoM9dEYqFdDW3o5dnj
         JyIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qMjTCiZSGbUw9jzjMEpe7nFKlPtvgkQsUv6Wc9RBu0A=;
        b=doSU4f/WZX0Wcr3XRm7fI0dvFx++m7cajDOPt/93Z36GGR3a0lQuSkx78rVykd/zcs
         vifBASpWkHluhozOQI5M6MwlBN5ljIRWoHm4G0y8oJTE2a1lgJaOAbPOM3yXgvzfV7JG
         XzZOUeqRJibsQ+UY/RBrxRQDNu/KIhWkOYRlyHJu3V3eDawBeM5YwHBrYKh7fCyeT0qO
         ZnK9X75N5oVv3LxQ6zLaguNASgj0Bj/9wlJtOKj5lOuhXQDil0euRa0mfzP2ZIgyw/Tg
         ZmU8KTrB77muz3U0/MU15e45SsR709O7Qnpt7S6nsy0vmMh+Nu0+naHAEpmNHkGQkIkq
         T4NA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pRoMF7Ds;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com. [2607:f8b0:4864:20::d32])
        by gmr-mx.google.com with ESMTPS id z25si568131qth.3.2021.01.14.12.45.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 12:45:08 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) client-ip=2607:f8b0:4864:20::d32;
Received: by mail-io1-xd32.google.com with SMTP id y19so13989530iov.2
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 12:45:08 -0800 (PST)
X-Received: by 2002:a05:6638:48:: with SMTP id a8mr7720947jap.138.1610657108068;
 Thu, 14 Jan 2021 12:45:08 -0800 (PST)
MIME-Version: 1.0
References: <20210114185354.308083-1-masahiroy@kernel.org> <CA+icZUUE4yL24-LEO5hkoPLDtCTyx8iiSng2SWf7uWx0TJypvA@mail.gmail.com>
In-Reply-To: <CA+icZUUE4yL24-LEO5hkoPLDtCTyx8iiSng2SWf7uWx0TJypvA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 14 Jan 2021 21:44:56 +0100
Message-ID: <CA+icZUWaUihK+kzs2q0aBhuuccXPfmq9BT_NCebjJdASDWTMsg@mail.gmail.com>
Subject: Re: [PATCH v4] kbuild: check the minimum compiler version in Kconfig
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, 
	Paul Gortmaker <paul.gortmaker@windriver.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Will Deacon <will@kernel.org>, Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pRoMF7Ds;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32
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

On Thu, Jan 14, 2021 at 9:41 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Thu, Jan 14, 2021 at 7:54 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > Paul Gortmaker reported a regression in the GCC version check [1].
> > If you use GCC 4.8, the build breaks before showing the error message
> > "error Sorry, your version of GCC is too old - please use 4.9 or newer."
> >
> > I do not want to apply his fix-up since it implies we would not be able
> > to remove any cc-option test. Anyway, I admit checking the GCC version
> > in <linux/compiler-gcc.h> is too late.
> >
> > Almost at the same time, Linus also suggested to move the compiler
> > version error to Kconfig time. [2]
> >
> > I unified the similar two scripts, gcc-version.sh and clang-version.sh
> > into the new cc-version.sh. The old scripts invoked the compiler multiple
> > times (3 times for gcc-version.sh, 4 times for clang-version.sh). I
> > refactored the code so the new one invokes the compiler just once, and
> > also tried my best to use shell-builtin commands where possible.
> >
> > The new script runs faster.
> >
> >   $ time ./scripts/clang-version.sh clang
> >   120000
> >
> >   real    0m0.029s
> >   user    0m0.012s
> >   sys     0m0.021s
> >
> >   $ time ./scripts/cc-version.sh clang
> >   Clang 120000
> >
> >   real    0m0.009s
> >   user    0m0.006s
> >   sys     0m0.004s
> >
> > The cc-version.sh also shows the error if the compiler is old:
> >
> >   $ make defconfig CC=clang-9
> >   *** Default configuration is based on 'x86_64_defconfig'
> >   ***
> >   *** Compiler is too old.
> >   ***   Your Clang version:    9.0.1
> >   ***   Minimum Clang version: 10.0.1
> >   ***
> >   scripts/Kconfig.include:46: Sorry, this compiler is not supported.
> >   make[1]: *** [scripts/kconfig/Makefile:81: defconfig] Error 1
> >   make: *** [Makefile:602: defconfig] Error 2
> >
> > I removed the clang version check from <linux/compiler-clang.h>
> >
> > For now, I did not touch <linux/compiler-gcc.h> in order to avoid
> > merge conflict with [3], which has been queued up in the arm64 tree.
> > We can clean it up later.
> >
> > The new script takes care of ICC because we have <linux/compiler-intel.h>
> > although I am not sure if building the kernel with ICC is well-supported.
> >
> > [1]: https://lore.kernel.org/r/20210110190807.134996-1-paul.gortmaker@windriver.com
> > [2]: https://lore.kernel.org/r/CAHk-=wh-+TMHPTFo1qs-MYyK7tZh-OQovA=pP3=e06aCVp6_kA@mail.gmail.com
> > [3]: https://lore.kernel.org/r/20210112224832.10980-1-will@kernel.org
> >
> > Fixes: 87de84c9140e ("kbuild: remove cc-option test of -Werror=date-time")
> > Reported-by: Paul Gortmaker <paul.gortmaker@windriver.com>
> > Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> > Reviewed-by: Miguel Ojeda <ojeda@kernel.org>
> > Tested-by: Miguel Ojeda <ojeda@kernel.org>
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>
> Applied v4 to my custom clang-cfi patchset.
>
> Here I tested with all Clang compilers I have installed:
>
> [ Debian ]
>
> dileks@iniza:~/src/linux-kernel/git$ scripts/cc-version.sh clang-11
> Clang 110100

^^^ That's from my selfmade toolchain.

dileks@iniza:~/src/linux-kernel/git$ scripts/cc-version.sh /usr/bin/clang-11
Clang 110001

- Sedat -

> dileks@iniza:~/src/linux-kernel/git$ scripts/cc-version.sh clang-10
> Clang 100001
> dileks@iniza:~/src/linux-kernel/git$ scripts/cc-version.sh clang-9***
> *** Compiler is too old.
> ***   Your Clang version:    9.0.1
> ***   Minimum Clang version: 10.0.1
> ***
>
> [ Selfmade LLVM toolchain v11.1.0-rc1 ]
>
> dileks@iniza:~/src/linux-kernel/git$ which clang
> /opt/llvm-toolchain/bin/clang
> dileks@iniza:~/src/linux-kernel/git$ scripts/cc-version.sh clang
> Clang 110100
>
> [ LLVM-12 from <apt.llvm.org> ]
>
> dileks@iniza:~/src/linux-kernel/git$ scripts/cc-version.sh clang-12
> Clang 120000
>
> Feel free to add my:
>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
>
> - Sedat -
>
> > ---
> >
> > Changes in v4:
> >   - use lore version of the links
> >
> > Changes in v3:
> >   - add $(srctree)/ to fix out-of-tree build
> >   - support ICC version
> >
> > Changes in v2:
> >   - fix the function name
> >
> >  include/linux/compiler-clang.h | 10 -----
> >  init/Kconfig                   |  9 ++--
> >  scripts/Kconfig.include        |  6 +++
> >  scripts/cc-version.sh          | 76 ++++++++++++++++++++++++++++++++++
> >  scripts/clang-version.sh       | 19 ---------
> >  scripts/gcc-version.sh         | 20 ---------
> >  6 files changed, 87 insertions(+), 53 deletions(-)
> >  create mode 100755 scripts/cc-version.sh
> >  delete mode 100755 scripts/clang-version.sh
> >  delete mode 100755 scripts/gcc-version.sh
> >
> > diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> > index 98cff1b4b088..04c0a5a717f7 100644
> > --- a/include/linux/compiler-clang.h
> > +++ b/include/linux/compiler-clang.h
> > @@ -3,16 +3,6 @@
> >  #error "Please don't include <linux/compiler-clang.h> directly, include <linux/compiler.h> instead."
> >  #endif
> >
> > -#define CLANG_VERSION (__clang_major__ * 10000 \
> > -                    + __clang_minor__ * 100    \
> > -                    + __clang_patchlevel__)
> > -
> > -#if CLANG_VERSION < 100001
> > -#ifndef __BPF_TRACING__
> > -# error Sorry, your version of Clang is too old - please use 10.0.1 or newer.
> > -#endif
> > -#endif
> > -
> >  /* Compiler specific definitions for Clang compiler */
> >
> >  /* same as gcc, this was present in clang-2.6 so we can assume it works
> > diff --git a/init/Kconfig b/init/Kconfig
> > index b77c60f8b963..01108dd1318b 100644
> > --- a/init/Kconfig
> > +++ b/init/Kconfig
> > @@ -26,11 +26,11 @@ config CC_VERSION_TEXT
> >             and then every file will be rebuilt.
> >
> >  config CC_IS_GCC
> > -       def_bool $(success,echo "$(CC_VERSION_TEXT)" | grep -q gcc)
> > +       def_bool $(success,test $(cc-name) = GCC)
> >
> >  config GCC_VERSION
> >         int
> > -       default $(shell,$(srctree)/scripts/gcc-version.sh $(CC)) if CC_IS_GCC
> > +       default $(cc-version) if CC_IS_GCC
> >         default 0
> >
> >  config LD_VERSION
> > @@ -38,14 +38,15 @@ config LD_VERSION
> >         default $(shell,$(LD) --version | $(srctree)/scripts/ld-version.sh)
> >
> >  config CC_IS_CLANG
> > -       def_bool $(success,echo "$(CC_VERSION_TEXT)" | grep -q clang)
> > +       def_bool $(success,test $(cc-name) = Clang)
> >
> >  config LD_IS_LLD
> >         def_bool $(success,$(LD) -v | head -n 1 | grep -q LLD)
> >
> >  config CLANG_VERSION
> >         int
> > -       default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
> > +       default $(cc-version) if CC_IS_CLANG
> > +       default 0
> >
> >  config LLD_VERSION
> >         int
> > diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
> > index a5fe72c504ff..0228cb9c74aa 100644
> > --- a/scripts/Kconfig.include
> > +++ b/scripts/Kconfig.include
> > @@ -39,6 +39,12 @@ as-instr = $(success,printf "%b\n" "$(1)" | $(CC) $(CLANG_FLAGS) -c -x assembler
> >  $(error-if,$(failure,command -v $(CC)),compiler '$(CC)' not found)
> >  $(error-if,$(failure,command -v $(LD)),linker '$(LD)' not found)
> >
> > +# Get the compiler name, version, and error out if it is not supported.
> > +cc-info := $(shell,$(srctree)/scripts/cc-version.sh $(CC))
> > +$(error-if,$(success,test -z "$(cc-info)"),Sorry$(comma) this compiler is not supported.)
> > +cc-name := $(shell,set -- $(cc-info) && echo $1)
> > +cc-version := $(shell,set -- $(cc-info) && echo $2)
> > +
> >  # Fail if the linker is gold as it's not capable of linking the kernel proper
> >  $(error-if,$(success, $(LD) -v | grep -q gold), gold linker '$(LD)' not supported)
> >
> > diff --git a/scripts/cc-version.sh b/scripts/cc-version.sh
> > new file mode 100755
> > index 000000000000..818d233bb0ad
> > --- /dev/null
> > +++ b/scripts/cc-version.sh
> > @@ -0,0 +1,76 @@
> > +#!/bin/sh
> > +# SPDX-License-Identifier: GPL-2.0
> > +#
> > +# Print the compiler name and its version in a 5 or 6-digit form.
> > +# Also, perform the minimum version check.
> > +
> > +set -e
> > +
> > +# When you raise the compiler version, please update
> > +# Documentation/process/changes.rst as well.
> > +gcc_min_version=4.9.0
> > +clang_min_version=10.0.1
> > +icc_min_version=16.0.3 # temporary
> > +
> > +# print the compiler name and versions
> > +get_compiler_info()
> > +{
> > +       cat <<- EOF | "$@" -E -P -x c - 2>/dev/null
> > +       #if defined(__clang__)
> > +       Clang   __clang_major__  __clang_minor__  __clang_patchlevel__
> > +       #elif defined(__INTEL_COMPILER)
> > +       ICC     __INTEL_COMPILER  __INTEL_COMPILER_UPDATE
> > +       #elif defined(__GNUC__)
> > +       GCC     __GNUC__  __GNUC_MINOR__  __GNUC_PATCHLEVEL__
> > +       #else
> > +       unknown
> > +       #endif
> > +       EOF
> > +}
> > +
> > +# convert the version string x.y.z to a canonical 5 or 6-digit form
> > +get_canonical_version()
> > +{
> > +       IFS=.
> > +       set -- $1
> > +       echo $((10000 * $1 + 100 * $2 + $3))
> > +}
> > +
> > +# $@ instead of $1 because multiple words might be given e.g. CC="ccache gcc"
> > +orig_args="$@"
> > +set -- $(get_compiler_info "$@")
> > +
> > +name=$1
> > +
> > +case "$name" in
> > +GCC)
> > +       version=$2.$3.$4
> > +       min_version=$gcc_min_version
> > +       ;;
> > +Clang)
> > +       version=$2.$3.$4
> > +       min_version=$clang_min_version
> > +       ;;
> > +ICC)
> > +       version=$(($2 / 100)).$(($2 % 100)).$3
> > +       min_version=$icc_min_version
> > +       ;;
> > +*)
> > +       echo "$orig_args: unknown compiler" >&2
> > +       exit 1
> > +       ;;
> > +esac
> > +
> > +cversion=$(get_canonical_version $version)
> > +min_cversion=$(get_canonical_version $min_version)
> > +
> > +if [ "$cversion" -lt "$min_cversion" ]; then
> > +       echo >&2 "***"
> > +       echo >&2 "*** Compiler is too old."
> > +       echo >&2 "***   Your $name version:    $version"
> > +       echo >&2 "***   Minimum $name version: $min_version"
> > +       echo >&2 "***"
> > +       exit 1
> > +fi
> > +
> > +echo $name $cversion
> > diff --git a/scripts/clang-version.sh b/scripts/clang-version.sh
> > deleted file mode 100755
> > index 6fabf0695761..000000000000
> > --- a/scripts/clang-version.sh
> > +++ /dev/null
> > @@ -1,19 +0,0 @@
> > -#!/bin/sh
> > -# SPDX-License-Identifier: GPL-2.0
> > -#
> > -# clang-version clang-command
> > -#
> > -# Print the compiler version of `clang-command' in a 5 or 6-digit form
> > -# such as `50001' for clang-5.0.1 etc.
> > -
> > -compiler="$*"
> > -
> > -if ! ( $compiler --version | grep -q clang) ; then
> > -       echo 0
> > -       exit 1
> > -fi
> > -
> > -MAJOR=$(echo __clang_major__ | $compiler -E -x c - | tail -n 1)
> > -MINOR=$(echo __clang_minor__ | $compiler -E -x c - | tail -n 1)
> > -PATCHLEVEL=$(echo __clang_patchlevel__ | $compiler -E -x c - | tail -n 1)
> > -printf "%d%02d%02d\\n" $MAJOR $MINOR $PATCHLEVEL
> > diff --git a/scripts/gcc-version.sh b/scripts/gcc-version.sh
> > deleted file mode 100755
> > index ae353432539b..000000000000
> > --- a/scripts/gcc-version.sh
> > +++ /dev/null
> > @@ -1,20 +0,0 @@
> > -#!/bin/sh
> > -# SPDX-License-Identifier: GPL-2.0
> > -#
> > -# gcc-version gcc-command
> > -#
> > -# Print the gcc version of `gcc-command' in a 5 or 6-digit form
> > -# such as `29503' for gcc-2.95.3, `30301' for gcc-3.3.1, etc.
> > -
> > -compiler="$*"
> > -
> > -if [ ${#compiler} -eq 0 ]; then
> > -       echo "Error: No compiler specified." >&2
> > -       printf "Usage:\n\t$0 <gcc-command>\n" >&2
> > -       exit 1
> > -fi
> > -
> > -MAJOR=$(echo __GNUC__ | $compiler -E -x c - | tail -n 1)
> > -MINOR=$(echo __GNUC_MINOR__ | $compiler -E -x c - | tail -n 1)
> > -PATCHLEVEL=$(echo __GNUC_PATCHLEVEL__ | $compiler -E -x c - | tail -n 1)
> > -printf "%d%02d%02d\\n" $MAJOR $MINOR $PATCHLEVEL
> > --
> > 2.27.0
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114185354.308083-1-masahiroy%40kernel.org.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWaUihK%2Bkzs2q0aBhuuccXPfmq9BT_NCebjJdASDWTMsg%40mail.gmail.com.
