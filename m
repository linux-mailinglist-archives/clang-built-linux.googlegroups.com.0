Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB5OJ5PVAKGQEFL7622I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A7D94C53
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 20:05:42 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id g5sf204570wmh.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 11:05:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566237942; cv=pass;
        d=google.com; s=arc-20160816;
        b=SNzD/10z0ZwpsxTkS76Ut8jw9p+QEBezSoAYuZm3z1w1CUAMatr9k7GNUfVyzQcc5O
         SHgu56NIP9cfq08azb4veEOJG3vJSbhNKV7yV56LL1HIbtovcpyWJBnNXDljoDj5WGS5
         s5NHci82bM1jR4U2o9x3qFEcwkxbFpFDzR4cA/8oanab1w3Kp0wo4/ZOfzg09fV7ZYf2
         Rv0Zs6UuvNvJUrMmfm+2mxSvj8AADcBVZj177zrtyKZjh1bdZqWcTeCspd6TSZ+ZWhiG
         NOWiXUyDCVlJlzGM6mGBujPwGCI2hV2GscxjT4xUwo0TvnzIM9mU5Ht3v+9IEOVthRc1
         4YdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=dWXC7+b1uPrtxLrIbMSkZ6WiZp/AK9WQujVs6NDdG2o=;
        b=P/tlK6BHZDFwmaJtIVjgjZBWRbGbc7au7KdQK3dXnp44wOlmxgfvXtGwR1rb3Y+v2W
         3P2jBjlhEl/mdYCATRdpeEhEaw8/o8lZZXd60jS2HpNeZ+xuLhtL27JVlf6dS9+BbDtM
         uBnlmMHAEM09QYzSX5laDHGZ85sT6Tg20jqpW8DO01bj6oMrlDhEpfkzoOEcLXUW6GRn
         lHT2b/IhGDV0nEX63ZKkwQFQjH63986RiVN8D2DsYM0/JxFGBlOcbA1gjgz74oyeYEqc
         1K+8y+K8Q/hsef2i2Acuxdn3tGfUtam//pHxiZr8VqNIFugfv2mo6Whm8+HsxSEze6zv
         uDPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i+MZ7iZz;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dWXC7+b1uPrtxLrIbMSkZ6WiZp/AK9WQujVs6NDdG2o=;
        b=MJgJYczDM/wNlBZdXTqzHTS0pN/kI1qS1YTfxlIKoSfr9CO5iB0rLgAbpFQszApoBZ
         KS3OwtARLgD+B49iUeGhF32oSHvhpEi5iSQiPi7pn9ljMZWrqpcOOdL809z51+xOUF2w
         BZLtly0ohOtAZzPUB8YQrwiZQJ5uB6asgXoJ6V6ozc5Mp+giM9vHdaxYHOpRUB8Zklpj
         9pUDfyNKwQUaTeiKZqUUI0Ob49tmjYsoRMfd99YfaxNTDzwJXsqF9NHLU5caPf63Afc1
         z+p3q9YTalUA8yIKta+E/ohsjSh3eYZVsZ62Y0cxQ4oXPemdvzJix4tuGCMRkWZSudOz
         Vj2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dWXC7+b1uPrtxLrIbMSkZ6WiZp/AK9WQujVs6NDdG2o=;
        b=WZsiBmtZARFXffEUI7EMz4nXY9q+rxpmRLMaAc2W+jxuF2WfuzrQuIcf08fWbOeIkK
         egUhDF3niiSZ0ffNQsWs4E3vkSjaSJe8YxX7Nwqw2HKYqe8OPLKJE0f9QUGmGDhY9t4Z
         pVZtiDpMBzlyuT+VXekRa5NAAODlQO9VWw8YlyxThiAfMvayr/Iu1Re1Tt4k91gviAHv
         7X6WehxQ7T20cl/O3dyi4cjU82jK6P5ZqaFC4hIHtLG1UpgHeiihoK9Pqk7G9upUq691
         fFvXvLcFcUjD2zVuSk0jN88aeFFEwfRO2jvAqRIkS2EVS+6I+JKniBjzyKAw87WyWS+D
         0oGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dWXC7+b1uPrtxLrIbMSkZ6WiZp/AK9WQujVs6NDdG2o=;
        b=M0ntSoHwnfk7W8iAgx+bXcLhsUkk8siJDKOzef9vrvtAXdYWfn5/UyfcUoWhaY8B84
         PIpejng2DkY9B7M2bq4oyYPYGEfqQwjlA5neYk2fN+s/+gf6kjXObqvaKKTaHiKSk2Im
         FfHZAFqRHJFZcVmOfdP1Jf3vBTdvHk4Pbw1hli6WSdaJG09pyG5KzrplZuvm1z5N4WEM
         bCXuBYWz+Nu7LagWOXmEFiqiW0D3HbwZBnq57IpANaHNKRJfvN4YP5JznuQlalFfa2Qa
         OEPzu3NiobZy+xgUtvtp7BqU47tEqqj/bJO511HQUuyivPoTgFtVdZCfKdfUeNB57Dbh
         41mg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXYM6v8R9l2iGNZq240M8S2WVhJ0UVPIhJusHJYmONymZn8z+e1
	5yZUBCKzU1WJCpRN1e9yxhc=
