Return-Path: <clang-built-linux+bncBCMIZB7QWENRBGGK5D3AKGQEKRYASMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3577F1EF5E9
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 12:57:30 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id b6sf7177296pfr.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 03:57:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591354649; cv=pass;
        d=google.com; s=arc-20160816;
        b=yzkJjlzjyfz264hDOXstHt9fzlvnjk+tQSHImuQHXVgCInLLXssCaD5JStxsgm2Yqf
         9Ul5NExrXflWxcXXzGkXIlbtsluGIdtNcb2bR+obLcJDzi5P6zda7ZGVI2qNszOc4hVc
         OWi/6VcXuAEARCahy05UIZGdwNFAn8iInnAySX+Yj7JqrIU+0kJeO00QcBaGuMGE2/nR
         eUzdDvjmh9Nki7iI529PIvtxSNclaKr7mQLm+B7E7aJHaNPH8/mi9kZmslRApKrPY1Ap
         y7tXOwP43hYvX1GWmSfhKVszUvdeIe0gkQZiSPhwMXMaihsSmuyaYwIpTCWM+PIzgAfH
         fDcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=NUVo/ClUji6MDOj8sKuM2bA37ODTnFgRiJB3ccGBqqs=;
        b=wjXyazlTAApU663IwHbEAP2s4RE1yQgQmP07HcVE7Y69p+8Nd9KeIq18yyuhXevPhF
         sxlqgBiXdi4SrmbzVrDXi8U8TAecW5Pg2mBN4oWJ/FYhLc3Kt9vGoOHhEdX710lWcNcM
         pYd+yKfqG21CNcwLxOiBIZbRigLXJYuY325s3xnNOwSblTq5VZ5H1zqqkbb5frNyfJC4
         k3u4dnLjiu1w8j3n5K1hjclwnszrSqu+DgvKteaq8mTzHZePJ46rNH0/MAEP57QJMceA
         LbVq7pOZNk6f1IEEt0XQunM00KUjIzPXFxOhqxUT4kkNEFt6Ohv+6ZiEDh5HgHxDb3uL
         pAXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G4xOIGIT;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NUVo/ClUji6MDOj8sKuM2bA37ODTnFgRiJB3ccGBqqs=;
        b=MCFzWFmyZH2LdADFwrewl/TVrtl1S9hRbT7iwcSY2vR4ykYlC7WpH/8Ea665JEyhTh
         fwyAhCMaRV5nCVKF/HAfuQgkTStDJhbGUtRxtKi8S8kZf1sGS6i595gR0R1maWv7AEOM
         a102XMrvLHZFm4QSpGD9fFvW5B7RYjNcwTiHqEFipRMn0TmMUG/fNpjo31/susVL/4j2
         P3GC0MPSrx4fALTr2LJoeki5bNd+WnaBJBT3QYLCQoDoaP4mLiHBic/YYcsvqqjNc1P7
         1ZVGPQD5YXIkFRqYobhZ6WkFo07cUNGqMt+alJQDSBbBUTiVzhzduQR7+VdRnBr1ciaH
         vv+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NUVo/ClUji6MDOj8sKuM2bA37ODTnFgRiJB3ccGBqqs=;
        b=GkFvJy8Hsf0qGZSJn4UPBpmlLcxqyTgLg0xtYg+tJOcBy0xcaspUcshZky1uyIJ850
         3bhoNEkDO8FTchBRKKRxvSrBKrVEeH6U/RAdqUDjWnVVrX+G+tC1oJIjZ0TNaDP5ZP88
         +NAr35ppbZp4ZtdakgN5UNLEqsSb3/7Xy8J0XIGdJQqo1Pj3txZ1vZ5WogOvJyR3h0vy
         ih+pgxfJDVxoxrkrTZK+hAhYOSe1tqy/3lRDGTYfLuVU5Z3mz7urozkA9ior9oDh4DbM
         S3yDOE1YjE3HERGgl72J3OjDQ6dQwScjZen7DoPzHPng/mAvj/xRZcO9y55M0Mrr48v4
         rdbw==
X-Gm-Message-State: AOAM5303kt2d48TADEpocJ7P4rxVj28/CTFT6P1AwjzWOMgPvRY7Dl/f
	GG0NNEAeFN4IdVoI3OKhwwg=
X-Google-Smtp-Source: ABdhPJyuxMkOB8eQLwxJiUlW5Yu1ET/wBkiwasXgrzU7bh8ePzTcUix0q4Fu8cVoyut8a6Tq8LfaCA==
X-Received: by 2002:a63:534d:: with SMTP id t13mr9206546pgl.32.1591354648891;
        Fri, 05 Jun 2020 03:57:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7143:: with SMTP id g3ls4037478pjs.1.gmail; Fri, 05
 Jun 2020 03:57:28 -0700 (PDT)
