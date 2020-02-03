Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJ7M4DYQKGQEKPTKYCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD471508FB
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Feb 2020 16:03:04 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id r74sf9575691iod.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Feb 2020 07:03:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580742183; cv=pass;
        d=google.com; s=arc-20160816;
        b=f4mPF5cfpyDRkQqKXFMB5Fxqpchx6sSPBWztpDhONoBR82ST6ZaTk36md5rR4930XG
         APSXBNM5g98zRTke8Jfmc6z/SBzSMLTcGQiZpJATmE85N0pcIAFW3GSIKVSo4EYzjQKF
         oKohTxtyC6QPbNh/i6obP9ILmdDVnOftLz3JZ6ZT+7GW9dIgnlw6p7hu74/Tnj2iWrbP
         1Ns4oub1MC3Avfljor02dy890l4vmN4d9v5L1GNUwlkeh/9cu7rAFud6lvl6HZMpa+8c
         UnEnXTCkzRBGXcvo0pkO6qsE5u5eOmSYYVdWlBmmmQNa1lKPB2skdNxHV8TJWSxBN+6U
         l/fQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=W62qVc775a44VgL8lSiRw4WcWejaIlxdKDpRrT2zxc0=;
        b=RuL5UEcxgi2ZHftCPQtZ709c1BwvAFeOi5SVAD1cqaq0DBQdyGXLFjEv6cnUZ5yDrG
         EbkT54oFTxBoER7US+vXcLBMJM7DtDVRIY4ruHgxpoz5Zy80DULk6bGK3sWvnH30qwVT
         HUa/Qq9d48k4gO80zSeKS+Hp8kSjKIqRMHQLriqxv/AlplOw8haTK5LtlCsMtoWU4jum
         nnqxrHUT9ppYF1OwlT03N/mezwIau1HKOHt2U8MYlryONOhqzAVrs6XvptRWAgKK9nQk
         6caK+qos7wpNu0vnEpmt5/pJw0qL6CBibL4qT+4jJD3HW6Dx2z38jnEVErxPUqCT76Fr
         SOLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qBazqR06;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W62qVc775a44VgL8lSiRw4WcWejaIlxdKDpRrT2zxc0=;
        b=ORs62NbpPPk3sejOCpZlCt9pwDQEhMJQLPot6p6FMtYpBYz4Bf5ekWkr/H1usoaWTN
         A0eNKApLyVuxQtXZm5cacvHOTCu/1YM3QVMkc9szFtkyNGNWrf9C8PBMC/EbWd3Q+r1a
         PKtP9SdDwfpI7mE1A7NycUtH854v2lYkiJtbWQaApSDfZetkh6dEHVYMrTSvULMa+vLD
         U5ePPAF0zcAw9kD+rgt17T/EEHMmeCWxotN2Gb8etQNV0xfjsumcjroNYsLJjOvrSBg+
         3PT5mWy3XSPE2/Qa3Sm8X07STLGFU+YXuG7rZeVxjmbW5whtCgOi3Egn1dF5U59WDek8
         sWGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W62qVc775a44VgL8lSiRw4WcWejaIlxdKDpRrT2zxc0=;
        b=BMZZXv3cF2bKIfJdzf1o0p3cWcEzTe1WfjonXICQPALa9h4mSRYEl/A4SDq/AZ+PSE
         1HQEYF8NRYMJW4Gq7Q/ycOALNGhnFpvuSO+wSke83CrvTy9M8rK6Xx4b9xDrnOzojCXo
         FB18snqcSXFj2MrC1UKnC0SN8lP7stDh/zd8qsCUyWMXyg8Le0m6aJrH0u0xDhE+LMBg
         RHy0jj1xdc8VZ6KOiZx5/jeUuUwa+mUlWVUQJUlG7SV/3oFwvCPdj3dTr6oBipZGpq9/
         v7caRJ9iyHha8dFqg2CmPNwDLPXp6vxHq+c4NzZtVj0xKmU6jnrDKB8Ywpl9J9ycUokB
         JTpw==
