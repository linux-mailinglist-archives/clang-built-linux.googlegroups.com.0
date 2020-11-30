Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHESSX7AKGQEB2VFSQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 315C42C8E1D
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 20:33:50 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id o17sf9289006pgm.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 11:33:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606764829; cv=pass;
        d=google.com; s=arc-20160816;
        b=pibbiVzgDG9dswhHkD4Wxnm4DX8qw4bmncHm2jo+LUO4MdajjHkMuDPecuZ7KO9Ryn
         9j07CdilJU2NmCKCs+Le4PfpiIueVeFmKqyf/7pWO9xNx4Ny9o0+zOMl8t1jIRiXc/b5
         9+EnJK8wXzPkw1PQiLmgnAR46iaCm23lA5IA4Ur906zfmwQXkYLk9wY5fZEWZdEfCFwc
         hUaFP7B5ca6iADC4B30taWs5aRj+P67Xgb9S9xt4rgdl3O7cQu1ZFTx+ETMJB2l33OIc
         WXI6VUso1nZa4o8AjHaTEwZdyPkKxEVWwj1D6fLzP2418YQNuOrwEUGhAuDjnUUDYHQz
         ZzsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=uPNZ91CiQ3YHIpmbEdn2O1iariracrG62bn2pEUC4h0=;
        b=wBugDQsFkoAGLkB8XW4wCFM9Q82vvarWwSM32wxATWQexS1bVL2sP8J4BZXCNg2BI2
         Yao2WQZhx6wzEf+N9/tOxm9KSYcl9DAb1G5atPjyC5G1OvmzVZJAYm3nz0xoSsPwfFgv
         oATQ02ngT/pLwmbFROERrLTJddf2CxXhsiFpK9QuifEoHEhE4v7/XQh2Kawbex/3UkBP
         Kno6cAbRmnHbHp64Av0xI31ZiqT4wZjIu7VOz99YjQhrwJJUV4mzvTg6RPA7XkIfxbe+
         frnWUNPqfcZIvPqYN+Q0PDFsOozKMmIV4iwN3BJ9GenUJLr3R4Y9nHLKSl+gDCz3wKNp
         THTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FwlZLBwi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uPNZ91CiQ3YHIpmbEdn2O1iariracrG62bn2pEUC4h0=;
        b=Ipd3j7O1MBVuvf2Bzgf7UFin7c7iHihLVprrcUws0pe+kAAGMJpsg2g7sK/zJCKyNH
         4XZzCBNlAaiAfOp/9fkXSxcBd6IeuEDjsLi5NkS7Nw5BbCTjMRQv1zvn46mp1UzYfDtE
         q08s9RMo/jnV21JjJxXrcl0Nvj2OVCoXi+4gdggGCG/ovtVgkdgVywFQKSn10Gk/SF4H
         zxSh9cFwQNPoMlYohmNJcKKWziLWzr8uEoLIkKe+P3s/gr4oFAYSxa/9DVLtFR4rOXBf
         Wu18ANDGqp1DdJCF8FA1i7Zz65q8XKRpGzqw+J+pe8+dFePh6uHYGYv5/bETlb/x56UF
         nX0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uPNZ91CiQ3YHIpmbEdn2O1iariracrG62bn2pEUC4h0=;
        b=X7cDwKcYpBg1QUYn97joEySQ8ldWDt7v7Po/1gyYSG3fKGmB3F834WcFTBRImy45pL
         0pMxs3j0NRNhFicG6kHOLg4FdstgFF0J0Tcjgq+4JjrxFkrQxujTnXb6OUm5S9GHIx9x
         btIjIcTpe2iC3/loviZ7vGLZt8YuY73TRviLmIujPM0mqoEsNrD82X8o+TIbcdIpRNsY
         FWY5srU5vXEbGFJBDT+PQLgDSg8RJZ10gpqGxFzXIDmvcROm9SHhrp7X1thJDrUuqf4z
         mU5t2irTKGyYz6v4YMEYwQ3y+qhXiYsGEAN51IjcRAT1kMWPM/z5TnXt3Dt5nkwJg/dr
         BEPg==
