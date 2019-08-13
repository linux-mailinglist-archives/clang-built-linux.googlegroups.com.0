Return-Path: <clang-built-linux+bncBDYNJBOFRECBB77KZHVAKGQEM4UCLQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id B39728B27E
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 10:31:59 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id a5sf66027862edx.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 01:31:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565685119; cv=pass;
        d=google.com; s=arc-20160816;
        b=KkWtzXx1TlpBaEKFXKWGZZSj7ZHh8twz0GdMaWi6XLTWMH5mQvnZ5Z2cyvXb4k3h9x
         N5vsHPZckdAGl02fpoX96duj6iL8GuyAnray90GxMJ1r1wON3Vv9Okzx811Yxoo6Ajxj
         X7VnjnI6Xqjpz5bqDPvp6kQsgF8zvw4Ogy1chZAxLVgE9pnWCUQMfb+nWw939tsPSNN7
         xcYmhhBtE0JOQdEC36wEx8VfyYPKGVl2DiiIh4gfIXEPCK4ON9wvpNkpX0aa70EzU7PD
         Bb2PZ//IRU+t1vc33HqJpKIGBch5fDeNP4tyuOGVWVgHft0DtXcmbyvWvN7WDqmeyzeu
         LqaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=EbCH4J4EUJWrIrCOC6yoZRLI9dsAN0XZgiBLjUdkwYI=;
        b=yBzT1bHQEcU1lnIZumWxCh4iVzMMUBQJkeioeGm0EtqWXjDJwqoJuSmSWHV5e++oqs
         tIYAj9NCfzxiC2G8u24WABbbXNW0heeKW8tUpKgRYgOK0BYqTvqwuTdwhPyM7+a3Uc9C
         pCgUDAUquqSnR+XBEoBJXb8XD+lRzJPnDJ4uTarQdqkbox9zrB3yB6yp+XWWnDG5Ogft
         LzBRwmDP3dlDieO8nGg6ASvvq6UU/vLt3r80xlM2PTaU5WvxfuBZlSPT5m+YU7+qHA7l
         nRCeRzbaJkjfR5cDj6QUJjA4AH4u/zFWlwdkRarJfxpuWgtTCiR3P5Vxsv1bWspC9SlP
         Y+6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=acNaPAbF;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EbCH4J4EUJWrIrCOC6yoZRLI9dsAN0XZgiBLjUdkwYI=;
        b=GT0GGwAdgzqYxCsQGo6Uag/Z87vEPkiNEy4DkVEUrJcf1wP/oIqagBwzzjA2QVJ+jl
         Z0uGnVvrCssSfhsNGoMd+jMrAFBqPoO/7f/PGuta9eCw/Lm1j/9ToejPliZX1gI3PVd+
         TdeAAVfeW8qlmtjLm3KnddmMOv+O2guWyWE0Nj0PGvbHhgzQl/wC73QNkh4ztOQGgSl7
         knZ8XvVJU+TaEBOuT+zizXNjnwnoHoU74E4JxBHXbU787hBauXh5bqWcP8I0huv3xk86
         hHlba1Q3sAC5oTjD6Phm5mFDSgN+LVTYBwWPD5fqsyaxd4CzmIUPLfEwvx0BaeXOLBJX
         VnXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EbCH4J4EUJWrIrCOC6yoZRLI9dsAN0XZgiBLjUdkwYI=;
        b=JNLnv85WB/pXOZ5JbTAIfkd7/thfoiV7UN67EPwzeKGwPg6NkyFZV90XCyIVaQs8bJ
         FMjMHOE5KcPDP6n62xHoejYvyYuv883FBXdBQqMH0sp0j+yzLC10+CIxtByQBPxK1Dq4
         2xrSRoPO4QG5J1oQTvL3YkgYtkO0nsxQNhsWNXEtV9K2FIhyehSo3z71bKU7/LfVCnf5
         tXxZTBjc2k1a8CbPTUDL8WyWRIY6Kgs5HzDi7IkZbp4CMtv2XF6cMa1p/pCbX3zQqiBc
         M8ilzWTma2nniy4TpmwQ4Sv3rGLjD3yOg8UZ7BycmxEiC4koK/CGIUjYvCvVVferybxP
         YuIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUWDxpVi1/uQupEalcG/7e5sELjrtzipaRm91tqjjmKhD8y0MiC
	+w254EadHsOHVXjKxnk3Gg4=
X-Google-Smtp-Source: APXvYqzjyzSjdjBMcqpmVCgU6bO0PJzmwerxZFnaBbx063jVwnsbJ3AnWIhh+kLwX5KHHIvBB7LQKQ==
X-Received: by 2002:a17:906:69c4:: with SMTP id g4mr35435167ejs.9.1565685119453;
        Tue, 13 Aug 2019 01:31:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:995c:: with SMTP id l28ls2147325edb.14.gmail; Tue, 13
 Aug 2019 01:31:59 -0700 (PDT)
