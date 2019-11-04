Return-Path: <clang-built-linux+bncBC2ORX645YPRBIO2QHXAKGQECFYL75Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1ABEE757
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 19:25:38 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id 6sf3275283qkc.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 10:25:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572891937; cv=pass;
        d=google.com; s=arc-20160816;
        b=ftixfGBAsbjCM05EEKXno8v40zaz+Wuyc9RlA/+k/59WbNVMeL8UiSfLKnZrI9424F
         IvzsGyL6n/2zg0kLGOytt7H34/JJLtuinZWFJFFvdprndGI5rLv78rKka41zzshED5+J
         jIF6e0GWZZcTF5q/6gxeH/hATlJXuu1xVhyknXnS4RY0sO96aOQUH7CWgUQDd0pGHsUH
         u/raq+s5dqRFFniJJdZDJGDDQiOHXgLScaUl6LdLPkA2jF9D6DdiTI07BFDTDBbwvGzL
         cGKGF2lX0TK7n9Tacnapodn2iWEJf3eO20guXMkRVUxUjINjWExjIzCJOVAGkX+Ai++P
         1XjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=t/+KIUej4LX2B2/gTIJGPnuyIbSHCeAEC9HzZtCF2Kg=;
        b=HV2+SULYrpMMJk/5LDj2lI62RIemCX8qTYJkZcBTBbJgypwb6cLtK7qKVisnqlj3XU
         istu1ShMDGKpOaZeBJcRhn0VhubyLshuj1G+hALrbOhUWwDocFwWgHSLktqPKjf4W6GW
         z4bNtAZjqT4cyQnCSu7prAfBWhKA7TE7zYVkj9xckFplUHCNMcgSEChakAerEUkt5g5m
         fKkS2Y/CsQYbBtcGPbL9Tom4VmxQgGOv0zzD99GucKIVnVBKXqlJO6nE2kqCzAjvreI6
         OH65qSbJkuLxnI3Ll1w57fN65LSUMgD+M7NXw3JP65x12MdQDRva/NtNkonpNcFULeB0
         eotg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DDqpEeTe;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t/+KIUej4LX2B2/gTIJGPnuyIbSHCeAEC9HzZtCF2Kg=;
        b=Ze7zzzAQMy2APlE49dwiuCJ6mtOAH830ljNa9FUYqXkVB10uYftNnH4lZNRawYPhcD
         9Ex5hhvupFM2u5nGxVT10wQvHftkmO7A6intVGVk8fjFCV0IrBE9a4IyoDuTKRpWbZih
         EJ8lXQt7SMNcrFZSUSM35w0PA5P8EfXxNpiygT3WlQ0K7SbCNP+h+irRrHR2aLcHkgcj
         wVz7AtcKNiN+WeRaYERwBNevYNWuaBrVn9eusQNiK8ebp4Ua9EcKlEZX6T0MuLi8pLA1
         kKCc6dw7KHDK+pup/BX3cHxZiwSKP+bx/dcRFc1LOziDNGCuCtu0RkHWHgfu4TrzRA6y
         NDHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t/+KIUej4LX2B2/gTIJGPnuyIbSHCeAEC9HzZtCF2Kg=;
        b=I7UMfBNa6Lj3U0pU54ue2rgX783DfnT3Cdmd9EVDtcPjquyoCxdcuLv70tcETuapfv
         QuWJ3ir3XF6vcC6UWBcajIz95WDc727GKCsGr0z0e915HjRXIiGJUNVxAcc12V1CYRP+
         6V2feapD8hRROnfKkuJM5e0ex9FHo5QPWHmXFR5HfSgRSQ8toWRTG9gml3Aac916FrDh
         sUIezdT8M3fBtsyM5A8DjEa+y/PFAxLoUHXIAmqUQ4Fb9wgCYUkJvUQlsk3ix7W+j3Ab
         So1bLNz7tF/6QDMlfTWxjQ1C9eV6MRF0M+m24N7I2EbtmD9zXdZM305MH9dzDfuuhK7W
         uz/Q==
X-Gm-Message-State: APjAAAU/bmEj/x4LYVqwotIL1IPRRj2Im7bVVy48ecDj6G3TtmPVIVCd
	puwZ54PLq4Xz7os/EAOk22g=
