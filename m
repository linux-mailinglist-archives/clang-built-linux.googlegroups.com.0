Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBY73R75AKGQERIEPSGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 687262506E2
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 19:50:28 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id e30sf6434728pfj.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 10:50:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598291427; cv=pass;
        d=google.com; s=arc-20160816;
        b=y2P9Tss7oG6ofBmsXaYZ2k+Y/x9pMTD6uHed2PUmGyWV9AxtqdqbV0KBpSlOxLUeHs
         ZQMEm2Fy7S8AFqnupOS66wv4vVOtlrQBJhbQY01Nj/Yekw62yUhmjve4fFLQQ6RC7hEO
         upkaNlyxn6k+NOx7T+lKULdr+6Pt7wUbFwPb5tmVbY0KJRyhIXZ7+gsxPhnxqk+ln1YM
         tf1rx1T1dUXO2HvP8dFDI86/b9U/UuXnpY0KbbAqiffKA3+NQUiMd3A8Jm+HU4maoALH
         3nJW+myRp4AV/yEaib3EpQSAX1U+mhkyNMNBb9/4fHdi0z47SS3zAaDsSvAMiLsmNSeW
         /hMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=OQWpF5oxQ51eyM4dYSid5jfYo2AX41EWy/vSsaG7luM=;
        b=Pbn7onz5+9x2ba4FYGXF7j8FFC823eAvb+7qlLmViuFT9TVYAipXF83Vjrd/3vtFLr
         7XtuGM3hB0115FX/G0u+muY8Nrltt2TJmIpuVYBXQORrtvZ8EqeULxkgLEfYXbpI/7TR
         recNu+Prgg/BSsfoIxKWxRNlbdvG7QCaUV03nClT2yUHgMKqbsI9LLVMLBgkpDX/rIcO
         DY3YfQEPVoCAjDHxt1QVdAzukMuwtm8SkhOcS/k7fiE663O9MY6NwomMTq+shEu5LVgm
         HtuT1HQmQtyyhrTL1alsaZ5bftHEglr8tCgAHIL83du3ed+mZIK9jKa7J9urmIcr/Agp
         W+jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pGDkNFKc;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OQWpF5oxQ51eyM4dYSid5jfYo2AX41EWy/vSsaG7luM=;
        b=DfkGpyVEwjlyxUPT/rdvJT54UIAkKJIDfY1VhrsOdWyfjVVVdgLX1ln2l/78Dj3d02
         bxhbc65ELQR/OulEtSb89b2aNBGoDUVBsxbYG0bGqzJMpgNZmeKb8SfrzOgJDlUMDLJd
         /R6ADfs/KW6wRcHzRP31/xSAEk+761GV/zd9Z4Y+bjzvCVGvF9dG8yKi1wG90S9obIxN
         WCGL5fWGRmNDXVCDBVT1tZGFyg7Sel0knteS5L5TuzYLLaJHAUKLaBxIVUVADh/cvTOo
         hSjnudGn5nRE4RwgSYQMbq8t/ro3a4BzXHqjDG3PY/SvjVjht0esCKxRTbBsZHnGAcup
         HXNA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OQWpF5oxQ51eyM4dYSid5jfYo2AX41EWy/vSsaG7luM=;
        b=oskYcQtCQMGibCNQ9TQTbLGzPzFzFkXDH75379qihiPzjRJkYj46omnMe7TtIXsIb8
         pFFpzjHUFdeG1CFOGhWks64s+NQQ/JTBu8LZ3T3Dh6V0Gua8Gmpy1v7T2sCj/1loYGZ0
         6l6DqW0Ygh+rA+9gVSmffa4pPZ2gFm9V1s2GpzwsKMCX8B/84esJDhQX/g9jwBbXqo76
         8tgT1gHX8PbfYy+ZAZLN/yqbk1DaNsaLMhR1dOUypngEWYacyo+rjEu2ZxXrfn/GizzB
         BtIE/sNl1KFXivfAJSn/+s7LIvNnh1Av4pjVylEaGGULXD8DAIrRG7+rhrDpbOaGNi65
         KQkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OQWpF5oxQ51eyM4dYSid5jfYo2AX41EWy/vSsaG7luM=;
        b=UAbI2ryp+H/fdTnzQq4JE46IvvQq33Sk4HJXkZxV1hq1bYCChdt4acqeDuJ1mHenXC
         Y9NnvSYqLJGSM8dvONkjyHO7rE1iRUEchwIXNF10H4B9YbUIL00tBtu14BFHfVEiC4sh
         hzIXTnm3xj5OHJlJgS5SwBJlH8EIHvzZsp5vwZpilfRSJu5U/HmoBhxXdsG9EmxK5T/m
         II01Si/SCkNO/N4u5VlUd/mOljYAfirYZ6eaD2xopsU9j952+wGuRW88ue4pjtBPXbex
         4Ng5dxll+jXu2kvBbBDj7JkihLsh357tWirfpZapa39Erx21ysynhfFauIDpPwYKHgQO
         drww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530VuaGBSyQ+YxUR+UwdQyEKYFmKAgVgGpcxYrCZNM5uUKr/BCqk
	33TzCe2ANylsKrJjc4JCVYc=
X-Google-Smtp-Source: ABdhPJw9V0dUg2KIqc0W1uVmNfUQ/K62GGAJzuy7lT+yyi1eadNidtXJn1x67tOnbv1LEArEPjwicg==
X-Received: by 2002:a17:90a:5884:: with SMTP id j4mr332686pji.217.1598291427133;
        Mon, 24 Aug 2020 10:50:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:358b:: with SMTP id mm11ls120472pjb.2.gmail; Mon, 24
 Aug 2020 10:50:26 -0700 (PDT)
