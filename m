Return-Path: <clang-built-linux+bncBDZ3F5UE24FRB3VXXLYQKGQE6NHYXWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D66149F99
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jan 2020 09:14:39 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id d8sf5681727wrq.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jan 2020 00:14:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580112879; cv=pass;
        d=google.com; s=arc-20160816;
        b=k+3zlUspTm1Ft8jXXqr8BXz5fALI2+cuc0vsujlpnEMb38MAlISWpGcGbMdni5ZGzk
         UarmmD0EdM98sMXZxN8b/18AU/uB1NQj3kVWpQXIYtFKTUFFtsoW+VK26FhoPWc6o/0M
         fyCGW27yx/xxYe6OxYE3kRaKnKzglIDFVSoERK7MesiUKqIu1pIYR6kzUqT9tUC3BoGH
         jqe4Z/8jWZNC5a0b8jVRcrTC2oXKNotf/M3TLkiP23KB3bCVNkEvOUTCLklG1vjElFDc
         fkHS/i449ZEboqJ5M+LoaT+FBQ9n814aKtZ6BatqzpVrgHTYPvYqr/UJne8lk+q2HQ7x
         35PA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=BjiH6JNZHDMr6ycSJGq56GrS5scPt4JcvA/AxQxbDIc=;
        b=VyBsGba5Gk0Uc8Ofp9Dc/CPrEpn8LBA/Gn0Dcm5zFTLRP/K3JHMo7V/dC6f0oXJEFc
         ytbuePPJisycKf9qgL1r8xqgEmfj/hydIAh5AEF4CwBFHgOPFbmTvCzWNaR2PFKyy6lZ
         vHjiXLmPJQAi5efWVrmHguJQA+2qA7ODPccK15pl1Yds0/Oi7p2C9ZCZPZ1H2w+6eHlc
         iDyIx8/t93EC27Uq/gfNlSwsL8CQ1VmBVocx0i6qaXmo07my7vVSKO+5Kb+jvZB+OrfG
         FXRULk/V8LwD6xei3OkdN5l7cz3R44aPuAJYZ2rKpk2j1FLY2cW5bBLqe4o3mG+bOqAz
         HftQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hgPg4IKG;
       spf=pass (google.com: domain of nick.desaulniers@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=nick.desaulniers@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BjiH6JNZHDMr6ycSJGq56GrS5scPt4JcvA/AxQxbDIc=;
        b=YGHy1VlaK3p+XxbQJxBjOmY8aKb3eFRYqHIF1M1SvhlM5kSpOq2BXHiDrkueb3QIfp
         OOHP55tkvzUHsUEQJWg8bJwuT51Ob1tMs21tIVdfh79JptRBhVBoTJaE+/8NSgnVHLYI
         UZhHqmmxmxQgRjrtPuH3AQZ3uJ4DOX9RC/fsj1FwwvHblNer2j6kqBaTrb+ODNvZE+lC
         mfG74eyRQo/VnqkxcUaF0YAUJMCJbyQKvDRMv+cxedYiIEca0sCr8zLbm74Q3Sl79abB
         iuuL87uWoZYy215bl9IrEw/X6sDt+ErFeLkBqnQaq013lzGf/fZKfC3Ge309aI/GrLYO
         q/Cw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BjiH6JNZHDMr6ycSJGq56GrS5scPt4JcvA/AxQxbDIc=;
        b=WFNCria6ayfFEHvGzrCo7Gq53OUe2GeThchInAmygMekdH/gNWTNrNglUT4nyM2by3
         yGSIkdEx+6HVyOX+fxpv/ujbpZ6qaGq4y2HwRCWFScpqpUuNyPRmSIIOD1Q/e5hqUhoD
         PIlOP8etuJIglVzidfO2ZQnbMC+cSnI2GM7AfPWDW4LGZzaSNYFF9A5gwJ5B+lP/7+wO
         KJ47pa+k0YCopYUDFT8IpMLB0R6dkKtuEjOZgl5ilZ3UimXHCVgfSI289HAjBw06pJMG
         Ea+j4uDf8siaVC+hJ5n0fO2FxV8SIrA6wVnM8QNfp55R2nbtcYDZ3SW7CbP7BjA+jQGs
         3CJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BjiH6JNZHDMr6ycSJGq56GrS5scPt4JcvA/AxQxbDIc=;
        b=rzndHbOHIrEueh0R6tQXWbXhh/KaQmc48199fV6dmPTItz2ZcFqv9uyeaS/r5jcYeD
         HdTH23FzXhDq7lN35iNzUx2QqmpwVGI7qhH8aYxRpMIgB+H1HOM7WHSuktAcTrsm+tof
         F6qpDtOxZQx7+2kDeA9GE+4Js1VgPunj16NcEr1PmXGEF4QLODS9JBr57QiHJz1PhlZT
         +lqQ5Si+J5lJyyl5WQIalqFupeBllfyW1mYHnCKCpK0uXl7tbvJQ/9X54q0CXwU02kHQ
         DKUSOywpyNOpp+EavMEBz+fA/9pe7p7GuUJZNhcDX/riE17up7MfbQXDkfimAW12QwEy
         x/Jg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUI9AYSieudumFZ37TcEBGbXpedKxr0FZwC8ItsuBRmLWbF6dyK
	tSktLDQfe810dOc00oBBVMw=
X-Google-Smtp-Source: APXvYqxW5MhthlOUxmAxKVaI22mFdH8uQKntfa0aDs+4pZGbB/lm2B3IRWt788xlUgq3gFxpnmRiaQ==
X-Received: by 2002:a5d:65c5:: with SMTP id e5mr19660249wrw.311.1580112878881;
        Mon, 27 Jan 2020 00:14:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ea84:: with SMTP id s4ls6184256wrm.11.gmail; Mon, 27 Jan
 2020 00:14:38 -0800 (PST)
X-Received: by 2002:a5d:538e:: with SMTP id d14mr20842496wrv.358.1580112878296;
        Mon, 27 Jan 2020 00:14:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580112878; cv=none;
        d=google.com; s=arc-20160816;
        b=vkVrdx0q1hd8TQ1fAVXXikWCdlnpcxD8OZLtD3v50QgDnY5+DmqKLprg9R3KEAaqYE
         gTXfiLdqAR97PGwqZT4KLd7ABkAot2/+iwcY2VPOBI58W8oNsD8oo1V880m7MdTPO13k
         L4VpsVJe5rbtfM0LhP0QLqC2uZrLeYhE6hatFCyHCCjqsVE4e2Z8KMF9hkfyxiRdRSrG
         OFtZzjab/9cET58U06YILBFeenSsxWVQfdIyxl+hEBjp0xuEqhB2HdjlsDWOi89UeRb1
         Sq4BS1fNcMfUA3bY5OkARYOTcqp7bBXdBuTiHxfSQzkXGAU320WWY8kNl04Olxu+m/hH
         jTng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YYnwroKpA2nRDD4ithAnL2HDhzyOBBW3fti4xbSutyQ=;
        b=Ly1bG3M8m5NCdyU790ywJ38HiJOL+SVaKa5Z/d2NNYR7XmWgLKDdI3iSuyjoGSVwGy
         1ULiwMtnDpeBPgk+Ic2nZa1cFwiKbhdlDSvns4IsyC8ZFBC4s25iJYAmIrAN9SK9E9AD
         Ky7y2WFaDfK8IdvMQcJoXq1I4VF3A2WJoGo6I6lSRZpmqCWANyGxs9am5G28lOkft8fM
         8SRBL8l55lcIqvWYh+k3LAasUuAsPZC1V7R4X3qA8TDrqnBz/mESoXPWLDQQroJGJt8R
         EdT67Lg36Pq0WWGFPUJnwXxUXhuI0yGaUt2b9rV0bAEOMhR9B7YgPJ9FTxv5c+G6nBhW
         rFZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hgPg4IKG;
       spf=pass (google.com: domain of nick.desaulniers@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=nick.desaulniers@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id u9si522549wri.3.2020.01.27.00.14.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2020 00:14:38 -0800 (PST)
Received-SPF: pass (google.com: domain of nick.desaulniers@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) client-ip=2a00:1450:4864:20::541;
Received: by mail-ed1-x541.google.com with SMTP id m13so9871147edb.6
        for <clang-built-linux@googlegroups.com>; Mon, 27 Jan 2020 00:14:38 -0800 (PST)
X-Received: by 2002:a17:906:eb91:: with SMTP id mh17mr11719153ejb.54.1580112877830;
 Mon, 27 Jan 2020 00:14:37 -0800 (PST)
MIME-Version: 1.0
References: <20200127071602.11460-1-nick.desaulniers@gmail.com> <20200127080935.GH14914@hirez.programming.kicks-ass.net>
In-Reply-To: <20200127080935.GH14914@hirez.programming.kicks-ass.net>
From: Nick Desaulniers <nick.desaulniers@gmail.com>
Date: Mon, 27 Jan 2020 00:14:27 -0800
Message-ID: <CAH7mPvi9uH6210Np2GmzaMDY7k7MNRaBZdwhPakLu8ZEfoq0pQ@mail.gmail.com>
Subject: Re: [PATCH] dynamically allocate struct cpumask
To: Peter Zijlstra <peterz@infradead.org>
Cc: Paolo Bonzini <pbonzini@redhat.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, bp@alien8.de, 
	Sean Christopherson <sean.j.christopherson@intel.com>, Vitaly Kuznetsov <vkuznets@redhat.com>, 
	Wanpeng Li <wanpengli@tencent.com>, Jim Mattson <jmattson@google.com>, 
	Joerg Roedel <joro@8bytes.org>, "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, kvm@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: Nick.Desaulniers@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hgPg4IKG;       spf=pass
 (google.com: domain of nick.desaulniers@gmail.com designates
 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=nick.desaulniers@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Jan 27, 2020 at 12:09 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Sun, Jan 26, 2020 at 11:16:02PM -0800, Nick Desaulniers wrote:
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
> >
> > Signed-off-by: Nick Desaulniers <nick.desaulniers@gmail.com>
> > ---
> >  arch/x86/kernel/kvm.c | 10 ++++++----
> >  1 file changed, 6 insertions(+), 4 deletions(-)
> >
> > diff --git a/arch/x86/kernel/kvm.c b/arch/x86/kernel/kvm.c
> > index 32ef1ee733b7..d41c0a0d62a2 100644
> > --- a/arch/x86/kernel/kvm.c
> > +++ b/arch/x86/kernel/kvm.c
> > @@ -494,13 +494,15 @@ static void kvm_send_ipi_mask(const struct cpumask *mask, int vector)
> >  static void kvm_send_ipi_mask_allbutself(const struct cpumask *mask, int vector)
> >  {
> >       unsigned int this_cpu = smp_processor_id();
> > -     struct cpumask new_mask;
>
> Right, on stack cpumask is definitely dodgy.
>
> > +     struct cpumask *new_mask;
> >       const struct cpumask *local_mask;
> >
> > -     cpumask_copy(&new_mask, mask);
> > -     cpumask_clear_cpu(this_cpu, &new_mask);
> > -     local_mask = &new_mask;
> > +     new_mask = kmalloc(sizeof(*new_mask), GFP_KERNEL);

Probably should check for allocation failure, d'oh!

> > +     cpumask_copy(new_mask, mask);
> > +     cpumask_clear_cpu(this_cpu, new_mask);
> > +     local_mask = new_mask;
> >       __send_ipi_mask(local_mask, vector);
> > +     kfree(new_mask);
> >  }
>
> One alternative approach is adding the inverse of cpu_bit_bitmap. I'm
> not entirely sure how often we need the all-but-self mask, but ISTR
> there were other places too.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAH7mPvi9uH6210Np2GmzaMDY7k7MNRaBZdwhPakLu8ZEfoq0pQ%40mail.gmail.com.
