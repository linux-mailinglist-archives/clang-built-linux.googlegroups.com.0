Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAPN3X7QKGQEP2URDIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4142EE751
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 22:00:50 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id h20sf5305635oop.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 13:00:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610053249; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mod10PzzoSkmv5A5Bnc9UdFkbpPVF5s8bPNC+qlkM2nFMXDtSW1UObwNqK0hgO7s3v
         oD8fovxSO0aUzBnYmzqlhx/W3+had7lFYEqp5/yYkDtH8z/H9pM0wm/42s4BozG7dltA
         PZ/BHOTillMp9fRUkPIWrCbwzmPoJSy3p60vxPLqTTlttFW9AKCcTyAadYOa7tPG08wV
         +n9XDnIXEVIAJd9WmY1Ed1h0iB3kv96ZYhLjlXtrZ6wgB6G7MZeRmZF6jitIIwrnEjRs
         5ygiF+rHLVoQqXFhMneF08OMLkjbNl/imbLe9yw/UZWI2o8ekotbkF+nJqsk2kbAqnUV
         MBCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=QA/qAhMYHLOG47Ehl105PhUFTfzAy9EalfP+3Rs34ys=;
        b=a+lAXlxGYWMDS9SlofwxsUFIxI2aw3oiJTL0DRMwx2vSQnPuV275EkIHZCi2Afu7er
         ACopuyCLFIXo9ebbpohupZrXTMXwTaBR5zMKmAk73Z6Bkv2SHNtw4Zg9As67Rb+FV+9Y
         3ByG/VZLzdv2/WkoxjlGVaxQEtv352E9l+YGiL0FkrTBPbzjmMxkShT2Sk6+R0ZEhcZd
         U7eWrfP2IZHsKXDURS18lOnbfOE39fElrQQig4OpVj2evtpvbwolxAs6fDzItHqUvWRG
         ZugqygyWccDqrUt0kqb8p+Vc4SXICsC0JawyWghpmjVQE9qZLA8DVJIlvJ+nV4Gz5gwT
         C4fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i9CtxiGD;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f2e as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QA/qAhMYHLOG47Ehl105PhUFTfzAy9EalfP+3Rs34ys=;
        b=V9typ7L2u1D6D6YwPT/y6NEBzhYUp3UFy+tP9z+inPZSoWza3o52b6gYSQ3B8ZeNv+
         p2lE2wuIsAb/7xKVxeipjjYB+LcM2DGOcXi+Dd/SFbKfveaj1HaT/xDki272RyJc638q
         rlANTUF65kN/zxmxMT81pa+IbatqFAoyc9m5qXROF39XPDaJEFlzIR9mwkz9IKZjDoWT
         JRmdBPXV8reI+DFYyhOG+LD05+uai+tNU5XPlNNXB0SY7/SvX4bWUX6UDiTotmNpeEFu
         gnDtqvXj0QoD7QyFZ8wStU7SKpi+SWmTmplGX8iIhQ9vFHidNyS2NIeC1MwsyLEioyE4
         6OPg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QA/qAhMYHLOG47Ehl105PhUFTfzAy9EalfP+3Rs34ys=;
        b=vWPmRQ3AT2HhvYXcac/UTbk2G1nPT4HGhJpcv0Jhvt9DYCBTTgJlcQyqlC+DFC3gzZ
         zbd17iHkaL1Bmif9l92yr146dWYyQFHDEQxOskth043lR0BmpO5seLJrkAJR6k9X+chJ
         Xt33Zoe1s8ZZcrEHQNuFjumAK3+Wa4SGMZ9nOnrerC8ABC56rKhgvHc8q5nToQWnSNmA
         s3F+xkCQ28Y4KHRKPNl21j1BOEC7nkh8yzQBOOvDifO5x20HcLVSYSf8SD+++8rpmLvT
         J8edOHlJ+RDaz9aHa300YrcF6boOPAtnPV1fp2WJDooXqx2n5umPo4y2Ob7MQXJUlqkK
         W5AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QA/qAhMYHLOG47Ehl105PhUFTfzAy9EalfP+3Rs34ys=;
        b=Nzxvt27FiG12O8mxh3l4vOQErU6c1sNE/qHUNwh1VQcGgVY6Gmr9chlofWwOO4fJmX
         wgOuTP91sJkU4iD6l9PUmQJiOmxzhxSeFHgYhuebjUGbhnF4kdwqZLVj2rUNr8pIRaYw
         FrrY0raWhJWurxRuJp9cla9XIUTe0fSF/W1pUAfepY4TY5RP9r/gTyu8S85PFMMWr1up
         xP5APBuOXBl1qpoNfrbN+H8iNgINyCCkrifw9/9PlncICW0rAGEzu38aDkQJYZVkRdLm
         5nMPlmFqO3OK5YShdlY+jGrk/6IGPaCourtbaGWQn5v7VTQ2gIuajrxHb4ayUzUmcI/Z
         nWMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hjiAAY5D9EZs1Vz+Iz2WpO2UKPDg/bqCcLbzF2TLCwRedl1Cv
	ZbYtet5/Lv6wSxZ5yJHjIn8=
