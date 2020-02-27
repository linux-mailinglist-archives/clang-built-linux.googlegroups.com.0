Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDHW4DZAKGQEKJE3J5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEDA172A93
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 22:56:29 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id b3sf772955qvy.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 13:56:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582840588; cv=pass;
        d=google.com; s=arc-20160816;
        b=KdnFXLyPoX2MjfjJs4UDu9Embu72Sxc6++mxakMMqtPv/jyTQni6+VjW70X/9B4hGW
         oeukJD4NA8UbmuplUae1j43ZeJrNczbJRiau7NN1+8+hdYE1QLeov51IB5MJsKwO7MG3
         YdnGNKSFysXJUwKYGIUhNFj2isf8tLDDRNbAGzq6wH6tP/wsVNQxn7dT8GyZw3KxHvxT
         E2a1Fc73JTAiM9e/s0ifsmjUP/58GXanug4mz8IwLvkqyog5n8WhlF1kTLr4lWzsy3Zc
         HmpkeYmsmZAOkp3hIImYgJxnSdH3TMU4rBbHGh4pbukegxkFp2mA6hJ41NLh4QuoygBm
         6MsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=VJuFNdNovoBUgFb9eM0hmDDtP1wAW+NNIxdzDEA/npg=;
        b=mPBu7TbRcFDxWd0IsXH8z4lVhwC2D7+MMrZBIn0RDrHmHGzPad8jVXJ/J3HIi82XG5
         2SJKkgqIc5nXc85hKq4I4sqig+FVhLXnViASGRM0XZ9dJcsNRw5iObhyKU/JANfB9AXw
         SGbVRxqzqNa6mI4MaigcAMnB9dcqS6E4C7kKfIga6O6DY5/SvhbzP99HUgBqbF3ftxFL
         Zvm4zR2tngq0s9e1RjnEmRBhmNAH+6EnKv7krQEr7lz0T0jZKLDQ5awNh/tJOuGgwAsG
         0PahVSFG9b+6oUAb81yvA6ODW1TDhA4fKYFIxb879ztgLTdHQub4ko5Lw0i2kE73p+Od
         SUdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZKfVxa6K;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VJuFNdNovoBUgFb9eM0hmDDtP1wAW+NNIxdzDEA/npg=;
        b=GrNbFmGiZkOjCJFDo0BeCdNnvHhR8Z5A7yqmqtV+hGuwZQd8F5y7tNG17mavGPk79J
         AR414RydSle76QRJfhRITeiTYtbfDPTtaF1LTVez9oAqlzXXz0wOf3Gjy7Cch8siJVQh
         xJVISCxC1OVyOaA3koBGUT79uDzAidIA2UvnjR95in2V55at5HA2i11a5jtArgwaF6QB
         gehnRx0H8D/oElNzNdVDaSBJJNDwDomx8vdhHm/bHWMkzZ7nhvE3hBI99POSTlW6utj4
         9+rOKFPvlCYjHWc/19WoiCNtUsJ6j3JI4ePvEDvoLOZ61hzOhy8SVb3j3FstfJAfJ0gF
         5Wug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VJuFNdNovoBUgFb9eM0hmDDtP1wAW+NNIxdzDEA/npg=;
        b=cGKRLckFeYloYKeEJGn496N+ljPbxu7Tnw5e9I9Dc7BL5FmELeLn9UANrVEuDnjPSG
         G2bDkFDdyu+Pjc9a/7X6hk5PHUvNvX6ZMHSPA2nx2JbS2I2CUL+UcKW3uEk7/NsdU91W
         vraEYTgybtMOuzb1uyR3YPw9ax3ICc7t0O+jTAWhOWThmotz2KwTKHRTehK3K3mdfPjN
         bSstJxGuHHsOcsooz5qKxfDnlaSiCVoy9i31uRfG55Iq/GXYB9YR2PCmVrUNRzz3iKSM
         o30ad+1Gmqf6cHlNonzPD5LLbI/YcC6EjU6/jwXA80PH7Wn6iWdvf3r+/Dt5UWbdngG+
         zHsA==
X-Gm-Message-State: APjAAAW0oCybMi84No5qdf1LL5Kw4pjnr2oJyDoRPXQV35DXEUgT+/bs
	NafzdM6otlrjaJHCbeEIhVU=