X-Received: by 2002:a17:90a:fe82:: with SMTP id co2mr374205pjb.216.1598291426590;
        Mon, 24 Aug 2020 10:50:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598291426; cv=none;
        d=google.com; s=arc-20160816;
        b=L4mTOTlCLCaNCWVLcnbOY88Q7JrS7StuAL77oF9Ycudp1s5ubs0G0nCBGc7p7pM68P
         OeqSi2Yz2kgi2fwx6Hk0xaCSQsvUZxR/iY06bmOgYGZdl1l2uO4MJ1oSi+dJX5PpOixp
         1bs21hD1pcIDv+Pa18y3H1HRi7V7nXiIPhAo8QIBZqDk6n9w+4SmlzmBvtnZMrmCHmgC
         tOJXtJiSmyoC3WjzO0YCs6mGxblxJDsm1sTxdjhY09W2Kdo3GbbpRKrpFZ0IYQGMOuqE
         5KRAdngAMq6ePsrckc2yp0btZgdmyEasLmM6otvz7hRwgntawSVZ9BpoMnl+8RzV0NII
         88JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PG7MrXVlFs0wuGE6F4rw7no0ij89eengQZlo+8LNVJY=;
        b=EBPnZAt19lduoCR+xKvXiU2pcfWCa0TVXCQpFblwU85sQi0qlRJ762bkohLe9pzv9h
         mxSxXwjmICpVensQvEfnRTKG+oqC0aP4gAOTtnlRxJlNEbntjt8DiRU8aPLMLIASDJuZ
         TiKRTkNOuON662nySgabUdX1mfoh83PA6O6cWfOUlP2Datcw0v3asiZWt2sqtZ17StrP
         mWfHhEeA+8Af4rfN5pMGOKYi7RR9YXGnFFnGntnHRYQTDSADI1nAyuoD7PKX2CCNoZII
         RBJegsDmOtv1oUdTLXheb56Hb78//QTUYFNSBzev1zVSvmOgwOR+xOE1tLkI8SQ1Ft5N
         qeKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pGDkNFKc;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id l2si193085pfd.0.2020.08.24.10.50.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Aug 2020 10:50:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id 6so6835451qtt.0
        for <clang-built-linux@googlegroups.com>; Mon, 24 Aug 2020 10:50:26 -0700 (PDT)
X-Received: by 2002:ac8:72d2:: with SMTP id o18mr3967937qtp.162.1598291425553;
        Mon, 24 Aug 2020 10:50:25 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id 95sm11700637qtc.29.2020.08.24.10.50.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2020 10:50:24 -0700 (PDT)
Date: Mon, 24 Aug 2020 10:50:22 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
	Borislav Petkov <bp@alien8.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Juergen Gross <jgross@suse.com>, Andy Lutomirski <luto@kernel.org>,
	Andrew Cooper <andrew.cooper3@citrix.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH] x86/asm: Replace __force_order with memory clobber
Message-ID: <20200824175022.GA1617698@ubuntu-n2-xlarge-x86>
References: <20200823011652.GA1910689@rani.riverdale.lan>
 <20200823212550.3377591-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200823212550.3377591-1-nivedita@alum.mit.edu>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pGDkNFKc;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Aug 23, 2020 at 05:25:50PM -0400, Arvind Sankar wrote:
> The CRn accessor functions use __force_order as a dummy operand to
> prevent the compiler from reordering the inline asm.
> 
> The fact that the asm is volatile should be enough to prevent this
> already, however older versions of GCC had a bug that could sometimes
> result in reordering. This was fixed in 8.1, 7.3 and 6.5.
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
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82602

I applied this patch to v5.9-rc2 and next-20200824 and built several
different configurations with clang + GNU as and some with clang +
LLVM's integrated assembler and saw no build failures.

Tested-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  arch/x86/boot/compressed/pgtable_64.c |  9 ---------
>  arch/x86/include/asm/special_insns.h  | 27 ++++++++++++++-------------
>  arch/x86/kernel/cpu/common.c          |  4 ++--
>  3 files changed, 16 insertions(+), 24 deletions(-)
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
> index 59a3e13204c3..8f7791217ef4 100644
> --- a/arch/x86/include/asm/special_insns.h
> +++ b/arch/x86/include/asm/special_insns.h
> @@ -11,45 +11,46 @@
>  #include <linux/jump_label.h>
>  
>  /*
> - * Volatile isn't enough to prevent the compiler from reordering the
> - * read/write functions for the control registers and messing everything up.
> - * A memory clobber would solve the problem, but would prevent reordering of
> - * all loads stores around it, which can hurt performance. Solution is to
> - * use a variable and mimic reads and writes to it to enforce serialization
> + * The compiler should not reorder volatile asm, however older versions of GCC
> + * had a bug (which was fixed in 8.1, 7.3 and 6.5) where they could sometimes
> + * reorder volatile asm. The write functions are not a problem since they have
> + * memory clobbers preventing reordering. To prevent reads from being reordered
> + * with respect to writes, use a dummy memory operand.
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
> @@ -64,10 +65,10 @@ static inline unsigned long native_read_cr4(void)
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
> -- 
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200823212550.3377591-1-nivedita%40alum.mit.edu.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200824175022.GA1617698%40ubuntu-n2-xlarge-x86.