X-Google-Smtp-Source: APXvYqz2e+8dC7GgM1Zht2p7/BfVkwdlZ3bojGAMksmg9VPbAK5hfPQ0ImREpeJbcQOYudLhyU9bXA==
X-Received: by 2002:a37:5805:: with SMTP id m5mr23456938qkb.32.1572891937583;
        Mon, 04 Nov 2019 10:25:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4347:: with SMTP id a7ls4450585qtn.11.gmail; Mon, 04 Nov
 2019 10:25:37 -0800 (PST)
X-Received: by 2002:ac8:117:: with SMTP id e23mr13793896qtg.82.1572891937229;
        Mon, 04 Nov 2019 10:25:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572891937; cv=none;
        d=google.com; s=arc-20160816;
        b=FDYwFwdhaeuaXN/zY1Iig7tvrOoSMiOyoVB6Xu6E32PH4ZijKOGAGPwLzdDxpAbjgw
         T1Xjf2aYNuUYErrdI6L9J8+XThawX+NeeHwoqstx9p7D2do5eNP9Z1caYg20NH+N2LG+
         YIaTI5R6eb40zFdac4wmCE5bo3vFsvn+ssJP629nAzPFXA172lQhX4wjWScIICIYJgh1
         7x7SKkV9Lkk+eoK+ZQ+UQCs2GFWb0JwY17JkVavcCWO/UMqRpnD/+GK5Jl8L6MF9PT9D
         Yl8Kfr3WFitTJiirYQXSnxi/cC/hDTUXVXYii6X/H7vfCWRRnjMTJKSjQ/UdaMuVwP0w
         KFnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wt2wTLQmxuTdMREEhAUzUopx1z+7npE/zcGOwaeBYN0=;
        b=jmTo59sPw8Km+//HFIVNSiL6HuXQQ1nout1KstM/ED5xJm70iBHPeE52H/bdU9xav6
         sNfsHrvoaTmeFswAxeDtkfwWGa04EpozCO9C70n5SaQXKJdPzpjnl6Jfs2kX8I65p1Mb
         +UdRTjJkW7s/jig4262TRkk11B6CYHWw1W3BwOwsupbfxs4YdMU9a7xc+ya5ijifkWjs
         44ZDtEZDF0U85xmnjZGMNmDRfTi3ncm4q5ooSpSArT9WBYV2jVJXmwQ8WTGDM9ZyPYAF
         7MBSQgXdcI4Lyn/W+hVlQXUXTI4qC3Q0bEPP8S4tHl0jic5c6mg8lHvk7iBuqERt4zqm
         qCxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DDqpEeTe;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id o24si1207869qtb.2.2019.11.04.10.25.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 10:25:37 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Received: by mail-vs1-xe42.google.com with SMTP id l5so11601824vsh.12
        for <clang-built-linux@googlegroups.com>; Mon, 04 Nov 2019 10:25:37 -0800 (PST)
X-Received: by 2002:a67:e951:: with SMTP id p17mr10322928vso.112.1572891936159;
 Mon, 04 Nov 2019 10:25:36 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com> <20191101221150.116536-6-samitolvanen@google.com>
 <20191104123126.GC45140@lakrids.cambridge.arm.com>
In-Reply-To: <20191104123126.GC45140@lakrids.cambridge.arm.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 4 Nov 2019 10:25:24 -0800
Message-ID: <CABCJKudAiafvGk60oOjcZwcSHV69vGYZYpHaDD9HRgAuEx4jBw@mail.gmail.com>
Subject: Re: [PATCH v4 05/17] add support for Clang's Shadow Call Stack (SCS)
To: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Marc Zyngier <maz@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DDqpEeTe;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Mon, Nov 4, 2019 at 4:31 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > +/*
> > + * In testing, 1 KiB shadow stack size (i.e. 128 stack frames on a 64-bit
> > + * architecture) provided ~40% safety margin on stack usage while keeping
> > + * memory allocation overhead reasonable.
> > + */
> > +#define SCS_SIZE     1024
>
> To make it easier to reason about type promotion rules (and avoid that
> we accidentaly mask out high bits when using this to generate a mask),
> can we please make this 1024UL?

Sure.

