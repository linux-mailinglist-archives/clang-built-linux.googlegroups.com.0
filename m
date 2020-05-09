Return-Path: <clang-built-linux+bncBCT4VV5O2QKBBGWA3L2QKGQEINLUN6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 419241CC13A
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 May 2020 14:20:44 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id o6sf3751113pll.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 May 2020 05:20:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589026843; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dh01C8mR2Pcvgbg7UwwmLXQEP0LNhuSuhxDD0JfZOlJqx2vpTf98gPpLXFzPnKZdRd
         kOKH+RxsVvOqfP1bz+8zbBDzJLC8PCbNrB439jb/DdDJLARPZ3jYMDIXLr/yRG5SPq9F
         U4nVvYfSha7ubOBL6mzK5UR+Gli84QEFZOWblPLFzNgYJMPvVc1cTbJEYhsMHmr8/RAU
         UrCYom6QXBYGuC3grZzDLBDJRDgkmrUzTLUENsNNAdeXFUawpKIn2GMOMWVjp7ExFl3Y
         BQemTJ4hOpH9VLCtzIz8/OC4gzGMGjAfIf9LUTR4ah23GFIhZoknPls8xp6cpVVJ1Gfu
         DUZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=3WhBQevF6ePwIyqRUxGxIgpl0prQb4g9kPsfylGcVNA=;
        b=I2avm0itT35IkiiKbpVBl6NdSEwhDvpVKzzydP19JSDu5aajbea1ymgPS16OjeCTP+
         bjAfdQVUbujxUc0IkNJjeXAGWOfz7M96RNGXQn2YgypRrX1LVhnL/NLP7mG2CMlS5y2C
         LKdOFu1unFAQOW67yFj+tvO1XwaiWw7D/f1ViMVK//4oPt6+yRnvZtMJ+AO/gYh8hn3W
         Ci/2WBpnXDMv0/FJ824jjySBtoD1fJBFW1zJ7n5v5QULVdo3IzDoSMc4ZMiqeqRU5cbh
         Qbq7irO7fYgE8W865y3yX62prmV/OWATUUBrd63xuVATs5TEANTWcXRFAg19uIkCCBQQ
         1c2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MWxIXHgd;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3WhBQevF6ePwIyqRUxGxIgpl0prQb4g9kPsfylGcVNA=;
        b=HCwkgsd1oR5mYlbC13l9cQiewUoknitwp0lyYbPQkbx4XMtrLYWl4oPxjdqOvSodj5
         Ut208Lhm6xkcTHVuytbZn2aYdAxf0/uFM5POctVvUuBtW0f7h/WmAqKfQy9Kv0UYVDUX
         ilODWcw9kCdGNq18l0iIyGEPNFkoA5m+N4olWIp2kcaTP78sItGDn51kGQWWAQC2dpR1
         4rWN4fgTeC7cGvUi3VSyFTsKjnunaiIvbJlUZ7eYHAgCwpHnSRm1/Zib4Lw4pykvf6bq
         6m5wFTwfjzpb/68OTyA5J/43hwNZ/nIxc6h6WsbnI6OKb7enWlc1MHYf7FTJO5qquWqP
         XhPA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3WhBQevF6ePwIyqRUxGxIgpl0prQb4g9kPsfylGcVNA=;
        b=VxfIhvE0biwphDhS0rYfPVsfrNTrftrymCR2oSTPdk9U63w6fzQW5bgoEUxf/00pa8
         j6JGxBug6pbQx1Ty2/5t0mzri+tcVPhZkrnCikrdaGlOvd73bNaIETRLhBD+hmtCRltd
         GUCjDv9j7cLK7X2Pl3tJO4r/QHJWMcLcB/lf6qUrrzvN86AK7nKN15UKsKz/R7diCA2S
         tEeTgp4xZAaBu5bgFSXwP72nEbWjYKF/6lxQIqPD+up7v6UnsHgQcPyh5IxHTdcxOkab
         y5WV1mqgL3lghbnPoc8i002DzkQLzX9aiTYfUIdTwQ9ihutMPD7EOa+I0c6DqVbgr3sP
         JBpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3WhBQevF6ePwIyqRUxGxIgpl0prQb4g9kPsfylGcVNA=;
        b=B+EG+ClOz9VjD6jbf3qVsxgB5eURklqYleruTTgOI4suY/WIBFeVUGqGdSFher0XJ/
         RlBvM8dsUlMHKq7fXUuET4y2wI+vJRWOh64ObJip0SBoAISc7qcuIW30eYhFIq9TwLx+
         Trq1yRI92rC+2Lbht9F0n0GTCP2kkiqgxmtUV8ADwGa5Eojy/4MqAuS5tQaxU5Ivhl8R
         LhJY07hOjG+ltODgWUDPPfEfKjQRvUGkCgzrJkWSfpKd8ECQDyfI4cWBBopmukKSG/LW
         lVqpw0U4WlzRPNbzUTIUWAel/uuoQYo4zYnQ8IHyi57A79f8Xye+7WkDtOw/SrAw2zKl
         sIVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYRIrhv8c9YGeTCxZhSBfkVlc/qJzhaZwPig+y9NjxRVxY6KOJc
	X0j68h6GguTXUl+EDAPTZNw=
X-Google-Smtp-Source: APiQypKMZmU3ichre3u+8h3/UTC0FNz7hUDKqwodNt23tAi+1SDCmAFHLSpgsw5LLNIs4Xk5PVbePg==
X-Received: by 2002:a17:902:6b07:: with SMTP id o7mr6505155plk.74.1589026842570;
        Sat, 09 May 2020 05:20:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:55c3:: with SMTP id j186ls3137349pfb.6.gmail; Sat, 09
 May 2020 05:20:42 -0700 (PDT)
