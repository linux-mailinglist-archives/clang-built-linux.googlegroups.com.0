Return-Path: <clang-built-linux+bncBC2ORX645YPRBLVD7D2AKGQEUYTM6AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 599D31B1835
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 23:18:40 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id i128sf11117790pfc.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 14:18:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587417519; cv=pass;
        d=google.com; s=arc-20160816;
        b=M3kbPIvvrPUwdseqB3Sn2sZEKoWveFFlSE9BeOpUaqvkBfyaJJNV+UvfTgryK/zhhA
         GtLArvqaxIz0ovszzpwLFyGkrvTFgDmsAj8w8E8D3tiBsVmORvd2XVlrmhU8GVzRJtUL
         C5uKFzYHJjbve/VlJaWKtmS8nkOifEne9MQyk3xbnquaUgdBQb5OTX90r3CkLH+OGOqN
         gqQO+QcV2NonFnrVn/vvdMX1s+8irDG7JL9gfsOpvLfp2X2t7acaai8AebBMijRVAHHc
         TSjfhkYYjH57phQjX+rLaqS6GLEqMIUsmZRQl/IegeC2bMLqjUgYfOIQHbduU7FK3Qap
         qoMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=J5N/GylMiCrf4ZDzBShlWq40Dm8gUfVeTJgH6WRluv4=;
        b=bXVj2JN/35OucpT7wcoyylJQuEOYGacRpj0QegUCqUixHQBuw5cL1CEF7sUyxbAZHo
         RgEAkhNKkkCQzjbWiSmQLt2UytAZs67DLiLrPgjxUwpUdbrQFtFZ4VjUM/jxef6a79bZ
         3O+uthAGDW44CW6QC+lPsSlVXxMtaN7lXK68q9Jq2L42nX5hFpyD76cvXBT+4wz9j2II
         7HruEdJBIByYt84gf4HFpK8jM/M8jlPnSwDVF0YwU5+dKK5aO7iCBhGfW1FeiikChu0p
         8X630FjPkixFa/kXnGJnOtAxKgVMCJ4imU3nvF+1jFSxK5cQbA9nSnJeJsyVG65Pf7cM
         zFuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XnbwyLaH;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=J5N/GylMiCrf4ZDzBShlWq40Dm8gUfVeTJgH6WRluv4=;
        b=cVowGcdSalGDPdgGIYiQoq0TwkZTMsE+6eUNba8/ZXLavtv3/uauAR5ZuLRgTid1rS
         q+FK5rSP29+TUw7KXpXNAkSWBT8FqSztz6SQ7g4Ie30jwbwUNGQ+vqe/TQ7H0wITdato
         QiBWvKaSZ7aSxnFdYWqqEqHV37+RsD088LXbcmx1/ZmGYv/sKs9CP8R03ZQudEYhhoaz
         ie2U/vcE9/nGM4ihlWBEBjfwiVfrEy3oL5+nk9BasduLRrAfmT5Rsup4KuvslfRluhvC
         kYdYRAjTwJF4UlpPvPgw1N4rM8cY93BQeuE431oL6HD/SBOaZmQxhTeUwuXXdILCrIxK
         jesg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J5N/GylMiCrf4ZDzBShlWq40Dm8gUfVeTJgH6WRluv4=;
        b=CDmn2JsLqcztG0FfXTZTtgGFcHzCI3OLPH/6BjOMNfXjJPF0i4tOa1+YJ8UuhW0Ele
         zXOisPs6/llzmp0kNflsO/qVF/UcvL516feTlt0qCWlgLy3Vp3LFhjY4/E3xKwUKBRKm
         irf414YShpCpzxHbR9Qwcf5BZGPcZu6FZF24IjWIZ3ik+iBzy8mlguxiz9k6soaYZ55q
         FwP+RuzkaF7JIaqruKiRouK8VTT51VSIBhbwZU63igGzl29s7w9745I2+LEdbKnEFtJX
         RlIL3WzpnVHyLPf2vAz6AgXI3xiyMCKxNtqKlNJV7cs/w0LmYDtYtjCF7XRjGaYLwz6r
         RCng==
X-Gm-Message-State: AGi0PuboHRZqTH8BaczfZBD9gAkGJdbnE7fn0+B9NgLfQ59OSFhxrTPj
	ILQljeP+Sq02Ez4UqBpSX9M=
X-Google-Smtp-Source: APiQypLqcVeiDvBqM7yZeL/YYYTZ4aHoueu4y/0PvfYY9IcfSwcWByUHgt20JGH7vuxDEWIJVlpOnQ==
X-Received: by 2002:a17:90a:9a89:: with SMTP id e9mr1654347pjp.108.1587417518984;
        Mon, 20 Apr 2020 14:18:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d243:: with SMTP id t3ls10991964pgi.6.gmail; Mon, 20 Apr
 2020 14:18:38 -0700 (PDT)
