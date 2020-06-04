Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBEOG4L3AKGQERXHKSJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 805691EDE2B
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 09:30:27 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id s188sf4448359pgc.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 00:30:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591255826; cv=pass;
        d=google.com; s=arc-20160816;
        b=qM/60GbM/TgZ5Yd3nHT1Zr8U0LhuNsTrEubxxeHjU/3J+/2+HysO/oX2C82ZvueGZd
         e4FJL4LBFvtiUnKGnbSd2IbA4iGaiHXzQ+NiqaMRO2N/FR+4Q3dL2w10NcYK2GT+r7HJ
         DmeoWY442w8HnVttCAOX6gxC7PE04eYOkRiFb8DXjdyfqOhuOWK1QhpqqYc/3agdB6Fz
         AHsv/Eqy3laZ+APStZfxW3/x27th4A9gozXZ4i1GZ4dHltkzFdWQw0BEjRuV/kseNkyx
         83MU4O+OmSVlFJHg8nHfey505Mn186+/7Z1QZx/uBpvRL6pcXXtP4sT/v8JAu30/F1hA
         qsqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ONXZs21JMHvMvRsCXmxeSe1K5oo6USJqtkTuxMUd/7M=;
        b=cDfIGMuNEylaiAWvpZ/G/uOMAaVV4OhMSR+LPcjdZ0rLvd9YSWhTxjwSQ5kX7RYpb1
         ARSXtUh7784h+XaQQyiV3KXzG5o/n+KxY16bWlnEEsm7TBX16lunzJgxxxrVkD9WjzFU
         je7xXW+9O8jjR3ZquHDrStAkXLAcSct74aN7cKZALTbOH60HoWfn6ABBTfpD9UTFyy4a
         m5Cij0cqTTYKDdarFLbsDllHXz9TYPw6BSSWeXdgT9XFpXSPaCqLc+NaKz4IwzTP68ec
         eYi1h8/O8Ad+Rp94HbZcgzvPeqtNs8zfXTbuljaBFJPtMJ2pRB98yKKqMJT3UiGwBHGD
         nugw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Aw6aE6YY;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ONXZs21JMHvMvRsCXmxeSe1K5oo6USJqtkTuxMUd/7M=;
        b=Vx0lJJc21uqoB2NcWsbuFCLoYtb4DCdpVTxc4Byy90Bl79HeZv2Y16/9DEDTuIpqhO
         cdFN2xEX+GoNH0qeoMjCCXP+lDWoywiz5S7l5PymvtO+vQCRs/u2bmYpWpF4RV4qMk22
         mYwISoSlZRLjlS1t4+5YJfKa/VLhvLbgntZGyJQvxKOkFfkqLMlbHtE/icntBcoYod/S
         16h8qg2VfoBV8rKAlROLplWvp6SAViaGZ3XUKYvU5QO51nWrfMEsoztqU6/tev3gMUoO
         l98mfi9uoOXEDjc1J3wM/eBZhvGVUtwNMKZozbWH9B612uPJo+eXagw6xWHZdjU5BSno
         MSlw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ONXZs21JMHvMvRsCXmxeSe1K5oo6USJqtkTuxMUd/7M=;
        b=XZnmHljsbFREYnAvHrLZjNGGzmMOoJecAb3gop+6UU6+nnOiCQnkYAYCKM7HnW4BIt
         42wfWexf+c8u3mbxkp6bqm9t1IaDWLP+9c143k5BK4Dw6fkvEI2bUFD9+xu2wXpbzw6q
         H7X3QIeRxTQMBZuwz1vQ5mBNyZHUC+531vitwQhVaB0byu0oDg1WOhKOMuPdDLSEHX47
         yD5i61NLBGZv3f+jpfTCGC648V3Vwt9EJJAmMCvSwFKRFkAzITCiDF/i/xu0MDyl8vom
         +f31aUokzjVfTu7TJcn/S5QePhigEOma1wZqCTWScSo9Ew3kd+yB0EYU3fNhMyv1MPiX
         /sLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ONXZs21JMHvMvRsCXmxeSe1K5oo6USJqtkTuxMUd/7M=;
        b=oiGLlNpc+8DiXH2EArWqc4Jilf7J1854qq7guGJUYDRWJZQ6b96odFOe9J6MzeQbko
         2iMlCn6RAkAi0MMIhoFs8/7+z4y9GBSR5Ol7rCmceMbot9Lil6EJWijUqry3y2MDlNej
         OBnIxvWiNRjBDOGnOabLsvZLuD5uqCkA3Tr5kF+ZiGclwgGljKahu2twSSyA8iZ3dJoO
         +3lxg+pXkWoKBGCqsuZG4fm8mn1Y1BXXFarHN5ckPEVK9ugHxr0T9Oe7Cg1CVP8kJYq0
         alcL7R5KzhrKs2fJ19dQc7Ve8+h1lKkG1YnpP0t91csHU4P7tUivY3G/3Fvvd9rL95WP
         61rQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532eKOfidKaTJ1+E1goMGmCmIRMKu4op00b6CqHUnR1GSgRw+8dr
	9clLoDsz4rTVNB7K1pdek5Q=
