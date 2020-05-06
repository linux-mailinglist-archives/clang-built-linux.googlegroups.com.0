Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2UWZD2QKGQEJV2C33I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C811C6546
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 02:57:15 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id l4sf60625qke.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 17:57:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588726635; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ki0IAw4/bOq36CYTckhVXzKCKTh9G6fKtjKK7yUDMXOciU4klnfy9LCWkU3aa0CY7O
         qTkkY+BN4NaCJytGsIJZ5mzU/0KJrKyMMlU+nWEDzV9J4if9TQGHALJzmyBcSXukwNTd
         EO09he3GGkUcGKoqiWBFLS9Bzcj3wCuiE3tCozsED6xLL9v0TIDaUeRWF/ohVSlScuAt
         MAN1jLn5ez+tTa86AWlyy+2qC6fEyVY9yebLaJgUBx3yR4+kYyZQNw6a8xj+aJFt4Swl
         EsxmzbSxLY0npj/Dty2sdJ7bwlaZ/PN+wdPGCLGKbWnm3o5ceCZbYAVCk/WUVSmr1yWD
         s7LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fJXfE0oFoggCPGvyRz7pQHUkF6265G7O/Jz6s5/RscM=;
        b=iAqk9gWOPfOK9ciBM2OQdV57ziuHFEC2VF+fxctW3WOGJFcnIKoX83b8OgzzBIrjCH
         75PElsPc590jbHt2RAksSGL45+yVgOQYnwJwuh9YzGpUNuiWThRXp/8Rclj9pz6TJQCK
         Gf8zaWJ01Z/YZyN767V2Ngf1iICgbLM5zvq3HoGgf2eRGhmiRVCqWUg8Hh7lBzBTuJKm
         MEXpydES11ZYoseZ6n49pwU8lgRIk6gVI8u3VssY0gw4nHVIU/oC/UO7gTU61WazGqOd
         DtlrjewbnkKF0+JGzOIfVsDAUez0sJFJkcyLHYr4BbFCOzEEdy6uGBOBg3hHA8YPilFm
         /1Fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DcE22RUc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fJXfE0oFoggCPGvyRz7pQHUkF6265G7O/Jz6s5/RscM=;
        b=QppabMful3tCVOMwQ9pESc6+Rpw+4rBDyiJDGWgddr+HsIMVBeCWj/orWVZDwZtrOL
         uHN5heC0Uwch+X6EYt/WqxUe4XVesMrUy3DSjsy+CGZ2e/iT9hQDgwjty1DQp4ZntQIh
         Fg76MS5vASgbZfTLxrziazxF2RZQsLZS22OfUf7bqa+Urwc6cqADUt3/n7EI29786rB7
         jJ4y/kCDKE8KPwxYP0rg9+m+qCKCv30SCA6vqH95s+JO1QF7I8o0JXkP+YM6oTzta45J
         v+3K52TB2jwoKTK5fuZWTeVOS8ov71Sh1HprEY8VbyYRUpGZLsTbS0JigvIVnOKuDmpC
         P76A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fJXfE0oFoggCPGvyRz7pQHUkF6265G7O/Jz6s5/RscM=;
        b=Rp4C4AQEwUQfRR3UEBwzZeGRLujfXpGnqQZHtO0lN+6nRCfLWjSyXnfwtkIe+7ltRh
         Eqyb3lZB+6kptXuD86zXk1b79Oek+z6wVIDcKxJQojmJUeFOA9hZdH3HKq7LoUu600YE
         MlFxetp+1NkGcGrFttS25qWt2QWzhGkzllDRlyZ7FAAbkzLn12C8jZSFTbUZj8WFZP/t
         xJSCC8yJkyI7gtbmd30QGqxsnTe5VTwsjg9cHAXoYv2UKPmRkLFmi7uMkG341ojTj2FU
         BbVpSmxw2cwp/tB8O4q07AJr+XV8BGaeRAkCg4aheAoOxGgjLDhg2auB0MA4DQgtD7uk
         MieQ==
X-Gm-Message-State: AGi0Puab1A41dBU6d5qp4qe1LwK0D/c0lfn1HQt1dMEnYBBKTHNDTyrd
	ftaIbgWgHl36QKUgopYlMm4=
X-Google-Smtp-Source: APiQypIeNq/H36HxAp5XMwKhekG8idZ97Pna9hNlyZgDbMjrBDY9qorWlI2PCSZZj2vB6t5fouK2yw==
X-Received: by 2002:ad4:4e65:: with SMTP id ec5mr5682369qvb.32.1588726634839;
        Tue, 05 May 2020 17:57:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:8c81:: with SMTP id p1ls286960qvb.7.gmail; Tue, 05 May
 2020 17:57:14 -0700 (PDT)