X-Google-Smtp-Source: APXvYqydNNarXXtcVsAdaUstOUi59zV3fX+s97U95PRQAVeyemiw4eikroPJPMtiDRpDIxykkd0Mgw==
X-Received: by 2002:ac8:4883:: with SMTP id i3mr1573075qtq.106.1582840588149;
        Thu, 27 Feb 2020 13:56:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1297:: with SMTP id w23ls359159qki.3.gmail; Thu, 27
 Feb 2020 13:56:27 -0800 (PST)
X-Received: by 2002:a05:620a:39a:: with SMTP id q26mr1642462qkm.475.1582840587801;
        Thu, 27 Feb 2020 13:56:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582840587; cv=none;
        d=google.com; s=arc-20160816;
        b=I+ciGmAE+0SWrLaO3YO9Cup3eprygZRFVAiKKLUQcBXCZOAVJVytA4MFZLA7gs5wh5
         Psqy6zlV+bjoUX/wpO8/viKDmF0iM1DtYfoiywC8+XdnkIedshbG5CHz+30269L1vORg
         IXfRDbsGenKp3xcHhpuzF6eCKp6iqWMd7nLhLteERDTizVZJbkGQp6+mfIfcP1eY9nBB
         lAKdAR3YiOI3mLvMLof4pL4cafTkdENq+VGFl1r3sozLYwLF/on5EIVfuJGO4ffbTBLC
         HY5NUkhfhq+6sniwtR7VpvRDeSwjq/zPgd1RrmHw+ruN7SRve89tYv9md6+GXVVyRxFn
         rLdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5T6k5q01q4YIvowq7YdQfV6dfzM8f/qHUFQ4ywQ+nOc=;
        b=JnHH3Xcijcr9eyMjUDDQ0CzF+oruSsXSlvU3+yZraKWU/yQAQSo3fA8n0Skg73wyWm
         TQSc7h1AJDbz62D1JJ9qxQotsmsPQFU3anAw1eLSi9cfWFfjuhH0DQwzooBxbPXHteB5
         6QxfQXxWOyYE+qV1CcM2cgco54D6Sgv2cmkGsQHyxKObX9V/nWvrPT0VMKJvvdHYjwMW
         RCcgW5Kvo8Zqa0Rc4HP0559ELPJkXM8sQLxYtgzuJRySl+OQcvMVbkYX6TgJp9CS3zR+
         JRe1UsgZ+k22dD5vfSaDbIvctwrDYxiJuo3UJ1ASQQQBfu6ifx1kw+FgDYRuqoHGQLF2
         eI9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZKfVxa6K;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id f52si60699qtk.2.2020.02.27.13.56.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 13:56:27 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id a18so355497pjs.5
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 13:56:27 -0800 (PST)
X-Received: by 2002:a17:90a:3745:: with SMTP id u63mr1051565pjb.123.1582840586461;
 Thu, 27 Feb 2020 13:56:26 -0800 (PST)
MIME-Version: 1.0
References: <20200227213450.87194-1-palmer@dabbelt.com> <20200227213450.87194-2-palmer@dabbelt.com>
In-Reply-To: <20200227213450.87194-2-palmer@dabbelt.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 27 Feb 2020 13:56:15 -0800
Message-ID: <CAKwvOd=co2R+gVGQmCGWj8U4iV2djFHLDiQRFwhEW8M_V4AeHw@mail.gmail.com>
Subject: Re: [PATCH 1/3] RISC-V: Stop relying on GCC's register allocator's hueristics
To: Palmer Dabbelt <palmer@dabbelt.com>
Cc: linux-riscv@lists.infradead.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel-team <kernel-team@android.com>, 
	Palmer Dabbelt <palmerdabbelt@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZKfVxa6K;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

On Thu, Feb 27, 2020 at 1:35 PM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> From: Palmer Dabbelt <palmerdabbelt@google.com>
>
> GCC allows users to hint to the register allocation that a variable should be
> placed in a register by using a syntax along the lines of
>
>     function(...) {
>         register long in_REG __asm__("REG");
>     }
>
> We've abused this a bit throughout the RISC-V port to access fixed registers
> directly as C variables.  In practice it's never going to blow up because GCC
> isn't going to allocate these registers, but it's not a well defined syntax so
> we really shouldn't be relying upon this.  Luckily there is a very similar but
> well defined syntax that allows us to still access these registers directly as
> C variables, which is to simply declare the register variables globally.  For
> fixed variables this doesn't change the ABI.
>
> LLVM disallows this ambiguous syntax, so this isn't just strictly a formatting
> change.
>
> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>