X-Google-Smtp-Source: APXvYqykGCBnKQR5yIOyIZDQWQndR1NanAao1Lj5U/C00AErRFRpJnm+tzP4eNagvBNW1ST7ujJCfg==
X-Received: by 2002:a5d:4083:: with SMTP id o3mr16305300wrp.150.1566237941884;
        Mon, 19 Aug 2019 11:05:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cc01:: with SMTP id f1ls101702wmh.4.canary-gmail; Mon,
 19 Aug 2019 11:05:41 -0700 (PDT)
X-Received: by 2002:a7b:cd17:: with SMTP id f23mr22430597wmj.177.1566237941235;
        Mon, 19 Aug 2019 11:05:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566237941; cv=none;
        d=google.com; s=arc-20160816;
        b=CIvClukvcdCLjyNtsook0RB7tekRNKWvut2LZIPCHy02hCGgXm+ZMNyZ77mGwbU/iL
         2VECNwGSGZzUuIr4X/ZRPjHLrsebG5pMnNbBO2R/46yASiwDnc2ziPNFZL8LavUOz2fg
         7BhSLaOYDXA4xvg0qPV1HWxl0v47YVp10wcRm1ldvDfcw+csWTnFTXMLeZLwM4NQf5tx
         2no64225hBAKmMmnpcI/hoGIOBG2p+D6K01F8sg9dcP+Wj2NIhQOGQ13eGhRvSQOp125
         VjftS6JeOVjmz+5JWgdIMaQVpE95i6PyxlNnfBnPWiOwSRXjfMij+IvVZgoNpEib7YVL
         epbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SXhIQ/zc6wcO31VB7m35TYOSZfJd3fuQtKqpuHQk6I0=;
        b=znGEECW2gLh0igLK1/SkFX6Bxt6ziEjG/yoGX0nWqF4LI6jwmuOs4z9CMXsn3fEg2O
         uGYpjzgMB1suRMCYHxzoYetKAdVObOpLMdwOpDovuokdCmasoYp6WDPnXbCPL7n6MNKW
         YogVhh/mQa0OLow/d7EKPnWV4ZpMHDYnKO3rB8Rz9PUQiXGzFqCW18VRkTFWn9QrOzUv
         kJ49yTsUByh/hA+S7WBQdnMBEYdb3VEOGavxsAG+7US4uWj+0NuIFXRGA2U5cfxpzX9l
         G6qRfrqB99x1kZnZR6gc84JOdfxA8A5bk4v1Golm9YpFdhlMlRLzDwmSmri0kZ5MkghP
         l52g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i+MZ7iZz;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id p67si568409wme.2.2019.08.19.11.05.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2019 11:05:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id p17so9644943wrf.11
        for <clang-built-linux@googlegroups.com>; Mon, 19 Aug 2019 11:05:41 -0700 (PDT)
X-Received: by 2002:a5d:4101:: with SMTP id l1mr30649034wrp.202.1566237940836;
 Mon, 19 Aug 2019 11:05:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com> <20190812215052.71840-14-ndesaulniers@google.com>