X-Google-Smtp-Source: ABdhPJyNUv3vCRlIkIB3dFBfDrydNhcTnymfC2AA9j0Yaw+AP9e1SamK9koTyw7B+WmivnHlrvyNYw==
X-Received: by 2002:a63:a51b:: with SMTP id n27mr3345188pgf.40.1591255825979;
        Thu, 04 Jun 2020 00:30:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:e28d:: with SMTP id d13ls17799pjz.3.gmail; Thu, 04
 Jun 2020 00:30:25 -0700 (PDT)
X-Received: by 2002:a17:90a:5d06:: with SMTP id s6mr4689676pji.88.1591255825496;
        Thu, 04 Jun 2020 00:30:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591255825; cv=none;
        d=google.com; s=arc-20160816;
        b=SMEx99/rQR++R+BPL9TlB3ewVOKZrJiQ2H/DRlSu7Gfmu16B/KVM89vNaI0fURamkj
         /PQ/PqHzD1CO3TbTXNvK0133xx/MuLcT4lq83MJih6k9PCIbMcCrv2HlA370HjTZTnNT
         qdCBQa+exmym/Tp/41XMSgR9/3gQEn+KpaufVZ00bCB3zYhZG07owMP6Wb8k8UxjIebT
         63rvzpiGxrFhqq6mFaxIa7LQLhVL0KjhfQqNnCDgdcE77S19yk+tC+tol0GrvQyfBGvW
         Ve/rKmmXD6s27/3s3wACg13l73ROjr/CrXaSiwtwa4nawiOwC0SiMd8CYIrgZsdeCcUG
         qw6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4MlBFAtCKoBGLDCt0vFCazTJmxySzwKV/mzAX+mxpRo=;
        b=oiEDUSWaTIqbHF90DXMY2+7nFufyEv0YDGfnlZ9DGN4nnVGsYRBqiIhvYHg7pphUX3
         yT95xMWY7+kftPrVPx2RqlRKnxrSemVJORfE7NPR+cjNyFBPCY6qTvpRP+jNy+50IIAx
         gGHzUhzFj98Vnz1VNkDW/smumGNUGUnbHKR6YaJTk46zxfukoAOWY58n+5KcFWLjSTtu
         c2KiKS7qrzttE1/QBD4LA8H9NX1+fNxnTMKzhi8uu/Go/Y1/Mb/aBq2WDNuTRUn/S8XR
         VtVyHrEHKGBCxVg63EzEj3q+fN3aX1Ey72x4xTavA19y12tMbqxO9Arf9NpFUp6ln74i
         2fGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Aw6aE6YY;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id w15si321033pjn.0.2020.06.04.00.30.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 00:30:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id k18so5270061ion.0
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 00:30:25 -0700 (PDT)
X-Received: by 2002:a05:6602:2c45:: with SMTP id x5mr2921898iov.80.1591255824895;
 Thu, 04 Jun 2020 00:30:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200602132702.y3tjwvqdbww7oy5i@treble> <20200602193100.229287-1-inglorion@google.com>
