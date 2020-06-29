Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBIUB5D3QKGQEKYLZWMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 0584820CF47
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 16:54:28 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id n32sf12587413pgb.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 07:54:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593442466; cv=pass;
        d=google.com; s=arc-20160816;
        b=ddMJBXU/9fKlH95voDqoazC3PYY4MTErIB5VYRGz2T0rJttTigm7hSSp7re4KgQ3q4
         Hnys4laxdHdY6E8g5gAr6gWxzzx75RafJQkvOVxSyyp9tLH6xJH5gCjMc6OTcblWTvT+
         +mJv4IdLzCH6Z3a1x/+o9jM+JyttJx9WgSKSi8dhVzpxXDFA4p6NXtr5SPNeqI+C4NEA
         /lDxLXl5WqlIdgtdnlkp9gNRzoaSWHLZCvVEmBe6ZIrQE16YUJrKxEO/rIo8gjmtsBaQ
         XsjBVNbr5T+fd+OBerjdUO3TlcsaHRhngL0twC+LWhUvMk2hafdTm6Yxmpl7uJluodLH
         Cp+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=yrAJqkiRezGbOStq98zLXPJTHRJDw2amVIhHXJ6v7f8=;
        b=E3EwQNaWUPRqpOcSIsgKUD53KAWCx2HSyokV7TmTZOQ5d+iELxn5QDPeffeshT/6Sk
         Eq4zPzJxBeyEgsxNJLGi6LUymxzwVaeHp6nM0G8ZWTwHtcDdgz54XwGokwFgjZqdKFZ2
         k56AAfk6AJoXJyKVy92DIl3NwT1R5QKinFdVwCsUonLLNQ9JkckWOqjBxQRcgrkLNdq4
         WYP9aUJVZVecA3UNbRHpUn8pAMWlFhKGbMhlcwcfnn09md5XjqbZMAo0Xp9sfBsIIw/n
         yPv8oHQKeHlrmApq0fOaPqUjMVQkhh2LV0hpgv6Pfaed6OOP6hDJH659lzTqOQoNvSX+
         4+cA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LEw0pNBj;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yrAJqkiRezGbOStq98zLXPJTHRJDw2amVIhHXJ6v7f8=;
        b=irTxRsk3AD37Ln2hJmY/hEJgL+UjrubGSZne+ZNK4Ofz9z8DmifltmJPVsi4kRlXo2
         JhEhX8gFLYaRjSIKqfrl5Lf0PvLkXwy64ExK+R8KpYdyhj8FCZs568snN/ugsXbf8k69
         uV57P5txvhG4P1ghRduEedcx80wZlx4vLnQfH4p73IOVJ4AkSY0GRB8DfKBxoMmeE+Ql
         vE7SKtoBDRlr/oU4kL+5j7P95BbzK+PEv0nnQhXau2N93kOQjG48oOuwWXyk/yRI1uvm
         mMUCsTXL+Q9YcaQXkpJIqdpXXSlncUNyfpy7YHnjR9o5QMiirZXAE6KpqDzfQSs/Ctp+
         sMvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yrAJqkiRezGbOStq98zLXPJTHRJDw2amVIhHXJ6v7f8=;
        b=pjVH2SHhvX8m8ph9RK+ca3PBQZcfbci5TG3GDNBkMS1GvnAdjllkswQIOZj0hhisVL
         4oXDmyicREZF64SnNVNdb7lEPfmUq5GeMkbqXyvYRqf/sU26hB8MAFKnoBVNjxHGHPGH
         T7bZ+2oTEVapuLGWkYg4yLqyUeat60/THEUfqbpBsaqghR60UWtK1zwadsMSQTGw8175
         XnDx6k+Ea9Afh09/TWU6ed8Jma4VujKpljUtqWePBnyiPlWW2ID+gKziVWu3aGn0SpUc
         KjmLf0RspxsmRLdmteHmTOPQR1yBI4jF/wGR2LDr37mpJPvrcXlG8WoPVU3jCN0w7LpV
         4ayg==
