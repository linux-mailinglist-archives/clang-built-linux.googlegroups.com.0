Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPFJ4HZAKGQEB3HMU5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 391B5172C78
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Feb 2020 00:46:06 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id 13sf931830iof.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 15:46:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582847165; cv=pass;
        d=google.com; s=arc-20160816;
        b=fpIDf/BJ+MexHibi9txZ/G6Bfn2lXZkgTj9uSzWVUfX6kXcBBKSlY5vl/c9xjwpd7o
         hFrYfsY0s0mE+KKdGSmXEdgeQ4iFTYCyZf4MLskmjMbJiEgo30W1rSiF2NXWCAPJj5Pj
         TwQyoG4vRaKOprhbgyKigREzstJtE4KU2SVf+M2QPwMpbmB00VRD6Nip7rKELS6DxA6S
         Q9WdH98QKsJsoTLjlA12D8SSoF5wdjU13WqmdmZ82n9cYmkPUnYmbWNsFiQ/URvKkK3s
         uh6vp4vnwxdgEKfgUj7h1JoVDbgHP6WaDYCYKS0OJnSR7w3QKS8ny/Vb+Uo11MxDN6A+
         k+bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=q7NLlu4kUw21PSC7reHmxiZ4bhPIT5Z00ky8v3mkJc8=;
        b=fSYe5UZwWvlGOEvzOACMXgQRft0z9hEieYXTubkm81ZXaHg0mPPU2EQt7/241ThdG1
         Wi3NfQB0PzvJbUjloaWzmHiUu/aOdi70OYre5TrihS8CD5JlPWY8eJ/14MUpFBfA9740
         e9ZJXwMm0rkyBIlWjiQBGfs0ExDEugxmwvzUsIiY8qmBYcd8rsCsKtadHp/+TV8I2nKZ
         Qjh+PDXkJLKS+FriohSbp1USKN5MxtZMfVWkT+53s9PSKdtoNdRLTtHv61uSAdXu3mEB
         7I1rN6SSy6illbaBVsd0LRQ/IQTRNd4vb4d5KhPo3L34UwBIXTCVgU5Wn9V8HqMInstd
         BXYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JhAIx8vl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q7NLlu4kUw21PSC7reHmxiZ4bhPIT5Z00ky8v3mkJc8=;
        b=Ck/QIPVDl3Q4kPbFgcgNVdE9y5BYBBoGwGoJYuHsguE1QRA4KRLX/TtvCqSKUN/drI
         rZhXB0Y986YuSuWAi/434ixFmPW8mS+X5dVlIIcHFh1SUmHNYPXgg3GNGVuAxKsVTaRi
         Mz0LBe3NX2K8bdekGFsQSTJBHSJs3pi7AabT/nQ44hBlFNaD2jKTQVWnnMAm93Vxypys
         /ZLZpV9cMWY22vsXght15AjkKvKp4TGkRRO7BREzgGl0NIu293g/fAcg1L4OdypME3N8
         IfceIT3qU1PSJDZPEoEUKKbLVaZu+LynJsjBhZ4dBIr5JFynOWtxP+SLEcQ09PvQPqzQ
         W+cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q7NLlu4kUw21PSC7reHmxiZ4bhPIT5Z00ky8v3mkJc8=;
        b=dkAZ0HiAxKop70VvD6cP+jI3YTaVBNfAy3pkUF+J+MoouprQvnsKuWvJl4BUj7jlLi
         j5x/gFXie6UlbHND/bp8QUzxv/h1pNWMeypODVOC6KXQuevIZ+z/ktvBHmCDrvTgOZh1
         jfT8wXQ2u3DhgfA0mCIgtg4E+pJ2QyB1CEwCBw4Le5QQGQ0cEFcV+f/NXryHrvrTRa01
         MDowHeFsEVPZLCweB9yB+bX+0vmLPFKIc0p/5Lr4uVgVypPr1cfQxIgL/rRm2TJGZ690
         FrehWccATQThZxb4Qlh93jL6+ijorgu0uvhmgPeiqcw67LDCL8XElCxGH3LPuf1ehygH
         o+QQ==
