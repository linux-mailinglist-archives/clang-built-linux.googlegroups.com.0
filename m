Return-Path: <clang-built-linux+bncBD63HSEZTUIBBXFRTT2QKGQEQPDD2CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A611BAB70
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 19:39:42 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id 67sf10069168pfe.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 10:39:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588009181; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bi42/veHJr1nEzRQ+J07JnzTqkQmRRAK4W2FD4ND6X0NvpgB5Q0qS0boOeBjRjhorC
         WMgyvJ59hn7l3r30SWbezjRQTJWFQmFoKMWL8yHVBXWyUfpiMXx/6v2DO9u3dT4UChVf
         M0r5ClcRaqQcHz/mBKFZZmj0amN/tLV5sncKvGf4NMtfF1aI0TpacUKgudeVfej/hFFZ
         4Pz1so0ZjOqbsCz+VnUNdJV0QIMo2x5F6FvJL6zu2dO2D30FlXoXMcTWVpVH2ISa5/gk
         ZudTzTwcY5wwGEZDzLlTw2GCOloZUWnoIXnD7uPb+2MAsAdZvzw8wI4wPsTxCSAlAChZ
         kkXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=D3AYFmwBs00jsoKb9ncvp3TxUVRSDfUE+2xHwI+NHIE=;
        b=TxqiBC0/+8jyKIP3DwPkRF3sJ5sLWIYDEo6FfZgIkDCSHarZvExdadbEPX2ojvR3sF
         KHX+OLub13ZV4YZDADMlwGP8fpVuXVdzRqieFaUAeHLaVBBtp3fJPSKAbF8vP5ZPWxK7
         ATdtjKuM48gUTd7frGjTQP7mGmyePyswXvxAh35NyoSJRHCONDrFALpNTVww8eDNj/q9
         aqjPmrwKaHkxQGOO6s/ENKI6LSLsvjLAcKqvm9dO6VJIottVbdGSSyKqTi7OFp6KZgBZ
         dUFDBKSTs7QSvk7559J8QpELEZdsBAiBN9ayWLd2lzI8Fl3bELO5mIMjj+3BYoqWO6FF
         uhcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OEG6mbnA;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D3AYFmwBs00jsoKb9ncvp3TxUVRSDfUE+2xHwI+NHIE=;
        b=Xl+EjSdNBKI20CKbQwDkIGMH0m7cniN2ZMSifO62nV7HWebyg4vWEP35FFcNpT6Cp2
         nfPSQ260U2jhDK5HetHnV7LfqJ7T2mLbEc/13pAvGgRyGyxYKqS8epF9SS3ffT7jJD4Y
         +jLAQENOBbClb0t6UAU/bgIOEBrscx5+2nGqH5DK7cIu8Q/EYAvxhFqz8LsuEzhLXVw8
         FOqkDJP4V5/PB2tH5PGb+Pk+CnU+wQeETVYpkB6pE3TVgej6dH2ZW9g/Fpy3vZWWtSAx
         XYlZmwfH9BTxPcMrEY+0Gdn2GzJFde+IECXE/x+5+kPpSoSFRHUu4Usp3tJltPc6U3Er
         u7Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D3AYFmwBs00jsoKb9ncvp3TxUVRSDfUE+2xHwI+NHIE=;
        b=aXvQ1dlU7kqcJEeZjWvyq4OdyGFc1A4TO8vboFodrHHTeNUcyUKrC2oTa0nUBdgkcD
         isjz63k0wBOMSqI0v+TYZ0luYXrzmQFsiA6/EAb54PRZ498UWNPKMhvPeYWOWnclKHQP
         BdQ14Ls9GuFjfesxyniKBVKVpPI4s037F3ZqnFDmqma522mApkaWeCbkSTpGkjALP8tn
         mNjAj9/u2dWj/8GxXPNz+PUD3tQMOL4CwIJ0DiJ0zid2TvKaeeZWdDu2DDE4kGNT+S5J
         Ih0I3dM+DFC9sxQQ8ZsWTm6EPjqaMrMrZjm+swvw30PTiGrykCm4HpKATdAapffXdXqL
         5DOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZkEvwhVcWPd2WMae/o19Y/rqZf8Fxi2kpw/xUfqb+3+kIAfiFw
	XBgUueQ0GGmmuMQUcUY2nT0=
X-Google-Smtp-Source: APiQypIOR+Qluj84GyEwyVJNxYHNl6OjZr5TB8JoKf6W3zWEnOTw3a0lnKnWPawglaWhD+4+zSRT9A==
X-Received: by 2002:a17:902:d68d:: with SMTP id v13mr24060036ply.294.1588009180956;
        Mon, 27 Apr 2020 10:39:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a03:: with SMTP id v3ls16480911plp.11.gmail; Mon,
 27 Apr 2020 10:39:40 -0700 (PDT)