X-Gm-Message-State: AOAM531+gvtXL80AxznlgRjVpdpMBU6KWoR3kgIuLlBuOBxUGYwyckBL
	ZAYULS2TwCqFq2iIkC9WSec=
X-Google-Smtp-Source: ABdhPJxGD5K3CShstUV99r75Vt64zHJibfnWeqRs8j6kWj7gLzL1TeN2BCxcZ6j6ALNehnCTEVAT7A==
X-Received: by 2002:a17:90a:d104:: with SMTP id l4mr17795723pju.65.1593442466677;
        Mon, 29 Jun 2020 07:54:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:582:: with SMTP id 124ls558483pff.8.gmail; Mon, 29 Jun
 2020 07:54:26 -0700 (PDT)
X-Received: by 2002:a62:7657:: with SMTP id r84mr14360671pfc.130.1593442466214;
        Mon, 29 Jun 2020 07:54:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593442466; cv=none;
        d=google.com; s=arc-20160816;
        b=GsH/lTjKfE4UYACwFTiTpR6m3pMTw+T1EjviXQ/ecrEJW1edipfvXJ+9lpnpUXADtf
         cgUcMKRTMwQOHzUAtQWzIGjjKpRy6k7jz6J5u2BZWWQ8bRR/yWsPjtsSRk64yE3NDGCr
         9XHr01R6Bh9TgpXc4V0A+0VLO/lZKB7gVwIFjG+cnvdFmtqWJXk0ydgYunpEjIpToYVq
         i/lXCH3Z82PDnD/dgZPdDtMDUl2j+U4mQ7kFj0EIogrsYwUrVYA+UxNL4kMiJjLE9fjb
         2R+6uZ0SV6YK1bUYm+djNewOsvnPdygJr7odEJ4mPJTcE2bUrR9m0PNBHhSTe51MANJb
         rInA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VYgNM/DVHPEkntLU/yBA/5PMKk3x04iIvLdywNiIUKs=;
        b=IFvzK43/sc9RsaMeJwDDkWHzh2PdJLeKScqYI3ofPPuYJCyyBQcc2vScZlPTFUojL7
         Sq7isD0awo4haMF5dzq+pHEDn9JPtJ6IgTyV0TWdllhQJA9W3hKYGOsghz/sfyt/02fL
         1+N1kqtd7cPuGcXpRBURDpApjb0NqdIhMIconp3UqJLjJVTe5BQLHbCEme6//Lhm7e6Q
         BdNrBj4hFJPfNfiY6kkG4lIL6vFpoe+jlz74WHiQURYonVxIHicc/HE/vv/1VhP7vF6y
         2fP+Pf2/npPzl4KkCtX5GKxjVm0KpcU+D1jaOP5QoduwlwWKMbPUAHwasoAFuI4/kYiW
         Bktg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LEw0pNBj;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id q85si8000pfq.5.2020.06.29.07.54.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 07:54:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id d4so15771669otk.2
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 07:54:26 -0700 (PDT)
X-Received: by 2002:a9d:638c:: with SMTP id w12mr12713578otk.251.1593442465246;
 Mon, 29 Jun 2020 07:54:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200624014940.1204448-5-keescook@chromium.org>
 <202006250240.J1VuMKoC%lkp@intel.com> <202006270840.E0BC752A72@keescook>