X-Received: by 2002:a17:90a:fe83:: with SMTP id co3mr2335978pjb.204.1591354648289;
        Fri, 05 Jun 2020 03:57:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591354648; cv=none;
        d=google.com; s=arc-20160816;
        b=JhN48NvycpRdAh1bcCFyH2Fmc64AFuW5LAKarBz2DspkHtichpkliq/RIMpntQxC/Z
         S35S0zyJZIca+oiQB7uMfmyIDUby+Yc6EoZgY9PZSlecTp0U4598OLuY6jCPHObhxF+P
         ypKe5A6X4kYtQ0O3+wAt8rxi9LnSvCH3GRgteZKlvph3FxylYtI2cCmWNtrXmZymoobF
         HtS7rYufQHUBOlEJEDhRIMkEll8PCuM/v6WeSH9prlv2adaL4KE0yyKCj2ffxYt04uoZ
         KTXwfBpgk5FgGng6rojMklxB29EkTD9mWMFuDLC3NcPJrhVD3dgfGguIV9V3p2MAdMb5
         ER5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=l+FRzkDxx24cf0JvfqgWOwJXwQpB0rcy5gXQ1S61x5s=;
        b=EAXHjrt2fyEiKko+9hx2m7mrwFZCYEi8dKd3TlsjhOvNprcvlFmx4m62zlgm8wa639
         V2FH6BewxIICzxfhTsK0SZY1EqMxDQ/VaxyevJqKkVWo5QIqCF2mQJ4/uy+77+UshSBZ
         cuh7oTbba5i6n3GDszTsBhM5ylE+LGENYi7HjAf32QiWKaSDGydeFFIzeFtsQsEinqxU
         UWznZaBBDRtXBxFDCShgu/NMZJisVGE81Py+HUiVydnDy3dAykErpiiQfEvTCVVzSzJP
         bMHdaqo9VJ2FIc6Xci23oFvvyVxndAVEUOZlw+dotMmeGtjbp1u/X0SwRypfh0qKlavn
         3AUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G4xOIGIT;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id g6si629575pjl.1.2020.06.05.03.57.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2020 03:57:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id w90so8021395qtd.8
        for <clang-built-linux@googlegroups.com>; Fri, 05 Jun 2020 03:57:28 -0700 (PDT)
X-Received: by 2002:ac8:260b:: with SMTP id u11mr9415205qtu.380.1591354647018;
 Fri, 05 Jun 2020 03:57:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200605082839.226418-1-elver@google.com>
In-Reply-To: <20200605082839.226418-1-elver@google.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 5 Jun 2020 12:57:15 +0200
Message-ID: <CACT4Y+ZqdZD0YsPHf8UFJT94yq5KGgbDOXSiJYS0+pjgYDsx+A@mail.gmail.com>
Subject: Re: [PATCH -tip v3 1/2] kcov: Make runtime functions noinstr-compatible
To: Marco Elver <elver@google.com>, Mark Rutland <mark.rutland@arm.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Borislav Petkov <bp@alien8.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Alexander Potapenko <glider@google.com>, 
	Andrey Konovalov <andreyknvl@google.com>, kasan-dev <kasan-dev@googlegroups.com>, 
	LKML <linux-kernel@vger.kernel.org>, "the arch/x86 maintainers" <x86@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=G4xOIGIT;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::841
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Fri, Jun 5, 2020 at 10:28 AM Marco Elver <elver@google.com> wrote:
>
> While we lack a compiler attribute to add to noinstr that would disable
> KCOV, make the KCOV runtime functions return if the caller is in a
> noinstr section, and mark them noinstr.
>
> Declare write_comp_data() as __always_inline to ensure it is inlined,
> which also reduces stack usage and removes one extra call from the
> fast-path.
>
> In future, our compilers may provide an attribute to implement
> __no_sanitize_coverage, which can then be added to noinstr, and the
> checks added in this patch can be guarded by an #ifdef checking if the
> compiler has such an attribute or not.

Adding noinstr attribute to instrumentation callbacks looks fine to me.

