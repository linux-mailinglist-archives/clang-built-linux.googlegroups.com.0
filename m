Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBLM4YGBAMGQE3SUNQMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 922D033CDE9
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 07:20:30 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id k189sf1945708ybb.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 23:20:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615875629; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vr7yKG41bm6B417HjhQcs8Vg6DC91yVrAmhT7tp3V97xn7hhAhrjThrdoIrQbMCirU
         7gfhSgiy5GRJOTSFpYpU+bHEr1aD85B2gxCPes+dWFMY4l7DKCGap6AW+YfIHX4Y8qcJ
         EdAG+ofxfpSz4TXo0UHo/6zbhjuIilbGlykkGg7xT0g41wSQ9+fIlyPqT2sT0YjsbpEg
         3qqeexl4mXkj0BM+BnW3lnnfdikecDv6LesEjPpS68JN6nsAHjL8f/plOe44TsYMeu3j
         3x894gmMkWx4qWkqsut1I9ayOvynaVW7vEeelyp4xzaH5Gpj8VQtrpJrLV1qjglfB+ML
         VrSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=DCno5SlvFiiPZvHcBM9YGQqMTgR4S2PhnhcOtNPRb0w=;
        b=A7h4vUSHNDMxvG3OZt+0itF5sgfGdijUZvsR/7Qrlh+4rvqdFhvENVsMFX+3yRjcuD
         iG6aM1dzraaZips7ivOaTNuOZii047m7CMuU0Xb1YItCk+ysuHR5ti1kGWIFDrz0AzyX
         06G3ziq3SnE6D7ZZlW4Bh4hx5J8S8qFR0DgNBaj5E/In2cdmUKNN3JksnLttob4HyeAJ
         YP9q+UOpNK9Yyz/q7AAsFCS1HMyPF7KYSiEhYq0vtgbTRuXkJMFKLcjRDRoGq1tTZFGJ
         Kd3gMSwQULPLvIOihzfeemHY4WXiHaFG7mRKVw8LCJQHJFCCTu0JApKrAXcn1n7RzmpS
         ZR6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Hc3dZ27W;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DCno5SlvFiiPZvHcBM9YGQqMTgR4S2PhnhcOtNPRb0w=;
        b=CuCQY0/2nK+a7YRpwLe4r+01wziLsYDDcRhXopcfEhhsTZtCBW1b8HPIw4EzMpH0Eg
         +0swC+7kWyqjTzZAquFJc23nVp2jpcUhpCBe+Dm2GKDH+9SzRMwLoSO9LAtZp4h0eWWg
         edFDvIcMsYKYstE/78m/ZwQRXCAgJ8HHwouEXyX14J02GuDjKzoEyYdVC++6blQ761c2
         oxUoGe1/eVXEqLK2cCuOqvaiRZSaW20XpNaBIaDMX+Ff4wlXjr+NWKfXcArudy2P/v5e
         lUZrBO5+YwoxTeARbefmqNl1K02suq4UIioivvosCl84u5HZ2vVZ76sXqeWxrC43e7Vx
         es6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DCno5SlvFiiPZvHcBM9YGQqMTgR4S2PhnhcOtNPRb0w=;
        b=Q2w8M981er+ScNyghcqAI0b4tpm0unRmJ7kJOejnN7zfktULo9Te+1buih7cd5k2bN
         /XslzQKTwNMUf7NnlvxCEEC82BTh7Qq/0X7nw/Ksgp7amSswZ62ESMBH5Hcm/H/CuJOw
         kIqROr3dZ6EUPi4KGLJZz5U2SxVUGHSA/AJx8toSkqwbb9AByxcp7CuA4a8y3BPXV4z6
         iyIPmwTcBVKp7Jkjg3+K/z0quT8YO8Qb/T9xTD71bsimATNYLwXYr3IyGSBxKIiEfvn3
         updQSkjzmktrh5RiXT/ALzJ4nwzVMiBnYhwlOPEOFS/B0yjt8Dv/1hpL8gC+/mQrH5gu
         AFGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CiUsFe2bEMlmwRULNTdKK7KkZ6tSYPsaDDgUuDF7xFiusOa1Y
	BKHsJlxB76Z72E2pCMGaGEw=