X-Gm-Message-State: AOAM5330dCV+rDoBdKyjHSo8WY4BIJb/rCHhKC3q2KGd4sZh6IN9mvp6
	7Bhvem/6997e7rJFeQ/iHAI=
X-Google-Smtp-Source: ABdhPJx491FCfjWgLKPT0ZUPf7BrQLuMjmAD85g3gIquMvuXk5Ij5HoyoT1rkM6UzjOXsgZX2pGiiw==
X-Received: by 2002:a17:90a:5988:: with SMTP id l8mr456905pji.82.1606764828917;
        Mon, 30 Nov 2020 11:33:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bd8d:: with SMTP id q13ls6330502pls.0.gmail; Mon, 30
 Nov 2020 11:33:48 -0800 (PST)
X-Received: by 2002:a17:90b:224e:: with SMTP id hk14mr440741pjb.98.1606764828277;
        Mon, 30 Nov 2020 11:33:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606764828; cv=none;
        d=google.com; s=arc-20160816;
        b=GawICKNRjZLxd188yprjGByRM0zQ7OR+LJXT5uV7/VMFXHWbm8DiKaKSR9I8R9Lmgn
         QKN4kvcne8WcvR31u/zPLsdIkO1B5MI9sklfk5+C09q67rsf9DQDmgNKBWbjx1IPVwed
         6/HV0qQ0zc+YXUT4J/09JvlmLDP7mBBK3PhYlkT9wdTRlrVBgm00CJda6RuJ5UHogZdJ
         hO1uxWgDa4/Exksm7sy8WYf5vqw67L25xxOx2TP1tRE/L2WevVNwcDaJjnplaR39VOKL
         ynaUY1i+Ekpa2gnrl+11c0hUQD2QLpinSIHcU1Q/LIE1Hy5cSI7fK5qKffbGAw5PnWUb
         zZmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CGCfzwd93ASiBjoTcqNrGvupvrJe2uwFFi+sFJL4Neg=;
        b=bZqkdW5eQzSw5pif2IC0dsYzxTTcIl8s0xf+KkM/I1T0i8UqCYOCkJVqfIndO0iJxj
         pII1eLXVOBbpR0PMyaDKCdHcnzNUkiNV4WA7cPdhI7hTAClc6uX9SA1IoXyhkIvHdvAn
         y+R5CgrakeFCWmmh07Rv6+Y0KQaxKUZ1FCReuUiQEhVdrMV8P9w/j1J9xl1mFEHWiw3v
         KbNwEIUzOEJslMi1zl5NHXINrEwbyez+KXBs2DVTSpik+mU6CYo3oPYA1wfiYyZKKvLo
         AXHwDQVtDor3SeFB34LcrS7RxkxuOGJWLzSnAUkREKqH4bRQvEoA/gTIYoDj/NxmXogS
         3m+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FwlZLBwi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id h11si999930plr.1.2020.11.30.11.33.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Nov 2020 11:33:48 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id hk16so209840pjb.4
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 11:33:48 -0800 (PST)
X-Received: by 2002:a17:902:b18c:b029:d9:f:15fc with SMTP id
 s12-20020a170902b18cb02900d9000f15fcmr19983326plr.29.1606764827740; Mon, 30
 Nov 2020 11:33:47 -0800 (PST)
