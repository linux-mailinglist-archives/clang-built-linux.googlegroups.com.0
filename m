Return-Path: <clang-built-linux+bncBC7OBJGL2MHBB6EWT33QKGQEFIOJ7PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2471D1F9AF0
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 16:53:45 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id t12sf2576312ljd.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 07:53:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592232824; cv=pass;
        d=google.com; s=arc-20160816;
        b=HpblgbpUsQ5Ar4Ay1ANcpql/dbT7e1JhkR35XnhE+SWz0arEXWhYC5duTf5qv7Z7Rs
         XEnfdGAqdUgGN3DUVCAHTZyfJzErF9o4C3LiuRT9oI6G9legZtooDrDM/scUKyYs9Sc2
         BtFHPh6xhL1I6f/JcrYjiLv2zm+slWS60iWvbiI8wyvtHl6Jn0mn//Zy06Qi3WjMM44t
         01d4vqBEKnpo+Sz+nvWNYUmkT1ZI7Zl7OWZDts4pI5y5TcxPUQrXOpIuqw67j0kNPKIS
         pJ8dk+s/1+Ck08yekmWuuvj+hRuM69C5tTzDBoPeUp0+wOUdurokTcHv0MNksNHKtU5r
         /x8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=beecT/TjvfsJeghKqphuOxSAjSppsdqmi7VuYc+O9z0=;
        b=F3QMjiyu58Ya/pH0rLfPpSJXf9LiRRIAN4+QaJwKDDMqY1QYU9lgxkVNQlM55BhaFL
         qHANwB+EZMr+zLJKn/rQ40rBKpryB6RGWY8QtkhIBOZZmOcQ+cCkCTT+S/3xWVxJ2nSI
         OZvUhn1wtzzX8MmIQ10hxGLI/prJ3kNeZhWx67BfhTYhosztcZZGn2aDRxKi7AfESC/K
         BLpFZatg02OVobrpGb3WD7NAOCbbyEJQvl2WrnI37u91Vle8CBfWKcqSbbubGXCJJPse
         oA1qxmSgrZcyA7kisNi9cUbACRa/QqzIvQctJJ0dAQaz9tBTKgWcpY5lSVPb2DFWlngZ
         lTiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pGbdVD61;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=beecT/TjvfsJeghKqphuOxSAjSppsdqmi7VuYc+O9z0=;
        b=hQ9PQb9CV46jp5jXZgue2eVT+NCfHQSBDVYfwc+gD9/Ry0RN8aXColWj750KMzuLbH
         UQBe/nneGjntxom0/EsAaLzF/V6UYouzRpWmLNZp8SLsdJVdiC2iq3PRklHNwwjXfldp
         nchus5418BWf8acKLhuaW/NrjIK5yu6bQOFX4huv1dB9zdwVv/6DZHdZt6gRhwH43/J2
         Ab+H2lsT/jB64YnBGgajlphtMyLMA3ipNEux451pXrhY60BTq4r55x2xzvyx9NSP8lJp
         4tG2WAKq9+wSnoEA8yNk2SWQXxwhx+qq/KfAavsy+wLFYiKN06rxpuwyOhW1BI3QASkx
         vxXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=beecT/TjvfsJeghKqphuOxSAjSppsdqmi7VuYc+O9z0=;
        b=TG9HyaR2zYo/Hfdb5+3+ekCFWGrYaV26bgK4XUa8lKRWZJ+NZVQ4fh3s1vxaHnFbBi
         /G4LFmuH3ne6XE8uuvQ/VVuEWAaGwWNrANmrv4cApDGjsj8O5Yn3RGONhC8FT5/4TuYe
         35hgNqyguR7juuwxOVkOClTCf/YmTVCF8XE5M/7TglgqEg8OvUjm2gqDgZ2K00OuM/GQ
         3Gw7JFKo17cFy9W6rtkHneAtRvqrzumBi4+293P9HSAIhpOURdrnwvA1P8FjB2lH6qeM
         HxpzJ3Qi06cAiXX2y1zxIJrZi4+9lSO+eF9a28W3ft3Q7Q6cYVXYOq9QarfPOeQdESgC
         N+DA==
X-Gm-Message-State: AOAM531Hi34WjA0qbmgn9XcE/R1YvfLWMY3u5r09+wYgZQkNFhOI3BWS
	fzScXQiIminenxVLeivj278=