X-Received: by 2002:a62:7b51:: with SMTP id w78mr7836972pfc.300.1589026842010;
        Sat, 09 May 2020 05:20:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589026842; cv=none;
        d=google.com; s=arc-20160816;
        b=poSmYxJyMfczxHbswypIKHjy27evB2g8qAgEOrsqEtA+GZ8mdm+TZ7TIB5L4J0sHjN
         xideVjduyEczb8EwqFnaMWefXHklBz51nDsLkVrgvSrOsEeLIfWcv+UGPqZ/ZWFmBTI1
         QgyWLrR5nYbFlg3FXer0QI+0Qgd3CzvHw6wgYmFawWlxPKc/C/sWwVZZfuBnXmHG+R+J
         mfRln0V3j0bnqEIlLhbAMXvQJYVpjd1ty2/FkbcpfKQQsGkPDSNmTT/rqN3zZcQcf2Gf
         qgUfREAUBXGfW8MxplOvasN+2iZWcd463idZ5JR6z3BIUeHOq5bf4mWzLqKaD1Nvck1n
         glow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZXKyYGr9YIbgPDRRYEd+DzsyJNldm5JCechXyPM1bv8=;
        b=FFlZ0Nj6I+5wdClGOHANGetea6q2PqXZVuPjlGTJAM7WUqiYKgFW7iqMUDzJa+iyrO
         c8Gl3A/LOsuGX4eSTooWpCB0DYbAvs230YSaVgHT8iQFjMc+d/T856fUPzFdV7ui1M0A
         GmmS4R+K5pI2a6rzHOvtCvucs1pVh9EHQMvjlXzcB6Kd3sDR7XV2de85ZrI+1PYbYwod
         a1bQdXpWCG5HqTbXSuxH4ZZoS8njagjTrHODxdbH4x/YSTxZW18bdIARrfjcsMLXQ3u8
         aXH64es3pTL5h4AywVWUn5XZ+sU+pK1Qbh/Ni9y4XpJhPAOqgVOwXWIbr10S4iK/BOgP
         J8xQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MWxIXHgd;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id t6si1297201pjl.0.2020.05.09.05.20.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 May 2020 05:20:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id q124so2176307pgq.13
        for <clang-built-linux@googlegroups.com>; Sat, 09 May 2020 05:20:41 -0700 (PDT)
X-Received: by 2002:a62:5ec7:: with SMTP id s190mr7484973pfb.130.1589026841665;
 Sat, 09 May 2020 05:20:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200508182835.228107-1-ndesaulniers@google.com> <20200508183230.229464-1-ndesaulniers@google.com>
In-Reply-To: <20200508183230.229464-1-ndesaulniers@google.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 9 May 2020 15:20:30 +0300
Message-ID: <CAHp75Vcsi9o2eUbyozhmPEz6Tfd_6ZFk2q-vcdrm9QxcVPQwMA@mail.gmail.com>
Subject: Re: [PATCH v5] x86: bitops: fix build regression
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Jesse Brandeburg <jesse.brandeburg@intel.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	"kernelci . org bot" <bot@kernelci.org>, Andy Shevchenko <andriy.shevchenko@intel.com>, 
	Brian Gerst <brgerst@gmail.com>, "H . Peter Anvin" <hpa@zytor.com>, Ilie Halip <ilie.halip@gmail.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Marco Elver <elver@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Daniel Axtens <dja@axtens.net>, 
	"Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=MWxIXHgd;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
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

On Fri, May 8, 2020 at 9:35 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
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

Looks very good!
One question though, does it work with minimum supported version of gcc?

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
> Changes V4 -> V5:
> * actually use `%b` in arch_change_bit().
>
> Changes V3 -> V4:
> * drop (u8) cast from arch_change_bit() as well.
>
> Changes V2 -> V3:
> * use `%b` "x86 Operand Modifier" instead of bitwise op then cast.
> * reword commit message.
> * add Brian and HPA suggested by tags
> * drop Nathan & Sedat Tested by/reviewed by tags (new patch is different
>   enough).
> * Take over authorship.
>
> Changes V1 -> V2:
> * change authorship/signed-off-by to Ilie
> * add Nathan's Tested by/reviewed by
> * update commit message slightly with info sent to HPA.
>  arch/x86/include/asm/bitops.h | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/arch/x86/include/asm/bitops.h b/arch/x86/include/asm/bitops.h
> index b392571c1f1d..35460fef39b8 100644
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
> @@ -123,9 +123,9 @@ static __always_inline void
>  arch_change_bit(long nr, volatile unsigned long *addr)
>  {
>         if (__builtin_constant_p(nr)) {
> -               asm volatile(LOCK_PREFIX "xorb %1,%0"
> +               asm volatile(LOCK_PREFIX "xorb %b1,%0"
>                         : CONST_MASK_ADDR(nr, addr)
> -                       : "iq" ((u8)CONST_MASK(nr)));
> +                       : "iq" (CONST_MASK(nr)));
>         } else {
>                 asm volatile(LOCK_PREFIX __ASM_SIZE(btc) " %1,%0"
>                         : : RLONG_ADDR(addr), "Ir" (nr) : "memory");
> --
> 2.26.2.645.ge9eca65c58-goog
>


-- 
With Best Regards,
Andy Shevchenko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHp75Vcsi9o2eUbyozhmPEz6Tfd_6ZFk2q-vcdrm9QxcVPQwMA%40mail.gmail.com.
