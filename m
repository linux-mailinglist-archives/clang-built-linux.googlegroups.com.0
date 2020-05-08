Return-Path: <clang-built-linux+bncBDYJPJO25UGBBO6A232QKGQEOJEBPWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 244E51CB6B7
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 20:09:02 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id v18sf2789617qtq.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 11:09:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588961339; cv=pass;
        d=google.com; s=arc-20160816;
        b=RbTufylQXCAYOcADLbSLXM1yMsWCEKAYWlSqFB7Chm9sNlSvtF3hxuKTju5q0eoR5G
         dxj6QLYyyaWwitF//IX1nPNFb4v2D7cyeggW13OLUVKx0iSptQ3aiDjWWaOvNS2nrP4u
         qq75LebZUOAzy/QQYRLszyiUlmmIfe6HMLA7fDDONyxlGyymohYP53ZEDHEUPVuTqu72
         5kXgljXdITdJr/6SLf21UWunwzbzoSceKKrA0igiCziMf2XltUPP4ucN5hXVs14T9CJe
         a2S1jc4WwNNXg9Xu+9xOGkXnLaPNQwE76lwAQlxItRHcK6aL/0jW7hzsFn7GuSV8+0K0
         IfGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Ujse/I+cwD94a0z6804YZ5IjGKwj4hQf6nfSECXLWjo=;
        b=d/FDXpro9N8e5lkBpzH29rvqH+UUHqdw1n70/4ZSlEC+w5K911S6NgZRksa5igKxQy
         YVNDvMtc862ytFiradkVRvBJt2Xi7matwS6RguWfK2UQ7b8ztChK7KZxWyKArsnCXSbN
         wLrxrhi+kHO7XZJb3lEnblTmKRVG9RhLqPqS5zZawJBT49LYu5pPN962JmJOtB4URn94
         oYbc7RmrDecvOiLuOxwSuh1HytIU3JKkLhvwaCbrofu605XVnPLFFhAkDSLhObuRFTUT
         QKYbtyqooK/U/ZlwhiSbrTINSz5RtGMlmfuj+g7iWtagejBuC25gs6oCADn/rqHzAQIl
         bp0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=V4A8WiHx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ujse/I+cwD94a0z6804YZ5IjGKwj4hQf6nfSECXLWjo=;
        b=ADqgTFMQ07CpkkRfaB0J4DmcVDxQU34x3IAiDxobAY+ZpxmHo6w4PGI65yHOEq41fd
         lqOOkQXC+28edb+CZopPuEqoC8MINC85kAHkRrcmgnYiJKkn9Sm6Ys0Plh3bsngXA6bQ
         rXeuOpRfG4Opw1zHPXLiokhjuIXRVWwh6VgUo11+rMNhnBlZ7/iJNmMnpO2M0o0MR10G
         gxDF425KG9WcBVZRtl7R/UxKJWrkPrsJn71Dt5oQQeHhycydHeu417t4RdpE6EqwZqnl
         9nhxKe38ZGuCUlt388TnmTmcBcRfH63EWlXMyr24hju8pknTa1Xz8cmv9Wr8DKrlaoPl
         ki7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ujse/I+cwD94a0z6804YZ5IjGKwj4hQf6nfSECXLWjo=;
        b=hWacJh2X4D5YvlDjalXHUGZNmzUH3E7OcuRMOUKElY45+RPLMCVxzGy7rthwTfOfjy
         TKIwHh93qmgIeIHYvkowVbDbCQrGHal0IhVhS1qvW1kV4eE5rz+6T2i/EbEuk5/k5can
         cq3HZiCurwz3QDJwy0wtjwjd5ad3vTjJ1JvC4DG6RjZOqmg5pUd+W4niMKXIsj0aPXzq
         npK3WZipOoqBrmKEmRTF4/A7kvf+AidmTEwuB7oksL7Pg3LoJYydQ9oNfQJ3zPDpYI5q
         gHuWnFWELttomxP+FujgA46S4YjgUgP9/a9jK6vYaMPsP9NdYj90uPcWbzlM7a8o+eSd
         ukNw==
