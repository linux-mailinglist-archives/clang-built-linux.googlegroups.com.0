Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIXDU7WQKGQEAY4PIPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id B283DDCC48
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 19:08:51 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id u18sf9364586ioc.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 10:08:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571418530; cv=pass;
        d=google.com; s=arc-20160816;
        b=tj17Dp06BlMQOhGi8KAiK0y6RgYEI9Ws05BKMpQtPvtMa+JqHxewNJbKLLyb1UZ53i
         oaKqWskypW6a8zstPR+i1RefRsl+dYVSSWFEZqXoXlSZE30ox9ja/jpwRrnIh4Mo7Cy/
         FNyUchTC43AC9F7Po2EcgXakS2RF+8B045ugwVFjpiS/BEgFnz9AmN2cdXAW+0TXpglm
         IbvWfFIVrfMNub1nVHMmbMAldqNvHP1Ru1bbluHq6TCyGv8yyAwYiPD5lV3CyNAJA3t0
         IxvmZ7/06gs1sWFV+UJ8AdPbZMnJbus+CmweNG67QbNviqXwTDGAHvJF6rUyL+e9jLgl
         81+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=587EXlMZMrSSEZ/WcIVYHgvrIZjRTHeoWhsIC8qUyZo=;
        b=Q8zxIb7m246hKK2/1mFApXw1hku+k+9i45GeHHHfdeTR10SFI6ASHsawgfHEAos4zC
         twyvpik7mxNmfjRXMI29P/jSlUn2TdAGtEQ+7I3qh2Kf2Rv2CcuuV+/zc2ks8bLhfWfE
         LdzvSB8Ca/QWOOOQzOUScL23o01aYdJNcKBv0nN/SqBRXh2deR6ZiZK4HpOpvegBxGTh
         b4FVVDxclbKTNaY+EMIIk4mHkojf4Ka1FSFbB3Sn9rWNGU9RQ6eiqwdXbDG3YSiYnCBd
         c9dt/Y7vwCX11yTHk9tc+cWjfAB1dBpfthZ7z9Aclip6FLss+L6wrmOW/h/b5AvSrKEO
         FPnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nWcskwJT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=587EXlMZMrSSEZ/WcIVYHgvrIZjRTHeoWhsIC8qUyZo=;
        b=h69NwicF/9T+/G7uXAFbJWN4MpTnOP1tOuytUTR03ucCiNC+wEQFNYEoRyF+baeW3x
         phe5b8in2rfzW2uyedG5NFk2GivFA8MAaddRAkMfCoPvUh7ojCmT7PSautPyNmcrdK86
         UDyrqzsAGCsqYRp+F3I/I7l5YU3We0i6pk0ohrQS7Aea02KqsR4JyiRxtLz1Quc0jXTn
         0mNbUsCiKZJhdPnaddtVa8C87AzROrRPWNH2+VrJJ3qtaEKKh6lJSwT03opFwLPDbT8K
         1JsZarqN3MMu1BrAStE5NdF3+TApXAzfv987YmRoX1H1WW0r1+un1q7C5xkNbR2j5Xxj
         iAmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=587EXlMZMrSSEZ/WcIVYHgvrIZjRTHeoWhsIC8qUyZo=;
        b=aFTAwpzb9heCdWFCkf1p69kF+tNsTF5AvfWjPLPoya41Ft0tkRTqmxBJ1vXF2MJIyh
         3ETpgQAIGzEKuP+Q2xcsstjvKONHoDNtW29+OWiP0EAePESp69om1ctltDjd+tajC6oX
         3zjPsjpqxQ9Q+ry9f/3/ecZW4CqH3lZDb6K1rjTJfZxawycdSWQMn2kJF3wuWySh5s3j
         BdT31WGYX0TcNeAgueImXlPMOO7Np3lxsYI2TNEc3UCLoVST4ulqlNyGGbq5pHAJuGpz
         DVY7YljLxv7wPOGd/ffhqQr6fWF2jPUtrB7gltUvUD9Mm7UyVHGYxEbsS/TSPEapritz
         bdvw==
X-Gm-Message-State: APjAAAVUcqEn0HyWv89ONAAB2sOhxs+/h5WvfRY21LiXoW1jswQOMQN7
	3qHw9q2JGgZzF5Goe1rVmn0=
