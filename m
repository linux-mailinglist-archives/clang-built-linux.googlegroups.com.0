Return-Path: <clang-built-linux+bncBC25XUMBOQIOVRWW6UCRUBFORH6VI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9991CB707
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 20:22:36 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id h13sf1906789oov.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 11:22:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588962155; cv=pass;
        d=google.com; s=arc-20160816;
        b=bws4QgtywkVHHoVtlvuWxHIksCiNEjqyJFzTKuVoFNJK7JTf+nA7/odMDYvGytFych
         XLjVe8qpWdFpeDgld2V4GX/PZWXMnjPkOzTRE0od1wwHAYvL/8j61fE+L5r31jja3xEv
         I8bx2Katu/zrE40BREf92UCw0nTeEKYO/JXa58GTksmEdRaaLT+yjt/gXZNFhIjqgl6z
         55ut+BASJ0LlQ06myEfQcUNtJqNgWznJ+PULbY6tj+rqxcZ8YoCz0zOL7zCICOFv+oaq
         QCpvFr1r+w6AO2/afb9lVPg7blVhLF16HD5UMldDveoCywjwvzvsxCowO4Mcm1XCxD1m
         tynQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=VVdeB2eOf7iMnFpY55IY8Bc8DmD0hTw3B4d/Ocd1NjA=;
        b=SD1belnqqpKeLkGKrO93S7UijRSU5lAMqIBCM/etfieRLpGWyRJyTOZnxXfx9EDMy7
         hXXQZpuhMBFdIo6L/MmocER7z1jJqL15456bY11gjIm145GQWKSvblti29hDQMnZ8pWC
         L/GSat5VeTipgdeNfuDdbWZa6WmtaVA/RwC7COL9etNkevfLQvS+a86+z1vDrZ2JTNmu
         m9RMhXeahALZ62LmcwtMJzvdzuc3+EZpI5Hbtj+Cjvgnoo/cmHu9tcoL3cJeSPUQ3rqN
         ijTCbGAm/zhuAOFpZPCMFmqz8ZgHgT6+racsqSa6iuihw8yvALF2BNx4ra+0d3N5cTlp
         M6yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oo4EcoTS;
       spf=pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=brgerst@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VVdeB2eOf7iMnFpY55IY8Bc8DmD0hTw3B4d/Ocd1NjA=;
        b=B5WX7E8zddYxnffvr6Yj+8n+spyAnBNpitqRQzq1KM/MoPFrOkCXNExiDR1pdJWV+K
         WwjuGdivr8pbyZNuZ47pkB2FFOYaT2c9rjXKpx6RgOg9PcET5xW98VVDZbgkAUH6RLIA
         VD3G093OOAyMQYNiMqp/rV3MuZc0TG53Eg8YuoSXG6AZ7lHTC4tbfeGrpN7PHrK3ZtiO
         mrdYovxRZZJhH7cAYbboFc5t2/Nr7DI92Rh9/tJ0hJ6SA8DXDac/3SFOorocHjIt44O7
         jRbo0Nmp8ABF3lVFR0NMqqkJXYba9lQRI80cum0xvw9tsvtZb9V+8bbVByjBlFio+yP3
         1bKg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VVdeB2eOf7iMnFpY55IY8Bc8DmD0hTw3B4d/Ocd1NjA=;
        b=Vu5D+tLZx9huIenkxcJnGyu3oo8inc4Bj8oraxIANKzJv+3NA8V26GlBoaJFZNNjI0
         D76S/U98p3eFrK8kE8khWriuD6NUY2bcpujyXoA6ayJREtvn4npF4fLcSSB44EXVlTG6
         TMjGnUAvOusb7XZySmBfzMVnjEsh87/LCY2MONf32J5eeP+SRcrRyTI2fPb7gnad+3cM
         73656wANq2kkb47t+DGvn7Jw5kFHHcWxxR/PPai1fs59+P7SXaKNBckBPB5creS+P9AW
         H6K3eAZMY52A9dvtxsmbcMRtXUjIv29gfCUM+RerRD/AJ8i8Tfw3v43qsMfgM56eEnP3
         poxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VVdeB2eOf7iMnFpY55IY8Bc8DmD0hTw3B4d/Ocd1NjA=;
        b=sPofewkn1M3+eUm1weYCQEuCFY+37c/TkptSWgeq23NCEBhAaTIOXAJNz3KfgRMZ7U
         aMNsVs0uCc6MipLFK9Nip98n9BVQrRMU9LQx+8140Wn+twTzpyS6MIq0uW6h0pP8GLnt
         EEkt8avy2UDVKTutieEOXaVCj8b8zHr2sNJuoGOthjMSAemKRCoeBPn47irNT72mOK2O
         QOo5dxrxstht/hJhzr1nP5onbM1K7iZ8bm4kkn1RnoUkEbB7X5UjRG562BHIzzDyebTg
         bsCLFPrObRwr6wBNWddPyyeKyKMQFtWHTdUAEPxG3GnsLJcYwGyv2GMEhUhtCn7e0kyg
         rsMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub7w9EkTsRt9Nt1OeAaNMkHlUkZqx+8twWnidGtbL4NHM5I6H/n
	bvJKAF5C/dlv4M57RYyFUIM=
