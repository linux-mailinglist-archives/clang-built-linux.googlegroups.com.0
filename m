Return-Path: <clang-built-linux+bncBDYJPJO25UGBBN7TQOFAMGQEDXKYLFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F79A40B832
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:36:24 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id g70-20020a1c2049000000b00303d06c20b2sf1567221wmg.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:36:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631648184; cv=pass;
        d=google.com; s=arc-20160816;
        b=WxpisQ230u1DOkJ15RtIvnEuZpGY9YwFVIyFIcPuQMynovVicv2EAdSiNjTWw0VA20
         QmcZUizfOQR8TspCUGVp0hgsaNOSsve2a5t9NGIj5UdqMBbJYJzeeuop4BLCruI0SRaT
         /Yb2XBFSDu+pmbg8uR5nXZWqxnExtvIUrYnD8ZHxg/7TgQU3hivgHI47yKGGwEvfUjKe
         c+1B+tI/A0Kej5kQt1WlKHSzlC5HKJmRRSdmo8HfjdTMgihWEdAR0PBYt3ADzcgO5eL7
         N7SFICKzA1YH8s6rylh70z/CkKGeEj7HQLU+IIMd0q/ohwHRw+iUfoW/s3ri5Rgay89r
         qTvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=u176sPX8SjC68XdLYfAQHDFS/LhpyqW9Cuvrk+bEimc=;
        b=pLYrbMhFr/j4GzFC0Mqji4NDYbykmoYN8ajisHDSReTa8vTVIs80DXtbE/8nl1vA2g
         hIr9BCMrEv5ayKxrQyb4zuonOO9u1bvnV1JcXIZ0WDF8aPDOz/g+yPxCja3wwbIZyZD3
         +nD4Nlg2CDcO6UiwdZxfAlJtpjLk1ew2dmyopQKelaNJQVboAniP7Z1OifuXLzu8gzDv
         I3Yi7MQ77UznWD/T+1ULoZexEfzQhJBoYp/VHufMdSQLPe6wDFTTlwmpAAk+gtsXw27z
         ASDKevnCWGRdbXpmbrosx53/VZ01K9u3DhJi1a5llzVstbAV5LovdSfgo7rud0S+T8Kb
         03+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=F83eSKq4;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u176sPX8SjC68XdLYfAQHDFS/LhpyqW9Cuvrk+bEimc=;
        b=BBIEetC1G7BBLK8k4WamiR4BRCO8gyC0os16yrdUDHzvC5slcgtak51BUiRsqiTtkB
         irBxDBXC/tW2eK3JAwUc3ScwAw0O5JstfEtf0QWBEF++qV6G9cXAlEjMesVjAx6dMrWI
         P9rKzY+qHIE19e1VtkTHa/Q8c95NkQ+6OpeqIwFdx0Criv8ZzHbSHhfEbSVzVmKogqH4
         4uQKlB/VG5+E9qcOnSWdK6t8bgn9heC4oKy0Ufi0RqZjTqw6F4b4vCcS0l/Jh7BglSdm
         pWxmOKtnSQjM2P+txv3jWifaP8p0Ffsk1DCX7LQZcc+SKI1XD/nEvkGF7huMBhuxNLJG
         IG0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u176sPX8SjC68XdLYfAQHDFS/LhpyqW9Cuvrk+bEimc=;
        b=XvX5rViykg6wwPoVYFgSQyMLHc4EcvZxiZqXZCF6l6/WSdSGl6UHDALgH+KTV+SmVo
         lCax/HWXsDnMLLNfksmM67Kuq2ImyOVMdF5trL//A8OXSbc+EPeplWHQ0F0ZZ/3jkafA
         yBst/Il15xif1HnNgBXKxmohYohwjTT9t2tFx69RiP62b+9ku4fRtGlQydHImloEeSWD
         Qf4MgosUNV1XmDiCco4qZqMKoiMYVaz0c6dUyNTcrbB1YA+2YSXf+pNVDS3yZRv82m2s
         tpvg0jsOYvnATegVQ+84P/JiE7dyikjFdxOnBgVjSwQx2R1Rf2yKcsTdYcbLl3ddRumB
         MS1A==
X-Gm-Message-State: AOAM533Dgf2eKXfNqsQp8lGCIj7rAV4wADl2ASQQhhXXOkx24TQ6M7pD
	lJ/5mZ7xRzXyGfdsesk6Aew=