X-Gm-Message-State: AGi0PuYZm3iRKt9C+xpxfjEnSpLJ37kg46/PhdxkqT9soU0JPsMNTMki
	V5XC7J7zrYJoObhIxB7JB24=
X-Google-Smtp-Source: APiQypLCt6n5GiowVcnHJtdzaW0FO30WVtK4XJSGaYJh23wecDqp3a5U3mHEsdYbVrLSBCk2bVF64w==
X-Received: by 2002:a05:620a:a83:: with SMTP id v3mr4102493qkg.84.1588961339400;
        Fri, 08 May 2020 11:08:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:528b:: with SMTP id v11ls733976qvr.9.gmail; Fri, 08 May
 2020 11:08:59 -0700 (PDT)
X-Received: by 2002:a0c:8262:: with SMTP id h89mr3789197qva.173.1588961339048;
        Fri, 08 May 2020 11:08:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588961339; cv=none;
        d=google.com; s=arc-20160816;
        b=gslceFFKJbybfhweLSzVSdS3d1sFJu0sTjH2w+JdC8brSMzNDap677he2eWDZFrgl6
         FuujlfppZW2rGAkS8DKpjyCx3xYlwU9jqxFJqM/jqUt/W5py9d5f9ygu3i4ckgdNeIOx
         ZD5f4cgiI3CYW21MVCB1HKBen3JzjmaQfhvt9Ip1SZE4rtDWAmGoLBRUpZ02MoNsghOA
         hXcXA9v9mbIcbsEFKLkEhW/PXys4MmBboS87HsULcGzOFArCypgJBYrQzcEe9Ebo1l38
         9cJIzLDBY7Zpl0h0fKiKeil9Tku0ga3v992EhomoDB22FcMcvcTjns1b55Aq+bYgeA7P
         sHXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tJNLqaW1D1Ksqfi1Sayg+EttVMlVbom/Q1FHT26F8tA=;
        b=QDWSdnCkiTLaNhnQW4HiohCV4gXbOSBXwVGf0e/E6nKPleWusrM+u0fT7sKMv1l2sm
         WtgkyC/1ZbYCZO3WLyZyrjPeWCZbknKRxZ+/Fy/tvQaJyXa7OQ56cCd03LoTI2ekLuh2
         G8BAeVmHfQDD0x4eeAySXQlh7MTre7MG5vyTOg64l9ARkwsOUZo5vxS+OutvNsBO50Ir
         tDxZ4J7gKYTgE/zx7zV3rJrzIithQw2SkHFioNLaijsnOnlxbrl8FAKm6omT3nJxRFKY
         zgdTJXCPhVs7hokBjCx4aNWcgTHTibp1c0xM0XIYv9UUYY3cqQJLoWapiRCh9mm2EHhu
         Rutg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=V4A8WiHx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id w66si238712qka.6.2020.05.08.11.08.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 May 2020 11:08:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id n11so1208650pgl.9
        for <clang-built-linux@googlegroups.com>; Fri, 08 May 2020 11:08:59 -0700 (PDT)
X-Received: by 2002:a63:6546:: with SMTP id z67mr3087884pgb.10.1588961337845;
 Fri, 08 May 2020 11:08:57 -0700 (PDT)
MIME-Version: 1.0
References: <8f53b69e-86cc-7ff9-671e-5e0a67ff75a2@zytor.com> <20200508180549.212957-1-ndesaulniers@google.com>
In-Reply-To: <20200508180549.212957-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 8 May 2020 11:08:46 -0700
Message-ID: <CAKwvOdm=AskJo4h=_P9oSXr_eV7DXu+q_sbYhU7pNQByRwHLBw@mail.gmail.com>
Subject: Re: [PATCH v3] x86: bitops: fix build regression
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	"kernelci . org bot" <bot@kernelci.org>, Andy Shevchenko <andriy.shevchenko@intel.com>, 
	Brian Gerst <brgerst@gmail.com>, "H . Peter Anvin" <hpa@zytor.com>, Ilie Halip <ilie.halip@gmail.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Marco Elver <elver@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Daniel Axtens <dja@axtens.net>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	"Peter Zijlstra (Intel)" <peterz@infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=V4A8WiHx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Fri, May 8, 2020 at 11:06 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> This is easily reproducible via CC=clang+CONFIG_STAGING=y+CONFIG_VT6656=m.