X-Google-Smtp-Source: ABdhPJw9ZGap/AzAkzSNl8eB5g9Cz63WXdx0+cbg6K5chwYQw4knEGcSpequV3I92sUFVHlQPl9sUQ==
X-Received: by 2002:ac2:5ecc:: with SMTP id d12mr13973193lfq.165.1592232824604;
        Mon, 15 Jun 2020 07:53:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:96d2:: with SMTP id d18ls2684102ljj.1.gmail; Mon, 15 Jun
 2020 07:53:43 -0700 (PDT)
X-Received: by 2002:a2e:90d0:: with SMTP id o16mr13412048ljg.171.1592232823868;
        Mon, 15 Jun 2020 07:53:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592232823; cv=none;
        d=google.com; s=arc-20160816;
        b=N6ZxqPjj+VQD7LR80jvYPzMdlAnYNv+nMYEhcMAg/xJ3p8eFtwT5WK8WWC4yP3UG4T
         OH6YsRv94eo83OB+3PLBWRQ/MMug3w0Z230KCNXulpKm6UDGUl9Evy4lyQy6873gt6F3
         PS0tKzR28ghnDI0JCXRTRhTn7ZMm/LDsBOVXRK+0W85SX2IJhc7y0rv+laVUSOEqhG1s
         xNgeoGtf2YxY/VDyFz02lSP12DI86CIeMpcSTt7HJpE5GDkVIKKgvNbKgSPmcofr6B+g
         tNDpyx98rriCUXiN8l63Tt2CsJQuHTnlByyVL7oY7NLVObdi/xw+IDgiRPbzvE+XrZE+
         7g/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=TO/UlS5nQwaskSKkWnxhtbr58cxMAZAbeQDdoacE6pI=;
        b=sSq1X5dG5S98JyOkbfqTXLo4ZwEK/tWv99DoP9rv/sVwaOv/49lpBWGoO8eGnuOaM9
         eR4uRDBe47J2H1kgHF23sSJBdak7YImR9dB7OWELodl+s/V1gB38S3O5x/5JfZmW4fYN
         UAKZpEO2TpS3ogxUqTXPihYnPwoNz8X5CuABK3myxTsgF8s+RcQNxTR1S32PnQc0PNfN
         zW3i2EqInveFdt43THzeGnnfHUo8Q7tKfEA+VNwrElrbYhwFUAAkte9Vm7IDxXrvO6kM
         ODJbW96vLyN4jG2VqK+3DSKAo19JKnfyduS8jbtWUstrtlyA9rmxOhbh+pMkB4YwFEZ1
         XX+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pGbdVD61;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id z3si182050lfe.5.2020.06.15.07.53.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2020 07:53:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id u26so195377wmn.1
        for <clang-built-linux@googlegroups.com>; Mon, 15 Jun 2020 07:53:43 -0700 (PDT)
X-Received: by 2002:a7b:c76a:: with SMTP id x10mr13701463wmk.16.1592232823049;
        Mon, 15 Jun 2020 07:53:43 -0700 (PDT)
Received: from google.com ([100.105.32.75])
        by smtp.gmail.com with ESMTPSA id s8sm25864689wrg.50.2020.06.15.07.53.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2020 07:53:42 -0700 (PDT)
Date: Mon, 15 Jun 2020 16:53:36 +0200
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Dmitry Vyukov <dvyukov@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Mark Rutland <mark.rutland@arm.com>, Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Alexander Potapenko <glider@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	the arch/x86 maintainers <x86@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>
Subject: Re: [PATCH -tip v3 1/2] kcov: Make runtime functions
 noinstr-compatible
