Return-Path: <clang-built-linux+bncBCQ2XPNX7EOBBL7FU7WQKGQEXFGDDKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C37DCC5E
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 19:13:21 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id m25sf9241804ioo.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 10:13:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571418800; cv=pass;
        d=google.com; s=arc-20160816;
        b=DN3xSTS55OA69D7uqTTx8oCV+OC79GeE60iwI8hLTYZnHgHRv8uyDBMB31oa1g00fd
         /0DuCkWrbbVxERtF/mRIV6jx5t2cweBbAg7PWzFcS7xC+dTrpwJ0n9jcemUC3mXisiLB
         kg228LenioNfJ7Q1Ogq8TS7YH/h771Ox3rUEor6elnAvVN2ExMXdaFkZVNw7BMsjLEvA
         UnTHLHTQnXGiLOSr7kj8tnix4eno6wZaXGHEcuxcbPLb8UdpEThiMpWrNq7+CnBxsF0s
         EwOyeU5lhRVligR+0RdQOzh0L5L7Gjf++XCeJnyAGjuuBf9kVgEOqkPS7yz9mcoQAmgP
         DQHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=RyU359vUs7FxK+X/yqp6H2RDfWJEPY5UG4hL0rjBtVA=;
        b=sWmLW6SjFR2vZnB0qfJ5fkWARAX7+ldiU9BJcIJbWX3HEh0nWefX6tEMGajqaFpO09
         Knp4JYfPh+89vBPHUEvDvyxXc+pZLkOOhPd6pRZw7Sb+M2TAGyo8qqqJfbaXUlz7Kx0D
         AzcYgRT3IK2dUk5euXos/lZrM/FTsE81RPLgUgAGWs4rx1X2l3qG3eZ3Rds0tMdTQzZh
         gd0DIN9MXIGw05BLulL7N7g1b/GzDv8IJ5sHF0qBUbtSQsfydnq5S81t9FFUNVe9NnKm
         KXfdZc1YYpWcHBCOsZAk+Siwt5tt74NUftLCJvYXwT3wRlvy+14S6DTd9qklBAOex9I/
         em1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b3XVK3oU;
       spf=pass (google.com: domain of jannh@google.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=jannh@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RyU359vUs7FxK+X/yqp6H2RDfWJEPY5UG4hL0rjBtVA=;
        b=T5P1V3KOVc9wBPNJ9k7cQYrzFuBT4j09PM3RALJb7BYzZie22EMbE41zz3lg/wl/jr
         WD0xOy0SLVN59LZbX6qTBmNDN37+WvmR+tYH1OvfmRr+EEou68OIfMh+neX4nHuIHvFP
         g0lsO3zPPQgwHfYccYqlR6NzeM4BEKf8KRyIAjGiF4faE/2+lp95ByBKzKe70t/KMZNp
         o0rNxtW55eFTOVq1i0gNerAqwpGYZ06THYEmKhUOUJ2o+4tUVNpdg+fAePiT4Yw8yeOv
         Pfos48BxxN/UqRiKHkYzVaZpT3IsGgOWMqaY/9gUopHRC0zwAXGlNAYN6kZZO2Ww/m/h
         br6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RyU359vUs7FxK+X/yqp6H2RDfWJEPY5UG4hL0rjBtVA=;
        b=R9GUcn4HTaP4d2IEJgQN/VsYyHWZDyPavOTVxIEfwfzePYSxHtRooRxnb8lw/xOSgU
         Sr9e8bShRuApXuplQAGxKXwbm1y/qrefJRXiJ4kDy6tR2Yws4oORoHl04znc2tQA4I/X
         kIVZyaMkdcpCohgoDQQkPhxN6v9l/UFh8PRLpV15hfvtH1KyWbePTEZ2/1NXrdyWbTkV
         TPdhRPpKWnE2eyf0odaVzS0crN5pAv1igEoAc/ltWMxOkTaLRhmsyNYW84VDs+8KDC9r
         hXP9w7pxhedgWa9UDOcOwBV7XFEFX9TrIPxAIMDfvpBaItidGCx5xZoMrIir53P5TXak
         3ncA==
X-Gm-Message-State: APjAAAUgSCASphodX2fLATRrthrswFvA2GmFQ8Lc6mVXUhTQ53PZHXyk
	gRxFEBr2WRhNpGsZLuSx4N0=
X-Google-Smtp-Source: APXvYqx82fcullU6oFXyIYhq76ZWLZyDNr5G2Pxuw+4putD5F7apENjOEYL/g2gh6UEa3Uwgvq5EJA==
X-Received: by 2002:a05:6e02:c0f:: with SMTP id d15mr11199613ile.17.1571418799970;
        Fri, 18 Oct 2019 10:13:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:b787:: with SMTP id h129ls1530852iof.12.gmail; Fri, 18
 Oct 2019 10:13:19 -0700 (PDT)
X-Received: by 2002:a6b:f616:: with SMTP id n22mr10093777ioh.223.1571418799674;
        Fri, 18 Oct 2019 10:13:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571418799; cv=none;
        d=google.com; s=arc-20160816;
        b=O5kWyd9vrdPhYdp2OqPhHLDng0yKTGQBG/2ebpiLeFJxAIAWThALUWyha93kpAVsvX
         wND2U0PuN5On49RCRnf8v/fdcPMMqNEzXhdw1vLxtSkTyZ8Wn76M3BFVrN1hB2SS8BY7
         WA67fR3Uh9V9Ldqt4Vl3qebnoZZsFQIaZ6Hdx5GVDj5uXf9/eZUluGX9z/R2LBxEAmxP
         hPNkuqavmFzf+CV//SBUHWuHrjM/SFnSeJAFeSZXCrxiRviC0rVPt1CC+ElzzrvYuY8Y
         n6KDQM1uQRQlBgtkwPcl22rm0JOn7VwEil6Nan/5SirUNoHVWslI6/iRFd/9QbfgJ5zQ
         ItkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hDou5Z7AnxlXNsw3EcpY942CX+9awGJrPWvG/Uzq/u0=;
        b=B2PAvIYVBP8jMhqNmhsnhPacTeX4W+NQisye6i9RKiaJlvLOkYyvC6Ri0wDWZ0JDXx
         jKgg38LV5hii9N9oPCqIBG5TH0jELG3BYRTyvMzaht29JosNQB12anWezdX2TP1wqYz5
         l5xBKamRZrDJpVkjirfOtgk5Bx55KqM7Xw+YmnfABLTi3FiDQ5SqnCX5I1Ui37AnP7Rq
         FZJgsalTyD8VAj9i97YMldMswNy7zfTFdoGEutJigbYVZCOLC2rBJ2T9DBEJP8D+gmPa
         u3mQ+utJ7COzlvDy+uzigpNfH00cXUObDzC5EOcqo953bCPZsIY2Pxrwz8QaYDD0Mrei
         dUDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b3XVK3oU;
       spf=pass (google.com: domain of jannh@google.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=jannh@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id q207si396140iod.5.2019.10.18.10.13.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 10:13:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jannh@google.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id k32so5594940otc.4
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 10:13:19 -0700 (PDT)
X-Received: by 2002:a05:6830:10cc:: with SMTP id z12mr8713226oto.110.1571418798907;
 Fri, 18 Oct 2019 10:13:18 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191018161033.261971-19-samitolvanen@google.com>
In-Reply-To: <20191018161033.261971-19-samitolvanen@google.com>
From: "'Jann Horn' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 18 Oct 2019 19:12:52 +0200
Message-ID: <CAG48ez2Z8=0__eoQ+Ekp=EApawZXR4ec_xd2TVPQExLoyMwtRQ@mail.gmail.com>
Subject: Re: [PATCH 18/18] arm64: implement Shadow Call Stack
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, linux-arm-kernel@lists.infradead.org, 
	kernel list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jannh@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=b3XVK3oU;       spf=pass
 (google.com: domain of jannh@google.com designates 2607:f8b0:4864:20::342 as
 permitted sender) smtp.mailfrom=jannh@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jann Horn <jannh@google.com>
Reply-To: Jann Horn <jannh@google.com>
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

On Fri, Oct 18, 2019 at 6:16 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> This change implements shadow stack switching, initial SCS set-up,
> and interrupt shadow stacks for arm64.
[...]
> +static inline void scs_save(struct task_struct *tsk)
> +{
> +       void *s;
> +
> +       asm volatile("mov %0, x18" : "=r" (s));
> +       task_set_scs(tsk, s);
> +}
> +
> +static inline void scs_load(struct task_struct *tsk)
> +{
> +       asm volatile("mov x18, %0" : : "r" (task_scs(tsk)));
> +       task_set_scs(tsk, NULL);
> +}

These things should probably be __always_inline or something like
that? If the compiler decides not to inline them (e.g. when called
from scs_thread_switch()), stuff will blow up, right?

> +static inline void scs_thread_switch(struct task_struct *prev,
> +                                    struct task_struct *next)
> +{
> +       scs_save(prev);
> +       scs_load(next);
> +
> +       if (unlikely(scs_corrupted(prev)))
> +               panic("corrupted shadow stack detected inside scheduler\n");
> +}
[...]
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +DECLARE_PER_CPU(unsigned long *, irq_shadow_call_stack_ptr);
> +#endif

If an attacker has a leak of some random function pointer to find the
ASLR base address, they'll know where irq_shadow_call_stack_ptr is.
With an arbitrary read (to read
irq_shadow_call_stack_ptr[sched_getcpu()]) followed by an arbitrary
write, they'd be able to overwrite the shadow stack. Or with just an
arbitrary write without a read, they could change
irq_shadow_call_stack_ptr[sched_getcpu()] to point elsewhere. This is
different from the intended protection level according to
<https://clang.llvm.org/docs/ShadowCallStack.html#security>, which
talks about "a runtime that avoids exposing the address of the shadow
call stack to attackers that can read arbitrary memory". Of course,
that's extremely hard to implement in the context of the kernel, where
you can see all the memory management data structures and all physical
memory.

You might want to write something in the cover letter about what the
benefits of this mechanism compared to STACKPROTECTOR are in the
context of the kernel, including a specific description of which types
of attacker capabilities this is supposed to defend against.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAG48ez2Z8%3D0__eoQ%2BEkp%3DEApawZXR4ec_xd2TVPQExLoyMwtRQ%40mail.gmail.com.