X-Received: by 2002:a17:90a:35f0:: with SMTP id r103mr25021077pjb.167.1588009180400;
        Mon, 27 Apr 2020 10:39:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588009180; cv=none;
        d=google.com; s=arc-20160816;
        b=a7drEASKPnUXl4RaABMdZajVCf+wNv4kvdpVigAZjAAmDzJuDXSi2CXf+vhHQ/ILds
         yf0armCVKcvhHYpL+DEpREh+9SoaJKhLYC+WZIU9g55Fcr7xX4e9KtvVtH0PfIdXbtN/
         bRf2ENFUg7FjrH4CgNPPI84qWLrNHMF8PKPEzSZ0VgjsAsCJoviq9nQCCq6TsjGDZ9hx
         Uq5BS+w/tFsE6J5DKscgPWuKVEOYiPoBnBJ5b94sFS7XhIZ+aLkXn6c4TzHKlGyWC133
         mASkNEHGHqrhM5xNX3lw+Y5YYs3EWSDvng1QA/9eL46prmio4PAGaBCH3m3tK4MKkeYs
         2Pdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=M13iMTlHXL+r5Qi5daQ5PRGuNpBZFOhhAU5JR8yqA20=;
        b=cDFQWQDM6V0DVkZx8sCDATz3rkA3/hS/j8VZxQJjm7UhkEUOYblbBbiutwij0yIT+J
         6fJMhLXTecYCgXhQBdjNpFi+s2t7SZfCmiXmwBtpuC5S3ViLlUSBcCC2AiETjhXc35Tr
         OeCFCMlqL5qaInrXg97zmXNjWXOT9O4fSws6MWtJL0B1tQasLMhzwRLWvqrabYJ5W1+5
         MoNtvgQ/CR4qamrBxG16kVu3YAAEWli7Pn5fROVuDVjKbU6FndHosSmeEyFl6V4JwPdI
         wvSpkv9G05U2pwBi/qi028wLwRXA5Pkms9QSsk1QsUrBHCF1O+yVrlIogComY7DilRbO
         3dRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OEG6mbnA;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q34si95418pjh.2.2020.04.27.10.39.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Apr 2020 10:39:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 06620214D8
	for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 17:39:40 +0000 (UTC)
Received: by mail-io1-f45.google.com with SMTP id i3so19739546ioo.13
        for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 10:39:39 -0700 (PDT)
X-Received: by 2002:a6b:5904:: with SMTP id n4mr22515735iob.142.1588009179242;
 Mon, 27 Apr 2020 10:39:39 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200427160018.243569-1-samitolvanen@google.com>
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 27 Apr 2020 19:39:28 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGASSCjTjvXJh=_iPwEPG50_pVRe2QO1hoRW+KHtugFVQ@mail.gmail.com>
Message-ID: <CAMj1kXGASSCjTjvXJh=_iPwEPG50_pVRe2QO1hoRW+KHtugFVQ@mail.gmail.com>
Subject: Re: [PATCH v13 00/12] add support for Clang's Shadow Call Stack
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>, 
	Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>, Marc Zyngier <maz@kernel.org>, 
	kernel-hardening@lists.openwall.com, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Laura Abbott <labbott@redhat.com>, 
	Dave Martin <Dave.Martin@arm.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=OEG6mbnA;       spf=pass
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

On Mon, 27 Apr 2020 at 18:00, Sami Tolvanen <samitolvanen@google.com> wrote:
>
> This patch series adds support for Clang's Shadow Call Stack
> (SCS) mitigation, which uses a separately allocated shadow stack
> to protect against return address overwrites. More information
> can be found here:
>
>   https://clang.llvm.org/docs/ShadowCallStack.html
>
> SCS provides better protection against traditional buffer
> overflows than CONFIG_STACKPROTECTOR_*, but it should be noted
> that SCS security guarantees in the kernel differ from the ones
> documented for user space. The kernel must store addresses of
> shadow stacks in memory, which means an attacker capable of
> reading and writing arbitrary memory may be able to locate them
> and hijack control flow by modifying the shadow stacks.
>
> SCS is currently supported only on arm64, where the compiler
> requires the x18 register to be reserved for holding the current
> task's shadow stack pointer.
>
> With -fsanitize=shadow-call-stack, the compiler injects
> instructions to all non-leaf C functions to store the return
> address to the shadow stack, and unconditionally load it again
> before returning. As a result, SCS is incompatible with features
> that rely on modifying function return addresses in the kernel
> stack to alter control flow. A copy of the return address is
> still kept in the kernel stack for compatibility with stack
> unwinding, for example.
>
> SCS has a minimal performance overhead, but allocating
> shadow stacks increases kernel memory usage. The feature is
> therefore mostly useful on hardware that lacks support for PAC
> instructions.
>
> Changes in v13:
>  - Changed thread_info::shadow_call_stack to a base address and
>    an offset instead, and removed the now unneeded __scs_base()
>    and scs_save().
>  - Removed alignment from the kmem_cache and static allocations.
>  - Removed the task_set_scs() helper function.
>  - Moved the assembly code for loading and storing the offset in
>    thread_info to scs_load/save macros.
>  - Added offset checking to scs_corrupted().
>  - Switched to cmpxchg_relaxed() in scs_check_usage().
>

OK, so one thing that came up in an offline discussion about SCS is
the way it interacts with the vmap'ed stack.

The vmap'ed stack is great for robustness, but it only works if things
don't explode for other reasons in the mean time. This means the
ordinary-to-shadow-call-stack size ratio should be chosen such that it
is *really* unlikely you could ever overflow the shadow call stack and
corrupt another task's call stack before hitting the vmap stack's
guard region.

Alternatively, I wonder if there is a way we could let the SCS and
ordinary stack share the [bottom of] the vmap'ed region. That would
give rather nasty results if the ordinary stack overflows into the
SCS, but for cases where we really recurse out of control, we could
catch this occurrence on either stack, whichever one occurs first. And
the nastiness -when it does occur- will not corrupt any state beyond
the stack of the current task.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGASSCjTjvXJh%3D_iPwEPG50_pVRe2QO1hoRW%2BKHtugFVQ%40mail.gmail.com.
