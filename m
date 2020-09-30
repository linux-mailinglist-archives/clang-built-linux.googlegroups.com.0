Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBFO72P5QKGQETCFE7JA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CBD27F391
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 22:50:30 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id s3sf936970otp.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 13:50:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601499029; cv=pass;
        d=google.com; s=arc-20160816;
        b=wHp59tujQvLATvwIxmkXylugaOL4kROiDOx7uOop0QNcd0f2cLuRfXMq5RGuMypneA
         slTERCjX/NvCf+ofTJZB59rgztsOj9VAGGldFnWeyyqKKyVYI5ELxrpuqiOE8Wy4GGfS
         lmKoj7YEH+cFSfoGKDP0bWQ71N1y0AEOr5cN/f2LKmqbbOgxln666pu9q1RIIzQsNvb4
         pz4kVcivXMXPepzdlMWdSwitcu7vi7hDA/XSuwlsVB58lh3OH5y6fn3ERTqV1PamQ0KV
         lKbuRSlAMHDIyhXwaSEDxipPbkuunq7vYuUSj7GMhyC/CrX5zUIUlk3yqUD2awGATNmr
         5a2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=gpBtVebfDyv194QlA8Cky7+tFm6fu4wI0tFSdrIe7mc=;
        b=sfG9MwSCyZ8A79l2mbD6KTe8fTnvLNA96YDT2aie43eweFPBBouWjkgmmEyTHcnDRP
         co2lCj1tmEUK3JXf9ro5+O9zVz6frB9FPL8w4LRb6nFjGGFjwWWlm6gDhP8QBw3MxPpu
         pYFk0EUB+GnU8aXJwzdgkY7B4QCSpzCrYpq5jh3zroWuku+I0pZy/7Vwxtpjl4jQEB4x
         XL8WNDx0/G2cyMGwc/iTDi5+5gD31RZViKI4AHMXUl+Dy5aDAJF1f1o5aHXiMTyfsh8P
         RmuDGwyfk2MWa18fMQTJL6ITH3Cr/08GHwmfVMxUcz8F6PMl4jEU2RfVQtTCx6xPy6qH
         Tfkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=e0p3cmjF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gpBtVebfDyv194QlA8Cky7+tFm6fu4wI0tFSdrIe7mc=;
        b=DCAt5E8M/ReF/NJTR7K51XIg+Lx5lPP+2BMwJCL3TpG+AMCpezPlRVHzYjcEFPVTeZ
         O2BYy2MW9jEYMb1rILsbLXUCqKo01uQmFWjiM292RrqECzAMZSMJ3HMPLwbdcspB4rue
         CGL8QtZBMmY1uW5ROKaExZW9n9mYwALvPxJWO6i4pB/u/v/1neK/wGnuhiBJqoRgoSz3
         pOOHh9TtV0L2kFXrbdIaMznigRou3qlVPglvjMGiNIAzV1Zur9HFZJpiP2FTL8V8SarA
         71RSvOc65wXFqTIVQglRG0jgWesKF2uKsuh2sdIVxy+Pc0l+vI5z7MtMefSoeQW3D13k
         q+8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gpBtVebfDyv194QlA8Cky7+tFm6fu4wI0tFSdrIe7mc=;
        b=HbOU5JxmtDFvK1G0i6FqPLNL1reH2P3buJ6QjzofrOKPNZ5PBIlN0MpXSNISzloF1F
         EEJZm6MF9ScYZ/wpiIJ8xjarQh7Ge5BmTSTLLM7EyTHnQKD8H/QhonTntRpn2Isa6Meh
         THoeOpXYi2yts2YTjUPfoFti2thSh5dFIkBG1bL15V20Obj1Bq6cC/fNhMTkefx5Gh5y
         4MqoEhYk/B0zeaVXaM4qKLZBHhJjfcSQ8UVbjmcJYDs58zyvLm/p/VKRaLtv4INhV+Su
         OH9JguYMd7397ASgXywVicCGyA+n2hOJgF7N2KEKrJkbIHgMR7ilc5KpprDMWfpG8Hpn
         8ZSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531EmSgUxBrbYyh997PPNbMk5nBzXEgpsm+DTcHRmwRCheNrRGKy
	98An5eRZAbzXqz3jTOR4bpQ=