In-Reply-To: <20200602193100.229287-1-inglorion@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 4 Jun 2020 09:30:13 +0200
Message-ID: <CA+icZUWe3ezev3rQJO4rJ5trSPoSfUX+eOBqPXbJhRe-EZQ6-w@mail.gmail.com>
Subject: Re: [PATCH v2] x86_64: fix jiffies ODR violation
To: Bob Haarman <inglorion@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Josh Poimboeuf <jpoimboe@redhat.com>, stable@vger.kernel.org, 
	Nathan Chancellor <natechancellor@gmail.com>, Alistair Delva <adelva@google.com>, 
	Fangrui Song <maskray@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Andi Kleen <ak@linux.intel.com>, x86@kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, afzal mohammed <afzal.mohd.ma@gmail.com>, 
	Kyung Min Park <kyung.min.park@intel.com>, Peter Zijlstra <peterz@infradead.org>, 
	Kees Cook <keescook@chromium.org>, Heiko Carstens <heiko.carstens@de.ibm.com>, 
	Baoquan He <bhe@redhat.com>, Thomas Lendacky <Thomas.Lendacky@amd.com>, 
	"H.J. Lu" <hjl.tools@gmail.com>, Ross Zwisler <zwisler@chromium.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Dmitry Safonov <0x7f454c46@gmail.com>, 
	linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Aw6aE6YY;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44
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

On Tue, Jun 2, 2020 at 9:31 PM 'Bob Haarman' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> 'jiffies' and 'jiffies_64' are meant to alias (two different symbols
> that share the same address).  Most architectures make the symbols alias
> to the same address via linker script assignment in their
> arch/<arch>/kernel/vmlinux.lds.S:
>
> jiffies = jiffies_64;
>
> which is effectively a definition of jiffies.
>
> jiffies and jiffies_64 are both forward declared for all arch's in:
> include/linux/jiffies.h.
>
> jiffies_64 is defined in kernel/time/timer.c for all arch's.
>
> x86_64 was peculiar in that it wasn't doing the above linker script
> assignment, but rather was:
> 1. defining jiffies in arch/x86/kernel/time.c instead via linker script.
> 2. overriding the symbol jiffies_64 from kernel/time/timer.c in
> arch/x86/kernel/vmlinux.lds.s via 'jiffies_64 = jiffies;'.
>
> As Fangrui notes:
>
>   In LLD, symbol assignments in linker scripts override definitions in
>   object files. GNU ld appears to have the same behavior. It would
>   probably make sense for LLD to error "duplicate symbol" but GNU ld
>   is unlikely to adopt for compatibility reasons.
>
> So we have an ODR violation (UB), which we seem to have gotten away
> with thus far. Where it becomes harmful is when we:
>
> 1. Use -fno-semantic-interposition.
>
> As Fangrui notes:
>
>   Clang after LLVM commit 5b22bcc2b70d
>   ("[X86][ELF] Prefer to lower MC_GlobalAddress operands to .Lfoo$local")
>   defaults to -fno-semantic-interposition similar semantics which help
>   -fpic/-fPIC code avoid GOT/PLT when the referenced symbol is defined
>   within the same translation unit. Unlike GCC
>   -fno-semantic-interposition, Clang emits such relocations referencing
>   local symbols for non-pic code as well.
>
> This causes references to jiffies to refer to '.Ljiffies$local' when
> jiffies is defined in the same translation unit. Likewise, references
> to jiffies_64 become references to '.Ljiffies_64$local' in translation
> units that define jiffies_64.  Because these differ from the names
> used in the linker script, they will not be rewritten to alias one
> another.
>
> Combined with ...
>
> 2. Full LTO effectively treats all source files as one translation
> unit, causing these local references to be produced everywhere.  When
> the linker processes the linker script, there are no longer any
> references to jiffies_64' anywhere to replace with 'jiffies'.  And
> thus '.Ljiffies$local' and '.Ljiffies_64$local' no longer alias
> at all.
>
> In the process of porting patches enabling Full LTO from arm64 to
> x86_64, we observe spooky bugs where the kernel appeared to boot, but
> init doesn't get scheduled.
>
> Instead, we can avoid the ODR violation by matching other arch's by
> defining jiffies only by linker script.  For -fno-semantic-interposition
> + Full LTO, there is no longer a global definition of jiffies for the
> compiler to produce a local symbol which the linker script won't ensure
> aliases to jiffies_64.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/852
> Fixes: 40747ffa5aa8 ("asmlinkage: Make jiffies visible")
> Cc: stable@vger.kernel.org
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Reported-by: Alistair Delva <adelva@google.com>
> Suggested-by: Fangrui Song <maskray@google.com>
> Debugged-by: Nick Desaulniers <ndesaulniers@google.com>
> Debugged-by: Sami Tolvanen <samitolvanen@google.com>
> Signed-off-by: Bob Haarman <inglorion@google.com>
> Reviewed-by: Andi Kleen <ak@linux.intel.com>
> Reviewed-by: Josh Poimboeuf <jpoimboe@redhat.com>
> ---
> v2:
> * Changed commit message as requested by Josh Poimboeuf
>   (no code change)
>