X-Google-Smtp-Source: ABdhPJxY1KF4COLEYIirRI2Ki7+bG+xxKeMba0xsV5BwfSyRSUaEgltgTWfFIfSOrPeyhnRVRZocsA==
X-Received: by 2002:adf:c501:: with SMTP id q1mr924805wrf.150.1631648183890;
        Tue, 14 Sep 2021 12:36:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:c789:: with SMTP id l9ls62189wrg.1.gmail; Tue, 14 Sep
 2021 12:36:23 -0700 (PDT)
X-Received: by 2002:adf:e0cc:: with SMTP id m12mr937414wri.62.1631648182962;
        Tue, 14 Sep 2021 12:36:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631648182; cv=none;
        d=google.com; s=arc-20160816;
        b=ljt9qOuerD6m+JMU3wLBaRvrFB46oXJsUgbNyjgdlUA43H+tv/hUbv6DOetN18khMt
         +/3peqgweeKOB7V4pJ9mzZlK1iGJnVewCnS6R3lknMIWtr9tRNfBWkzV3Al7C1pSsRef
         vNYBMk4ZcSAfJHPB+FNc/9LJXqzZ3vWLGiIvTmc/ojWN+N2kNjLN2O+fk8KHu11m1fHZ
         yXY5pnFbwiqDjA+sHk2TbaiPtqQwpUJ35Zo2CXhoCpfXwEJWX4tINKYraD/MFKp7vm4o
         D11fPcx16WCA1iFWenxXg3iq6fw/PnX+zw8f2oMbg18PWWtLu84tvSwGONjAXKHATttP
         dvYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zRm0lqiAbi6ssQDGfy8o0TiHXCZIhqN7Pmc2NlxMpy8=;
        b=Tn89nltdNZ4QQRpGZVZbOWFVPpK0yB9aG6Ho6m13Z5T9HPxVmRap3xTxs1YLBW6Dyh
         uaxylZ+eb3ljfhe7Tv2jMPo8czHCIlY5jz/Cv/yAjqq1K69q8IEXikrfP4psWtaFC9Nk
         a9soknljykPqKABRVFsrl2i5rtqBWisc1EVuitGU0owkbzoogzhVlm1N6DeUnYyC17iv
         DpePacWDmc4QScqhH1T9lD0rvIygprscWsYiv82d7XYleOxExIQXHEY/RptX6MJtVlaH
         cO+z7zznjYuhNClh4P7dybHMVHiUmMZ5yoiZ9y5IOTjPvoz4jj7wBy9Q3OSjzA5DTkoH
         xzkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=F83eSKq4;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com. [2a00:1450:4864:20::229])
        by gmr-mx.google.com with ESMTPS id a15si194950wmd.1.2021.09.14.12.36.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:36:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229 as permitted sender) client-ip=2a00:1450:4864:20::229;
Received: by mail-lj1-x229.google.com with SMTP id h1so636324ljl.9
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:36:22 -0700 (PDT)
X-Received: by 2002:a2e:750e:: with SMTP id q14mr16681926ljc.338.1631648182493;
 Tue, 14 Sep 2021 12:36:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com> <20210914191045.2234020-5-samitolvanen@google.com>
In-Reply-To: <20210914191045.2234020-5-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 14 Sep 2021 12:36:11 -0700
Message-ID: <CAKwvOdnTeTLcrjPy5QcshSLr0Cc2uj7_hTt70j37eEBZzxr=PA@mail.gmail.com>
Subject: Re: [PATCH v3 04/16] cfi: Add DEFINE_CFI_IMMEDIATE_RETURN_STUB
To: Sami Tolvanen <samitolvanen@google.com>
Cc: x86@kernel.org, Kees Cook <keescook@chromium.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=F83eSKq4;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229
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