X-Received: by 2002:a65:68c7:: with SMTP id k7mr18856710pgt.248.1587417518499;
        Mon, 20 Apr 2020 14:18:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587417518; cv=none;
        d=google.com; s=arc-20160816;
        b=Qf5ODmCM7J53920TLn133567Frak2X61MgrlJJpB+Uq1dple5/R0mBp3cCLsp7Ceub
         kDtej00kGDEbhLTJjWxMCFIuBMMuf8PVlWPUuKvn3lc3dx64qQ2HqWM66ycipXi3KU3V
         ojD9OUgDjxV3wxVBbTOF0TfU8KP8WocXVHRGkTIGew3yUB5OikgRrX7i+grPNZtPqqMb
         0i1lc4F4ZhgtGcMUzIlQcOMmM3Dg1UA6oA0JmtK0LH5l2B3I9qgmx2uKSYPb5+7ElaVg
         6xgnVeLG7iwo8o5lkIiyFM/SpFxw8oz4EMNYnpHrJgg+OWguLIyAhctyCuh2q3souquc
         5Skg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=I17SvgP3468YaEZJ/m4ZeQYc9PSBmKeATPZO1LtBfTU=;
        b=AsQF/AfYUMSt0pvLNtvhehOmsHhWFLoq4k5tmHpQCaYIuBl4rlK+sHw3snYmMin3A/
         mXq7XR9d6nytT6Fvb1VnhHAMLhL9lSfpDHgJzyO77pWRdjjmQzaGHW+7NGd8fSmNwvUE
         pBDFoQDvOIiCtYCo/0c3ahdEfutH0odu2nWSp/vNgsqlyrvouIQ4gRcECYfF9U5fFuC2
         26PVuKNIZS5DX2/eS1oF2EOgM765rsbtiXT7fl2lHhhYFzVVp0nQNjX4oaHfidchbNyM
         rW/Ofzsa/YN/WTnMTfVo5c509mCYV2UjwXW0tsAEyy8EysUDyFf3wwogl3O7+OgJ1q3w
         DeCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XnbwyLaH;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id a95si124811pje.1.2020.04.20.14.18.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 14:18:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id d184so1176562pfd.4
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 14:18:38 -0700 (PDT)
X-Received: by 2002:a63:ef02:: with SMTP id u2mr18271584pgh.21.1587417517829;
        Mon, 20 Apr 2020 14:18:37 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id s10sm407267pfd.124.2020.04.20.14.18.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2020 14:18:36 -0700 (PDT)
Date: Mon, 20 Apr 2020 14:18:30 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Juri Lelli <juri.lelli@redhat.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20200420211830.GA5081@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
 <20200420171727.GB24386@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200420171727.GB24386@willie-the-truck>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XnbwyLaH;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::442
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

On Mon, Apr 20, 2020 at 06:17:28PM +0100, Will Deacon wrote:
> > +ifdef CONFIG_SHADOW_CALL_STACK
> > +CC_FLAGS_SCS	:= -fsanitize=shadow-call-stack
> > +KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
> > +export CC_FLAGS_SCS
> > +endif
> 
> CFLAGS_SCS would seem more natural to me, although I see ftrace does it this
> way.

Right, I followed ftrace's example here.

> > +config SHADOW_CALL_STACK
> > +	bool "Clang Shadow Call Stack"
> > +	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> > +	help
> > +	  This option enables Clang's Shadow Call Stack, which uses a
> > +	  shadow stack to protect function return addresses from being
> > +	  overwritten by an attacker. More information can be found in
> > +	  Clang's documentation:
> > +
> > +	    https://clang.llvm.org/docs/ShadowCallStack.html
> > +
> > +	  Note that security guarantees in the kernel differ from the ones
> > +	  documented for user space. The kernel must store addresses of shadow
> > +	  stacks used by other tasks and interrupt handlers in memory, which
> > +	  means an attacker capable of reading and writing arbitrary memory
> > +	  may be able to locate them and hijack control flow by modifying
> > +	  shadow stacks that are not currently in use.
> 
> Shouldn't some of this depend on CC_IS_CLANG?

Sure, I'll add CC_IS_CLANG here in the next version. Note that we do
check for compiler support before selecting ARCH_SUPPORTS_SHADOW_CALL_STACK.
The flags are architecture-specific, so the check is done in the arch Kconfig.