X-Google-Smtp-Source: ABdhPJwbB638XbssLdB2bSGgKvha9le/UeOxMcg6ZKwxbSQn13DLx+I20C2+kjSJpXnWtW6RZa9j6Q==
X-Received: by 2002:a25:818b:: with SMTP id p11mr5023505ybk.330.1615875629673;
        Mon, 15 Mar 2021 23:20:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:506:: with SMTP id 6ls1594656ybf.9.gmail; Mon, 15 Mar
 2021 23:20:29 -0700 (PDT)
X-Received: by 2002:a5b:40d:: with SMTP id m13mr4643641ybp.516.1615875629172;
        Mon, 15 Mar 2021 23:20:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615875629; cv=none;
        d=google.com; s=arc-20160816;
        b=pWwTkSqHO8LGkDnsh3TU484tU+irjINGryeQujCZ1T1DZe895U2Qh63uS2d5+4q1W7
         4VTueEaxh/E/0rwgBKO8AAzqj9UsgVkt9r6/khmiGodNBkoM2Y+6BLUGXTbFZm7+HBlo
         IKFuUAJYEbpWz4fH45/BmZuidCTuixBIGOWc/zfqEXsHptw/FDTyL5YYAQg7g0kqyK6P
         m1r8JeXD6rmaFTN05VNHfUIui2jcMT/emJK3Vk/t/qIupl69Pp+ZvzwUReuihmw7M3o0
         9ns7GEhB8D5eZP64T5L+oJVK+Cw7jjrE4ypt/JTui/H5ii4ZHL48S6nRcOTYgTXUD6zS
         h30A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QkDy1UB6jIkHXu+gkEAB1LzQoGNjk7vr642Tt/KVOnM=;
        b=Ie6tsPoKmH3RKL3jY8Exmw5dnXEYnKd5x9JNfY6t2nsQYyZDMvYZM44ghd5vqqrFZW
         8C6NEi/PLvGu4y5uysXnwFs7tDwhQr0pXUP0d77aLxTSlODHEasf5NC9nBOJIYUl/QGA
         p4sjmS38EIprZFiKEgqlDvX12lpnWF445Kb8etu0R23Rx3I/48rD+PvYuhrJBVny+t5D
         1Zoxd01+mHCRiPukofW5eFyP8A0Yq5JRhtEa64zdzapYaFRifM+ru3K6yO1DYXmyVu3t
         /VIz4nGoDYe0VPF94KwBa7/U65Xr2G9OZ0dBV5vTEyCTStlG6B8SIFK4Oo/S6ZQcEM8k
         s7Yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Hc3dZ27W;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t17si1277202ybl.2.2021.03.15.23.20.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 23:20:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DAABF65159
	for <clang-built-linux@googlegroups.com>; Tue, 16 Mar 2021 06:20:25 +0000 (UTC)
Received: by mail-oo1-f41.google.com with SMTP id r17-20020a4acb110000b02901b657f28cdcso3870609ooq.6
        for <clang-built-linux@googlegroups.com>; Mon, 15 Mar 2021 23:20:25 -0700 (PDT)
X-Received: by 2002:a4a:395d:: with SMTP id x29mr2346878oog.41.1615875625011;
 Mon, 15 Mar 2021 23:20:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdm6FXWVu-9YkQNNyoYmw+hkj1a7MQrRbWyUxsO2vDcnQA@mail.gmail.com>
 <20210315231952.1482097-1-ndesaulniers@google.com>
In-Reply-To: <20210315231952.1482097-1-ndesaulniers@google.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 16 Mar 2021 07:20:13 +0100
X-Gmail-Original-Message-ID: <CAMj1kXGT8Zgz3Pn+DDJnY6HRz3ugbkFozJycGBW+Cm6RvyYBHA@mail.gmail.com>
Message-ID: <CAMj1kXGT8Zgz3Pn+DDJnY6HRz3ugbkFozJycGBW+Cm6RvyYBHA@mail.gmail.com>
Subject: Re: [PATCH 5.4.y] ARM: 9030/1: entry: omit FP emulation for UND
 exceptions taken in kernel mode
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, candle.sun@unisoc.com, 
	Catalin Marinas <catalin.marinas@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jian Cai <jiancai@google.com>, 
	Luis Lozano <llozano@google.com>, Marc Zyngier <maz@kernel.org>, 
	=?UTF-8?B?TWlsZXMgQ2hlbiAo6Zmz5rCR5qi6KQ==?= <miles.chen@mediatek.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Sasha Levin <sashal@kernel.org>, 
	Stephen Hines <srhines@google.com>, Sandeep Patil <sspatil@google.com>, 
	"# 3.4.x" <stable@vger.kernel.org>, Stefan Agner <stefan@agner.ch>, 
	Dmitry Osipenko <digetx@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Russell King <rmk+kernel@armlinux.org.uk>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Hc3dZ27W;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, 16 Mar 2021 at 00:19, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> From: Ard Biesheuvel <ardb@kernel.org>