In-Reply-To: <20190812215052.71840-14-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 19 Aug 2019 20:05:28 +0200
Message-ID: <CA+icZUVQ9ZBcrVskN3xOdgZ2Y7UJL_jyGY5LhoHHR7uxESmdmQ@mail.gmail.com>
Subject: Re: [PATCH 14/16] include/linux: prefer __section from compiler_attributes.h
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: akpm@linux-foundation.org, jpoimboe@redhat.com, yhs@fb.com, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Lai Jiangshan <jiangshanlai@gmail.com>, 
	"Paul E. McKenney" <paulmck@linux.ibm.com>, Josh Triplett <josh@joshtriplett.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@kernel.org>, "Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Nicholas Piggin <npiggin@gmail.com>, Jiri Kosina <jkosina@suse.cz>, Will Deacon <will@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Michael Ellerman <mpe@ellerman.id.au>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Hans Liljestrand <ishkamiel@gmail.com>, 
	Elena Reshetova <elena.reshetova@intel.com>, David Windsor <dwindsor@gmail.com>, 
	Marc Zyngier <maz@kernel.org>, Ming Lei <ming.lei@redhat.com>, Dou Liyang <douliyangs@gmail.com>, 
	Julien Thierry <julien.thierry.kdev@gmail.com>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Jens Axboe <axboe@kernel.dk>, 
	linux-kernel@vger.kernel.org, linux-sparse@vger.kernel.org, 
	rcu@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=i+MZ7iZz;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::441
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

On Mon, Aug 12, 2019 at 11:53 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/619
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Tested-by: Sedat Dilek <sedat.dilek@gmail.com> [ Linux v5.3-rc5 ]

Patchset "for-5.3/x86-section-name-escaping" (5 patches):

compiler_attributes.h: add note about __section
include/linux/compiler.h: remove unused KENTRY macro
include/linux: prefer __section from compiler_attributes.h
include/asm-generic: prefer __section from compiler_attributes.h
x86: prefer __section from compiler_attributes.h

Thanks.

- Sedat -

