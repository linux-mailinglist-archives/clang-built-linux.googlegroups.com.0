Return-Path: <clang-built-linux+bncBC2ORX645YPRBXN7ZXWQKGQE4VUWE2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 1273BE556D
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 22:49:35 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id r128sf1310099vke.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 13:49:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572036574; cv=pass;
        d=google.com; s=arc-20160816;
        b=obsRPlCXtEC/7uLppHt54UzEnWFpHXDyrIvIk6/JravitiasH63PWoM2eVnEV1a5Cc
         6nnZDQLsATB9OFDF2lKqDORECynRNKGY58iq6LrA+PSoTomOxEIRECe3TamJ8MY6poFY
         D3jR5sYiLzmxU6KNmbrFh4ZCnAbjk1ug0ZEigj4VVu/H3SLdbRqR6Cb8cdWMMh/LQ2lP
         5yiH7QjtZSodugGhMYdjIw45QyIlIILMz45QFRoXiSF4DJSt4GWLvwMfcIdS5IC97ng6
         DXJy2fI7qgxZnQza9YW+xqSGUfwutuJgrektUy/kAxYw13OY0MuRBhbC75VqjZmBzz95
         kUbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=siGPe6sHwz4fwUKLfV7FxVnrDTrZ6Q1FIxDzmG9jYFg=;
        b=BC/l659ZNn8CiVx0WIwohcync8dYeYAq5kFEn+qKttk9qFQKxBfPZaoQ36b4xwcd3U
         rJ8u2JxTLqTWwmx7jw0m9rgHgvToO22B9E70nzAuJHCF/+WYQqXkS6qxg0qyQZG9B92W
         hctjOoFyzqZG1ezIud42XNkxrdTyV+ePq6twmN9FjQxRVipzgRhg5J+Rdsc0QNDLjEhw
         SYxLRLOkfYBBmC/Y42fyald1bJJ7xS1w+6d8Mp+B4Vu8U94vgajXvv21L1qME4ziBja9
         med8huU/jxhqXwNJPohjKDFui7vTqTu8/wYqeKoiIhn25RfRknUcC3WOIHryFIC8Xghi
         Wt+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LoSD3OZa;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=siGPe6sHwz4fwUKLfV7FxVnrDTrZ6Q1FIxDzmG9jYFg=;
        b=TCpGjflUkX0ujOtUxS5UUyqa9oKh/9j17Ab6kKG/+SBRdhn9rzuhH/U3K33B9jChKz
         pH/dIY+tNF/OxSFUyEP/zoam3ZLVv8bX+BRt4bcwYOuDBvbq8nct7zH01N5r5vKlnbux
         X/+ivcHTjN/pe2JqxD4KSFMZt0HT8aQJpdf5riqu3bvoIT1qBdJWPM6ZY9yL/HB06ZLb
         bXSZZtlvR1kngT8iGNMZcdiHqaE+ya/4KhHTvlEkeyJ9Uw5wyqQYH7o1a6y1YtqYRx6i
         El5YX7QtNAsc7azwpj60s1Wd/EJa5ltEg8u/ZysDh98BnKPRLwPZP7ygHL9eQMn5lJap
         Uscg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=siGPe6sHwz4fwUKLfV7FxVnrDTrZ6Q1FIxDzmG9jYFg=;
        b=Jz3D1OkroZYXD0OTRtb0XK0L6KeS5J0bAUcW7/RpAiZ3W9kO6TPGPdkpPry9IFlDHa
         4LZhujsgjcbxpygaP9dMFmSXysnz5E0Cqc5PULlkZSiV6upCIgHgVK1oRua+0k2JeHjB
         OhgQVW7RReYNcc/Ep3mXqS4O5nnzfVbJjDiT+nz8qA7OsyFMetH7K7xmad0292NwkFZt
         nWeIZtE/qSgzLCit8tPTiQcrVmmODCIhp+AA87h5znZ1kjvCdcthR7o2/B83z3TTrLaW
         VCfmbOCmjkxdTQj7K6YYOdF2n6gD14ishu/2ogcKMdqKSChtcm20YuN5UonD1LP6k7OV
         xrug==