Message-ID: <20200615145336.GA220132@google.com>
References: <CACT4Y+Zwm47qs8yco0nNoD_hFzHccoGyPznLHkBjAeg9REZ3gA@mail.gmail.com>
 <CANpmjNPNa2f=kAF6c199oYVJ0iSyirQRGxeOBLxa9PmakSXRbA@mail.gmail.com>
 <CACT4Y+Z+FFHFGSgEJGkd+zCBgUOck_odOf9_=5YQLNJQVMGNdw@mail.gmail.com>
 <20200608110108.GB2497@hirez.programming.kicks-ass.net>
 <20200611215538.GE4496@worktop.programming.kicks-ass.net>
 <CACT4Y+aKVKEp1yoBYSH0ebJxeqKj8TPR9MVtHC1Mh=jgX0ZvLw@mail.gmail.com>
 <20200612114900.GA187027@google.com>
 <CACT4Y+bBtCbEk2tg60gn5bgfBjARQFBgtqkQg8VnLLg5JwyL5g@mail.gmail.com>
 <CANpmjNM+Tcn40MsfFKvKxNTtev-TXDsosN+z9ATL8hVJdK1yug@mail.gmail.com>
 <20200615142949.GT2531@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200615142949.GT2531@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.13.2 (2019-12-18)
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pGbdVD61;       spf=pass
 (google.com: domain of elver@google.com designates 2a00:1450:4864:20::342 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Mon, 15 Jun 2020, Peter Zijlstra wrote:

> On Mon, Jun 15, 2020 at 09:53:06AM +0200, Marco Elver wrote:
> > 
> > Disabling KCOV for smp_processor_id now moves the crash elsewhere. In
> > the case of KASAN into its 'memcpy' wrapper, called after
> > __this_cpu_read in fixup_bad_iret. This is making me suspicious,
> > because it shouldn't be called from the noinstr functions.
> 
> With your .config, objtool complains about exactly that though:
> 
> vmlinux.o: warning: objtool: fixup_bad_iret()+0x8e: call to memcpy() leaves .noinstr.text section
> 
> The utterly gruesome thing below 'cures' that.

Is __memcpy() generally available? I think that bypasses KASAN and
whatever else.

> > For KCSAN the crash still happens in check_preemption_disabled, in the
> > inlined native_save_fl function (apparently on its 'pushf'). If I turn
> > fixup_bad_iret's __this_cpu_read into a raw_cpu_read (to bypass
> > check_preemption_disabled), no more crash with KCSAN.
> 
> vmlinux.o: warning: objtool: debug_smp_processor_id()+0x0: call to __sanitizer_cov_trace_pc() leaves .noinstr.text section
> vmlinux.o: warning: objtool: check_preemption_disabled()+0x1f: call to __sanitizer_cov_trace_pc() leaves .noinstr.text section
> vmlinux.o: warning: objtool: __this_cpu_preempt_check()+0x4: call to __sanitizer_cov_trace_pc() leaves .noinstr.text section
> 
> That could be either of those I suppose, did you have the NOP patches
> on? Let me try... those seem to placate objtool at least.
> 
> I do see a fair amount of __kasan_check*() crud though:
> 
> vmlinux.o: warning: objtool: rcu_nmi_exit()+0x44: call to __kasan_check_read() leaves .noinstr.text section
> vmlinux.o: warning: objtool: rcu_dynticks_eqs_enter()+0x1c: call to __kasan_check_write() leaves .noinstr.text section
> vmlinux.o: warning: objtool: rcu_nmi_enter()+0x46: call to __kasan_check_read() leaves .noinstr.text section
> vmlinux.o: warning: objtool: rcu_dynticks_eqs_exit()+0x21: call to __kasan_check_write() leaves .noinstr.text section
> vmlinux.o: warning: objtool: __rcu_is_watching()+0x1c: call to __kasan_check_read() leaves .noinstr.text section
> vmlinux.o: warning: objtool: debug_locks_off()+0x1b: call to __kasan_check_write() leaves .noinstr.text section
> 
> That wasn't supported to happen with the __no_sanitize patches on (which
> I didn't forget). Aah, I think we've lost a bunch of patches.. /me goes
> rummage.
> 
> This:
> 
>   https://lkml.kernel.org/r/20200603114051.896465666@infradead.org
> 
> that cures the rcu part of that.
> 
> Let me go look at your KCSAN thing now...

I tried to find the stack that is used by the crashing code -- which led
me to entry_stack? So I tried this:

--- a/arch/x86/include/asm/processor.h
+++ b/arch/x86/include/asm/processor.h
@@ -370,7 +370,7 @@ struct x86_hw_tss {
 #define IO_BITMAP_OFFSET_INVALID	(__KERNEL_TSS_LIMIT + 1)
 
 struct entry_stack {
-	unsigned long		words[64];
+	unsigned long		words[128];
 };
 
 struct entry_stack_page {

No more crash. But that's probably not what we want. Just a datapoint.

> ---
> diff --git a/arch/x86/kernel/traps.c b/arch/x86/kernel/traps.c
> index af75109485c26..031a21fb5a741 100644
> --- a/arch/x86/kernel/traps.c
> +++ b/arch/x86/kernel/traps.c
> @@ -675,6 +675,14 @@ struct bad_iret_stack {
>  	struct pt_regs regs;
>  };
>  
> +void __always_inline __badcpy(void *dst, void *src, int nr)
> +{
> +	unsigned long *d = dst, *s = src;
> +	nr /= sizeof(unsigned long);
> +	while (nr--)
> +		*(d++) = *(s++);
> +}
> +

If we can use __memcpy() here, that would probably solve that.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200615145336.GA220132%40google.com.