X-Gm-Message-State: APjAAAVwTI/nfA4rG76jcp275nbYo1JoINXIKIdirR8F7yQXDfCQCOR6
	y+IGMCHjOzJ8nvGHGlKYFyI=
X-Google-Smtp-Source: APXvYqzp2w0+S1m8JuMLhxpdzz0Ypy2Pw0urAdhtjTgCnl9HJbCXSrAsitUSqbeO15uc9fw12aCwOg==
X-Received: by 2002:a92:910b:: with SMTP id t11mr15403649ild.195.1580742183135;
        Mon, 03 Feb 2020 07:03:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:db04:: with SMTP id b4ls3357308iln.5.gmail; Mon, 03 Feb
 2020 07:03:02 -0800 (PST)
X-Received: by 2002:a17:90a:17e5:: with SMTP id q92mr30910945pja.28.1580742182647;
        Mon, 03 Feb 2020 07:03:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580742182; cv=none;
        d=google.com; s=arc-20160816;
        b=eesuz/YAuvYNabtIWyXxcNTbKzBqb8eKLr4hiAXdg5vgkVSmiYjLViZ/6716ztSPKW
         gwDCA4RwMS9T5EezY9IJEgFctFM3AWwc0ox52gHdG1xDnzwlZZd+d2gro9DTaQJKJmuY
         ISAJJ121NWjwkpfa9GdtORG0NCTfO0Rd326CiyXXoZhPTfupQeB+7ztN2Hw3CfiXZY1q
         458YXslPmBdLdBoc7UH6zkoIiAaUgJ+IVzPnUFwc9bYT5dZ4Nls64LYPBvP0sGUdVKkR
         K3ycsQoFRq/W8gDrB2G6rcgQqwhvEgi2q3n2McKVoj1znSWfhLeOLZYKl4VAxu/XOi1H
         9UFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dQK4ORCAhYC2TygAyENUq1Q+925Z/9wGLN91NM9l6UU=;
        b=DXg1ywXMkLron6ixWd03r3WTvPNeZ1LJldq+ItpZiMZ6thCU5C8QufoejtNyK03mB+
         F5NRQ2J7aLzBe6wGqUCAzvryhuAyzg9arnuxiDEocmUfgs18PRI67ceo/pHi77TmrRLm
         S09GATIhC61qcUVOI9zpn5JApbs8kOUW/0zodBP0mdCQjPhSRwXOj/37JrFAgzAuvGRI
         A9IczECFjBNgOs1YwRKjuY2hCOPiam3xIxFDOEh3P530niDhwVS6i4Mitg9+smJaJkp7
         lZApE1WMaYcTSR6qhVRS1XAjA22Hq9LDNikPsT/SG0BKkiYqOsfKrQB5FfBLPIhkunhh
         nltQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qBazqR06;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id f31si719345pje.2.2020.02.03.07.03.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2020 07:03:02 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id l3so3864567pgi.8
        for <clang-built-linux@googlegroups.com>; Mon, 03 Feb 2020 07:03:02 -0800 (PST)
X-Received: by 2002:a62:38c9:: with SMTP id f192mr25348029pfa.165.1580742182018;
 Mon, 03 Feb 2020 07:03:02 -0800 (PST)