X-Gm-Message-State: APjAAAVghfO65enfLeLjVHKvEJg7ExUD45kM1tqyCxOFhFn4SVR7oBS8
	iOIsYfD+Sguv4h5oSwMZjUw=
X-Google-Smtp-Source: APXvYqwp/I/KmmlXqKl2SeukNPKr3D9Djv/JsFxYyyukxX4pvr5gekLB7+vD6glahNhKK27K50S9NA==
X-Received: by 2002:a6b:7b0d:: with SMTP id l13mr1392508iop.147.1582847165053;
        Thu, 27 Feb 2020 15:46:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:69ca:: with SMTP id e193ls104432jac.9.gmail; Thu, 27 Feb
 2020 15:46:04 -0800 (PST)
X-Received: by 2002:a02:8587:: with SMTP id d7mr1090580jai.39.1582847164707;
        Thu, 27 Feb 2020 15:46:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582847164; cv=none;
        d=google.com; s=arc-20160816;
        b=SXYr3V+fshi9kmF6nMh7tzb0qldM6bTNF2JpXFHdmhozJiIxIncze8ArJHZE9nDz9i
         zLbeZThgStyDtNJjqO2iHIUjdPeoiJnFLcA/C4DH3AnxAccTQakWGW6WjX/s6XvfviAX
         oKHWasgS5YLYER20SkrSP455abAW5ZWkR4niBR5NjQeRLlTQ5/HxHw0prqNaXCYEuGmO
         Zx0ccsvJp7YIS3GMcbuq0EhF/cSmf8hg02+WqQfuKYjIfNYCixDuSPnyjs2MzNlb7JS8
         FWbGNMpGRO8PiLUinjYql/Wl1yLrdVsjOFHu8BkeTMMQVIDs2FztBNHsQYrCxTOrXPt1
         M2xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LzzbaK5ffPqqLu56Wte6fsejhTyDoPVxJ2aXgnrUUQU=;
        b=Zs/hQF+yr7+31KE7ovODFDM4GmTzdh6BUyrNp3F6xaNnOct6eKPOyHb4tZb30oun69
         anCkYt6JrPjsgH/hGMfKLTIDWrzUuVCpqzw0se7pms6wtlXztQoukR4nRMDOY4NieDNn
         ZaaZfrCm3jXuTvIik4sepqmlCOTtH4F3t3+q3NGHUj7GbcOXR/cLr61czMMN39ak/We0
         DUwtp1jYEmgtQTU+YI39xt2pdqdnemrN6ODnLbi9MYCow08Bv+LiTEbzunrzSTfEbbAG
         Yyxlz7eOv/uJJANajuZkaFP8vTC1uL6NWc1Kv43Aier+ZoTifg1ZfEe+NV66EYPkj6/9
         XI8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JhAIx8vl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id b16si63392ion.0.2020.02.27.15.46.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 15:46:04 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id o24so665714pfp.13
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 15:46:04 -0800 (PST)
X-Received: by 2002:a62:1615:: with SMTP id 21mr1525986pfw.84.1582847163613;
 Thu, 27 Feb 2020 15:46:03 -0800 (PST)
MIME-Version: 1.0
References: <20200227213450.87194-1-palmer@dabbelt.com> <20200227213450.87194-3-palmer@dabbelt.com>
In-Reply-To: <20200227213450.87194-3-palmer@dabbelt.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 27 Feb 2020 15:45:52 -0800
Message-ID: <CAKwvOdm65wmFQE6_wkVFFE6us99xXoqS8E-qORX9XmsD2uJ1dQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] RISC-V: Inline the assembly register save/restore macros
To: Palmer Dabbelt <palmer@dabbelt.com>
Cc: linux-riscv@lists.infradead.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel-team <kernel-team@android.com>, 
	Palmer Dabbelt <palmerdabbelt@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JhAIx8vl;       spf=pass
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

On Thu, Feb 27, 2020 at 1:35 PM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> From: Palmer Dabbelt <palmerdabbelt@google.com>
>
> These are only used once, and when reading the code I've always found them to