X-Google-Smtp-Source: ABdhPJyNpP0nga+2GdTsD0QPLtBxgcNO/RlkGzx6T/ZbjL553X7VqAuEDjrlIefYUufKUjHcozX09w==
X-Received: by 2002:aca:4a85:: with SMTP id x127mr327278oia.72.1610053249141;
        Thu, 07 Jan 2021 13:00:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:a843:: with SMTP id r64ls2300670oie.2.gmail; Thu, 07 Jan
 2021 13:00:48 -0800 (PST)
X-Received: by 2002:a05:6808:9b2:: with SMTP id e18mr326833oig.100.1610053248736;
        Thu, 07 Jan 2021 13:00:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610053248; cv=none;
        d=google.com; s=arc-20160816;
        b=uQW9VOYbiOHLx3hAPerVUPF/yxTlv1h5mInEwmghxPtb4hM57bNuAK/RQ6NttK6qBc
         QsuWqHFM27GUhPYb8gtnrrq8g5nxjt6qjHw9bVf0DuOV5W7eVf+XkjiyIXnvH9hq+t5Y
         B9MZEt6HlG4BVTvIyHGQVxIh+GlYP/1TFuLTJk+jPhiiBR9drQyeZ4ByCQL5en41yQYL
         WvMh5lYQsBpQb1FHTVUrh7UhihdNJJAxpmBjzyDZIvmUxq33//vnNc9LoIKnidP3ezlC
         wtecPhvyaE+Snkb0h7dwudHH/Piip3yeohZpkyfmhJ8Yjp1to1+V/8rgaCAMWmVbkjiy
         UxCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=unMrV0zhpUV0GILjeHwsieeOs0TVSvZbf5iDIce41oA=;
        b=u1hfbBM0UEVed6TnEsyxB4VKl8kDzjCkk1rd3wqrDUTqEqJomnFLqZKbFS8rDCTBQc
         +5ouTf5ZJbYxub8B6BJuZOvO8cohIPq4/dCA8CpwOSxQnodn2shmek4buBumclA3g3al
         UAxWABhmL6mTxxJzxCFjeRCPyNTAsJNbt6OY38f5xdPoR4QL7dxHzxwLl4YpJ309jC36
         HUL2UgAFpOPpCUTGLTOP2QwLRJV8iSWOKnHHN8q3O5u7kbfmoqIuhuZT9PWeHpXSBN4d
         3twK05E4xJ8nj4zS7LYf6bCo0uK1JHDsGbLZpWs8vFo3JIiQDlb33iEkJoIs2FTAXCV2
         mE4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i9CtxiGD;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f2e as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com. [2607:f8b0:4864:20::f2e])
        by gmr-mx.google.com with ESMTPS id v23si1066833otn.0.2021.01.07.13.00.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 13:00:48 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f2e as permitted sender) client-ip=2607:f8b0:4864:20::f2e;
Received: by mail-qv1-xf2e.google.com with SMTP id az16so3435743qvb.5;
        Thu, 07 Jan 2021 13:00:48 -0800 (PST)
X-Received: by 2002:a0c:d403:: with SMTP id t3mr3799962qvh.4.1610053248333;
        Thu, 07 Jan 2021 13:00:48 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id a203sm3885880qkb.31.2021.01.07.13.00.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 13:00:47 -0800 (PST)
Date: Thu, 7 Jan 2021 14:00:45 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Walter Wu <walter-zh.wu@mediatek.com>
Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>,
	Alexander Potapenko <glider@google.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	kasan-dev@googlegroups.com, linux-mm@kvack.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	wsd_upstream <wsd_upstream@mediatek.com>,
	linux-mediatek@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] kasan: remove redundant config option