Thanks for the patches!
Indeed, looks like the local register variables are very much intended
to be used as inputs & outputs to extended inline assembly, which in
these cases are not.
Link: https://gcc.gnu.org/onlinedocs/gcc/Local-Register-Variables.html
Link: https://gcc.gnu.org/onlinedocs/gcc/Global-Register-Variables.html
One fixup, below:

> ---
>  arch/riscv/include/asm/current.h | 5 +++--
>  arch/riscv/kernel/process.c      | 5 +++--
>  arch/riscv/kernel/stacktrace.c   | 7 ++++---
>  3 files changed, 10 insertions(+), 7 deletions(-)
>
> diff --git a/arch/riscv/include/asm/current.h b/arch/riscv/include/asm/current.h
> index dd973efe5d7c..1de233d8e8de 100644
> --- a/arch/riscv/include/asm/current.h
> +++ b/arch/riscv/include/asm/current.h
> @@ -17,6 +17,8 @@
>
>  struct task_struct;
>
> +register struct task_struct *riscv_current_is_tp __asm__("tp");
> +
>  /*
>   * This only works because "struct thread_info" is at offset 0 from "struct
>   * task_struct".  This constraint seems to be necessary on other architectures
> @@ -26,8 +28,7 @@ struct task_struct;
>   */
>  static __always_inline struct task_struct *get_current(void)
>  {
> -       register struct task_struct *tp __asm__("tp");
> -       return tp;
> +       return riscv_current_is_tp;
>  }
>
>  #define current get_current()
> diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
> index 817cf7b0974c..610c11e91606 100644
> --- a/arch/riscv/kernel/process.c
> +++ b/arch/riscv/kernel/process.c
> @@ -22,6 +22,8 @@
>  #include <asm/switch_to.h>
>  #include <asm/thread_info.h>
>
> +unsigned long gp_in_global __asm__("gp");
> +
>  extern asmlinkage void ret_from_fork(void);
>  extern asmlinkage void ret_from_kernel_thread(void);
>
> @@ -107,9 +109,8 @@ int copy_thread_tls(unsigned long clone_flags, unsigned long usp,
>         /* p->thread holds context to be restored by __switch_to() */
>         if (unlikely(p->flags & PF_KTHREAD)) {
>                 /* Kernel thread */
> -               const register unsigned long gp __asm__ ("gp");
>                 memset(childregs, 0, sizeof(struct pt_regs));
> -               childregs->gp = gp;
> +               childregs->gp = gp_in_global;
>                 /* Supervisor/Machine, irqs on: */
>                 childregs->status = SR_PP | SR_PIE;
>
> diff --git a/arch/riscv/kernel/stacktrace.c b/arch/riscv/kernel/stacktrace.c
> index 0940681d2f68..02087fe539c6 100644
> --- a/arch/riscv/kernel/stacktrace.c
> +++ b/arch/riscv/kernel/stacktrace.c
> @@ -19,6 +19,8 @@ struct stackframe {
>         unsigned long ra;
>  };
>
> +register unsigned long sp_in_global __asm__("sp");
> +
>  void notrace walk_stackframe(struct task_struct *task, struct pt_regs *regs,
>                              bool (*fn)(unsigned long, void *), void *arg)
>  {
> @@ -29,7 +31,7 @@ void notrace walk_stackframe(struct task_struct *task, struct pt_regs *regs,
>                 sp = user_stack_pointer(regs);
>                 pc = instruction_pointer(regs);
>         } else if (task == NULL || task == current) {
> -               const register unsigned long current_sp __asm__ ("sp");
> +               const register unsigned long current_sp = sp_in_global;
>                 fp = (unsigned long)__builtin_frame_address(0);
>                 sp = current_sp;

^ probably this should just be:
sp = sp_in_global;

>                 pc = (unsigned long)walk_stackframe;
> @@ -73,8 +75,7 @@ static void notrace walk_stackframe(struct task_struct *task,
>                 sp = user_stack_pointer(regs);
>                 pc = instruction_pointer(regs);
>         } else if (task == NULL || task == current) {
> -               const register unsigned long current_sp __asm__ ("sp");
> -               sp = current_sp;
> +               sp = sp_in_global;
>                 pc = (unsigned long)walk_stackframe;
>         } else {
>                 /* task blocked in __switch_to */
> --
> 2.25.1.481.gfbce0eb801-goog
>
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dco2R%2BgVGQmCGWj8U4iV2djFHLDiQRFwhEW8M_V4AeHw%40mail.gmail.com.