X-Google-Smtp-Source: ABdhPJziiIYA7/2yT4KOxqz5uOQVyRQ0TgRfqW9eKcY7RYxvGqThwAb1IYas/5b3gOp2/ltwkUqFQg==
X-Received: by 2002:a54:4398:: with SMTP id u24mr2399804oiv.59.1601499029167;
        Wed, 30 Sep 2020 13:50:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3e51:: with SMTP id h17ls822327otg.5.gmail; Wed, 30 Sep
 2020 13:50:28 -0700 (PDT)
X-Received: by 2002:a05:6830:20d8:: with SMTP id z24mr2705109otq.3.1601499028690;
        Wed, 30 Sep 2020 13:50:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601499028; cv=none;
        d=google.com; s=arc-20160816;
        b=UPim+G0lamNA3gbK/C1XrZcSWCFj2nCAxVV0aqACi8/7/FatQwzL+6YAWwY7rQx+v6
         CsIrOld8eOZcW8An8W9Sl/6YYI1yYq4PtgG7jOH92Zzmzo+OhIGLaRHPiOnUhwRWQRpE
         rXbF0+xiGLieLzGVIXm81VJDqn2f6Sxox5K8Lvp17bJmGp/hB4tSnONN7ZXCCDrmJEwq
         bcwkJ8M/YDmjEc1zKP/45YtnHxQPVJHshleGZRNSxKOMn88lXibJGOWPnnVC7dPNimoj
         7tMNT/n0qz730vFSisjnLLTIDVMJeJZmNo4EasVoaJGzCfhSSzp0hJdHNl4Qi9sF9NQe
         V8ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=N+3NHwXxA8yV485XiztEEBdrTeufxn/Z4VtcZ3blITY=;
        b=pquoVg0xdhgMCh+5iqbco65aYfsDcIm4eqrZeI6EApjYJhZ6JJ/jIeCVUbpu0SZEkz
         kPu5Yf0RHx2jNXHGsIXNLx5521zzpXrk8NzGEcXRU7G2qaVXlHiuGTr9bObPGpAoJvG6
         VqJeCpwNG4VH4Eysc/oQny5vMCC2oAiCs3eCW5Xf+eWE6R1cZIIyFOftVlOnC/ozpaJG
         BO+u0GkbaqXEIs4KDeGg7go8SZYrMz8rkxFAP5ZPo7DCKJkXYPEMCuzhy35psM7ILk5k
         MY+VVzji0s8awUU1fnd5x25KiKAlAEyW3TCIew0cDy+Ap57nosKCvZQlhPm7/lVHYNEt
         zJCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=e0p3cmjF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id v198si98503oia.4.2020.09.30.13.50.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 13:50:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id w7so2109950pfi.4
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 13:50:28 -0700 (PDT)
X-Received: by 2002:a17:902:fe13:b029:d0:89f4:6226 with SMTP id g19-20020a170902fe13b02900d089f46226mr4090118plj.14.1601499027864;
        Wed, 30 Sep 2020 13:50:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id f4sm3347199pfj.147.2020.09.30.13.50.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 13:50:26 -0700 (PDT)
Date: Wed, 30 Sep 2020 13:50:26 -0700
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>,
	Ingo Molnar <mingo@redhat.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Juergen Gross <jgross@suse.com>, Andy Lutomirski <luto@kernel.org>,
	Andrew Cooper <andrew.cooper3@citrix.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Will Deacon <will@kernel.org>, nadav.amit@gmail.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v3] x86/asm: Replace __force_order with memory clobber
Message-ID: <202009301347.EB0EFDD80@keescook>
References: <20200823212550.3377591-1-nivedita@alum.mit.edu>
 <20200902232152.3709896-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200902232152.3709896-1-nivedita@alum.mit.edu>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=e0p3cmjF;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

*thread ping*

Can an x86 maintainer please take this for -next? Getting this landed
for v5.10 would be very helpful! :)

-Kees