> ---
>  include/linux/cache.h       | 6 +++---
>  include/linux/compiler.h    | 8 ++++----
>  include/linux/cpu.h         | 2 +-
>  include/linux/export.h      | 2 +-
>  include/linux/init_task.h   | 4 ++--
>  include/linux/interrupt.h   | 5 ++---
>  include/linux/sched/debug.h | 2 +-
>  include/linux/srcutree.h    | 2 +-
>  8 files changed, 15 insertions(+), 16 deletions(-)
>
> diff --git a/include/linux/cache.h b/include/linux/cache.h
> index 750621e41d1c..3f4df9eef1e1 100644
> --- a/include/linux/cache.h
> +++ b/include/linux/cache.h
> @@ -28,7 +28,7 @@
>   * but may get written to during init, so can't live in .rodata (via "const").
>   */
>  #ifndef __ro_after_init
> -#define __ro_after_init __attribute__((__section__(".data..ro_after_init")))
> +#define __ro_after_init __section(.data..ro_after_init)
>  #endif
>
>  #ifndef ____cacheline_aligned
> @@ -45,8 +45,8 @@
>
>  #ifndef __cacheline_aligned
>  #define __cacheline_aligned                                    \
> -  __attribute__((__aligned__(SMP_CACHE_BYTES),                 \
> -                __section__(".data..cacheline_aligned")))
> +       __aligned(SMP_CACHE_BYTES)                              \
> +       __section(.data..cacheline_aligned)
>  #endif /* __cacheline_aligned */
>
>  #ifndef __cacheline_aligned_in_smp
> diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> index f0fd5636fddb..5e88e7e33abe 100644
> --- a/include/linux/compiler.h
> +++ b/include/linux/compiler.h
> @@ -24,7 +24,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
>                         long ______r;                                   \
>                         static struct ftrace_likely_data                \
>                                 __aligned(4)                            \
> -                               __section("_ftrace_annotated_branch")   \
> +                               __section(_ftrace_annotated_branch)     \
>                                 ______f = {                             \
>                                 .data.func = __func__,                  \
>                                 .data.file = __FILE__,                  \
> @@ -60,7 +60,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
>  #define __trace_if_value(cond) ({                      \
>         static struct ftrace_branch_data                \
>                 __aligned(4)                            \
> -               __section("_ftrace_branch")             \
> +               __section(_ftrace_branch)               \
>                 __if_trace = {                          \
>                         .func = __func__,               \
>                         .file = __FILE__,               \
> @@ -118,7 +118,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
>         ".popsection\n\t"
>
>  /* Annotate a C jump table to allow objtool to follow the code flow */
> -#define __annotate_jump_table __section(".rodata..c_jump_table")
> +#define __annotate_jump_table __section(.rodata..c_jump_table)
>
>  #else
>  #define annotate_reachable()
> @@ -298,7 +298,7 @@ unsigned long read_word_at_a_time(const void *addr)
>   * visible to the compiler.
>   */
>  #define __ADDRESSABLE(sym) \
> -       static void * __section(".discard.addressable") __used \
> +       static void * __section(.discard.addressable) __used \
>                 __PASTE(__addressable_##sym, __LINE__) = (void *)&sym;
>
>  /**
> diff --git a/include/linux/cpu.h b/include/linux/cpu.h
> index fcb1386bb0d4..186bbd79d6ce 100644
> --- a/include/linux/cpu.h
> +++ b/include/linux/cpu.h
> @@ -166,7 +166,7 @@ void cpu_startup_entry(enum cpuhp_state state);
>  void cpu_idle_poll_ctrl(bool enable);
>
>  /* Attach to any functions which should be considered cpuidle. */
> -#define __cpuidle      __attribute__((__section__(".cpuidle.text")))
> +#define __cpuidle      __section(.cpuidle.text)
>
>  bool cpu_in_idle(unsigned long pc);
>
> diff --git a/include/linux/export.h b/include/linux/export.h
> index fd8711ed9ac4..808c1a0c2ef9 100644
> --- a/include/linux/export.h
> +++ b/include/linux/export.h
> @@ -104,7 +104,7 @@ struct kernel_symbol {
>   * discarded in the final link stage.
>   */
>  #define __ksym_marker(sym)     \
> -       static int __ksym_marker_##sym[0] __section(".discard.ksym") __used
> +       static int __ksym_marker_##sym[0] __section(.discard.ksym) __used
>
>  #define __EXPORT_SYMBOL(sym, sec)                              \
>         __ksym_marker(sym);                                     \
> diff --git a/include/linux/init_task.h b/include/linux/init_task.h
> index 6049baa5b8bc..50139505da34 100644
> --- a/include/linux/init_task.h
> +++ b/include/linux/init_task.h
> @@ -51,12 +51,12 @@ extern struct cred init_cred;
>
>  /* Attach to the init_task data structure for proper alignment */
>  #ifdef CONFIG_ARCH_TASK_STRUCT_ON_STACK
> -#define __init_task_data __attribute__((__section__(".data..init_task")))
> +#define __init_task_data __section(.data..init_task)
>  #else
>  #define __init_task_data /**/
>  #endif
>
>  /* Attach to the thread_info data structure for proper alignment */
> -#define __init_thread_info __attribute__((__section__(".data..init_thread_info")))
> +#define __init_thread_info __section(.data..init_thread_info)
>
>  #endif
> diff --git a/include/linux/interrupt.h b/include/linux/interrupt.h
> index 5b8328a99b2a..29debfe4dd0f 100644
> --- a/include/linux/interrupt.h
> +++ b/include/linux/interrupt.h
> @@ -741,8 +741,7 @@ extern int arch_early_irq_init(void);
>  /*
>   * We want to know which function is an entrypoint of a hardirq or a softirq.
>   */
> -#define __irq_entry             __attribute__((__section__(".irqentry.text")))
> -#define __softirq_entry  \
> -       __attribute__((__section__(".softirqentry.text")))
> +#define __irq_entry    __section(.irqentry.text)
> +#define __softirq_entry        __section(.softirqentry.text)
>
>  #endif
> diff --git a/include/linux/sched/debug.h b/include/linux/sched/debug.h
> index 95fb9e025247..e17b66221fdd 100644
> --- a/include/linux/sched/debug.h
> +++ b/include/linux/sched/debug.h
> @@ -42,7 +42,7 @@ extern void proc_sched_set_task(struct task_struct *p);
>  #endif
>
>  /* Attach to any functions which should be ignored in wchan output. */
> -#define __sched                __attribute__((__section__(".sched.text")))
> +#define __sched                __section(.sched.text)
>
>  /* Linker adds these: start and end of __sched functions */
>  extern char __sched_text_start[], __sched_text_end[];
> diff --git a/include/linux/srcutree.h b/include/linux/srcutree.h
> index 9cfcc8a756ae..9de652f4e1bd 100644
> --- a/include/linux/srcutree.h
> +++ b/include/linux/srcutree.h
> @@ -124,7 +124,7 @@ struct srcu_struct {
>  # define __DEFINE_SRCU(name, is_static)                                        \
>         is_static struct srcu_struct name;                              \
>         struct srcu_struct * const __srcu_struct_##name                 \
> -               __section("___srcu_struct_ptrs") = &name
> +               __section(___srcu_struct_ptrs) = &name
>  #else
>  # define __DEFINE_SRCU(name, is_static)                                        \
>         static DEFINE_PER_CPU(struct srcu_data, name##_srcu_data);      \
> --
> 2.23.0.rc1.153.gdeed80330f-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVQ9ZBcrVskN3xOdgZ2Y7UJL_jyGY5LhoHHR7uxESmdmQ%40mail.gmail.com.