>
> It turns out that if your config tickles __builtin_constant_p via
> differences in choices to inline or not, these statements produce
> invalid assembly:
>
> $ cat foo.c
> long a(long b, long c) {
>   asm("orb\t%1, %0" : "+q"(c): "r"(b));
>   return c;
> }
> $ gcc foo.c
> foo.c: Assembler messages:
> foo.c:2: Error: `%rax' not allowed with `orb'
>
> Use the `%b` "x86 Operand Modifier" to instead force register allocation
> to select a lower-8-bit GPR operand.
>
> The "q" constraint only has meaning on -m32 otherwise is treated as
> "r". Not all GPRs have low-8-bit aliases for -m32.
>
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/961
> Link: https://lore.kernel.org/lkml/20200504193524.GA221287@google.com/
> Link: https://gcc.gnu.org/onlinedocs/gcc/Extended-Asm.html#x86Operandmodifiers
> Fixes: 1651e700664b4 ("x86: Fix bitops.h warning with a moved cast")
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Reported-by: kernelci.org bot <bot@kernelci.org>
> Suggested-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> Suggested-by: Brian Gerst <brgerst@gmail.com>
> Suggested-by: H. Peter Anvin <hpa@zytor.com>
> Suggested-by: Ilie Halip <ilie.halip@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes V2 -> V3:
> * use `%b` "x86 Operand Modifier" instead of bitwise op then cast.
> * reword commit message.
> * add Brian and HPA suggested by tags
> * drop Nathan & Sedat Tested by/reviewed by tags (new patch is different
>   enough).

Oh, and I took over authorship for this version.

>
> Changes V1 -> V2:
> * change authorship/signed-off-by to Ilie
> * add Nathan's Tested by/reviewed by
> * update commit message slightly with info sent to HPA.
>
>  arch/x86/include/asm/bitops.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/x86/include/asm/bitops.h b/arch/x86/include/asm/bitops.h
> index b392571c1f1d..03e24286e4eb 100644
> --- a/arch/x86/include/asm/bitops.h
> +++ b/arch/x86/include/asm/bitops.h
> @@ -52,9 +52,9 @@ static __always_inline void
>  arch_set_bit(long nr, volatile unsigned long *addr)
>  {
>         if (__builtin_constant_p(nr)) {
> -               asm volatile(LOCK_PREFIX "orb %1,%0"
> +               asm volatile(LOCK_PREFIX "orb %b1,%0"
>                         : CONST_MASK_ADDR(nr, addr)
> -                       : "iq" (CONST_MASK(nr) & 0xff)
> +                       : "iq" (CONST_MASK(nr))
>                         : "memory");
>         } else {
>                 asm volatile(LOCK_PREFIX __ASM_SIZE(bts) " %1,%0"
> @@ -72,9 +72,9 @@ static __always_inline void
>  arch_clear_bit(long nr, volatile unsigned long *addr)
>  {
>         if (__builtin_constant_p(nr)) {
> -               asm volatile(LOCK_PREFIX "andb %1,%0"
> +               asm volatile(LOCK_PREFIX "andb %b1,%0"
>                         : CONST_MASK_ADDR(nr, addr)
> -                       : "iq" (CONST_MASK(nr) ^ 0xff));
> +                       : "iq" (~CONST_MASK(nr)));
>         } else {
>                 asm volatile(LOCK_PREFIX __ASM_SIZE(btr) " %1,%0"
>                         : : RLONG_ADDR(addr), "Ir" (nr) : "memory");
> --
> 2.26.2.645.ge9eca65c58-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm%3DAskJo4h%3D_P9oSXr_eV7DXu%2Bq_sbYhU7pNQByRwHLBw%40mail.gmail.com.