On Tue, Sep 14, 2021 at 12:10 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> This change introduces the DEFINE_CFI_IMMEDIATE_RETURN_STUB macro,
> which defines a stub function that immediately returns and when
> defined in the core kernel, always passes indirect call checking
> with CONFIG_CFI_CLANG. Note that this macro should only be used when
> a stub cannot be called using the correct function type.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  include/asm-generic/vmlinux.lds.h | 11 +++++++++++
>  include/linux/cfi.h               | 14 ++++++++++++++
>  kernel/cfi.c                      | 24 +++++++++++++++++++++++-
>  3 files changed, 48 insertions(+), 1 deletion(-)
>
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index f2984af2b85b..5b77284f7221 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -407,6 +407,16 @@
>         KEEP(*(.static_call_tramp_key))                                 \
>         __stop_static_call_tramp_key = .;
>
> +#ifdef CONFIG_CFI_CLANG
> +#define CFI_EXCLUDED_DATA                                              \
> +       . = ALIGN(8);                                                   \
> +       __start_cfi_excluded = .;                                       \
> +       KEEP(*(.cfi_excluded_stubs))                                    \
> +       __stop_cfi_excluded = .;
> +#else
> +#define CFI_EXCLUDED_DATA
> +#endif
> +
>  /*
>   * Allow architectures to handle ro_after_init data on their
>   * own by defining an empty RO_AFTER_INIT_DATA.
> @@ -430,6 +440,7 @@
>                 __start_rodata = .;                                     \
>                 *(.rodata) *(.rodata.*)                                 \
>                 SCHED_DATA                                              \
> +               CFI_EXCLUDED_DATA                                       \
>                 RO_AFTER_INIT_DATA      /* Read only after init */      \
>                 . = ALIGN(8);                                           \
>                 __start___tracepoints_ptrs = .;                         \
> diff --git a/include/linux/cfi.h b/include/linux/cfi.h
> index 879744aaa6e0..9ebf67a0d421 100644
> --- a/include/linux/cfi.h
> +++ b/include/linux/cfi.h
> @@ -20,6 +20,18 @@ extern void __cfi_check(uint64_t id, void *ptr, void *diag);
>  #define __CFI_ADDRESSABLE(fn, __attr) \
>         const void *__cfi_jt_ ## fn __visible __attr = (void *)&fn
>
> +/*
> + * Defines a stub function that returns immediately, and when defined and
> + * referenced in the core kernel, always passes CFI checking. This should
> + * be used only for stubs that cannot be called using the correct function
> + * pointer type, which should be rare.
> + */
> +#define DEFINE_CFI_IMMEDIATE_RETURN_STUB(fn) \
> +       void fn(void) { return; } \
> +       const void *__cfi_excl_ ## fn __visible \
> +               __attribute__((__section__(".cfi_excluded_stubs"))) \

Can we use __section from include/linux/compiler_attributes.h here
rather than open coding the function attribute?

> +               = (void *)&fn
> +
>  #ifdef CONFIG_CFI_CLANG_SHADOW
>
>  extern void cfi_module_add(struct module *mod, unsigned long base_addr);
> @@ -35,6 +47,8 @@ static inline void cfi_module_remove(struct module *mod, unsigned long base_addr
>  #else /* !CONFIG_CFI_CLANG */
>
>  #define __CFI_ADDRESSABLE(fn, __attr)
> +#define DEFINE_CFI_IMMEDIATE_RETURN_STUB(fn) \
> +       void fn(void) { return; }
>
>  #endif /* CONFIG_CFI_CLANG */
>
> diff --git a/kernel/cfi.c b/kernel/cfi.c
> index 9594cfd1cf2c..8d931089141b 100644
> --- a/kernel/cfi.c
> +++ b/kernel/cfi.c
> @@ -278,12 +278,34 @@ static inline cfi_check_fn find_module_check_fn(unsigned long ptr)
>         return fn;
>  }
>
> +extern unsigned long __start_cfi_excluded[];
> +extern unsigned long __stop_cfi_excluded[];
> +
> +static inline bool is_cfi_excluded(unsigned long ptr)
> +{
> +       unsigned long *p = __start_cfi_excluded;
> +
> +       for ( ; p < __stop_cfi_excluded; ++p)
> +               if (*p == ptr)
> +                       return true;
> +
> +       return false;
> +}
> +
> +static void __cfi_pass(uint64_t id, void *ptr, void *diag)
> +{
> +}
> +
>  static inline cfi_check_fn find_check_fn(unsigned long ptr)
>  {
>         cfi_check_fn fn = NULL;
>
> -       if (is_kernel_text(ptr))
> +       if (is_kernel_text(ptr)) {
> +               if (unlikely(is_cfi_excluded(ptr)))
> +                       return __cfi_pass;
> +
>                 return __cfi_check;
> +       }
>
>         /*
>          * Indirect call checks can happen when RCU is not watching. Both
> --
> 2.33.0.309.g3052b89438-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnTeTLcrjPy5QcshSLr0Cc2uj7_hTt70j37eEBZzxr%3DPA%40mail.gmail.com.
