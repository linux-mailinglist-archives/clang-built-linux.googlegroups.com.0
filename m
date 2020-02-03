Return-Path: <clang-built-linux+bncBDGO7SW2VMDBBBFV37YQKGQEFXYSZ4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E4C1502A4
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Feb 2020 09:32:06 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id 4sf8635985otd.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Feb 2020 00:32:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580718725; cv=pass;
        d=google.com; s=arc-20160816;
        b=oG7FXsucnr5ld5SBnArbisJST97ZxnNOKM5hEvwudzM86WIDSc/KfEbXViEDai/ZpC
         nWbSHJlGm+r/AI65syZBU2K01cww6NyVrElYuBYHnMGxyF74io2/7BjnjCMWzVfAUWbg
         bGUKY8gRMXR3VUispO4BtJv/Ke2T5OWUYLQ8RlJKZlAogxwTfDy1JqSx88ET6NBIDFEs
         6fPvpp+O71b0j4y1NxBGZkBx7jz9ooJz4x7fuiMxOzjgcN8QvjmW5jox486FTUSO/rKF
         QOCWkhEOVk+hyxU7ktEiLNV579qag4Jw1xNnD08mmPl3FFEQxrsVxpa+MpKAlpEUZBjs
         +pCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=XC1lz3iDJtDPjIGceLEALwVW7ax15W0QtebLNkkz4Z0=;
        b=CI5ucZbX0a9eAwTfxX+mgPkGCVGJ1Ntt6gxGiR2/JY1rSY+Scq9y/jxM8LJZGNPUwx
         VMFqALL6oJCtnXNTcIPjcTGgy8Xq86c4VaGzeoD67NAQ21K+FCFU4dLwYDmsoaDnnDbl
         kEv1R4q0STiaA1+vxEQenRs2rks1ammKDEJVz+p609BEJyuqWM+VV3lzdX9UMiZsJJRS
         r8WRUsNZvyRnHHGrXWROHRl5nXrSP2835cm/9aeR8vjT9pLyXmhEalX5jDFtwDQr6IAK
         JR982ia2g5DMuM9QQccsYi2bmIXjh5kmZShZ4UTuJYtIosPlIlnNC1ZU1dB0/465+hnj
         eh0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=haYQFwfe;
       spf=pass (google.com: domain of kernellwp@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=kernellwp@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XC1lz3iDJtDPjIGceLEALwVW7ax15W0QtebLNkkz4Z0=;
        b=OrbF6rAU1HPnk+TWN/a4mqH7Jb29pD5kI0k+eDU1+58YobFm+zzRfPZsYLQR0H+AyQ
         eiTmJn5q3DjqzkWigk9w9C6emC9Rhxeoyi8iLW9RKz/mIhj4t2aAiS1+PulYbHM8I2Gp
         BUXmcK5Hem7wU44q18+FVa30z1i9oB10jjMvwOob1kje54JAPuBT55UpU/sFA8FWFmLr
         Exbi0CTk0uPGZpfyXiWAYXnA9KYyQU5A6SSPxcxY+2cWvbEGde+cwsu1bTx4xEZKcg8i
         M4koMItvSN+ql8ozTVjUPw0GnmPhvbgSHrRbCqxW7n+fHaLJHT9ndl7jPbHAT8AhrMTA
         PEeA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XC1lz3iDJtDPjIGceLEALwVW7ax15W0QtebLNkkz4Z0=;
        b=n/6TYKAYVWWhkkGNTTiiGzkPCRbEt8EDBtgc0awsMDIZqnyGNDbzN/BxVidMvaFXUH
         gnaML9/9SHn7FQcKxrnQpf1kKu5Mum/vIdAXQzFadUrMO9krNNr8X19/rjSSObpNZeLp
         2N991fzJ3GlTr/DR9c2+ussVTkYtHjjdXy1pqth1OgvrBBTczAVqcbBEu72fqc4Rti4d
         MfUDMOU1ACITg8w4M4inI9W5YUlzw0ew6xecbyTuV7KueLEp4ZlG0DbaxviJLU4Ke3F9
         7G6HhDyZx9OkZ8vwnrL/hmgZ3lNzsykB+bt/EKoVfUBnUzx6MW7F0qSWtykKbAjDO9Ru
         CC1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XC1lz3iDJtDPjIGceLEALwVW7ax15W0QtebLNkkz4Z0=;
        b=FmShuQMTKZxfTXxjzv5IzRgwhHHw8XPe0HRgflFqEwFnxmDlAAON0U0ylXayI/9XEW
         32aZ5WedytGSlwyuZ08woD7MelACcKXwqh8dJBfqeIuxZchOfDoYll8t1Qaga85Y+RjC
         UBwZ72+V29dLwCUwRLB4zgc7kpejb4z1Yi0SQIGyGTIWMXWyyeum6DFQCHOSxitYvg7p
         culWJC9CKE1pQ9k6mPzm/YzmeNFJ5BpO0J9c1WTeaG4Jp5DkohpBfH1owbFOXwnLdW2m
         uMo7NL267axplVicf9q4BYPfOV/ELaZa0NedHlyrqV0Y2Hfxn/wU9yzcADneHZuE35pX
         18bQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUTzl4dDCzTIZq8WsKbjcL3B3q5eeqgsfJXJ6lq2arHDm7TTmwL
	/ncB1Bs2JRB0MQcUKexUkzw=
X-Google-Smtp-Source: APXvYqwjDVaXUAc5uakN3USIq8NNp55kZrxm3zOsM4Eb6ZVuqc+WQUWp8ll7nDDn+dbD7ORhWrSwcA==
X-Received: by 2002:aca:ab53:: with SMTP id u80mr13408358oie.94.1580718724886;
        Mon, 03 Feb 2020 00:32:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7281:: with SMTP id t1ls2132112otj.7.gmail; Mon, 03 Feb
 2020 00:32:04 -0800 (PST)
X-Received: by 2002:a9d:4801:: with SMTP id c1mr17481563otf.258.1580718724296;
        Mon, 03 Feb 2020 00:32:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580718724; cv=none;
        d=google.com; s=arc-20160816;
        b=cjvI/7E4geR4qL8+Md8URadL4Wm8Q23U4RICHCA6bCUUl4FoloDGhljRRiKW0vluZS
         ULyDf1PTKvJtSUOVUu8HU/GOAosnLlZOnb1LQeDoEajH6t6sy2KAKfaV8G6/kVqvJw3P
         LVkXECkBQjlaHadGeEkthztrsZx7U0z8ELTQKVjrP19R2C7NImK2PBj5eg3jVuF0TNkL
         dkLUA6dBOF4QbKifHk+xKDeL1c0KCwtKfWB9ukt/vx1mt3RQ5s/G0KML8PB+bpaIqbeT
         0OlORmyZrRCndA3EvvgkQ2tnWEV/Ty2TC80NijexhrXSTIghjagRmW8tNfOvA31jVtnX
         tQlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vgFT7KCLvNSNXKaIMj+AMJeeoDZdmCntNB9bIaSyhR8=;
        b=yNVa/H3VyoinsUlpiKVUDkxUyj5BdFb1IsPyDkKvBhfGhTwzyvstV6H1vmTmtXQBWL
         IjF1oSV+FijGldhoCn2LiSmVGqQlmvZvLZ1UdZ4pHEZPq1UXkn27f08ZURZD7kT5U5Ny
         bUFp9oFeoXlOhs6qxWlKF00M5JNYkZ0/jZhsLNNqb+eQ9zxDW0NMMZSwLUGrWq5wt1UQ
         gPro9Tk9z0klMjsCSR0cg9wuZQCe8SiQiesywOVf57F1j0xUQWgXWqzECcUVO1b/fJGY
         2a7gnCJ5WnhmAxBliQ6R5Skc3CXIkSGhvBCPzfZjYhJSarAgwZ5Qslh8CG/CQXh0HPjR
         J1Ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=haYQFwfe;
       spf=pass (google.com: domain of kernellwp@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=kernellwp@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id v207si663046oif.5.2020.02.03.00.32.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2020 00:32:04 -0800 (PST)
Received-SPF: pass (google.com: domain of kernellwp@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id q81so14015017oig.0
        for <clang-built-linux@googlegroups.com>; Mon, 03 Feb 2020 00:32:04 -0800 (PST)
X-Received: by 2002:aca:44d7:: with SMTP id r206mr5716393oia.33.1580718724066;
 Mon, 03 Feb 2020 00:32:04 -0800 (PST)
MIME-Version: 1.0
References: <20200127071602.11460-1-nick.desaulniers@gmail.com>
In-Reply-To: <20200127071602.11460-1-nick.desaulniers@gmail.com>
From: Wanpeng Li <kernellwp@gmail.com>
Date: Mon, 3 Feb 2020 16:31:52 +0800
Message-ID: <CANRm+CwK0Cg45mktda9Yz9fsjPCvtuB8O+fma5L3tV725ki1qw@mail.gmail.com>
Subject: Re: [PATCH] dynamically allocate struct cpumask
To: Nick Desaulniers <nick.desaulniers@gmail.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Sean Christopherson <sean.j.christopherson@intel.com>, Vitaly Kuznetsov <vkuznets@redhat.com>, 
	Wanpeng Li <wanpengli@tencent.com>, Jim Mattson <jmattson@google.com>, 
	Joerg Roedel <joro@8bytes.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, kvm <kvm@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kernellwp@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=haYQFwfe;       spf=pass
 (google.com: domain of kernellwp@gmail.com designates 2607:f8b0:4864:20::242
 as permitted sender) smtp.mailfrom=kernellwp@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Nick,
On Mon, 27 Jan 2020 at 15:16, Nick Desaulniers
<nick.desaulniers@gmail.com> wrote:
>
> This helps avoid avoid a potentially large stack allocation.
>
> When building with:
> $ make CC=clang arch/x86/ CFLAGS=-Wframe-larger-than=1000
> The following warning is observed:
> arch/x86/kernel/kvm.c:494:13: warning: stack frame size of 1064 bytes in
> function 'kvm_send_ipi_mask_allbutself' [-Wframe-larger-than=]
> static void kvm_send_ipi_mask_allbutself(const struct cpumask *mask, int
> vector)
>             ^
> Debugging with:
> https://github.com/ClangBuiltLinux/frame-larger-than
> via:
> $ python3 frame_larger_than.py arch/x86/kernel/kvm.o \
>   kvm_send_ipi_mask_allbutself
> points to the stack allocated `struct cpumask newmask` in
> `kvm_send_ipi_mask_allbutself`. The size of a `struct cpumask` is
> potentially large, as it's CONFIG_NR_CPUS divided by BITS_PER_LONG for
> the target architecture. CONFIG_NR_CPUS for X86_64 can be as high as
> 8192, making a single instance of a `struct cpumask` 1024 B.

Could you help test the below untested patch?

From 867753e2fa27906f15df7902ba1bce7f9cef6ebe Mon Sep 17 00:00:00 2001
From: Wanpeng Li <wanpengli@tencent.com>
Date: Mon, 3 Feb 2020 16:26:35 +0800
Subject: [PATCH] KVM: Pre-allocate 1 cpumask variable per cpu for both
pv tlb and pv ipis

Reported-by: Nick Desaulniers <nick.desaulniers@gmail.com>
Signed-off-by: Wanpeng Li <wanpengli@tencent.com>
---
 arch/x86/kernel/kvm.c | 33 +++++++++++++++++++++------------
 1 file changed, 21 insertions(+), 12 deletions(-)

diff --git a/arch/x86/kernel/kvm.c b/arch/x86/kernel/kvm.c
index 81045aab..b1e8efa 100644
--- a/arch/x86/kernel/kvm.c
+++ b/arch/x86/kernel/kvm.c
@@ -425,6 +425,8 @@ static void __init sev_map_percpu_data(void)
     }
 }

+static DEFINE_PER_CPU(cpumask_var_t, __pv_cpu_mask);
+
 #ifdef CONFIG_SMP
 #define KVM_IPI_CLUSTER_SIZE    (2 * BITS_PER_LONG)

@@ -490,12 +492,12 @@ static void kvm_send_ipi_mask(const struct
cpumask *mask, int vector)
 static void kvm_send_ipi_mask_allbutself(const struct cpumask *mask,
int vector)
 {
     unsigned int this_cpu = smp_processor_id();
-    struct cpumask new_mask;
+    struct cpumask *new_mask = this_cpu_cpumask_var_ptr(__pv_cpu_mask);
     const struct cpumask *local_mask;

-    cpumask_copy(&new_mask, mask);
-    cpumask_clear_cpu(this_cpu, &new_mask);
-    local_mask = &new_mask;
+    cpumask_copy(new_mask, mask);
+    cpumask_clear_cpu(this_cpu, new_mask);
+    local_mask = new_mask;
     __send_ipi_mask(local_mask, vector);
 }

@@ -575,7 +577,6 @@ static void __init kvm_apf_trap_init(void)
     update_intr_gate(X86_TRAP_PF, async_page_fault);
 }