Looks like there's SAVE_ALL/RESTORE_ALL macros in
arch/riscv/kernel/mcount-dyn.S as well that could probably be
refactored to do the saving/restoring of just the GPRs (since the two
similarly named macros share quite a bit of code between the two
source files, but aren't 100% the same), but this patch is fine, too.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> be more of a headache than a benefit.  While they were never worth removing
> before, LLVM's integrated assembler doesn't support LOCAL so rather that trying
> to figure out how to refactor the macros it seems saner to just inline them.
>
> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
> ---
>  arch/riscv/kernel/entry.S | 143 ++++++++++++++++----------------------
>  1 file changed, 61 insertions(+), 82 deletions(-)
>
> diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
> index bad4d85b5e91..f2e8e7c8089d 100644
> --- a/arch/riscv/kernel/entry.S
> +++ b/arch/riscv/kernel/entry.S
> @@ -13,17 +13,11 @@
>  #include <asm/thread_info.h>
>  #include <asm/asm-offsets.h>
>
> -       .text
> -       .altmacro
> -
> -/*
> - * Prepares to enter a system call or exception by saving all registers to the
> - * stack.
> - */
> -       .macro SAVE_ALL
> -       LOCAL _restore_kernel_tpsp
> -       LOCAL _save_context
> +#if !IS_ENABLED(CONFIG_PREEMPTION)
> +.set resume_kernel, restore_all
> +#endif
>
> +ENTRY(handle_exception)
>         /*
>          * If coming from userspace, preserve the user thread pointer and load
>          * the kernel thread pointer.  If we came from the kernel, the scratch
> @@ -90,77 +84,6 @@ _save_context:
>         REG_S s3, PT_BADADDR(sp)
>         REG_S s4, PT_CAUSE(sp)
>         REG_S s5, PT_TP(sp)
> -       .endm
> -
> -/*
> - * Prepares to return from a system call or exception by restoring all
> - * registers from the stack.
> - */
> -       .macro RESTORE_ALL
> -       REG_L a0, PT_STATUS(sp)
> -       /*
> -        * The current load reservation is effectively part of the processor's
> -        * state, in the sense that load reservations cannot be shared between
> -        * different hart contexts.  We can't actually save and restore a load
> -        * reservation, so instead here we clear any existing reservation --
> -        * it's always legal for implementations to clear load reservations at
> -        * any point (as long as the forward progress guarantee is kept, but
> -        * we'll ignore that here).
> -        *
> -        * Dangling load reservations can be the result of taking a trap in the
> -        * middle of an LR/SC sequence, but can also be the result of a taken
> -        * forward branch around an SC -- which is how we implement CAS.  As a
> -        * result we need to clear reservations between the last CAS and the
> -        * jump back to the new context.  While it is unlikely the store
> -        * completes, implementations are allowed to expand reservations to be
> -        * arbitrarily large.
> -        */
> -       REG_L  a2, PT_EPC(sp)
> -       REG_SC x0, a2, PT_EPC(sp)
> -
> -       csrw CSR_STATUS, a0
> -       csrw CSR_EPC, a2
> -
> -       REG_L x1,  PT_RA(sp)
> -       REG_L x3,  PT_GP(sp)
> -       REG_L x4,  PT_TP(sp)
> -       REG_L x5,  PT_T0(sp)
> -       REG_L x6,  PT_T1(sp)
> -       REG_L x7,  PT_T2(sp)
> -       REG_L x8,  PT_S0(sp)
> -       REG_L x9,  PT_S1(sp)
> -       REG_L x10, PT_A0(sp)
> -       REG_L x11, PT_A1(sp)
> -       REG_L x12, PT_A2(sp)
> -       REG_L x13, PT_A3(sp)
> -       REG_L x14, PT_A4(sp)
> -       REG_L x15, PT_A5(sp)
> -       REG_L x16, PT_A6(sp)
> -       REG_L x17, PT_A7(sp)
> -       REG_L x18, PT_S2(sp)
> -       REG_L x19, PT_S3(sp)
> -       REG_L x20, PT_S4(sp)
> -       REG_L x21, PT_S5(sp)
> -       REG_L x22, PT_S6(sp)
> -       REG_L x23, PT_S7(sp)
> -       REG_L x24, PT_S8(sp)
> -       REG_L x25, PT_S9(sp)
> -       REG_L x26, PT_S10(sp)
> -       REG_L x27, PT_S11(sp)
> -       REG_L x28, PT_T3(sp)
> -       REG_L x29, PT_T4(sp)
> -       REG_L x30, PT_T5(sp)
> -       REG_L x31, PT_T6(sp)
> -
> -       REG_L x2,  PT_SP(sp)
> -       .endm
> -
> -#if !IS_ENABLED(CONFIG_PREEMPTION)
> -.set resume_kernel, restore_all
> -#endif
> -
> -ENTRY(handle_exception)
> -       SAVE_ALL
>
>         /*
>          * Set the scratch register to 0, so that if a recursive exception
> @@ -298,7 +221,63 @@ resume_userspace:
>         csrw CSR_SCRATCH, tp
>
>  restore_all:
> -       RESTORE_ALL
> +       REG_L a0, PT_STATUS(sp)
> +       /*
> +        * The current load reservation is effectively part of the processor's
> +        * state, in the sense that load reservations cannot be shared between
> +        * different hart contexts.  We can't actually save and restore a load
> +        * reservation, so instead here we clear any existing reservation --
> +        * it's always legal for implementations to clear load reservations at
> +        * any point (as long as the forward progress guarantee is kept, but
> +        * we'll ignore that here).
> +        *
> +        * Dangling load reservations can be the result of taking a trap in the
> +        * middle of an LR/SC sequence, but can also be the result of a taken
> +        * forward branch around an SC -- which is how we implement CAS.  As a
> +        * result we need to clear reservations between the last CAS and the
> +        * jump back to the new context.  While it is unlikely the store
> +        * completes, implementations are allowed to expand reservations to be
> +        * arbitrarily large.
> +        */
> +       REG_L  a2, PT_EPC(sp)
> +       REG_SC x0, a2, PT_EPC(sp)
> +
> +       csrw CSR_STATUS, a0
> +       csrw CSR_EPC, a2
> +
> +       REG_L x1,  PT_RA(sp)
> +       REG_L x3,  PT_GP(sp)
> +       REG_L x4,  PT_TP(sp)
> +       REG_L x5,  PT_T0(sp)
> +       REG_L x6,  PT_T1(sp)
> +       REG_L x7,  PT_T2(sp)
> +       REG_L x8,  PT_S0(sp)
> +       REG_L x9,  PT_S1(sp)
> +       REG_L x10, PT_A0(sp)
> +       REG_L x11, PT_A1(sp)
> +       REG_L x12, PT_A2(sp)
> +       REG_L x13, PT_A3(sp)
> +       REG_L x14, PT_A4(sp)
> +       REG_L x15, PT_A5(sp)
> +       REG_L x16, PT_A6(sp)
> +       REG_L x17, PT_A7(sp)
> +       REG_L x18, PT_S2(sp)
> +       REG_L x19, PT_S3(sp)
> +       REG_L x20, PT_S4(sp)
> +       REG_L x21, PT_S5(sp)
> +       REG_L x22, PT_S6(sp)
> +       REG_L x23, PT_S7(sp)
> +       REG_L x24, PT_S8(sp)
> +       REG_L x25, PT_S9(sp)
> +       REG_L x26, PT_S10(sp)
> +       REG_L x27, PT_S11(sp)
> +       REG_L x28, PT_T3(sp)
> +       REG_L x29, PT_T4(sp)
> +       REG_L x30, PT_T5(sp)
> +       REG_L x31, PT_T6(sp)
> +
> +       REG_L x2,  PT_SP(sp)
> +
>  #ifdef CONFIG_RISCV_M_MODE
>         mret
>  #else
> --
> 2.25.1.481.gfbce0eb801-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200227213450.87194-3-palmer%40dabbelt.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm65wmFQE6_wkVFFE6us99xXoqS8E-qORX9XmsD2uJ1dQ%40mail.gmail.com.
