Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOF2RCBQMGQE4R6BAUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 170E634D73A
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Mar 2021 20:32:25 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id r79sf4634871lff.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Mar 2021 11:32:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617042744; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZRmfLVmRoF4GeaVG1iSyWakOBn8PhUj5pWiRqFga6Htvj2zzcJDS3xf1BMir3/ZxNM
         5tNB8lG5cLUd2x5NdgZxrSkUJEgeJoe2dPfhcjTcWe9g13n8JQF9AuCB+B4GhTd+VDd6
         TX0g4KFT4Yu4yF6bUXIMgRY+SSqOT2tp2j0dqPy9zp1+xybfLk0+cc14sQITYE5BF+Xl
         ZSHjOc/vHAB1pPRvmf6ERHvPhPOL+B091MtbTQqi00aNwqtKcZ3bib4+osrTTSO93XtC
         +MA5L6qY3E6vG9MpJWB6zlZBCXB9omsbO5VoIO/xsyUTLQ4BD3FjTalxamWHZ+e8MpiE
         FVdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=m7fOw+hf/S6IuwzOJCyOpTsQJVrur8dWmIhOQ8SztVc=;
        b=nl5YsrJr+H114nquVZjEVzTpnUOBOEZO8G21bdxuDCp5BEOKye2gY87XsPUXxCZ6Zj
         uHHHPC1/AGhIFgfBIhZBMjRnpXMhV3zl9dMOimcTTwUCNmKoNCiGaz9L/OErzCl0Cl2f
         S8XNrEV8uDXgeC2xc4OeBvwxKNxAJSm01gbBUEKfuY8SAmpU0Hwet5y9V882HKdvBtn7
         O0pzl6e91QbCXSKO0tMKBvtBnzYT4fLw3IR+AEONDwXJ0t5AO6qBSrnSoqNgk9Jt/OF8
         7u26p+kTbStNUO3mTrp74oA0IrldpvRfmHVj02iZmcMXyhGc7c16D5+jBdC/YCMDoBLZ
         5IsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VGhHMfmT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m7fOw+hf/S6IuwzOJCyOpTsQJVrur8dWmIhOQ8SztVc=;
        b=gz8rWsvJqxCUS84aSk/oxRhvGtZo+Hc4vr8m0K6Tv30NkIUBh7WlFy/IOqQxO+N1Yg
         215Y11slqoZz4RO+jB1CsQ/KyXUPXgDmR1HVXGoKi7MGv0e1YcYVDP8fzgDFj7pCAiRh
         zWiL+LEeGCyNKVBMeSy4UMXA9IAs1fK+DILQ4sXH/QpeLZ8Cnkkz+uaUAZyP2/RuSsIZ
         hNH8DaEdKHp7a9SMGSjOUbbpI9VhJlNo5JRWFRL6bDj8/nm9dJdmLl1qxYzmyJERr+0z
         k+gCW9rYyNESJEjs9h8jUSm983Q0dEMnmVSS8w5117t3r6UJYeKp2nklBQ2LCiaYlO8r
         M+ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m7fOw+hf/S6IuwzOJCyOpTsQJVrur8dWmIhOQ8SztVc=;
        b=IBPIGJ0N1l+D9f7yuMXGKdrQHTcAVfQlIqkNHMeJNorxc3jhVVfRH5MLTBpKmf1kjI
         +kyz9lAc2o7lEGyUmhxUeO/RfVSbcgd91eRuq2FXObEefoli6nOE+GdwA45EFjWANsVq
         T7mOisz40boc3cq9GgGKJtZvCZorcbQd7vw+es1ojr+sxfsS2eh5PMi/MEsS83JE9l7e
         QUkSijHkgsZ2FDfz7Bnho2OYcwTgaqFsKpytPC5tTjZHWE8LuaGJWLaFzSDS4SEXBYfD
         /7jIh4G/RAWwhyqMIL+RpwydQVvfIfbyYieWIWSAwAnL7kmwGjA/n3N2Hwf2pEINEEzr
         slXA==
X-Gm-Message-State: AOAM531RKCWkAkVA2Jwq2Xqh5hYIRo8jz93ialVXE8l3bITZka8reV7c
	O9TeNETADGDQXPvo6PgeYAg=
X-Google-Smtp-Source: ABdhPJzRXFiyLR6d7eEhxO8N3jQKFwANU89bUzEVM6/LDCLobRSBwXR1D+1Se7hWvbbnLoGYzKkNXA==
X-Received: by 2002:a05:6512:33ca:: with SMTP id d10mr16895665lfg.170.1617042744623;
        Mon, 29 Mar 2021 11:32:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls4985417lff.3.gmail; Mon, 29
 Mar 2021 11:32:23 -0700 (PDT)
