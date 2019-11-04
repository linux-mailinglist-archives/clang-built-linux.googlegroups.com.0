Return-Path: <clang-built-linux+bncBC2ORX645YPRBLNTQLXAKGQEJYVIVFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4305CEEB3E
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 22:35:43 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id h2sf14409626pfr.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 13:35:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572903342; cv=pass;
        d=google.com; s=arc-20160816;
        b=bsF4OUZ4Ij7kN17svom4t4yhl8s+zfWL7E+AKbX9FXwt2rWlhv7/7ryw+gGm/EAIZa
         mvXl7wAIvxub+QFrUXAy3vTTbSZPXmc3WDQn1+9OiQzwMUFKHfzsVOkEMs/3H2vWoVcZ
         p8wKa/t8VQwHvf+QTykV8EEImkRR0KxlGIhpF0b8J3O7+hNKSzTGwdw7CFoPabQ9wnv3
         Ivc3giSDi6+RuRZZ1RCSwOws0ZNGqF8vFONItepfAA8axAiyxVAwDHeboWbsyEPbgFSt
         PP2ajLSPzRhfKdlb6lAb1+B0uhnOL7VdoCTw8L4UVArZSiDzMijWlwD9mfOz2thRUH6b
         RECQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4qipJ9WTHfTxz0ylDG8jz0IluD9wzWPZ5lmtGtysYZA=;
        b=YZUId6SLJozUAaDerCMZ1qPE2o/3LkOt6bgVrGXdvrZt1VLYNbrjrykVSFga0yiLoo
         FqDpxJoE+ulNS3y9a8KQ02wgnuPo/3g/KBDOI/5rjeB7pwzH720LZSONbw2n+KrWn7bh
         S2j18KWaPCpz94Z+v0jVAjlrDH4E839aIVVdgNwOkX1w8dBemAU5IvcdHlBRQq/hP/Ro
         T6Ee2i6HZPMWdYWYoJSByka3UETtxMPR8Ln3CvNQ+2uNk79GILw2RKTyINs2Ppv8ucnc
         G4CFbARWdfHzqooSWDh0U3IYtxMaTCZ2WDZv8mjJ8Qc/g28K/G9hMkE2j+KKe49lNzAL
         4ZRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WQqOCU6q;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4qipJ9WTHfTxz0ylDG8jz0IluD9wzWPZ5lmtGtysYZA=;
        b=qJLQwhgWfQnpAvkP5WbzMyh7i4bcelVZk4pXTzxuDIFTHnRA525dU1O8dZWno4Elsv
         JxShQm2oMSoy32zK+YKTOu6EPOKwVUU7XB+4UaCQAXdjN1j2jmYcea5ZkLqvNqlRysgg
         gZcoXjpZiFACjAE7VLcVygiHBJJL4P+zojbRdQJQ/Uk3vzq1SwHP9fjP0f/h3Kx6ZTyT
         J0/bEHtxSJgUh1zm910I9cGEDnIiJobGJVMzUZsBqOe86Epex7pW12iUGUbImfn46uyO
         y/BhycrXUqUsNbokV3g5HCynt5evvUEDsTTGhRKjBnRBEONdMdEQCfxi/2UDBkSZeI0R
         e8Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4qipJ9WTHfTxz0ylDG8jz0IluD9wzWPZ5lmtGtysYZA=;
        b=RwauJRspA09rDZ5H4QZ8C1X2epNq2LFo9H7mHEqEHmQZDqesFLeHZmIFi3DPV4PtJn
         XDIszkWLSVffsCKMXwlPRq2ZqVEssTBwFjkYoNuLRLz74+B2UzFMzpN1KauKrKoZaFsq
         beWV2AfhdafEPvvDx2whtE7kc3nAB3z7fyDS4mAPk/Ec9BLS/d5bmq8wkKwU2xCLty4P
         3+NesgRR3HcnC5VVK5Vnj0BHNxB6+7z7q5cl4vbGQRjHqvVuz2vVVCM47MbEVvGmm7Sy
         NrZT75mShd6/j9UpmI5elod6gFD8pywq0Pixg8ZZBJeKmpQaZ9rZV8fcDV2FOOsKS2g/
         A2gg==
X-Gm-Message-State: APjAAAVWDBjXhZW5GvjoIdzB4Iq/h9onfbSMQLgPJfVHvI5Q3eYvuFih
	wnDcWTcNb6rJ2V2NmW6RMqk=