Message-ID: <20210107210045.GA1456581@ubuntu-m3-large-x86>
References: <20210107062152.2015-1-walter-zh.wu@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210107062152.2015-1-walter-zh.wu@mediatek.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=i9CtxiGD;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f2e as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Jan 07, 2021 at 02:21:52PM +0800, Walter Wu wrote:
> CONFIG_KASAN_STACK and CONFIG_KASAN_STACK_ENABLE both enable KASAN
> stack instrumentation, but we should only need one config option,
> so that we remove CONFIG_KASAN_STACK_ENABLE. see [1].
> 
> For gcc we could do no prompt and default value y, and for clang
> prompt and default value n.
> 
> [1]: https://bugzilla.kernel.org/show_bug.cgi?id=210221
> 
> Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> Suggested-by: Dmitry Vyukov <dvyukov@google.com>
> Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> Cc: Dmitry Vyukov <dvyukov@google.com>
> Cc: Andrey Konovalov <andreyknvl@google.com>
> Cc: Alexander Potapenko <glider@google.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> ---
>  arch/arm64/kernel/sleep.S        |  2 +-
>  arch/x86/kernel/acpi/wakeup_64.S |  2 +-
>  include/linux/kasan.h            |  2 +-
>  lib/Kconfig.kasan                | 11 ++++-------
>  mm/kasan/common.c                |  2 +-
>  mm/kasan/kasan.h                 |  2 +-
>  mm/kasan/report_generic.c        |  2 +-
>  scripts/Makefile.kasan           | 10 ++++++++--
>  8 files changed, 18 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/arm64/kernel/sleep.S b/arch/arm64/kernel/sleep.S
> index 6bdef7362c0e..7c44ede122a9 100644
> --- a/arch/arm64/kernel/sleep.S
> +++ b/arch/arm64/kernel/sleep.S
> @@ -133,7 +133,7 @@ SYM_FUNC_START(_cpu_resume)
>  	 */
>  	bl	cpu_do_resume
>  
> -#if defined(CONFIG_KASAN) && CONFIG_KASAN_STACK
> +#if defined(CONFIG_KASAN) && defined(CONFIG_KASAN_STACK)
>  	mov	x0, sp
>  	bl	kasan_unpoison_task_stack_below
>  #endif
> diff --git a/arch/x86/kernel/acpi/wakeup_64.S b/arch/x86/kernel/acpi/wakeup_64.S
> index 5d3a0b8fd379..c7f412f4e07d 100644
> --- a/arch/x86/kernel/acpi/wakeup_64.S
> +++ b/arch/x86/kernel/acpi/wakeup_64.S
> @@ -112,7 +112,7 @@ SYM_FUNC_START(do_suspend_lowlevel)
>  	movq	pt_regs_r14(%rax), %r14
>  	movq	pt_regs_r15(%rax), %r15
>  
> -#if defined(CONFIG_KASAN) && CONFIG_KASAN_STACK
> +#if defined(CONFIG_KASAN) && defined(CONFIG_KASAN_STACK)
>  	/*
>  	 * The suspend path may have poisoned some areas deeper in the stack,
>  	 * which we now need to unpoison.
> diff --git a/include/linux/kasan.h b/include/linux/kasan.h
> index 5e0655fb2a6f..35d1e9b2cbfa 100644
> --- a/include/linux/kasan.h
> +++ b/include/linux/kasan.h
> @@ -302,7 +302,7 @@ static inline void kasan_kfree_large(void *ptr, unsigned long ip) {}
>  
>  #endif /* CONFIG_KASAN */
>  
> -#if defined(CONFIG_KASAN) && CONFIG_KASAN_STACK
> +#if defined(CONFIG_KASAN) && defined(CONFIG_KASAN_STACK)
>  void kasan_unpoison_task_stack(struct task_struct *task);
>  #else
>  static inline void kasan_unpoison_task_stack(struct task_struct *task) {}
> diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
> index f5fa4ba126bf..59de74293454 100644
> --- a/lib/Kconfig.kasan
> +++ b/lib/Kconfig.kasan
> @@ -138,9 +138,11 @@ config KASAN_INLINE
>  
>  endchoice
>  
> -config KASAN_STACK_ENABLE
> -	bool "Enable stack instrumentation (unsafe)" if CC_IS_CLANG && !COMPILE_TEST