On Wed, Sep 02, 2020 at 07:21:52PM -0400, Arvind Sankar wrote:
> The CRn accessor functions use __force_order as a dummy operand to
> prevent the compiler from reordering CRn reads/writes with respect to
> each other.
> 
> The fact that the asm is volatile should be enough to prevent this:
> volatile asm statements should be executed in program order. However GCC
> 4.9.x and 5.x have a bug that might result in reordering. This was fixed
> in 8.1, 7.3 and 6.5. Versions prior to these, including 5.x and 4.9.x,
> may reorder volatile asm statements with respect to each other.
> 
> There are some issues with __force_order as implemented:
> - It is used only as an input operand for the write functions, and hence
>   doesn't do anything additional to prevent reordering writes.
> - It allows memory accesses to be cached/reordered across write
>   functions, but CRn writes affect the semantics of memory accesses, so
>   this could be dangerous.
> - __force_order is not actually defined in the kernel proper, but the
>   LLVM toolchain can in some cases require a definition: LLVM (as well
>   as GCC 4.9) requires it for PIE code, which is why the compressed
>   kernel has a definition, but also the clang integrated assembler may
>   consider the address of __force_order to be significant, resulting in
>   a reference that requires a definition.
> 
> Fix this by:
> - Using a memory clobber for the write functions to additionally prevent
>   caching/reordering memory accesses across CRn writes.
> - Using a dummy input operand with an arbitrary constant address for the
>   read functions, instead of a global variable. This will prevent reads
>   from being reordered across writes, while allowing memory loads to be
>   cached/reordered across CRn reads, which should be safe.
> 
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82602
> Link: https://lore.kernel.org/lkml/20200527135329.1172644-1-arnd@arndb.de/
> ---
> Changes from v2:
> - Clarify commit log and source comment some more
> Changes from v1:
> - Add lore link to email thread and mention state of 5.x/4.9.x in commit log
> 
>  arch/x86/boot/compressed/pgtable_64.c |  9 ---------
>  arch/x86/include/asm/special_insns.h  | 28 ++++++++++++++-------------
>  arch/x86/kernel/cpu/common.c          |  4 ++--
>  3 files changed, 17 insertions(+), 24 deletions(-)
> 
> diff --git a/arch/x86/boot/compressed/pgtable_64.c b/arch/x86/boot/compressed/pgtable_64.c
> index c8862696a47b..7d0394f4ebf9 100644
> --- a/arch/x86/boot/compressed/pgtable_64.c
> +++ b/arch/x86/boot/compressed/pgtable_64.c
> @@ -5,15 +5,6 @@
>  #include "pgtable.h"
>  #include "../string.h"
>  
> -/*
> - * __force_order is used by special_insns.h asm code to force instruction
> - * serialization.
> - *
> - * It is not referenced from the code, but GCC < 5 with -fPIE would fail
> - * due to an undefined symbol. Define it to make these ancient GCCs work.
> - */
> -unsigned long __force_order;
> -
>  #define BIOS_START_MIN		0x20000U	/* 128K, less than this is insane */
>  #define BIOS_START_MAX		0x9f000U	/* 640K, absolute maximum */
>  
> diff --git a/arch/x86/include/asm/special_insns.h b/arch/x86/include/asm/special_insns.h
> index 59a3e13204c3..d6e3bb9363d2 100644
> --- a/arch/x86/include/asm/special_insns.h
> +++ b/arch/x86/include/asm/special_insns.h
> @@ -11,45 +11,47 @@
>  #include <linux/jump_label.h>
>  
>  /*
> - * Volatile isn't enough to prevent the compiler from reordering the
> - * read/write functions for the control registers and messing everything up.
> - * A memory clobber would solve the problem, but would prevent reordering of
> - * all loads stores around it, which can hurt performance. Solution is to
> - * use a variable and mimic reads and writes to it to enforce serialization
> + * The compiler should not reorder volatile asm statements with respect to each
> + * other: they should execute in program order. However GCC 4.9.x and 5.x have
> + * a bug (which was fixed in 8.1, 7.3 and 6.5) where they might reorder
> + * volatile asm. The write functions are not affected since they have memory
> + * clobbers preventing reordering. To prevent reads from being reordered with
> + * respect to writes, use a dummy memory operand.
>   */
> -extern unsigned long __force_order;
> +
> +#define __FORCE_ORDER "m"(*(unsigned int *)0x1000UL)
>  
>  void native_write_cr0(unsigned long val);
>  
>  static inline unsigned long native_read_cr0(void)
>  {
>  	unsigned long val;
> -	asm volatile("mov %%cr0,%0\n\t" : "=r" (val), "=m" (__force_order));
> +	asm volatile("mov %%cr0,%0\n\t" : "=r" (val) : __FORCE_ORDER);
>  	return val;
>  }
>  
>  static __always_inline unsigned long native_read_cr2(void)
>  {
>  	unsigned long val;
> -	asm volatile("mov %%cr2,%0\n\t" : "=r" (val), "=m" (__force_order));
> +	asm volatile("mov %%cr2,%0\n\t" : "=r" (val) : __FORCE_ORDER);
>  	return val;
>  }
>  
>  static __always_inline void native_write_cr2(unsigned long val)
>  {
> -	asm volatile("mov %0,%%cr2": : "r" (val), "m" (__force_order));
> +	asm volatile("mov %0,%%cr2": : "r" (val) : "memory");
>  }
>  
>  static inline unsigned long __native_read_cr3(void)
>  {
>  	unsigned long val;
> -	asm volatile("mov %%cr3,%0\n\t" : "=r" (val), "=m" (__force_order));
> +	asm volatile("mov %%cr3,%0\n\t" : "=r" (val) : __FORCE_ORDER);
>  	return val;
>  }
>  
>  static inline void native_write_cr3(unsigned long val)
>  {
> -	asm volatile("mov %0,%%cr3": : "r" (val), "m" (__force_order));
> +	asm volatile("mov %0,%%cr3": : "r" (val) : "memory");
>  }
>  
>  static inline unsigned long native_read_cr4(void)
> @@ -64,10 +66,10 @@ static inline unsigned long native_read_cr4(void)
>  	asm volatile("1: mov %%cr4, %0\n"
>  		     "2:\n"
>  		     _ASM_EXTABLE(1b, 2b)
> -		     : "=r" (val), "=m" (__force_order) : "0" (0));
> +		     : "=r" (val) : "0" (0), __FORCE_ORDER);
>  #else
>  	/* CR4 always exists on x86_64. */
> -	asm volatile("mov %%cr4,%0\n\t" : "=r" (val), "=m" (__force_order));
> +	asm volatile("mov %%cr4,%0\n\t" : "=r" (val) : __FORCE_ORDER);
>  #endif
>  	return val;
>  }
> diff --git a/arch/x86/kernel/cpu/common.c b/arch/x86/kernel/cpu/common.c
> index c5d6f17d9b9d..178499f90366 100644
> --- a/arch/x86/kernel/cpu/common.c
> +++ b/arch/x86/kernel/cpu/common.c
> @@ -359,7 +359,7 @@ void native_write_cr0(unsigned long val)
>  	unsigned long bits_missing = 0;
>  
>  set_register:
> -	asm volatile("mov %0,%%cr0": "+r" (val), "+m" (__force_order));
> +	asm volatile("mov %0,%%cr0": "+r" (val) : : "memory");
>  
>  	if (static_branch_likely(&cr_pinning)) {
>  		if (unlikely((val & X86_CR0_WP) != X86_CR0_WP)) {
> @@ -378,7 +378,7 @@ void native_write_cr4(unsigned long val)
>  	unsigned long bits_changed = 0;
>  
>  set_register:
> -	asm volatile("mov %0,%%cr4": "+r" (val), "+m" (cr4_pinned_bits));
> +	asm volatile("mov %0,%%cr4": "+r" (val) : : "memory");
>  
>  	if (static_branch_likely(&cr_pinning)) {
>  		if (unlikely((val & cr4_pinned_mask) != cr4_pinned_bits)) {
> -- 
> 2.26.2
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009301347.EB0EFDD80%40keescook.