X-Google-Smtp-Source: APXvYqwJmVihqtcsrWGb3JszW1aDpwdN/2ujmZJuaGVBS2KdcBNKTi5O9SWk0HNfpD4odxBZSLKHuA==
X-Received: by 2002:a63:5f4b:: with SMTP id t72mr32592833pgb.167.1572903341967;
        Mon, 04 Nov 2019 13:35:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:cb07:: with SMTP id z7ls160814pjt.2.gmail; Mon, 04
 Nov 2019 13:35:41 -0800 (PST)
X-Received: by 2002:a17:90a:6a0f:: with SMTP id t15mr1705766pjj.48.1572903341550;
        Mon, 04 Nov 2019 13:35:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572903341; cv=none;
        d=google.com; s=arc-20160816;
        b=Vy2Yak5TknNZ2bRbtToqATLAvDDkurT57RkWz91bZway1QZRAPMRGfjFXshOsZ2kwt
         B3e6M4bfVoOuawpTbbUjaeYiVSNxd0r7FixD6Q+Y7Rwd6whzzPxpKj+20j4BRtWMKIu/
         9ZjgRNuW29RdygE57qWs1vG+BoGCgF5zJYpgdQ+EdPqJ0MSq1P+iXwI7iKcmD9Ov0/f5
         oPV7B6NMLPtwMfeN3W531tcg8VoyAB03nlHvy41qjXj9bZ8BXSTbPv6sPnY5LcoCusv2
         6+DNMXhcObHUg79mBur4xRYh+0SLRqV6OBg3on0+5CqLYflaGrJhKtuf4jYu0Zmuocs0
         hIoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+iM6UF9mA8yEqKM2m+szbX2ng9KhnEZYRb5X/ojWJG0=;
        b=u9A1cRWFHBHYTfA1oyYGOOJx+1QM8IXm3ZA/Qwmy3wEo9Ei9bPTXbXdGt+oAqyYn1y
         puaafAxHLzBQGaePzGSofySwYLaYsxzDUJwG+W/UedKNA4t5DLnTKC/xE1mYb9iVgn2U
         EVexdbcycKX1yZZw6JLlegYedq9WJMcX9fiAr2YsurlM6BJuOYR7pPhaANUaBgDj5xwV
         mTgTUTMgw3kgh+xOpm57BNKkXtZDM+lip+DsoBX0Vfmgpo+YZlMmDFWXJbv5fGXxC9lK
         ApGyCZ6gacn8vAAmRSKc9JOhfld6fZwn+E5jKpU3ph9gmTh+4M6lxdFdo3h+ABlALgk0
         LuKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WQqOCU6q;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id ba9si633955plb.5.2019.11.04.13.35.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 13:35:41 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Received: by mail-vs1-xe43.google.com with SMTP id y23so5498331vso.1
        for <clang-built-linux@googlegroups.com>; Mon, 04 Nov 2019 13:35:41 -0800 (PST)
X-Received: by 2002:a05:6102:36a:: with SMTP id f10mr9282538vsa.44.1572903339925;
 Mon, 04 Nov 2019 13:35:39 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com> <20191101221150.116536-8-samitolvanen@google.com>
 <20191104124017.GD45140@lakrids.cambridge.arm.com>
In-Reply-To: <20191104124017.GD45140@lakrids.cambridge.arm.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 4 Nov 2019 13:35:28 -0800
Message-ID: <CABCJKueoJs7hS7VrVoz6CY_oAjTGcV-W61v9GAdwg+zk0W5ErA@mail.gmail.com>
Subject: Re: [PATCH v4 07/17] scs: add support for stack usage debugging
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
 header.i=@google.com header.s=20161025 header.b=WQqOCU6q;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43
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

On Mon, Nov 4, 2019 at 4:40 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > +#ifdef CONFIG_DEBUG_STACK_USAGE
> > +static inline unsigned long scs_used(struct task_struct *tsk)
> > +{
> > +     unsigned long *p = __scs_base(tsk);
> > +     unsigned long *end = scs_magic(tsk);
> > +     uintptr_t s = (uintptr_t)p;
>
> As previously, please use unsigned long for consistency.

Ack.

> > +     while (p < end && *p)
> > +             p++;
>
> I think this is the only place where we legtimately access the shadow
> call stack directly.

There's also scs_corrupted, which checks that the end magic is intact.

> When using SCS and KASAN, are the
> compiler-generated accesses to the SCS instrumented?
>
> If not, it might make sense to make this:
>
>         while (p < end && READ_ONCE_NOCKECK(*p))
>
> ... and poison the allocation from KASAN's PoV, so that we can find
> unintentional accesses more easily.

Sure, that makes sense. I can poison the allocation for the
non-vmalloc case, I'll just need to refactor scs_set_magic to happen
before the poisoning.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueoJs7hS7VrVoz6CY_oAjTGcV-W61v9GAdwg%2Bzk0W5ErA%40mail.gmail.com.