MIME-Version: 1.0
References: <20200127071602.11460-1-nick.desaulniers@gmail.com> <CANRm+CwK0Cg45mktda9Yz9fsjPCvtuB8O+fma5L3tV725ki1qw@mail.gmail.com>
In-Reply-To: <CANRm+CwK0Cg45mktda9Yz9fsjPCvtuB8O+fma5L3tV725ki1qw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 3 Feb 2020 15:02:50 +0000
Message-ID: <CAKwvOdkJ_aJ+8=8fw50Ggk160rgp8M6xyGJ7qTsMctLT0PnZHw@mail.gmail.com>
Subject: Re: [PATCH] dynamically allocate struct cpumask
To: Wanpeng Li <kernellwp@gmail.com>
Cc: Nick Desaulniers <nick.desaulniers@gmail.com>, Paolo Bonzini <pbonzini@redhat.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Sean Christopherson <sean.j.christopherson@intel.com>, Vitaly Kuznetsov <vkuznets@redhat.com>, 
	Wanpeng Li <wanpengli@tencent.com>, Jim Mattson <jmattson@google.com>, 
	Joerg Roedel <joro@8bytes.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, kvm <kvm@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qBazqR06;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Mon, Feb 3, 2020 at 8:32 AM Wanpeng Li <kernellwp@gmail.com> wrote:
>
> Hi Nick,
> On Mon, 27 Jan 2020 at 15:16, Nick Desaulniers
> <nick.desaulniers@gmail.com> wrote:
> >
> > This helps avoid avoid a potentially large stack allocation.
> >
> > When building with:
> > $ make CC=clang arch/x86/ CFLAGS=-Wframe-larger-than=1000
> > The following warning is observed:
> > arch/x86/kernel/kvm.c:494:13: warning: stack frame size of 1064 bytes in
> > function 'kvm_send_ipi_mask_allbutself' [-Wframe-larger-than=]
> > static void kvm_send_ipi_mask_allbutself(const struct cpumask *mask, int
> > vector)
> >             ^
> > Debugging with:
> > https://github.com/ClangBuiltLinux/frame-larger-than
> > via:
> > $ python3 frame_larger_than.py arch/x86/kernel/kvm.o \
> >   kvm_send_ipi_mask_allbutself
> > points to the stack allocated `struct cpumask newmask` in
> > `kvm_send_ipi_mask_allbutself`. The size of a `struct cpumask` is
> > potentially large, as it's CONFIG_NR_CPUS divided by BITS_PER_LONG for
> > the target architecture. CONFIG_NR_CPUS for X86_64 can be as high as
> > 8192, making a single instance of a `struct cpumask` 1024 B.
>
> Could you help test the below untested patch?
>
> From 867753e2fa27906f15df7902ba1bce7f9cef6ebe Mon Sep 17 00:00:00 2001
> From: Wanpeng Li <wanpengli@tencent.com>
> Date: Mon, 3 Feb 2020 16:26:35 +0800
> Subject: [PATCH] KVM: Pre-allocate 1 cpumask variable per cpu for both
> pv tlb and pv ipis
>
> Reported-by: Nick Desaulniers <nick.desaulniers@gmail.com>
> Signed-off-by: Wanpeng Li <wanpengli@tencent.com>
> ---
>  arch/x86/kernel/kvm.c | 33 +++++++++++++++++++++------------
>  1 file changed, 21 insertions(+), 12 deletions(-)
>
> diff --git a/arch/x86/kernel/kvm.c b/arch/x86/kernel/kvm.c
> index 81045aab..b1e8efa 100644
> --- a/arch/x86/kernel/kvm.c
> +++ b/arch/x86/kernel/kvm.c
> @@ -425,6 +425,8 @@ static void __init sev_map_percpu_data(void)
>      }
>  }
>
> +static DEFINE_PER_CPU(cpumask_var_t, __pv_cpu_mask);
> +
>  #ifdef CONFIG_SMP
>  #define KVM_IPI_CLUSTER_SIZE    (2 * BITS_PER_LONG)
>
> @@ -490,12 +492,12 @@ static void kvm_send_ipi_mask(const struct
> cpumask *mask, int vector)
>  static void kvm_send_ipi_mask_allbutself(const struct cpumask *mask,
> int vector)
>  {
>      unsigned int this_cpu = smp_processor_id();
> -    struct cpumask new_mask;
> +    struct cpumask *new_mask = this_cpu_cpumask_var_ptr(__pv_cpu_mask);

Yes, this should help reduce the stack usage, thanks.
Acked-by: Nick Desaulniers <ndesaulniers@google.com>

>      const struct cpumask *local_mask;
>
> -    cpumask_copy(&new_mask, mask);
> -    cpumask_clear_cpu(this_cpu, &new_mask);
> -    local_mask = &new_mask;
> +    cpumask_copy(new_mask, mask);
> +    cpumask_clear_cpu(this_cpu, new_mask);
> +    local_mask = new_mask;
>      __send_ipi_mask(local_mask, vector);
>  }
>
> @@ -575,7 +577,6 @@ static void __init kvm_apf_trap_init(void)
>      update_intr_gate(X86_TRAP_PF, async_page_fault);
>  }
>
> -static DEFINE_PER_CPU(cpumask_var_t, __pv_tlb_mask);
>
>  static void kvm_flush_tlb_others(const struct cpumask *cpumask,
>              const struct flush_tlb_info *info)
> @@ -583,7 +584,7 @@ static void kvm_flush_tlb_others(const struct
> cpumask *cpumask,
>      u8 state;
>      int cpu;
>      struct kvm_steal_time *src;
> -    struct cpumask *flushmask = this_cpu_cpumask_var_ptr(__pv_tlb_mask);
> +    struct cpumask *flushmask = this_cpu_cpumask_var_ptr(__pv_cpu_mask);
>
>      cpumask_copy(flushmask, cpumask);
>      /*
> @@ -624,6 +625,7 @@ static void __init kvm_guest_init(void)
>          kvm_para_has_feature(KVM_FEATURE_STEAL_TIME)) {
>          pv_ops.mmu.flush_tlb_others = kvm_flush_tlb_others;
>          pv_ops.mmu.tlb_remove_table = tlb_remove_table;
> +        pr_info("KVM setup pv remote TLB flush\n");
>      }
>
>      if (kvm_para_has_feature(KVM_FEATURE_PV_EOI))
> @@ -732,23 +734,30 @@ static __init int activate_jump_labels(void)
>  }
>  arch_initcall(activate_jump_labels);
>
> -static __init int kvm_setup_pv_tlb_flush(void)
> +static __init int kvm_alloc_cpumask(void)
>  {
>      int cpu;
> +    bool alloc = false;
>
>      if (kvm_para_has_feature(KVM_FEATURE_PV_TLB_FLUSH) &&
>          !kvm_para_has_hint(KVM_HINTS_REALTIME) &&
> -        kvm_para_has_feature(KVM_FEATURE_STEAL_TIME)) {
> +        kvm_para_has_feature(KVM_FEATURE_STEAL_TIME))
> +        alloc = true;
> +
> +#if defined(CONFIG_SMP)
> +    if (!alloc && kvm_para_has_feature(KVM_FEATURE_PV_SEND_IPI))
> +        alloc = true;
> +#endif
> +
> +    if (alloc)
>          for_each_possible_cpu(cpu) {
> -            zalloc_cpumask_var_node(per_cpu_ptr(&__pv_tlb_mask, cpu),
> +            zalloc_cpumask_var_node(per_cpu_ptr(&__pv_cpu_mask, cpu),
>                  GFP_KERNEL, cpu_to_node(cpu));
>          }
> -        pr_info("KVM setup pv remote TLB flush\n");
> -    }
>
>      return 0;
>  }
> -arch_initcall(kvm_setup_pv_tlb_flush);
> +arch_initcall(kvm_alloc_cpumask);
>
>  #ifdef CONFIG_PARAVIRT_SPINLOCKS
>
> --
> 1.8.3.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANRm%2BCwK0Cg45mktda9Yz9fsjPCvtuB8O%2Bfma5L3tV725ki1qw%40mail.gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkJ_aJ%2B8%3D8fw50Ggk160rgp8M6xyGJ7qTsMctLT0PnZHw%40mail.gmail.com.