But I don't understand the within_noinstr_section part.
As the cover letter mentions, kcov callbacks don't do much and we
already have it inserted and called. What is the benefit of bailing
out a bit earlier rather than letting it run to completion?
Is the only reason for potential faults on access to the vmalloc-ed
region? If so, I think the right approach is to eliminate the faults
(if it's possible). We don't want faults for other reasons: they
caused recursion on ARM and these callbacks are inserted into lots of
sensitive code, so I am not sure checking only noinstr will resolve
all potential issues. E.g. we may get a deadlock if we fault from a
code that holds some lock, or we still can get that recursion on ARM (
I don't think all of page fault handling code is noinstr).
The fact that we started getting faults again (did we?) looks like a
regression related to remote KCOV.
Andrey, Mark, do you know if it's possible to pre-fault these areas?
The difference is that they run in a context of kernel threads. Maybe
we could do kcov_fault_in_area when we activate and remove KCOV on an
area? This way we get all faults in a very well-defined place (which
is not noinstr and holds known locks).



> Signed-off-by: Marco Elver <elver@google.com>
> ---
> Applies to -tip only currently, because of the use of instrumentation.h
> markers.
>
> v3:
> * Remove objtool hack, and instead properly mark __sanitizer_cov
>   functions as noinstr.
> * Add comment about .entry.text.
>
> v2: https://lkml.kernel.org/r/20200604145635.21565-1-elver@google.com
> * Rewrite based on Peter's and Andrey's feedback -- v1 worked because we
>   got lucky. Let's not rely on luck, as it will be difficult to ensure the
>   same conditions remain true in future.
>
> v1: https://lkml.kernel.org/r/20200604095057.259452-1-elver@google.com
>
> Note: There are a set of KCOV patches from Andrey in -next:
> https://lkml.kernel.org/r/cover.1585233617.git.andreyknvl@google.com --
> Git cleanly merges this patch with those patches, and no merge conflict
> is expected.
> ---
>  kernel/kcov.c | 59 +++++++++++++++++++++++++++++++++++++++------------
>  1 file changed, 45 insertions(+), 14 deletions(-)
>
> diff --git a/kernel/kcov.c b/kernel/kcov.c
> index 8accc9722a81..84cdc30d478e 100644
> --- a/kernel/kcov.c
> +++ b/kernel/kcov.c
> @@ -6,6 +6,7 @@
>  #include <linux/compiler.h>
>  #include <linux/errno.h>
>  #include <linux/export.h>
> +#include <linux/instrumentation.h>
>  #include <linux/types.h>
>  #include <linux/file.h>
>  #include <linux/fs.h>
> @@ -24,6 +25,7 @@
>  #include <linux/refcount.h>
>  #include <linux/log2.h>
>  #include <asm/setup.h>
> +#include <asm/sections.h>
>
>  #define kcov_debug(fmt, ...) pr_debug("%s: " fmt, __func__, ##__VA_ARGS__)
>
> @@ -172,20 +174,38 @@ static notrace unsigned long canonicalize_ip(unsigned long ip)
>         return ip;
>  }
>
> +/* Return true if @ip is within a noinstr section. */
> +static __always_inline bool within_noinstr_section(unsigned long ip)
> +{
> +       /*
> +        * Note: .entry.text is also considered noinstr, but for now, since all
> +        * .entry.text code lives in .S files, these are never instrumented.
> +        */
> +       return (unsigned long)__noinstr_text_start <= ip &&
> +              ip < (unsigned long)__noinstr_text_end;
> +}
> +
>  /*
>   * Entry point from instrumented code.
>   * This is called once per basic-block/edge.
>   */
> -void notrace __sanitizer_cov_trace_pc(void)
> +void noinstr __sanitizer_cov_trace_pc(void)
>  {
>         struct task_struct *t;
>         unsigned long *area;
> -       unsigned long ip = canonicalize_ip(_RET_IP_);
> +       unsigned long ip;
>         unsigned long pos;
>
> +       if (unlikely(within_noinstr_section(_RET_IP_)))
> +               return;
> +
> +       instrumentation_begin();
> +
>         t = current;
>         if (!check_kcov_mode(KCOV_MODE_TRACE_PC, t))
> -               return;
> +               goto out;
> +
> +       ip = canonicalize_ip(_RET_IP_);
>
>         area = t->kcov_area;
>         /* The first 64-bit word is the number of subsequent PCs. */
> @@ -194,19 +214,27 @@ void notrace __sanitizer_cov_trace_pc(void)
>                 area[pos] = ip;
>                 WRITE_ONCE(area[0], pos);
>         }
> +
> +out:
> +       instrumentation_end();
>  }
>  EXPORT_SYMBOL(__sanitizer_cov_trace_pc);
>
>  #ifdef CONFIG_KCOV_ENABLE_COMPARISONS
> -static void notrace write_comp_data(u64 type, u64 arg1, u64 arg2, u64 ip)
> +static __always_inline void write_comp_data(u64 type, u64 arg1, u64 arg2, u64 ip)
>  {
>         struct task_struct *t;
>         u64 *area;
>         u64 count, start_index, end_pos, max_pos;
>
> +       if (unlikely(within_noinstr_section(ip)))
> +               return;
> +
> +       instrumentation_begin();
> +
>         t = current;
>         if (!check_kcov_mode(KCOV_MODE_TRACE_CMP, t))
> -               return;
> +               goto out;
>
>         ip = canonicalize_ip(ip);
>
> @@ -229,61 +257,64 @@ static void notrace write_comp_data(u64 type, u64 arg1, u64 arg2, u64 ip)
>                 area[start_index + 3] = ip;
>                 WRITE_ONCE(area[0], count + 1);
>         }
> +
> +out:
> +       instrumentation_end();
>  }
>
> -void notrace __sanitizer_cov_trace_cmp1(u8 arg1, u8 arg2)
> +void noinstr __sanitizer_cov_trace_cmp1(u8 arg1, u8 arg2)
>  {
>         write_comp_data(KCOV_CMP_SIZE(0), arg1, arg2, _RET_IP_);
>  }
>  EXPORT_SYMBOL(__sanitizer_cov_trace_cmp1);
>
> -void notrace __sanitizer_cov_trace_cmp2(u16 arg1, u16 arg2)
> +void noinstr __sanitizer_cov_trace_cmp2(u16 arg1, u16 arg2)
>  {
>         write_comp_data(KCOV_CMP_SIZE(1), arg1, arg2, _RET_IP_);
>  }
>  EXPORT_SYMBOL(__sanitizer_cov_trace_cmp2);
>
> -void notrace __sanitizer_cov_trace_cmp4(u32 arg1, u32 arg2)
> +void noinstr __sanitizer_cov_trace_cmp4(u32 arg1, u32 arg2)
>  {
>         write_comp_data(KCOV_CMP_SIZE(2), arg1, arg2, _RET_IP_);
>  }
>  EXPORT_SYMBOL(__sanitizer_cov_trace_cmp4);
>
> -void notrace __sanitizer_cov_trace_cmp8(u64 arg1, u64 arg2)
> +void noinstr __sanitizer_cov_trace_cmp8(u64 arg1, u64 arg2)
>  {
>         write_comp_data(KCOV_CMP_SIZE(3), arg1, arg2, _RET_IP_);
>  }
>  EXPORT_SYMBOL(__sanitizer_cov_trace_cmp8);
>
> -void notrace __sanitizer_cov_trace_const_cmp1(u8 arg1, u8 arg2)
> +void noinstr __sanitizer_cov_trace_const_cmp1(u8 arg1, u8 arg2)
>  {
>         write_comp_data(KCOV_CMP_SIZE(0) | KCOV_CMP_CONST, arg1, arg2,
>                         _RET_IP_);
>  }
>  EXPORT_SYMBOL(__sanitizer_cov_trace_const_cmp1);
>
> -void notrace __sanitizer_cov_trace_const_cmp2(u16 arg1, u16 arg2)
> +void noinstr __sanitizer_cov_trace_const_cmp2(u16 arg1, u16 arg2)
>  {
>         write_comp_data(KCOV_CMP_SIZE(1) | KCOV_CMP_CONST, arg1, arg2,
>                         _RET_IP_);
>  }
>  EXPORT_SYMBOL(__sanitizer_cov_trace_const_cmp2);
>
> -void notrace __sanitizer_cov_trace_const_cmp4(u32 arg1, u32 arg2)
> +void noinstr __sanitizer_cov_trace_const_cmp4(u32 arg1, u32 arg2)
>  {
>         write_comp_data(KCOV_CMP_SIZE(2) | KCOV_CMP_CONST, arg1, arg2,
>                         _RET_IP_);
>  }
>  EXPORT_SYMBOL(__sanitizer_cov_trace_const_cmp4);
>
> -void notrace __sanitizer_cov_trace_const_cmp8(u64 arg1, u64 arg2)
> +void noinstr __sanitizer_cov_trace_const_cmp8(u64 arg1, u64 arg2)
>  {
>         write_comp_data(KCOV_CMP_SIZE(3) | KCOV_CMP_CONST, arg1, arg2,
>                         _RET_IP_);
>  }
>  EXPORT_SYMBOL(__sanitizer_cov_trace_const_cmp8);
>
> -void notrace __sanitizer_cov_trace_switch(u64 val, u64 *cases)
> +void noinstr __sanitizer_cov_trace_switch(u64 val, u64 *cases)
>  {
>         u64 i;
>         u64 count = cases[0];
> --
> 2.27.0.278.ge193c7cf3a9-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BZqdZD0YsPHf8UFJT94yq5KGgbDOXSiJYS0%2BpjgYDsx%2BA%40mail.gmail.com.