> > --- a/kernel/sched/core.c
> > +++ b/kernel/sched/core.c
> > @@ -6013,6 +6013,8 @@ void init_idle(struct task_struct *idle, int cpu)
> >       raw_spin_lock_irqsave(&idle->pi_lock, flags);
> >       raw_spin_lock(&rq->lock);
> >
> > +     scs_task_reset(idle);
>
> Could we please do this next to the kasan_unpoison_task_stack() call,
> Either just before, or just after?
>
> They're boot addressing the same issue where previously live stack is
> being reused, and in general I'd expect them to occur at the same time
> (though I understand idle will be a bit different).

Good point, I'll move this.

> > --- a/kernel/sched/sched.h
> > +++ b/kernel/sched/sched.h
> > @@ -58,6 +58,7 @@
> >  #include <linux/profile.h>
> >  #include <linux/psi.h>
> >  #include <linux/rcupdate_wait.h>
> > +#include <linux/scs.h>
> >  #include <linux/security.h>
> >  #include <linux/stop_machine.h>
> >  #include <linux/suspend.h>
>
> This include looks extraneous.

I added this to sched.h, because most of the includes used in
kernel/sched appear to be there, but I can move this to
kernel/sched/core.c instead.

> > +static inline void *__scs_base(struct task_struct *tsk)
> > +{
> > +     /*
> > +      * We allow architectures to use the shadow_call_stack field in
> > +      * struct thread_info to store the current shadow stack pointer
> > +      * during context switches.
> > +      *
> > +      * This allows the implementation to also clear the field when
> > +      * the task is active to avoid keeping pointers to the current
> > +      * task's shadow stack in memory. This can make it harder for an
> > +      * attacker to locate the shadow stack, but also requires us to
> > +      * compute the base address when needed.
> > +      *
> > +      * We assume the stack is aligned to SCS_SIZE.
> > +      */
>
> How about:
>
>         /*
>          * To minimize risk the of exposure, architectures may clear a
>          * task's thread_info::shadow_call_stack while that task is
>          * running, and only save/restore the active shadow call stack
>          * pointer when the usual register may be clobbered (e.g. across
>          * context switches).
>          *
>          * The shadow call stack is aligned to SCS_SIZE, and grows
>          * upwards, so we can mask out the low bits to extract the base
>          * when the task is not running.
>          */
>
> ... which I think makes the lifetime and constraints a bit clearer.

Sounds good to me, thanks.

> > +     return (void *)((uintptr_t)task_scs(tsk) & ~(SCS_SIZE - 1));
>
> We usually use unsigned long ratehr than uintptr_t. Could we please use
> that for consistency?
>
> The kernel relies on sizeof(unsigned long) == sizeof(void *) tree-wide,
> so that doesn't cause issues for us here.
>
> Similarly, as suggested above, it would be easier to reason about this
> knowing that SCS_SIZE is an unsigned long. While IIUC we'd get sign
> extension here when it's promoted, giving the definition a UL suffix
> minimizes the scope for error.

OK, I'll switch to unsigned long.

> > +/* Keep a cache of shadow stacks */
> > +#define SCS_CACHE_SIZE 2
>
> How about:
>
> /* Matches NR_CACHED_STACKS for VMAP_STACK */
> #define NR_CACHED_SCS 2
>
> ... which explains where the number came from, and avoids confusion that
> the SIZE is a byte size rather than number of elements.

Agreed, that sounds better.

> > +static void scs_free(void *s)
> > +{
> > +     int i;
> > +
> > +     for (i = 0; i < SCS_CACHE_SIZE; i++)
> > +             if (this_cpu_cmpxchg(scs_cache[i], 0, s) == 0)
> > +                     return;
>
> Here we should compare to NULL rather than 0.

Ack.

> > +void __init scs_init(void)
> > +{
> > +     cpuhp_setup_state(CPUHP_BP_PREPARE_DYN, "scs:scs_cache", NULL,
> > +             scs_cleanup);
>
> We probably want to do something if this call fails. It looks like we'd
> only leak two pages (and we'd be able to use them if/when that CPU is
> brought back online. A WARN_ON() is probably fine.

fork_init() in kernel/fork.c lets this fail quietly, but adding a
WARN_ON seems fine.

I will include these changes in v5.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudAiafvGk60oOjcZwcSHV69vGYZYpHaDD9HRgAuEx4jBw%40mail.gmail.com.