Hi,

I have tested v2 with my local patch-series together.

Feel free to add my...

Tested-by: Sedat Dilek <sedat.dilek@gmail.com> # build+boot on
Debian/testing AMD64 with selfmade llvm-toolchain v10.0.1-rc1+

Thanks.

Regards,
- Sedat -

> ---
>  arch/x86/kernel/time.c        | 4 ----
>  arch/x86/kernel/vmlinux.lds.S | 4 ++--
>  2 files changed, 2 insertions(+), 6 deletions(-)
>
> diff --git a/arch/x86/kernel/time.c b/arch/x86/kernel/time.c
> index 371a6b348e44..e42faa792c07 100644
> --- a/arch/x86/kernel/time.c
> +++ b/arch/x86/kernel/time.c
> @@ -25,10 +25,6 @@
>  #include <asm/hpet.h>
>  #include <asm/time.h>
>
> -#ifdef CONFIG_X86_64
> -__visible volatile unsigned long jiffies __cacheline_aligned_in_smp = INITIAL_JIFFIES;
> -#endif
> -
>  unsigned long profile_pc(struct pt_regs *regs)
>  {
>         unsigned long pc = instruction_pointer(regs);
> diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
> index 1bf7e312361f..7c35556c7827 100644
> --- a/arch/x86/kernel/vmlinux.lds.S
> +++ b/arch/x86/kernel/vmlinux.lds.S
> @@ -40,13 +40,13 @@ OUTPUT_FORMAT(CONFIG_OUTPUT_FORMAT)
>  #ifdef CONFIG_X86_32
>  OUTPUT_ARCH(i386)
>  ENTRY(phys_startup_32)
> -jiffies = jiffies_64;
>  #else
>  OUTPUT_ARCH(i386:x86-64)
>  ENTRY(phys_startup_64)
> -jiffies_64 = jiffies;
>  #endif
>
> +jiffies = jiffies_64;
> +
>  #if defined(CONFIG_X86_64)
>  /*
>   * On 64-bit, align RODATA to 2MB so we retain large page mappings for
> --
> 2.27.0.rc2.251.g90737beb825-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200602193100.229287-1-inglorion%40google.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWe3ezev3rQJO4rJ5trSPoSfUX%2BeOBqPXbJhRe-EZQ6-w%40mail.gmail.com.