>
> commit f77ac2e378be9dd61eb88728f0840642f045d9d1 upstream.
>
> There are a couple of problems with the exception entry code that deals
> with FP exceptions (which are reported as UND exceptions) when building
> the kernel in Thumb2 mode:
> - the conditional branch to vfp_kmode_exception in vfp_support_entry()
>   may be out of range for its target, depending on how the linker decides
>   to arrange the sections;
> - when the UND exception is taken in kernel mode, the emulation handling
>   logic is entered via the 'call_fpe' label, which means we end up using
>   the wrong value/mask pairs to match and detect the NEON opcodes.
>
> Since UND exceptions in kernel mode are unlikely to occur on a hot path
> (as opposed to the user mode version which is invoked for VFP support
> code and lazy restore), we can use the existing undef hook machinery for
> any kernel mode instruction emulation that is needed, including calling
> the existing vfp_kmode_exception() routine for unexpected cases. So drop
> the call to call_fpe, and instead, install an undef hook that will get
> called for NEON and VFP instructions that trigger an UND exception in
> kernel mode.
>
> While at it, make sure that the PC correction is accurate for the
> execution mode where the exception was taken, by checking the PSR
> Thumb bit.
>
> Cc: Dmitry Osipenko <digetx@gmail.com>
> Cc: Kees Cook <keescook@chromium.org>
> Fixes: eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input sections")
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> [nd: fix conflict in arch/arm/vfp/vfphw.S due to missing
>      commit 2cbd1cc3dcd3 ("ARM: 8991/1: use VFP assembler mnemonics if
>      available")]
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> This should have been sent along with
> https://lore.kernel.org/stable/20210113185758.GA571703@ubuntu-m3-large-x86/
> it's my fault I missed it.
>

This breaks the boot on non-VFP capable hardware unless commit
3cce9d44321e460e7c88

ARM: 9044/1: vfp: use undef hook for VFP support detection

is applied as well, so please treat these as a pair for the purpose of
backporting.


>  arch/arm/kernel/entry-armv.S | 25 ++----------------
>  arch/arm/vfp/vfphw.S         |  5 ----
>  arch/arm/vfp/vfpmodule.c     | 49 ++++++++++++++++++++++++++++++++++--
>  3 files changed, 49 insertions(+), 30 deletions(-)
>
> diff --git a/arch/arm/kernel/entry-armv.S b/arch/arm/kernel/entry-armv.S
> index a874b753397e..b62d74a2c73a 100644
> --- a/arch/arm/kernel/entry-armv.S
> +++ b/arch/arm/kernel/entry-armv.S
> @@ -252,31 +252,10 @@ __und_svc:
>  #else
>         svc_entry
>  #endif
> -       @
> -       @ call emulation code, which returns using r9 if it has emulated
> -       @ the instruction, or the more conventional lr if we are to treat
> -       @ this as a real undefined instruction
> -       @
> -       @  r0 - instruction
> -       @
> -#ifndef CONFIG_THUMB2_KERNEL
> -       ldr     r0, [r4, #-4]
> -#else
> -       mov     r1, #2
> -       ldrh    r0, [r4, #-2]                   @ Thumb instruction at LR - 2
> -       cmp     r0, #0xe800                     @ 32-bit instruction if xx >= 0
> -       blo     __und_svc_fault
> -       ldrh    r9, [r4]                        @ bottom 16 bits
> -       add     r4, r4, #2
> -       str     r4, [sp, #S_PC]
> -       orr     r0, r9, r0, lsl #16
> -#endif
> -       badr    r9, __und_svc_finish
> -       mov     r2, r4
> -       bl      call_fpe
>
>         mov     r1, #4                          @ PC correction to apply
> -__und_svc_fault:
> + THUMB(        tst     r5, #PSR_T_BIT          )       @ exception taken in Thumb mode?
> + THUMB(        movne   r1, #2                  )       @ if so, fix up PC correction
>         mov     r0, sp                          @ struct pt_regs *regs
>         bl      __und_fault
>
> diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
> index b2e560290860..b530db8f2c6c 100644
> --- a/arch/arm/vfp/vfphw.S
> +++ b/arch/arm/vfp/vfphw.S
> @@ -78,11 +78,6 @@
>  ENTRY(vfp_support_entry)
>         DBGSTR3 "instr %08x pc %08x state %p", r0, r2, r10
>
> -       ldr     r3, [sp, #S_PSR]        @ Neither lazy restore nor FP exceptions
> -       and     r3, r3, #MODE_MASK      @ are supported in kernel mode
> -       teq     r3, #USR_MODE
> -       bne     vfp_kmode_exception     @ Returns through lr
> -
>         VFPFMRX r1, FPEXC               @ Is the VFP enabled?
>         DBGSTR1 "fpexc %08x", r1
>         tst     r1, #FPEXC_EN
> diff --git a/arch/arm/vfp/vfpmodule.c b/arch/arm/vfp/vfpmodule.c
> index 8c9e7f9f0277..c3b6451c18bd 100644
> --- a/arch/arm/vfp/vfpmodule.c
> +++ b/arch/arm/vfp/vfpmodule.c
> @@ -23,6 +23,7 @@
>  #include <asm/cputype.h>
>  #include <asm/system_info.h>
>  #include <asm/thread_notify.h>
> +#include <asm/traps.h>
>  #include <asm/vfp.h>
>
>  #include "vfpinstr.h"
> @@ -642,7 +643,9 @@ static int vfp_starting_cpu(unsigned int unused)
>         return 0;
>  }
>
> -void vfp_kmode_exception(void)
> +#ifdef CONFIG_KERNEL_MODE_NEON
> +
> +static int vfp_kmode_exception(struct pt_regs *regs, unsigned int instr)
>  {
>         /*
>          * If we reach this point, a floating point exception has been raised
> @@ -660,9 +663,51 @@ void vfp_kmode_exception(void)
>                 pr_crit("BUG: unsupported FP instruction in kernel mode\n");
>         else
>                 pr_crit("BUG: FP instruction issued in kernel mode with FP unit disabled\n");
> +       pr_crit("FPEXC == 0x%08x\n", fmrx(FPEXC));
> +       return 1;
>  }
>
> -#ifdef CONFIG_KERNEL_MODE_NEON
> +static struct undef_hook vfp_kmode_exception_hook[] = {{
> +       .instr_mask     = 0xfe000000,
> +       .instr_val      = 0xf2000000,
> +       .cpsr_mask      = MODE_MASK | PSR_T_BIT,
> +       .cpsr_val       = SVC_MODE,
> +       .fn             = vfp_kmode_exception,
> +}, {
> +       .instr_mask     = 0xff100000,
> +       .instr_val      = 0xf4000000,
> +       .cpsr_mask      = MODE_MASK | PSR_T_BIT,
> +       .cpsr_val       = SVC_MODE,
> +       .fn             = vfp_kmode_exception,
> +}, {
> +       .instr_mask     = 0xef000000,
> +       .instr_val      = 0xef000000,
> +       .cpsr_mask      = MODE_MASK | PSR_T_BIT,
> +       .cpsr_val       = SVC_MODE | PSR_T_BIT,
> +       .fn             = vfp_kmode_exception,
> +}, {
> +       .instr_mask     = 0xff100000,
> +       .instr_val      = 0xf9000000,
> +       .cpsr_mask      = MODE_MASK | PSR_T_BIT,
> +       .cpsr_val       = SVC_MODE | PSR_T_BIT,
> +       .fn             = vfp_kmode_exception,
> +}, {
> +       .instr_mask     = 0x0c000e00,
> +       .instr_val      = 0x0c000a00,
> +       .cpsr_mask      = MODE_MASK,
> +       .cpsr_val       = SVC_MODE,
> +       .fn             = vfp_kmode_exception,
> +}};
> +
> +static int __init vfp_kmode_exception_hook_init(void)
> +{
> +       int i;
> +
> +       for (i = 0; i < ARRAY_SIZE(vfp_kmode_exception_hook); i++)
> +               register_undef_hook(&vfp_kmode_exception_hook[i]);
> +       return 0;
> +}
> +core_initcall(vfp_kmode_exception_hook_init);
>
>  /*
>   * Kernel-side NEON support functions
> --
> 2.31.0.rc2.261.g7f71774620-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGT8Zgz3Pn%2BDDJnY6HRz3ugbkFozJycGBW%2BCm6RvyYBHA%40mail.gmail.com.