X-Google-Smtp-Source: APXvYqzan3AbcDQTO0qbJSkK1J9qovPjcev2joZ++lc4N5yiYnGib1Ku8mOII6xJBdCh+7B6jtVs1Q==
X-Received: by 2002:a92:9687:: with SMTP id g129mr397863ilh.243.1571418530522;
        Fri, 18 Oct 2019 10:08:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:520c:: with SMTP id g12ls932885ilb.16.gmail; Fri, 18 Oct
 2019 10:08:50 -0700 (PDT)
X-Received: by 2002:a92:7ed7:: with SMTP id q84mr11973911ill.237.1571418530112;
        Fri, 18 Oct 2019 10:08:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571418530; cv=none;
        d=google.com; s=arc-20160816;
        b=TeSH9G0kiTCFUXQT/d2mJR9b6rMnUCHf/nCrzqKcWbnQ5drgRDeIsKaquV19j00YS0
         ZNYJRACPvc21mMiDAYkUMGuZ5KC8GimFxRTqwfzEhbnuNkGETwwCSoGcF5DLXDEIlDZQ
         N1TXZ0ma+PF3eUaTTFKrJ9COoRdGS1AyLRNgBk1CKlK9B1SYVkQ+osbn9pct57RXbjM9
         8R7bf66S3izFkPTbHdAKjDzwzDp+6NrZIzVKHoEEjSBuCHJ7c1RpEz5VzMzVEObFSWY8
         7b7jgndkly4K2jy9Hh9aockaIHromJEq5/u3UKmDm01QB5Hxg7aufMDaClqrBobMEw7P
         NcBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9UWzFD043Ue79WGKfIetFLN4DBfqKitPsfYFXewJ5t0=;
        b=NNtOGNKj1acvbcLYS+dhwYt/7TBAHdmGkd9hw0LLaighZp099+FSfMsLZXVfTVM1+G
         c4xsvvv7qScBwcnePCb487HUsKsKSr0cxusYptGv7As4FusLtsQqarbJrMxpUoswJP2u
         6a+Jb6N2/ZgutI2voVR01J0MqJhwWR141zwNj5lpAdE4bqdxDCnhvuY2dqa0TEE6/JGm
         NiyrP0sl9lNNqQYRK7b1eMlgjabYYhQAeBzqTS24qURHnuiHEP4O8N9GOEvYO2n/Hs9V
         79JmfLAg9rIeTYGjsGRyMa4Jpr7HhBHwY+7l7cDPBF69GWYRW348+6529ouTIpp26xxS
         VRaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nWcskwJT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id h14si324589ilc.0.2019.10.18.10.08.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 10:08:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id q21so4249196pfn.11
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 10:08:50 -0700 (PDT)
X-Received: by 2002:aa7:99c7:: with SMTP id v7mr8035590pfi.165.1571418528747;
 Fri, 18 Oct 2019 10:08:48 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191018161033.261971-7-samitolvanen@google.com>