> > +config SHADOW_CALL_STACK_VMAP
> > +	bool "Use virtually mapped shadow call stacks"
> > +	depends on SHADOW_CALL_STACK
> > +	help
> > +	  Use virtually mapped shadow call stacks. Selecting this option
> > +	  provides better stack exhaustion protection, but increases per-thread
> > +	  memory consumption as a full page is allocated for each shadow stack.
> 
> Given that this feature applies only to arm64 kernels built with clang, it
> feels weird to further segment that userbase with another config option.
> Does Android enable SHADOW_CALL_STACK_VMAP? If not, maybe we should ditch
> it for now and add it when we have a user.

Android doesn't enable the VMAP option right now due to increased memory
overhead. I'll drop it from v12.

> > +/*
> > + * A random number outside the kernel's virtual address space to mark the
> > + * end of the shadow stack.
> > + */
> > +#define SCS_END_MAGIC	0xaf0194819b1635f6UL
> 
> This seems like it might be arm64-specific. Why not choose something based
> off CONFIG_ILLEGAL_POINTER_VALUE (see linux/poison.h)?

Sure, I'll use POISON_POINTER_DELTA here.

> > +static inline void *__scs_base(struct task_struct *tsk)
> 
> Please avoid using 'inline' in C files unless there's a good reason not
> to let the compiler figure it out.

Ack.

> > +{
> > +	/*
> > +	 * To minimize risk the of exposure, architectures may clear a
> 
> Should be "the risk of exposure".

Thanks.

> > +	 * The shadow call stack is aligned to SCS_SIZE, and grows
> > +	 * upwards, so we can mask out the low bits to extract the base
> > +	 * when the task is not running.
> > +	 */
> > +	return (void *)((unsigned long)task_scs(tsk) & ~(SCS_SIZE - 1));
> 
> Could we avoid forcing this alignment it we stored the SCS pointer as a
> (base,offset) pair instead? That might be friendlier on the allocations
> later on.

The idea is to avoid storing the current task's shadow stack address in
memory, which is why I would rather not store the base address either.

> > +static inline void scs_set_magic(void *s)
> > +{
> > +	*scs_magic(s) = SCS_END_MAGIC;
> 
> You added task_set_scs() for this sort of thing, so I'm not convinced you
> need this extra helper.

Agreed, I'll drop this.

> > +	if (s)
> > +		scs_set_magic(s);
> > +	/* TODO: poison for KASAN, unpoison in scs_free */
> 
> We don't usually commit these. What's missing?

At the time, KASAN didn't support poisoning vmalloc'ed memory, but looks
like that was fixed a while back.

> > +static int scs_cleanup(unsigned int cpu)
> > +{
> > +	int i;
> > +	void **cache = per_cpu_ptr(scs_cache, cpu);
> > +
> > +	for (i = 0; i < NR_CACHED_SCS; i++) {
> > +		vfree(cache[i]);
> > +		cache[i] = NULL;
> > +	}
> 
> Hmm, can this run concurrently with another CPU doing a stack allocation
> with this_cpu_cmpxchg()? It probably works out on arm64 thanks to the use
> of atomics, but we shouldn't be relying on that in core code.

This is essentially identical to the code in kernel/fork.c. Anyway, all
of this code goes away with the VMAP option.

> > +void __init scs_init(void)
> > +{
> > +	scs_cache = kmem_cache_create("scs_cache", SCS_SIZE, SCS_SIZE,
> > +				0, NULL);
> > +	WARN_ON(!scs_cache);
> 
> Memory allocation failure should be noisy enough without this.

Sure, I'll remove the warning.

> > +void scs_task_reset(struct task_struct *tsk)
> > +{
> > +	/*
> > +	 * Reset the shadow stack to the base address in case the task
> > +	 * is reused.
> > +	 */
> > +	task_set_scs(tsk, __scs_base(tsk));
> > +}
> 
> Why isn't this in the header?

> > +bool scs_corrupted(struct task_struct *tsk)
> > +{
> > +	unsigned long *magic = scs_magic(__scs_base(tsk));
> > +
> > +	return READ_ONCE_NOCHECK(*magic) != SCS_END_MAGIC;
> > +}
> 
> Same here.

I'll move both to the header file.

> > +void scs_release(struct task_struct *tsk)
> > +{
> > +	void *s;
> > +
> > +	s = __scs_base(tsk);
> > +	if (!s)
> > +		return;
> > +
> > +	WARN_ON(scs_corrupted(tsk));
> > +
> > +	task_set_scs(tsk, NULL);
> 
> Aren't we about to free the task here? What does clearing the scs pointer
> achieve?

True, it doesn't achieve much, only leaves one fewer shadow stack pointer
in memory. I'll drop this from the next version.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200420211830.GA5081%40google.com.