X-Gm-Message-State: APjAAAUbzawQQHiDr9VowXWLcBwh5NTcfPOetVo/PYjPEkly+SaNajaT
	o45aGmfbbjgrF4pxo7pYU+g=
X-Google-Smtp-Source: APXvYqyC3DGMXjNKX8OjqPNb186uU5X9eEqQ/91EVbLqWkRRIddHBANQXVWWJWKFoG5z1b7Y+tXS8A==
X-Received: by 2002:a9f:3c2c:: with SMTP id u44mr2888995uah.2.1572036574055;
        Fri, 25 Oct 2019 13:49:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:5d8:: with SMTP id v24ls663340vsf.6.gmail; Fri, 25
 Oct 2019 13:49:33 -0700 (PDT)
X-Received: by 2002:a67:ec13:: with SMTP id d19mr3319857vso.73.1572036573611;
        Fri, 25 Oct 2019 13:49:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572036573; cv=none;
        d=google.com; s=arc-20160816;
        b=aya17Yfp+lwPj9wXcEpJOBau+B7PwDzrVVIOhKNRvZA5SRVfce+3QIkQXEUIS22qFN
         lmEXGvhJgk2W0AsE6G3zwtx6bMb5BjOMdWcCcbuR4gFkpnA8MpwhIRPyue0eB5hcbp/G
         KoP1fcBvN/DJrJ9bLkcqRHuCIjBr1U5arCmDaNGy9VbWJCRjB5iAgFeHV67ezp7R3Ole
         gyvztC3K4KgapwLmI8D+Tw/pkDGhiacaBcSJawNg+SuhvmuF8QepeQq0ugulDaEsmIwl
         J5oDdcxX6wXi81hIyBLgp9fxyD3jkQZvp49aKL64e6EnlPOGYNlFQcS+NfNGy4WcDH4m
         vtfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=B01qVjfF1LUa0PK52bjL02zxaBRU3eQBI1v+W/4JeHk=;
        b=JUphURZckUTVZrciyxCVMq8P5R9A6q1zIWZvMcc6wLeorKC5p3z7k5J+BYySlM61G4
         StvNTmsYkf1/Kq9WcXoM14w1FU9UiLgPZ3jVOILvB3C6S0LUA+Pa64coabzIs/vYqgQP
         NPH3nClaujHBiHPlKP5EJxmUGF0DUe1jjy+0RKKtxOyPYxX+EMwsmIk7Cn11GZNv7vSE
         uEPfXeu++KvZLVUhHAf7XWL9BiUBFE4iUNUJq/awaocWN9hMD2Ztor5e6enL/4J0hX+D
         oLQ8CQMv0sQbci/qkZLRSVwabpUm3xbif0S/Wo/KoSjlxj9krKekgekCbAGOOc7SfPUh
         2nEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LoSD3OZa;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id p18si101837vsn.1.2019.10.25.13.49.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 13:49:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Received: by mail-vs1-xe44.google.com with SMTP id p13so2391743vso.0
        for <clang-built-linux@googlegroups.com>; Fri, 25 Oct 2019 13:49:33 -0700 (PDT)
X-Received: by 2002:a67:ffc7:: with SMTP id w7mr3154037vsq.15.1572036572738;
 Fri, 25 Oct 2019 13:49:32 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com> <20191024225132.13410-6-samitolvanen@google.com>
 <20191025105643.GD40270@lakrids.cambridge.arm.com>
In-Reply-To: <20191025105643.GD40270@lakrids.cambridge.arm.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 25 Oct 2019 13:49:21 -0700
Message-ID: <CABCJKuc+XiDRdqfvjwCF7y=1wX3QO0MCUpeu4Gdcz91+nmnEAQ@mail.gmail.com>
Subject: Re: [PATCH v2 05/17] add support for Clang's Shadow Call Stack (SCS)
To: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LoSD3OZa;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44
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