X-Received: by 2002:a05:6512:b81:: with SMTP id b1mr18297213lfv.345.1617042743598;
        Mon, 29 Mar 2021 11:32:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617042743; cv=none;
        d=google.com; s=arc-20160816;
        b=mJRKAQGYclvMZNOnlBWAKom90TroLh+HifKQuJLR0mhYYvV+J1SCgBo66WGWRC15uT
         YZQh+KM0nRm7cQm4v3aiH1XlPUJUyAyVPr+gofAie//qiIXheoavsO1uTTHeVKOad7ID
         1eC8qbK+pXchKPRmh6YjiWcnAFaCgMcFDVqOFT2RUkGnuSa2Ft4HbOEw6/g4t8xybdiV
         p4E13vyLuMzyDpI6tapJiWouyrlDgd8qz8BXdqNrZIwS5nF+J5vR6hNKocL8pL9wxghN
         ehkOo69cAzVAONcS9G9KPCVHMyGel7IMT5QjLaLST5gf4yt2hasGAg/ZDmEAHZlwfUJh
         G7IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yeNB5sEY4cPt05lVN+HkG1LRzxIjnMB5Dy/N7XWvZCE=;
        b=m5r2gvRHLAtKfmMcubFHUpQMIL3FejFNbI3P1//8Tbs1bJ5YoDQr5wXigRUbO28VtP
         TEDFRhtaB+BdBLlm/gWg7aMALhED1T5E4eY3McX4rEGm9lZ0Y3RoGrIbeuxSrr2jw2jz
         yy1P0Lfpld8FWaKTI6LZi729Tj6igbth+wo51sQ3xdTRNbfnup9WAwQWifISq4Whkvo2
         XP/5Q3+PJfUP3mFigMA9f/qSQ7Bo6bGPukrZukLPBVSwRhpaOtqGytd0N5vMiwt72cAp
         l733Jr77VJrr9DEATMi5JfNQ97EwGytj2ox7Yf2JDtoZBXHqo1xw4/83ks1nJIekwWj6
         E1oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VGhHMfmT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com. [2a00:1450:4864:20::132])
        by gmr-mx.google.com with ESMTPS id v3si773282lfd.4.2021.03.29.11.32.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Mar 2021 11:32:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) client-ip=2a00:1450:4864:20::132;
Received: by mail-lf1-x132.google.com with SMTP id a198so19903363lfd.7
        for <clang-built-linux@googlegroups.com>; Mon, 29 Mar 2021 11:32:23 -0700 (PDT)
X-Received: by 2002:a19:5055:: with SMTP id z21mr17019928lfj.297.1617042743134;
 Mon, 29 Mar 2021 11:32:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210325223807.2423265-1-nathan@kernel.org> <20210325223807.2423265-3-nathan@kernel.org>
In-Reply-To: <20210325223807.2423265-3-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Mar 2021 11:32:12 -0700
Message-ID: <CAKwvOdn3y6DSu8i=3T9ro5KoXVNUuSrJQa-UOQB00z5ASY659Q@mail.gmail.com>
Subject: Re: [PATCH 2/3] riscv: Workaround mcount name prior to clang-13
To: Nathan Chancellor <nathan@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, linux-riscv@lists.infradead.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VGhHMfmT;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132
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