X-Received: by 2002:a0c:e88d:: with SMTP id b13mr5468204qvo.245.1588726634484;
        Tue, 05 May 2020 17:57:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588726634; cv=none;
        d=google.com; s=arc-20160816;
        b=J86P2nqqS0fsJNZeWc5bACQGwG4aWU8ygdfSQVyFbYSAWXKsBZgCZ5vKsS45grVJDn
         YYVg34+PabXgr6R3qTJXejWA9U2Nhx5jxQWsLYJsbIHycNinragRHxgfD9dXKdnEWPPi
         gik+nuzZuyYTum4I3BbNLoF3ffMVSLxiMTN+mduOzeMEQK/PN9fn0jEOpSg1lxp8Vk20
         db5HNlUsKl+YWjfdEkWJYef53+PH8O0mIPJslFezNTXjiQGHtpgkhEnQ5wvVA+OZALFv
         VgRBJSPZCMT41WchiUPYfH4OERxDdvYiUwtPKXfqqnAIXDUFS5yqYQvZyVRdBLZPVFmS
         4IIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pScRr5uqbrTBSYc99OCu9vH2CIfzDW93aphY7TGoD6Q=;
        b=E1Cwz67c7TOMmLCk/k1MBL2L82JYmyvzRiujBd8KI6ck5BPypPClZQwPZj1Eq8ovhk
         lGrNmqJ1AjqUVm9t9M5s9S23SQOwTPAWSagEMEHij8Xqe9Kumbwk+aIci+xscIW9lMC8
         KnIiQNHdsuJQ10GLJZxpeaNtEaevQWHJxo+rde2vPvru/wgvWarTOOmPDwdhQEvfaVla
         3Pud5e/mGQbRNNyfAPlKzW8T49T+vQhc32/F+/7f5awzZckz2F1bTonRALnOK/X5bdlr
         O16sCMxGnswY+huWyypWHVjgPmjOcEOiw55d17QGDXEAbwhr9r1to51ZzV8IDveFzbmM
         G8lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DcE22RUc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id t5si35704qkb.4.2020.05.05.17.57.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 17:57:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id b8so12058pgi.11
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 17:57:14 -0700 (PDT)
X-Received: by 2002:a62:1452:: with SMTP id 79mr5771566pfu.108.1588726633271;
 Tue, 05 May 2020 17:57:13 -0700 (PDT)
MIME-Version: 1.0
References: <202005051617.F9B32B5526@keescook> <20200506001453.764332-1-Jason@zx2c4.com>
In-Reply-To: <20200506001453.764332-1-Jason@zx2c4.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 May 2020 17:57:02 -0700
Message-ID: <CAKwvOdkqns7dxd5Zec2eGA0T6HAxnN0-QKmzD9ULfRJ8kw_dyg@mail.gmail.com>
Subject: Re: [PATCH v2] security: disable FORTIFY_SOURCE on clang
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@arndb.de>, 
	Kees Cook <keescook@chromium.org>, George Burgess <gbiv@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DcE22RUc;       spf=pass
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

On Tue, May 5, 2020 at 5:15 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> clang-10 has a broken optimization stage that doesn't allow the
> compiler to prove at compile time that certain memcpys are within
> bounds, and thus the outline memcpy is always called, resulting in
> horrific performance, and in some cases, excessive stack frame growth.
> Here's a simple reproducer:
>
>     typedef unsigned long size_t;
>     void *c(void *dest, const void *src, size_t n) __asm__("memcpy");
>     extern inline __attribute__((gnu_inline)) void *memcpy(void *dest, const void *src, size_t n) { return c(dest, src, n); }
>     void blah(char *a)
>     {
>       unsigned long long b[10], c[10];
>       int i;
>
>       memcpy(b, a, sizeof(b));
>       for (i = 0; i < 10; ++i)
>         c[i] = b[i] ^ b[9 - i];
>       for (i = 0; i < 10; ++i)
>         b[i] = c[i] ^ a[i];
>       memcpy(a, b, sizeof(b));
>     }
>
> Compile this with clang-9 and clang-10 and observe:
>
> zx2c4@thinkpad /tmp/curve25519-hacl64-stack-frame-size-test $ clang-10 -Wframe-larger-than=0 -O3 -c b.c -o c10.o
> b.c:5:6: warning: stack frame size of 104 bytes in function 'blah' [-Wframe-larger-than=]
> void blah(char *a)
>      ^
> 1 warning generated.
> zx2c4@thinkpad /tmp/curve25519-hacl64-stack-frame-size-test $ clang-9 -Wframe-larger-than=0 -O3 -c b.c -o c9.o
>
> Looking at the disassembly of c10.o and c9.o, one can see that c9.o is
> properly optimized in the obvious way one would expect, while c10.o has
> blown up and includes extern calls to memcpy.
>
> But actually, for versions of clang earlier than 10, fortify source
> mostly does nothing. So, between being broken and doing nothing, it
> probably doesn't make sense to pretend to offer this option. So, this
> commit just disables it entirely when compiling with clang.
>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: LKML <linux-kernel@vger.kernel.org>
> Cc: clang-built-linux <clang-built-linux@googlegroups.com>
> Cc: Kees Cook <keescook@chromium.org>
> Cc: George Burgess <gbiv@google.com>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Link: https://bugs.llvm.org/show_bug.cgi?id=45802
> Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>

Acked-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  security/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/security/Kconfig b/security/Kconfig
> index cd3cc7da3a55..76bcfb3eb16f 100644
> --- a/security/Kconfig
> +++ b/security/Kconfig
> @@ -191,6 +191,7 @@ config HARDENED_USERCOPY_PAGESPAN
>  config FORTIFY_SOURCE
>         bool "Harden common str/mem functions against buffer overflows"
>         depends on ARCH_HAS_FORTIFY_SOURCE
> +       depends on !CC_IS_CLANG
>         help
>           Detect overflows of buffers in common string and memory functions
>           where the compiler can determine and validate the buffer sizes.
> --
> 2.26.2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506001453.764332-1-Jason%40zx2c4.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkqns7dxd5Zec2eGA0T6HAxnN0-QKmzD9ULfRJ8kw_dyg%40mail.gmail.com.