On Fri, Oct 25, 2019 at 3:56 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > +#define SCS_SIZE     1024
>
> I think it'd be worth a comment on how this size was chosen. IIRC this
> empirical?

Correct. I'll add a comment.

> > +#define SCS_END_MAGIC        0xaf0194819b1635f6UL
>
> Keyboard smash? ... or is there a prize for whoever figures out the
> secret? ;)

It's a random number, so if someone figures out a secret in it,
they'll definitely deserve a prize. :)

> > +static inline void task_set_scs(struct task_struct *tsk, void *s)
> > +{
> > +     task_thread_info(tsk)->shadow_call_stack = s;
> > +}
>
> This should probably be named get and set, or have:
>
> #define task_scs(tsk)   (task_thread_info(tsk)->shadow_call_stack)
>
> ... which can have a trivial implementation as NULL for the !SCS case.

Sure, sounds good.

> For all the trivial wrappers you can put the implementation on the same
> line as the prototype. That makes it a bit easier to compare against the
> prototypes on the other side of the ifdeffery.
>
> e.g. this lot can be:
>
> static inline void *task_scs(struct task_struct *tsk) { return 0; }
> static inline void task_set_scs(struct task_struct *tsk, void *s) { }
> static inline void scs_init(void) { }

Agreed.

> > diff --git a/kernel/fork.c b/kernel/fork.c
> > index bcdf53125210..ae7ebe9f0586 100644
> > --- a/kernel/fork.c
> > +++ b/kernel/fork.c
> > @@ -94,6 +94,7 @@
> >  #include <linux/livepatch.h>
> >  #include <linux/thread_info.h>
> >  #include <linux/stackleak.h>
> > +#include <linux/scs.h>
>
> Nit: alphabetical order, please (this should come before stackleak.h).

The includes in kernel/fork.c aren't in alphabetical order, so I just
added this to the end here.

> > +     retval = scs_prepare(p, node);
> > +     if (retval)
> > +             goto bad_fork_cleanup_thread;
>
> Can we please fold scs_prepare() into scs_task_init() and do this in
> dup_task_struct()? That way we set this up consistently in one place,
> where we're also allocating the regular stack.

Yes, that does sound cleaner. I'll change that.

> > +     scs_task_reset(idle);
>
> I'm a bit confused by this -- please see comments below on
> scs_task_reset().

> > +static inline void *__scs_base(struct task_struct *tsk)
> > +{
> > +     return (void *)((uintptr_t)task_scs(tsk) & ~(SCS_SIZE - 1));
> > +}
>
> We only ever assign the base to task_scs(tsk), with the current live
> value being in a register that we don't read. Are we expecting arch code
> to keep this up-to-date with the register value?
>
> I would have expected that we just leave this as the base (as we do for
> the regular stack in the task struct), and it's down to arch code to
> save/restore the current value where necessary.
>
> Am I missing some caveat with that approach?

To keep the address of the currently active shadow stack out of
memory, the arm64 implementation clears this field when it loads x18
and saves the current value before a context switch. The generic code
doesn't expect the arch code to necessarily do so, but does allow it.
This requires us to use __scs_base() when accessing the base pointer
and to reset it in idle tasks before they're reused, hence
scs_task_reset().

> > +     BUILD_BUG_ON(SCS_SIZE > PAGE_SIZE);
>
> It's probably worth a comment on why we rely on SCS_SIZE <= PAGE_SIZE.

Ack.

> > +static inline unsigned long *scs_magic(struct task_struct *tsk)
> > +{
> > +     return (unsigned long *)(__scs_base(tsk) + SCS_SIZE - sizeof(long));
>
> Slightly simpler as:
>
>         return (unsigned long *)(__scs_base(tsk) + SCS_SIZE) - 1;

Yes, that's a bit cleaner.

I'll fix these in v3. Thank you for the review!

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuc%2BXiDRdqfvjwCF7y%3D1wX3QO0MCUpeu4Gdcz91%2BnmnEAQ%40mail.gmail.com.