On Thu, Mar 25, 2021 at 3:38 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Prior to clang 13.0.0, the RISC-V name for the mcount symbol was
> "mcount", which differs from the GCC version of "_mcount", which results
> in the following errors:
>
> riscv64-linux-gnu-ld: init/main.o: in function `__traceiter_initcall_level':
> main.c:(.text+0xe): undefined reference to `mcount'
> riscv64-linux-gnu-ld: init/main.o: in function `__traceiter_initcall_start':
> main.c:(.text+0x4e): undefined reference to `mcount'
> riscv64-linux-gnu-ld: init/main.o: in function `__traceiter_initcall_finish':
> main.c:(.text+0x92): undefined reference to `mcount'
> riscv64-linux-gnu-ld: init/main.o: in function `.LBB32_28':
> main.c:(.text+0x30c): undefined reference to `mcount'
> riscv64-linux-gnu-ld: init/main.o: in function `free_initmem':
> main.c:(.text+0x54c): undefined reference to `mcount'
>
> This has been corrected in https://reviews.llvm.org/D98881 but the
> minimum supported clang version is 10.0.1. To avoid build errors and to
> gain a working function tracer, adjust the name of the mcount symbol for
> older versions of clang in mount.S and recordmcount.pl.
>
> Cc: stable@vger.kernel.org
> Link: https://github.com/ClangBuiltLinux/linux/issues/1331
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Thanks for keeping this alive on clang-10, and resolving it for future releases!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/riscv/include/asm/ftrace.h | 14 ++++++++++++--
>  arch/riscv/kernel/mcount.S      | 10 +++++-----
>  scripts/recordmcount.pl         |  2 +-
>  3 files changed, 18 insertions(+), 8 deletions(-)
>
> diff --git a/arch/riscv/include/asm/ftrace.h b/arch/riscv/include/asm/ftrace.h
> index 845002cc2e57..04dad3380041 100644
> --- a/arch/riscv/include/asm/ftrace.h
> +++ b/arch/riscv/include/asm/ftrace.h
> @@ -13,9 +13,19 @@
>  #endif
>  #define HAVE_FUNCTION_GRAPH_RET_ADDR_PTR
>
> +/*
> + * Clang prior to 13 had "mcount" instead of "_mcount":
> + * https://reviews.llvm.org/D98881
> + */
> +#if defined(CONFIG_CC_IS_GCC) || CONFIG_CLANG_VERSION >= 130000
> +#define MCOUNT_NAME _mcount
> +#else
> +#define MCOUNT_NAME mcount
> +#endif
> +
>  #define ARCH_SUPPORTS_FTRACE_OPS 1
>  #ifndef __ASSEMBLY__
> -void _mcount(void);
> +void MCOUNT_NAME(void);
>  static inline unsigned long ftrace_call_adjust(unsigned long addr)
>  {
>         return addr;
> @@ -36,7 +46,7 @@ struct dyn_arch_ftrace {
>   * both auipc and jalr at the same time.
>   */
>
> -#define MCOUNT_ADDR            ((unsigned long)_mcount)
> +#define MCOUNT_ADDR            ((unsigned long)MCOUNT_NAME)
>  #define JALR_SIGN_MASK         (0x00000800)
>  #define JALR_OFFSET_MASK       (0x00000fff)
>  #define AUIPC_OFFSET_MASK      (0xfffff000)
> diff --git a/arch/riscv/kernel/mcount.S b/arch/riscv/kernel/mcount.S
> index 8a5593ff9ff3..6d462681c9c0 100644
> --- a/arch/riscv/kernel/mcount.S
> +++ b/arch/riscv/kernel/mcount.S
> @@ -47,8 +47,8 @@
>
>  ENTRY(ftrace_stub)
>  #ifdef CONFIG_DYNAMIC_FTRACE
> -       .global _mcount
> -       .set    _mcount, ftrace_stub
> +       .global MCOUNT_NAME
> +       .set    MCOUNT_NAME, ftrace_stub
>  #endif
>         ret
>  ENDPROC(ftrace_stub)
> @@ -78,7 +78,7 @@ ENDPROC(return_to_handler)
>  #endif
>
>  #ifndef CONFIG_DYNAMIC_FTRACE
> -ENTRY(_mcount)
> +ENTRY(MCOUNT_NAME)
>         la      t4, ftrace_stub
>  #ifdef CONFIG_FUNCTION_GRAPH_TRACER
>         la      t0, ftrace_graph_return
> @@ -124,6 +124,6 @@ do_trace:
>         jalr    t5
>         RESTORE_ABI_STATE
>         ret
> -ENDPROC(_mcount)
> +ENDPROC(MCOUNT_NAME)
>  #endif
> -EXPORT_SYMBOL(_mcount)
> +EXPORT_SYMBOL(MCOUNT_NAME)
> diff --git a/scripts/recordmcount.pl b/scripts/recordmcount.pl
> index a36df04cfa09..7b83a1aaec98 100755
> --- a/scripts/recordmcount.pl
> +++ b/scripts/recordmcount.pl
> @@ -392,7 +392,7 @@ if ($arch eq "x86_64") {
>      $mcount_regex = "^\\s*([0-9a-fA-F]+):.*\\s_mcount\$";
>  } elsif ($arch eq "riscv") {
>      $function_regex = "^([0-9a-fA-F]+)\\s+<([^.0-9][0-9a-zA-Z_\\.]+)>:";
> -    $mcount_regex = "^\\s*([0-9a-fA-F]+):\\sR_RISCV_CALL(_PLT)?\\s_mcount\$";
> +    $mcount_regex = "^\\s*([0-9a-fA-F]+):\\sR_RISCV_CALL(_PLT)?\\s_?mcount\$";
>      $type = ".quad";
>      $alignment = 2;
>  } elsif ($arch eq "nds32") {
> --
> 2.31.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210325223807.2423265-3-nathan%40kernel.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn3y6DSu8i%3D3T9ro5KoXVNUuSrJQa-UOQB00z5ASY659Q%40mail.gmail.com.