In-Reply-To: <202006270840.E0BC752A72@keescook>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Jun 2020 16:54:13 +0200
Message-ID: <CANpmjNMtFbc_jQU6iNfNx-4wwQF4DY3uaOB1dCPZ3dMqXx6smg@mail.gmail.com>
Subject: Re: [PATCH v3 4/9] x86/build: Warn on orphan section placement
To: Kees Cook <keescook@chromium.org>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Dmitry Vyukov <dvyukov@google.com>, kasan-dev <kasan-dev@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LEw0pNBj;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Sat, 27 Jun 2020 at 17:44, Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Jun 25, 2020 at 02:36:27AM +0800, kernel test robot wrote:
> > I love your patch! Perhaps something to improve:
> > [...]
> > config: x86_64-randconfig-a012-20200624 (attached as .config)
>
> CONFIG_KCSAN=y
>
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 1d4c87335d5236ea1f35937e1014980ba961ae34)
> > [...]
> > All warnings (new ones prefixed by >>):
> >
> >    ld.lld: warning: drivers/built-in.a(mfd/mt6397-irq.o):(.init_array.0) is being placed in '.init_array.0'
>
> As far as I can tell, this is a Clang bug. But I don't know the
> internals here, so I've opened:
> https://bugs.llvm.org/show_bug.cgi?id=46478
>
> and created a work-around patch for the kernel:

Thanks, minor comments below.

With KCSAN this is:

Tested-by: Marco Elver <elver@google.com>


> commit 915f2c343e59a14f00c68f4d7afcfdc621de0674
> Author: Kees Cook <keescook@chromium.org>
> Date:   Sat Jun 27 08:07:54 2020 -0700
>
>     vmlinux.lds.h: Avoid KCSAN's unwanted sections

Since you found that it's also KASAN, this probably wants updating.

>     KCSAN (-fsanitize=thread) produces unwanted[1] .eh_frame and .init_array.*
>     sections. Add them to DISCARDS, except with CONFIG_CONSTRUCTORS, which
>     wants to keep .init_array.* sections.
>
>     [1] https://bugs.llvm.org/show_bug.cgi?id=46478
>
>     Signed-off-by: Kees Cook <keescook@chromium.org>
>
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index f8a5b2333729..41c8c73de6c4 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -195,7 +195,9 @@ endif
>  # Workaround for a gcc prelease that unfortunately was shipped in a suse release
>  KBUILD_CFLAGS += -Wno-sign-compare
>  #
> -KBUILD_CFLAGS += -fno-asynchronous-unwind-tables
> +KBUILD_AFLAGS += -fno-asynchronous-unwind-tables -fno-unwind-tables
> +KBUILD_CFLAGS += -fno-asynchronous-unwind-tables -fno-unwind-tables
> +KBUILD_LDFLAGS += $(call ld-option,--no-ld-generated-unwind-info)

Why are they needed? They are not mentioned in the commit message.

>  # Avoid indirect branches in kernel to deal with Spectre
>  ifdef CONFIG_RETPOLINE
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index b1dca0762fc5..a44ee16abc78 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -934,10 +934,28 @@
>         EXIT_DATA
>  #endif
>
> +/*
> + * Clang's -fsanitize=thread produces unwanted sections (.eh_frame
> + * and .init_array.*), but CONFIG_CONSTRUCTORS wants to keep any
> + * .init_array.* sections.
> + * https://bugs.llvm.org/show_bug.cgi?id=46478
> + */
> +#if defined(CONFIG_KCSAN) && !defined(CONFIG_CONSTRUCTORS)

CONFIG_KASAN as well?

> +#define KCSAN_DISCARDS                                                 \
> +       *(.init_array) *(.init_array.*)                                 \
> +       *(.eh_frame)
> +#elif defined(CONFIG_KCSAN) && defined(CONFIG_CONSTRUCTORS)
> +#define KCSAN_DISCARDS                                                 \
> +       *(.eh_frame)
> +#else
> +#define KCSAN_DISCARDS
> +#endif
> +
>  #define DISCARDS                                                       \
>         /DISCARD/ : {                                                   \
>         EXIT_DISCARDS                                                   \
>         EXIT_CALL                                                       \
> +       KCSAN_DISCARDS                                                  \

Maybe just 'SANITIZER_DISCARDS'?

>         *(.discard)                                                     \
>         *(.discard.*)                                                   \
>         *(.modinfo)                                                     \
>
> --
> Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNMtFbc_jQU6iNfNx-4wwQF4DY3uaOB1dCPZ3dMqXx6smg%40mail.gmail.com.