You are effectively undoing commits 6baec880d7a5 ("kasan: turn off
asan-stack for clang-8 and earlier") and ebb6d35a74ce ("kasan: remove
clang version check for KASAN_STACK") with this change. This change
should still remain around so that all{mod,yes}config remain mostly
clean for clang builds. This should not change anything from the user's
perspective because this option was never user selectable for GCC and
the default y keeps it on.

> +config KASAN_STACK
> +	bool "Enable stack instrumentation (unsafe)"
>  	depends on KASAN_GENERIC || KASAN_SW_TAGS
> +	default y if CC_IS_GCC
> +	default n if CC_IS_CLANG

This is implied and can be removed.

>  	help
>  	  The LLVM stack address sanitizer has a know problem that
>  	  causes excessive stack usage in a lot of functions, see
> @@ -154,11 +156,6 @@ config KASAN_STACK_ENABLE
>  	  CONFIG_COMPILE_TEST.	On gcc it is assumed to always be safe
>  	  to use and enabled by default.
>  
> -config KASAN_STACK
> -	int
> -	default 1 if KASAN_STACK_ENABLE || CC_IS_GCC
> -	default 0
> -
>  config KASAN_SW_TAGS_IDENTIFY
>  	bool "Enable memory corruption identification"
>  	depends on KASAN_SW_TAGS
> diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> index 38ba2aecd8f4..02ec7f81dc16 100644
> --- a/mm/kasan/common.c
> +++ b/mm/kasan/common.c
> @@ -63,7 +63,7 @@ void __kasan_unpoison_range(const void *address, size_t size)
>  	unpoison_range(address, size);
>  }
>  
> -#if CONFIG_KASAN_STACK
> +#if defined(CONFIG_KASAN_STACK)

Isn't '#ifdef CONFIG_...' preferred for CONFIG symbols?

>  /* Unpoison the entire stack for a task. */
>  void kasan_unpoison_task_stack(struct task_struct *task)
>  {
> diff --git a/mm/kasan/kasan.h b/mm/kasan/kasan.h
> index cc4d9e1d49b1..bdfdb1cff653 100644
> --- a/mm/kasan/kasan.h
> +++ b/mm/kasan/kasan.h
> @@ -224,7 +224,7 @@ void *find_first_bad_addr(void *addr, size_t size);
>  const char *get_bug_type(struct kasan_access_info *info);
>  void metadata_fetch_row(char *buffer, void *row);
>  
> -#if defined(CONFIG_KASAN_GENERIC) && CONFIG_KASAN_STACK
> +#if defined(CONFIG_KASAN_GENERIC) && defined(CONFIG_KASAN_STACK)
>  void print_address_stack_frame(const void *addr);
>  #else
>  static inline void print_address_stack_frame(const void *addr) { }
> diff --git a/mm/kasan/report_generic.c b/mm/kasan/report_generic.c
> index 8a9c889872da..137a1dba1978 100644
> --- a/mm/kasan/report_generic.c
> +++ b/mm/kasan/report_generic.c
> @@ -128,7 +128,7 @@ void metadata_fetch_row(char *buffer, void *row)
>  	memcpy(buffer, kasan_mem_to_shadow(row), META_BYTES_PER_ROW);
>  }
>  
> -#if CONFIG_KASAN_STACK
> +#if defined(CONFIG_KASAN_STACK)
>  static bool __must_check tokenize_frame_descr(const char **frame_descr,
>  					      char *token, size_t max_tok_len,
>  					      unsigned long *value)
> diff --git a/scripts/Makefile.kasan b/scripts/Makefile.kasan
> index 1e000cc2e7b4..abf231d209b1 100644
> --- a/scripts/Makefile.kasan
> +++ b/scripts/Makefile.kasan
> @@ -2,6 +2,12 @@
>  CFLAGS_KASAN_NOSANITIZE := -fno-builtin
>  KASAN_SHADOW_OFFSET ?= $(CONFIG_KASAN_SHADOW_OFFSET)
>  
> +ifdef CONFIG_KASAN_STACK
> +	stack_enable := 1
> +else
> +	stack_enable := 0
> +endif
> +
>  ifdef CONFIG_KASAN_GENERIC
>  
>  ifdef CONFIG_KASAN_INLINE
> @@ -27,7 +33,7 @@ else
>  	CFLAGS_KASAN := $(CFLAGS_KASAN_SHADOW) \
>  	 $(call cc-param,asan-globals=1) \
>  	 $(call cc-param,asan-instrumentation-with-call-threshold=$(call_threshold)) \
> -	 $(call cc-param,asan-stack=$(CONFIG_KASAN_STACK)) \
> +	 $(call cc-param,asan-stack=$(stack_enable)) \
>  	 $(call cc-param,asan-instrument-allocas=1)
>  endif
>  
> @@ -42,7 +48,7 @@ else
>  endif
>  
>  CFLAGS_KASAN := -fsanitize=kernel-hwaddress \
> -		-mllvm -hwasan-instrument-stack=$(CONFIG_KASAN_STACK) \
> +		-mllvm -hwasan-instrument-stack=$(stack_enable) \
>  		-mllvm -hwasan-use-short-granules=0 \
>  		$(instrumentation_flags)
>  
> -- 
> 2.18.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107210045.GA1456581%40ubuntu-m3-large-x86.