X-Google-Smtp-Source: APiQypJYXN5xajApzxEzwUWjAhNlvf2WKdK7KUiH1cOVnSDxFuTb+EL74VZ1XwE6Y+PadQvZkgl01A==
X-Received: by 2002:a05:6830:4c:: with SMTP id d12mr3284350otp.85.1588962154987;
        Fri, 08 May 2020 11:22:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:dcc4:: with SMTP id h4ls204071oou.4.gmail; Fri, 08 May
 2020 11:22:34 -0700 (PDT)
X-Received: by 2002:a4a:accf:: with SMTP id c15mr3645622oon.29.1588962154627;
        Fri, 08 May 2020 11:22:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588962154; cv=none;
        d=google.com; s=arc-20160816;
        b=uk6BIwGjKMs9zhKhT3hJ4rqc7l7Cv4IHspIK9JTAHbeezkQZEhqjfNeqeKO2DmUx56
         VDlOh2GaoXpTJTUL0UVy+d0q8B9r22Hx11aerwDDuYJnsRRwYywaAXoSliy717wzlPIN
         qt5JLw0wA/o+ygSXO8zOc0uFp+HZ80hVZDr7YCVwEif4bgRPqErnyZt/7qWMbjqg/D1z
         1jwvVjxCSimSCUuGZxAP9tSbyqSXaHyL6OZ+SLXUqgK+/acAWakMtRNju95N2OjB5Otf
         jYAu8QgHgX+7H3yrjYdRwvYsTht/YBK3nx5wARx8cHROO++VO0B1Qy6gK3f6HKcinitf
         G1ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CuLGBSMOTYn4dAx7WFdAghXNS6+9FS80m4Fr5hGuJ/Y=;
        b=UdHnCiIUcHnmxdiAWsQbCeMD/bTxRyReepwNZGDU1pD9ENnrKm0/I5Xqlw8hlJ2apW
         zA227qK/oXnxM/EFmIfor/3NtYm1QBOyr2ANRAs0/QeK0CsXlC96GYm/kB2/E6kvMrAV
         iNjxvHMNWENHyIIrrUKScz7Urt8Jt2OdN9WyZXwxQQKpg4qAgt9y+O9amz7Mso/Tiiag
         099CXqHfULWJMorXIsZ7QG1qnfZWEk254UfX2+o1yKFXVcV715XeVly0W6rKZQvm6lI2
         bwunpdCDoTenMCEobC2OLXIMy6GxDkD1CXiNH4W44FQ/IuvkBiXromWO7078UMfkxpI+
         J+ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oo4EcoTS;
       spf=pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=brgerst@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id t29si191042otj.2.2020.05.08.11.22.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 May 2020 11:22:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id w11so2731691iov.8
        for <clang-built-linux@googlegroups.com>; Fri, 08 May 2020 11:22:34 -0700 (PDT)
X-Received: by 2002:a02:c848:: with SMTP id r8mr3811480jao.55.1588962154227;
 Fri, 08 May 2020 11:22:34 -0700 (PDT)
MIME-Version: 1.0
References: <8f53b69e-86cc-7ff9-671e-5e0a67ff75a2@zytor.com> <20200508180549.212957-1-ndesaulniers@google.com>
In-Reply-To: <20200508180549.212957-1-ndesaulniers@google.com>
From: Brian Gerst <brgerst@gmail.com>
Date: Fri, 8 May 2020 14:22:23 -0400
Message-ID: <CAMzpN2ix+Ltu2_4ORaeqD0_6VmDUxTRDVbvaJ+Q9D8s-5p7Bhw@mail.gmail.com>
Subject: Re: [PATCH v3] x86: bitops: fix build regression
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Jesse Brandeburg <jesse.brandeburg@intel.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	"kernelci . org bot" <bot@kernelci.org>, Andy Shevchenko <andriy.shevchenko@intel.com>, 
	"H . Peter Anvin" <hpa@zytor.com>, Ilie Halip <ilie.halip@gmail.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Marco Elver <elver@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Daniel Axtens <dja@axtens.net>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	"Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: brgerst@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=oo4EcoTS;       spf=pass
 (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::d41 as
 permitted sender) smtp.mailfrom=brgerst@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, May 8, 2020 at 2:06 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
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

arch_change_bit() should also be changed, but otherwise looks good.

--
Brian Gerst

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMzpN2ix%2BLtu2_4ORaeqD0_6VmDUxTRDVbvaJ%2BQ9D8s-5p7Bhw%40mail.gmail.com.