In-Reply-To: <20191018161033.261971-7-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 18 Oct 2019 10:08:37 -0700
Message-ID: <CAKwvOd=z3RxvJeNV1sBE=Y1b6HgXdnT4M9bwMrUNZcvcSOqwTw@mail.gmail.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel-hardening@lists.openwall.com, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nWcskwJT;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Oct 18, 2019 at 9:11 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> This change adds generic support for Clang's Shadow Call Stack, which
> uses a shadow stack to protect return addresses from being overwritten
> by an attacker. Details are available here:
>
>   https://clang.llvm.org/docs/ShadowCallStack.html
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  Makefile                       |   6 ++
>  arch/Kconfig                   |  39 ++++++++
>  include/linux/compiler-clang.h |   2 +
>  include/linux/compiler_types.h |   4 +
>  include/linux/scs.h            |  88 ++++++++++++++++++
>  init/init_task.c               |   6 ++
>  init/main.c                    |   3 +
>  kernel/Makefile                |   1 +
>  kernel/fork.c                  |   9 ++
>  kernel/sched/core.c            |   2 +
>  kernel/sched/sched.h           |   1 +
>  kernel/scs.c                   | 162 +++++++++++++++++++++++++++++++++
>  12 files changed, 323 insertions(+)
>  create mode 100644 include/linux/scs.h
>  create mode 100644 kernel/scs.c
>
> diff --git a/Makefile b/Makefile
> index ffd7a912fc46..e401fa500f62 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -846,6 +846,12 @@ ifdef CONFIG_LIVEPATCH
>  KBUILD_CFLAGS += $(call cc-option, -flive-patching=inline-clone)
>  endif
>
> +ifdef CONFIG_SHADOW_CALL_STACK
> +KBUILD_CFLAGS  += -fsanitize=shadow-call-stack
> +DISABLE_SCS    := -fno-sanitize=shadow-call-stack
> +export DISABLE_SCS
> +endif
> +
>  # arch Makefile may override CC so keep this after arch Makefile is included
>  NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
>
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 5f8a5d84dbbe..a222adda8130 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -521,6 +521,45 @@ config STACKPROTECTOR_STRONG
>           about 20% of all kernel functions, which increases the kernel code
>           size by about 2%.
>
> +config ARCH_SUPPORTS_SHADOW_CALL_STACK
> +       bool
> +       help
> +         An architecture should select this if it supports Clang's Shadow
> +         Call Stack, has asm/scs.h, and implements runtime support for shadow
> +         stack switching.
> +
> +config SHADOW_CALL_STACK_VMAP
> +       def_bool n
> +       depends on SHADOW_CALL_STACK
> +       help
> +         Use virtually mapped shadow call stacks. Selecting this option
> +         provides better stack exhaustion protection, but increases per-thread
> +         memory consumption as a full page is allocated for each shadow stack.
> +
> +choice
> +       prompt "Return-oriented programming (ROP) protection"
> +       default ROP_PROTECTION_NONE
> +       help
> +         This option controls kernel protections against return-oriented
> +         programming (ROP) attacks.
> +
> +config ROP_PROTECTION_NONE
> +       bool "None"
> +
> +config SHADOW_CALL_STACK
> +       bool "Clang Shadow Call Stack"
> +       depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> +       depends on CC_IS_CLANG && CLANG_VERSION >= 70000

Version check LGTM.

> +       help
> +         This option enables Clang's Shadow Call Stack, which uses a shadow
> +         stack to protect function return addresses from being overwritten by
> +         an attacker. More information can be found from Clang's
> +         documentation:
> +
> +           https://clang.llvm.org/docs/ShadowCallStack.html
> +
> +endchoice
> +
>  config HAVE_ARCH_WITHIN_STACK_FRAMES
>         bool
>         help
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index 333a6695a918..9af08391f205 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -42,3 +42,5 @@
>   * compilers, like ICC.
>   */
>  #define barrier() __asm__ __volatile__("" : : : "memory")
> +
> +#define __noscs                __attribute__((no_sanitize("shadow-call-stack")))

It looks like this attribute, (and thus a requirement to use this
feature), didn't exist until Clang 7.0: https://godbolt.org/z/p9u1we
(as noted above)

I think it's better to put __noscs behind a __has_attribute guard in
include/linux/compiler_attributes.h.  Otherwise, what will happen when
Clang 6.0 sees __noscs, for example? (-Wunknown-sanitizers will
happen).

> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index 72393a8c1a6c..be5d5be4b1ae 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -202,6 +202,10 @@ struct ftrace_likely_data {
>  # define randomized_struct_fields_end
>  #endif
>
> +#ifndef __noscs
> +# define __noscs
> +#endif
> +

and then this can be removed.

>  #ifndef asm_volatile_goto
>  #define asm_volatile_goto(x...) asm goto(x)
>  #endif
> diff --git a/include/linux/scs.h b/include/linux/scs.h
> new file mode 100644
> index 000000000000..dfbd80faa528
> --- /dev/null
> +++ b/include/linux/scs.h
> @@ -0,0 +1,88 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Shadow Call Stack support.
> + *
> + * Copyright (C) 2018 Google LLC
> + */
> +
> +#ifndef _LINUX_SCS_H
> +#define _LINUX_SCS_H
> +
> +#include <linux/gfp.h>
> +#include <linux/sched.h>
> +#include <asm/page.h>
> +
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +
> +#ifdef CONFIG_SHADOW_CALL_STACK_VMAP
> +# define SCS_SIZE              PAGE_SIZE
> +#else
> +# define SCS_SIZE              1024
> +#endif
> +
> +#define SCS_GFP                        (GFP_KERNEL | __GFP_ZERO)
> +
> +extern unsigned long init_shadow_call_stack[];
> +
> +static inline void *task_scs(struct task_struct *tsk)
> +{
> +       return task_thread_info(tsk)->shadow_call_stack;
> +}
> +
> +static inline void task_set_scs(struct task_struct *tsk, void *s)
> +{
> +       task_thread_info(tsk)->shadow_call_stack = s;
> +}
> +
> +extern void scs_init(void);
> +extern void scs_set_init_magic(struct task_struct *tsk);
> +extern void scs_task_init(struct task_struct *tsk);
> +extern void scs_task_reset(struct task_struct *tsk);
> +extern int scs_prepare(struct task_struct *tsk, int node);
> +extern bool scs_corrupted(struct task_struct *tsk);
> +extern void scs_release(struct task_struct *tsk);
> +
> +#else /* CONFIG_SHADOW_CALL_STACK */
> +
> +static inline void *task_scs(struct task_struct *tsk)
> +{
> +       return 0;
> +}
> +
> +static inline void task_set_scs(struct task_struct *tsk, void *s)
> +{
> +}
> +
> +static inline void scs_init(void)
> +{
> +}
> +
> +static inline void scs_set_init_magic(struct task_struct *tsk)
> +{
> +}
> +
> +static inline void scs_task_init(struct task_struct *tsk)
> +{
> +}
> +
> +static inline void scs_task_reset(struct task_struct *tsk)
> +{
> +}
> +
> +static inline int scs_prepare(struct task_struct *tsk, int node)
> +{
> +       return 0;
> +}
> +
> +static inline bool scs_corrupted(struct task_struct *tsk)
> +{
> +       return false;
> +}
> +
> +static inline void scs_release(struct task_struct *tsk)
> +{
> +}
> +
> +#endif /* CONFIG_SHADOW_CALL_STACK */
> +
> +#endif /* _LINUX_SCS_H */
> diff --git a/init/init_task.c b/init/init_task.c
> index 9e5cbe5eab7b..5e55ff45bbbf 100644
> --- a/init/init_task.c
> +++ b/init/init_task.c
> @@ -11,6 +11,7 @@
>  #include <linux/mm.h>
>  #include <linux/audit.h>
>  #include <linux/numa.h>
> +#include <linux/scs.h>
>
>  #include <asm/pgtable.h>
>  #include <linux/uaccess.h>
> @@ -184,6 +185,11 @@ struct task_struct init_task
>  };
>  EXPORT_SYMBOL(init_task);
>
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +unsigned long init_shadow_call_stack[SCS_SIZE / sizeof(long)]
> +       __init_task_data __aligned(SCS_SIZE);
> +#endif
> +
>  /*
>   * Initial thread structure. Alignment of this is handled by a special
>   * linker map entry.
> diff --git a/init/main.c b/init/main.c
> index 91f6ebb30ef0..fb8bcdd729b9 100644
> --- a/init/main.c
> +++ b/init/main.c
> @@ -93,6 +93,7 @@
>  #include <linux/rodata_test.h>
>  #include <linux/jump_label.h>
>  #include <linux/mem_encrypt.h>
> +#include <linux/scs.h>
>
>  #include <asm/io.h>
>  #include <asm/bugs.h>
> @@ -578,6 +579,8 @@ asmlinkage __visible void __init start_kernel(void)
>         char *after_dashes;
>
>         set_task_stack_end_magic(&init_task);
> +       scs_set_init_magic(&init_task);
> +
>         smp_setup_processor_id();
>         debug_objects_early_init();
>
> diff --git a/kernel/Makefile b/kernel/Makefile
> index daad787fb795..313dbd44d576 100644
> --- a/kernel/Makefile
> +++ b/kernel/Makefile
> @@ -102,6 +102,7 @@ obj-$(CONFIG_TRACEPOINTS) += trace/
>  obj-$(CONFIG_IRQ_WORK) += irq_work.o
>  obj-$(CONFIG_CPU_PM) += cpu_pm.o
>  obj-$(CONFIG_BPF) += bpf/
> +obj-$(CONFIG_SHADOW_CALL_STACK) += scs.o
>
>  obj-$(CONFIG_PERF_EVENTS) += events/
>
> diff --git a/kernel/fork.c b/kernel/fork.c
> index bcdf53125210..ae7ebe9f0586 100644
> --- a/kernel/fork.c
> +++ b/kernel/fork.c
> @@ -94,6 +94,7 @@
>  #include <linux/livepatch.h>
>  #include <linux/thread_info.h>
>  #include <linux/stackleak.h>
> +#include <linux/scs.h>
>
>  #include <asm/pgtable.h>
>  #include <asm/pgalloc.h>
> @@ -451,6 +452,8 @@ void put_task_stack(struct task_struct *tsk)
>
>  void free_task(struct task_struct *tsk)
>  {
> +       scs_release(tsk);
> +
>  #ifndef CONFIG_THREAD_INFO_IN_TASK
>         /*
>          * The task is finally done with both the stack and thread_info,
> @@ -834,6 +837,8 @@ void __init fork_init(void)
>                           NULL, free_vm_stack_cache);
>  #endif
>
> +       scs_init();
> +
>         lockdep_init_task(&init_task);
>         uprobes_init();
>  }
> @@ -907,6 +912,7 @@ static struct task_struct *dup_task_struct(struct task_struct *orig, int node)
>         clear_user_return_notifier(tsk);
>         clear_tsk_need_resched(tsk);
>         set_task_stack_end_magic(tsk);
> +       scs_task_init(tsk);
>
>  #ifdef CONFIG_STACKPROTECTOR
>         tsk->stack_canary = get_random_canary();
> @@ -2022,6 +2028,9 @@ static __latent_entropy struct task_struct *copy_process(
>                                  args->tls);
>         if (retval)
>                 goto bad_fork_cleanup_io;
> +       retval = scs_prepare(p, node);
> +       if (retval)
> +               goto bad_fork_cleanup_thread;
>
>         stackleak_task_init(p);
>
> diff --git a/kernel/sched/core.c b/kernel/sched/core.c
> index dd05a378631a..e7faeb383008 100644
> --- a/kernel/sched/core.c
> +++ b/kernel/sched/core.c
> @@ -6013,6 +6013,8 @@ void init_idle(struct task_struct *idle, int cpu)
>         raw_spin_lock_irqsave(&idle->pi_lock, flags);
>         raw_spin_lock(&rq->lock);
>
> +       scs_task_reset(idle);
> +
>         __sched_fork(0, idle);
>         idle->state = TASK_RUNNING;
>         idle->se.exec_start = sched_clock();
> diff --git a/kernel/sched/sched.h b/kernel/sched/sched.h
> index 0db2c1b3361e..c153003a011c 100644
> --- a/kernel/sched/sched.h
> +++ b/kernel/sched/sched.h
> @@ -58,6 +58,7 @@
>  #include <linux/profile.h>
>  #include <linux/psi.h>
>  #include <linux/rcupdate_wait.h>
> +#include <linux/scs.h>
>  #include <linux/security.h>
>  #include <linux/stop_machine.h>
>  #include <linux/suspend.h>
> diff --git a/kernel/scs.c b/kernel/scs.c
> new file mode 100644
> index 000000000000..47324e8d313b
> --- /dev/null
> +++ b/kernel/scs.c
> @@ -0,0 +1,162 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Shadow Call Stack support.
> + *
> + * Copyright (C) 2019 Google LLC
> + */
> +
> +#include <linux/cpuhotplug.h>
> +#include <linux/mm.h>
> +#include <linux/slab.h>
> +#include <linux/scs.h>
> +#include <linux/vmalloc.h>
> +#include <asm/scs.h>
> +
> +#define SCS_END_MAGIC  0xaf0194819b1635f6UL
> +
> +static inline void *__scs_base(struct task_struct *tsk)
> +{
> +       return (void *)((uintptr_t)task_scs(tsk) & ~(SCS_SIZE - 1));
> +}
> +
> +#ifdef CONFIG_SHADOW_CALL_STACK_VMAP
> +
> +/* Keep a cache of shadow stacks */
> +#define SCS_CACHE_SIZE 2
> +static DEFINE_PER_CPU(void *, scs_cache[SCS_CACHE_SIZE]);
> +
> +static void *scs_alloc(int node)
> +{
> +       int i;
> +
> +       for (i = 0; i < SCS_CACHE_SIZE; i++) {
> +               void *s;
> +
> +               s = this_cpu_xchg(scs_cache[i], NULL);
> +               if (s) {
> +                       memset(s, 0, SCS_SIZE);
> +                       return s;
> +               }
> +       }
> +
> +       return __vmalloc_node_range(SCS_SIZE, SCS_SIZE,
> +                                   VMALLOC_START, VMALLOC_END,
> +                                   SCS_GFP, PAGE_KERNEL, 0,
> +                                   node, __builtin_return_address(0));
> +}
> +
> +static void scs_free(void *s)
> +{
> +       int i;
> +
> +       for (i = 0; i < SCS_CACHE_SIZE; i++) {
> +               if (this_cpu_cmpxchg(scs_cache[i], 0, s) != 0)
> +                       continue;
> +
> +               return;
> +       }
> +
> +       vfree_atomic(s);
> +}
> +
> +static int scs_cleanup(unsigned int cpu)
> +{
> +       int i;
> +       void **cache = per_cpu_ptr(scs_cache, cpu);
> +
> +       for (i = 0; i < SCS_CACHE_SIZE; i++) {
> +               vfree(cache[i]);
> +               cache[i] = NULL;
> +       }
> +
> +       return 0;
> +}
> +
> +void __init scs_init(void)
> +{
> +       cpuhp_setup_state(CPUHP_BP_PREPARE_DYN, "scs:scs_cache", NULL,
> +               scs_cleanup);
> +}
> +
> +#else /* !CONFIG_SHADOW_CALL_STACK_VMAP */
> +
> +static struct kmem_cache *scs_cache;
> +
> +static inline void *scs_alloc(int node)
> +{
> +       return kmem_cache_alloc_node(scs_cache, SCS_GFP, node);
> +}
> +
> +static inline void scs_free(void *s)
> +{
> +       kmem_cache_free(scs_cache, s);
> +}
> +
> +void __init scs_init(void)
> +{
> +       scs_cache = kmem_cache_create("scs_cache", SCS_SIZE, SCS_SIZE,
> +                               0, NULL);
> +       WARN_ON(!scs_cache);
> +}
> +
> +#endif /* CONFIG_SHADOW_CALL_STACK_VMAP */
> +
> +static inline unsigned long *scs_magic(struct task_struct *tsk)
> +{
> +       return (unsigned long *)(__scs_base(tsk) + SCS_SIZE - sizeof(long));
> +}
> +
> +static inline void scs_set_magic(struct task_struct *tsk)
> +{
> +       *scs_magic(tsk) = SCS_END_MAGIC;
> +}
> +
> +void scs_task_init(struct task_struct *tsk)
> +{
> +       task_set_scs(tsk, NULL);
> +}
> +
> +void scs_task_reset(struct task_struct *tsk)
> +{
> +       task_set_scs(tsk, __scs_base(tsk));
> +}
> +
> +void scs_set_init_magic(struct task_struct *tsk)
> +{
> +       scs_save(tsk);
> +       scs_set_magic(tsk);
> +       scs_load(tsk);
> +}
> +
> +int scs_prepare(struct task_struct *tsk, int node)
> +{
> +       void *s;
> +
> +       s = scs_alloc(node);
> +       if (!s)
> +               return -ENOMEM;
> +
> +       task_set_scs(tsk, s);
> +       scs_set_magic(tsk);
> +
> +       return 0;
> +}
> +
> +bool scs_corrupted(struct task_struct *tsk)
> +{
> +       return *scs_magic(tsk) != SCS_END_MAGIC;
> +}
> +
> +void scs_release(struct task_struct *tsk)
> +{
> +       void *s;
> +
> +       s = __scs_base(tsk);
> +       if (!s)
> +               return;
> +
> +       WARN_ON(scs_corrupted(tsk));
> +
> +       scs_task_init(tsk);
> +       scs_free(s);
> +}
> --
> 2.23.0.866.gb869b98d4c-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dz3RxvJeNV1sBE%3DY1b6HgXdnT4M9bwMrUNZcvcSOqwTw%40mail.gmail.com.