-static DEFINE_PER_CPU(cpumask_var_t, __pv_tlb_mask);

 static void kvm_flush_tlb_others(const struct cpumask *cpumask,
             const struct flush_tlb_info *info)
@@ -583,7 +584,7 @@ static void kvm_flush_tlb_others(const struct
cpumask *cpumask,
     u8 state;
     int cpu;
     struct kvm_steal_time *src;
-    struct cpumask *flushmask = this_cpu_cpumask_var_ptr(__pv_tlb_mask);
+    struct cpumask *flushmask = this_cpu_cpumask_var_ptr(__pv_cpu_mask);

     cpumask_copy(flushmask, cpumask);
     /*
@@ -624,6 +625,7 @@ static void __init kvm_guest_init(void)
         kvm_para_has_feature(KVM_FEATURE_STEAL_TIME)) {
         pv_ops.mmu.flush_tlb_others = kvm_flush_tlb_others;
         pv_ops.mmu.tlb_remove_table = tlb_remove_table;
+        pr_info("KVM setup pv remote TLB flush\n");
     }

     if (kvm_para_has_feature(KVM_FEATURE_PV_EOI))
@@ -732,23 +734,30 @@ static __init int activate_jump_labels(void)
 }
 arch_initcall(activate_jump_labels);

-static __init int kvm_setup_pv_tlb_flush(void)
+static __init int kvm_alloc_cpumask(void)
 {
     int cpu;
+    bool alloc = false;

     if (kvm_para_has_feature(KVM_FEATURE_PV_TLB_FLUSH) &&
         !kvm_para_has_hint(KVM_HINTS_REALTIME) &&
-        kvm_para_has_feature(KVM_FEATURE_STEAL_TIME)) {
+        kvm_para_has_feature(KVM_FEATURE_STEAL_TIME))
+        alloc = true;
+
+#if defined(CONFIG_SMP)
+    if (!alloc && kvm_para_has_feature(KVM_FEATURE_PV_SEND_IPI))
+        alloc = true;
+#endif
+
+    if (alloc)
         for_each_possible_cpu(cpu) {
-            zalloc_cpumask_var_node(per_cpu_ptr(&__pv_tlb_mask, cpu),
+            zalloc_cpumask_var_node(per_cpu_ptr(&__pv_cpu_mask, cpu),
                 GFP_KERNEL, cpu_to_node(cpu));
         }
-        pr_info("KVM setup pv remote TLB flush\n");
-    }

     return 0;
 }
-arch_initcall(kvm_setup_pv_tlb_flush);
+arch_initcall(kvm_alloc_cpumask);

 #ifdef CONFIG_PARAVIRT_SPINLOCKS

--
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANRm%2BCwK0Cg45mktda9Yz9fsjPCvtuB8O%2Bfma5L3tV725ki1qw%40mail.gmail.com.