MIME-Version: 1.0
References: <pr6q9q72-6n62-236q-s59n-7osq71o285r9@syhkavp.arg>
In-Reply-To: <pr6q9q72-6n62-236q-s59n-7osq71o285r9@syhkavp.arg>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 30 Nov 2020 11:33:36 -0800
Message-ID: <CAKwvOdn1nCx354hkb15wBDH12aJgbObqPxa_neX5m71axaKRUw@mail.gmail.com>
Subject: Re: [PATCH] __div64_32(): straighten up inline asm constraints
To: Nicolas Pitre <nico@fluxnic.net>
Cc: Ard Biesheuvel <ardb@kernel.org>, Antony Yu <swpenim@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FwlZLBwi;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

On Mon, Nov 30, 2020 at 11:05 AM Nicolas Pitre <nico@fluxnic.net> wrote:
>
> The ARM version of __div64_32() encapsulates a call to __do_div64 with
> non-standard argument passing. In particular, __n is a 64-bit input
> argument assigned to r0-r1 and __rem is an output argument sharing half
> of that 40-r1 register pair.

Should `40` be `r0`?

>
> With __n being an input argument, the compiler is in its right to
> presume that r0-r1 would still hold the value of __n past the inline
> assembly statement. Normally, the compiler would have assigned non
> overlapping registers to __n and __rem if the value for __n is needed
> again.
>
> However, here we enforce our own register assignment and gcc fails to
> notice the conflict. In practice this doesn't cause any problem as __n
> is considered dead after the asm statement and *n is overwritten.
> However this is not always guaranteed and clang rightfully complains.
>
> Let's fix it properly by making __n into an input-output variable. This
> makes it clear that those registers representing __n have been modified.
> Then we can extract __rem as the high part of __n with plain C code.
>
> This asm constraint "abuse" was likely relied upon back when gcc didn't
> handle 64-bit values optimally Turns out that gcc is now able to

^ Missing punctuation (period after `optimally`).

> optimize things and produces the same code with this patch applied.
>
> Signed-off-by: Nicolas Pitre <nico@fluxnic.net>
> Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> Tested-by: Ard Biesheuvel <ardb@kernel.org>

Reported-by: Antony Yu <swpenim@gmail.com>


> ---
>
> This is related to the thread titled "[RESEND,PATCH] ARM: fix
> __div64_32() error when compiling with clang". My limited compile test
> with clang appears to make it happy. If no more comments I'll push this
> to RMK's patch system.
>
> diff --git a/arch/arm/include/asm/div64.h b/arch/arm/include/asm/div64.h
> index 898e9c78a7..595e538f5b 100644
> --- a/arch/arm/include/asm/div64.h
> +++ b/arch/arm/include/asm/div64.h
> @@ -21,29 +21,20 @@
>   * assembly implementation with completely non standard calling convention
>   * for arguments and results (beware).
>   */
> -
> -#ifdef __ARMEB__
> -#define __xh "r0"
> -#define __xl "r1"
> -#else
> -#define __xl "r0"
> -#define __xh "r1"
> -#endif
> -
>  static inline uint32_t __div64_32(uint64_t *n, uint32_t base)
>  {
>         register unsigned int __base      asm("r4") = base;
>         register unsigned long long __n   asm("r0") = *n;
>         register unsigned long long __res asm("r2");
> -       register unsigned int __rem       asm(__xh);
> -       asm(    __asmeq("%0", __xh)
> +       unsigned int __rem;
> +       asm(    __asmeq("%0", "r0")
>                 __asmeq("%1", "r2")
> -               __asmeq("%2", "r0")
> -               __asmeq("%3", "r4")
> +               __asmeq("%2", "r4")
>                 "bl     __do_div64"
> -               : "=r" (__rem), "=r" (__res)
> -               : "r" (__n), "r" (__base)
> +               : "+r" (__n), "=r" (__res)
> +               : "r" (__base)
>                 : "ip", "lr", "cc");
> +       __rem = __n >> 32;
>         *n = __res;
>         return __rem;

The above 3 statement could be:

```
*n = __res;
return __n >> 32;
```

>  }



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn1nCx354hkb15wBDH12aJgbObqPxa_neX5m71axaKRUw%40mail.gmail.com.