X-Received: by 2002:a50:b165:: with SMTP id l34mr6016201edd.179.1565685119064;
        Tue, 13 Aug 2019 01:31:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565685119; cv=none;
        d=google.com; s=arc-20160816;
        b=x7BLlW3aeexwb1YxeiXbliByu7OagrEhMjrec4Gx9yJVu4y6KhF2Lnk9RJ+nR22wyZ
         iHvqAH6vvxr6DuZXF+k8hz1GAVnzm0f9GrJZ8oizH0Xw1Z6SLgrC8GblhKQoMcAsGErb
         aibejym0ZjbBPFvEhPQ8zjiRjCjPIMKOXnLMbacGyX/32gs7Nu/FIw2+pk9CVxqWjAJW
         MmBNPUFoq3mEWTK8O6/FVSzpUwS1N+gpWyLPQGZVLjvmaqe1pjWlawjXt1FcuFEqOydA
         6lCMcfvlInuL4epuU72dmg3l0z2v26lA3mgkC3gRnnWCOd5ssqKwGliiI9cuwNAMzNU1
         j4GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0QbJTF6ciLKRmZxEuda+VOf6c194zJW7ysHECDfJ69Y=;
        b=w3vXG4XvT4Fp75dbYtKpyhD4UgrjvGlR3/oa/yBNev6m+XgUtIMpfqeCXAYOpZnRDm
         NoSGIN8g8d4F+9O7QTs3Gketi/Gd/NN4DyC7umlR8Q8lfp8CYvDNoTmb7UHXYoKaW8z/
         M5rzt14GZLYNXuJRFThJ2iWxKIbPDsFlUZaQDXBocpW0qq7kHlGNMGCtFUn0f12IPDd1
         h4WdfG3Ez3QW37YrRAy6gsfCJ9vu1WmxlzcksXkxPwC8JP3CyZUcJkmif0dvXrdyacgG
         jTi2T6LkVjihWgEVeqdRgqiWJZvTOpjLOYLeijHUlMnuebjnJCgNHVjsegm/wepdJTUi
         SJRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=acNaPAbF;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id m16si369588edv.2.2019.08.13.01.31.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 01:31:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id z23so684373wmf.2
        for <clang-built-linux@googlegroups.com>; Tue, 13 Aug 2019 01:31:58 -0700 (PDT)
X-Received: by 2002:a05:600c:231a:: with SMTP id 26mr1670234wmo.136.1565685118604;
 Tue, 13 Aug 2019 01:31:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com> <20190812215052.71840-14-ndesaulniers@google.com>
In-Reply-To: <20190812215052.71840-14-ndesaulniers@google.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 13 Aug 2019 11:31:47 +0300
Message-ID: <CAKv+Gu8jzYtdeT-f4rOCU0NDvmzdvRtUi-GTnH68Y6BHpoYJnQ@mail.gmail.com>
Subject: Re: [PATCH 14/16] include/linux: prefer __section from compiler_attributes.h
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, yhs@fb.com, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Lai Jiangshan <jiangshanlai@gmail.com>, 
	"Paul E. McKenney" <paulmck@linux.ibm.com>, Josh Triplett <josh@joshtriplett.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@kernel.org>, "Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Nicholas Piggin <npiggin@gmail.com>, Jiri Kosina <jkosina@suse.cz>, Will Deacon <will@kernel.org>, 
	Michael Ellerman <mpe@ellerman.id.au>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Hans Liljestrand <ishkamiel@gmail.com>, Elena Reshetova <elena.reshetova@intel.com>, 
	David Windsor <dwindsor@gmail.com>, Marc Zyngier <maz@kernel.org>, Ming Lei <ming.lei@redhat.com>, 
	Dou Liyang <douliyangs@gmail.com>, Julien Thierry <julien.thierry.kdev@gmail.com>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Jens Axboe <axboe@kernel.dk>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Linux-Sparse <linux-sparse@vger.kernel.org>, 
	rcu@vger.kernel.org, "<netdev@vger.kernel.org>" <netdev@vger.kernel.org>, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ard.biesheuvel@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=acNaPAbF;       spf=pass
 (google.com: domain of ard.biesheuvel@linaro.org designates
 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Tue, 13 Aug 2019 at 00:53, Nick Desaulniers <ndesaulniers@google.com> wrote:
>

This patch needs a commit log that describes the reason for making this change.

> Link: https://github.com/ClangBuiltLinux/linux/issues/619
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKv%2BGu8jzYtdeT-f4rOCU0NDvmzdvRtUi-GTnH68Y6BHpoYJnQ%40mail.gmail.com.
