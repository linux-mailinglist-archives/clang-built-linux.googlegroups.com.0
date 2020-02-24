Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4F22HZAKGQEEB5KKNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5933016B5AA
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 00:34:09 +0100 (CET)
Received: by mail-vs1-xe3d.google.com with SMTP id j8sf937138vsm.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 15:34:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582587248; cv=pass;
        d=google.com; s=arc-20160816;
        b=aRCXGLaiKkoMk3hKQqbfC5CL1Jyob2HPls3BJ1Tj2MDA+MgJR94xnxdbtXEkzESJVA
         vbh4cZr/j3RchM4kh6bhUx+XsFGab29BEzH7kD4OmM8qZHYXLonGOTjceMiw0z2YAo1H
         mJ3ZqTMSF5eba1JQW1YlfZYWutbi/yRWGqDMZ+OjsvubZLKexl05VgNQYKkHzqZCuqoY
         ImsO3ltghy/PhI9eCMHgYlHcv1KOZw8WrGNu+tMWYx7HYnUJbPZaBStClFXwXZGjt1Wi
         lxwuVZ9eeLZgJMWi7sUOWo1b9pP/8OZXKWEneHTHWXYmiTAm5ktxN+LrQeujNZFGhDYv
         LQuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=d/VpDqJVNnQ8SQne+CdxEb+1qUJ5iBUMlt3TK7S6//Q=;
        b=TcKarI8YZe6aQyQsBFJoSpwKy4I7RJFWHDDYZCJne7kA1cf5yMVbSy9uYi7HcOnGJO
         09WX3aJAWegmGm6BpEpSc3jSOAoTMhoQPULyd0qwURMaH5xP8XtE9AlhFxJwXuf08Q6t
         dPbbNN+x5zpzsJXr9FwJ6Tu/hEGz6WhQKFiFPhyvfHAQZlHhDfYWBBxK97lAklzItz+E
         sjDVbBg7JLWAKdJv6TzpGcIvsSdRJJeoem8YGM32Udz/QCf7G0rAYC+9Bt2hBlC6MI+d
         M1Dx6YDVe5zNm+7km36YYTP8ypViETaJKXFhsEvoFj7poPhsxzguDymhqfrdSBnAfh9x
         b2Kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZH0IMObb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d/VpDqJVNnQ8SQne+CdxEb+1qUJ5iBUMlt3TK7S6//Q=;
        b=nXtSLA649pJXqPVoI/YTDfFOHQVd7Dts6pp5PYpViTw99MlKL4jf2bySDV6FBta212
         Bx7+FpZOiC3MDnqiurZQ41mzDOtulhtRSMfKb1eFIajzIS1tVZWU8ligWTn7h9ZUpupC
         RqlBaFHrKEEJZhOw5wDRKSgEwYgvxvGrq1Z7f+bfeFB5ZX2bmnt+W4OYjWzv6WMTRMzk
         bTy0eG1OSJhDfVauiiI19t4LjSmTOyhBgcNNpQ0VXY3bVcgWExVAi0mP7rC7UPNQ8hmH
         re4o2ORL6sGpTseS+MLO5XD8pLMzoz12VT3xnv3BN+2Iinxw7U7qr4SBsO0q1U6M+SAI
         LKCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d/VpDqJVNnQ8SQne+CdxEb+1qUJ5iBUMlt3TK7S6//Q=;
        b=o3p7/ZSHCnCjzLuN2HV0TMeCwO+TSlfRdHUczjTfBv7waJqeqehry3UN4PTC2t26oa
         pVs8fcIYqlSq8K11xRnQ3cjLhCUwm3OFhDwbAAP8hl9SPl0lFgq+OODTYUb5o8dgtPZN
         eKvKgpzQvEjuTtSi/Aon+3Ib3ytDh1K0+pyzamwROr+KXzuyCEjERj+2ZXILLcTMynXJ
         9py/b3di0L5iJ1Q3LB21E34gGAaMwWiBBMw5jsO/ZVUEEIKXl5+6kU1kgIKOO7qGQoXG
         biLmDZF7U/wypJ/jJLq0q59+YstfxhSwBCxLmk18RkY0yf+fK96j6/omwE7R7b7BEcMA
         Q8JA==
X-Gm-Message-State: APjAAAVfJbcaj//brcB1vJSPJPwaVj/wOKJXqDs5qH28nHOVc2xyMQI4
	PnjH+DOoVAp+9PTgxvBllrI=
X-Google-Smtp-Source: APXvYqwALw6Kazc584h+/v/Iy1ZvUF1zz8VYIpvy1P5vV8DFxlwDyGBpcWuuc1qTT6B6L7WPi1WE1g==
X-Received: by 2002:a67:6605:: with SMTP id a5mr27237737vsc.167.1582587248428;
        Mon, 24 Feb 2020 15:34:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3752:: with SMTP id a18ls736546uae.7.gmail; Mon, 24 Feb
 2020 15:34:08 -0800 (PST)
X-Received: by 2002:ab0:70b6:: with SMTP id q22mr27360336ual.78.1582587248059;
        Mon, 24 Feb 2020 15:34:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582587248; cv=none;
        d=google.com; s=arc-20160816;
        b=a4BmYawRiSkL4WxMdMdvlJC3J+dnURofRNOujNScuV/XOL/D5akDKTcPIXAhdbUzv3
         fSAJdJexIELRvl04mY7RbVBaNCzg/bTcKwg/f4I4vMV5XdWoTEDwZHDEDPYVz6yVu7d/
         1TrbDD2fVRyRs5FTteYAcGtLxfz4h9QTi9/SsWJ0JWkfuPx0yXFcX1c+AgMR/W94v1Ec
         b/7fmSfPhxTKxhE1tWOwHZ28d4yaj+PJGpNNOqAAF+4ZBdQfc7b2UxAAN1ALhF2zcd1h
         UJxwXMCzH+D9x7JhmlG2JT8m4Rj4tQb9MuGOEYEwj/IcjQKW4ISC+FdDwEwIIJopa74D
         ReFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XFUwyglKUk6D3XnYFci54N4jRavS/ro7uLfU4m/GniE=;
        b=JTLVxqB8cyDGLIV6hFRVyldNIBFzYDeB9JCjEwC1hFhIc7/uEAgbHU9qDt8bJ9Ur+q
         A/ruD11mTSspvNR7wGNObkcCvnwHeafNzlvDEFSiYNwZabSrhVLWidF/PiEiv/v4tIsN
         8+wd9XG86uot+DwSpVrmcRKVg2f2IDwzVVDCpV3kMVZIRBWpPDy2qANwd597wt/TbeKp
         R9exRXhaxFfRf8mYEme2lB9nPdjzp5CVeEiAVnOY1nTEMwx0j+CmQM8OytbZNWvNgB+y
         8rxNaoETlLlVqLSNg6dNDSuTc/2k1v/AWP+6Xum3bEGpVyYeDzmRfuprMuBKL6x2Y7PD
         cslw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZH0IMObb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id y126si815919vkc.5.2020.02.24.15.34.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 15:34:08 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id w21so5915196pgl.9
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 15:34:08 -0800 (PST)
X-Received: by 2002:a62:37c7:: with SMTP id e190mr54344990pfa.165.1582587246762;
 Mon, 24 Feb 2020 15:34:06 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdn6cxm9EpB7A9kLasttPwLY2csnhqgNAdkJ6_s2DP1-HA@mail.gmail.com>
 <20200224232129.597160-3-nivedita@alum.mit.edu>
In-Reply-To: <20200224232129.597160-3-nivedita@alum.mit.edu>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 24 Feb 2020 15:33:55 -0800
Message-ID: <CAKwvOdm1yGkYtiqHqDvi_e+jSdbp102AbPsaXG42fR4Tyw42Aw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arch/x86: Drop unneeded linker script discard of .eh_frame
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Borislav Petkov <bp@alien8.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Michael Matz <matz@suse.de>, 
	Fangrui Song <maskray@google.com>, Kees Cook <keescook@chromium.org>, 
	Andy Lutomirski <luto@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZH0IMObb;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Mon, Feb 24, 2020 at 3:21 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> Now that we don't generate .eh_frame sections for the files in setup.elf
> and realmode.elf, the linker scripts don't need the /DISCARD/ any more.
>
> Remove the one in the main kernel linker script as well, since there are
> no .eh_frame sections already, and fix up a comment referencing .eh_frame.
>
> Update the comment in asm/dwarf2.h referring to .eh_frame so it continues
> to make sense, as well as being more specific.
>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>

Thanks for cleaning up the comments.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/x86/boot/compressed/vmlinux.lds.S | 5 -----
>  arch/x86/boot/setup.ld                 | 1 -
>  arch/x86/include/asm/dwarf2.h          | 4 ++--
>  arch/x86/kernel/vmlinux.lds.S          | 7 ++-----
>  arch/x86/realmode/rm/realmode.lds.S    | 1 -
>  5 files changed, 4 insertions(+), 14 deletions(-)
>
> diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> index 469dcf800a2c..508cfa6828c5 100644
> --- a/arch/x86/boot/compressed/vmlinux.lds.S
> +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> @@ -73,9 +73,4 @@ SECTIONS
>  #endif
>         . = ALIGN(PAGE_SIZE);   /* keep ZO size page aligned */
>         _end = .;
> -
> -       /* Discard .eh_frame to save some space */
> -       /DISCARD/ : {
> -               *(.eh_frame)
> -       }
>  }
> diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
> index 3da1c37c6dd5..24c95522f231 100644
> --- a/arch/x86/boot/setup.ld
> +++ b/arch/x86/boot/setup.ld
> @@ -52,7 +52,6 @@ SECTIONS
>         _end = .;
>
>         /DISCARD/       : {
> -               *(.eh_frame)
>                 *(.note*)
>         }
>
> diff --git a/arch/x86/include/asm/dwarf2.h b/arch/x86/include/asm/dwarf2.h
> index ae391f609840..f71a0cce9373 100644
> --- a/arch/x86/include/asm/dwarf2.h
> +++ b/arch/x86/include/asm/dwarf2.h
> @@ -42,8 +42,8 @@
>          * Emit CFI data in .debug_frame sections, not .eh_frame sections.
>          * The latter we currently just discard since we don't do DWARF
>          * unwinding at runtime.  So only the offline DWARF information is
> -        * useful to anyone.  Note we should not use this directive if
> -        * vmlinux.lds.S gets changed so it doesn't discard .eh_frame.
> +        * useful to anyone.  Note we should not use this directive if we
> +        * ever decide to enable DWARF unwinding at runtime.
>          */
>         .cfi_sections .debug_frame
>  #else
> diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
> index e3296aa028fe..5cab3a29adcb 100644
> --- a/arch/x86/kernel/vmlinux.lds.S
> +++ b/arch/x86/kernel/vmlinux.lds.S
> @@ -313,8 +313,8 @@ SECTIONS
>
>         . = ALIGN(8);
>         /*
> -        * .exit.text is discard at runtime, not link time, to deal with
> -        *  references from .altinstructions and .eh_frame
> +        * .exit.text is discarded at runtime, not link time, to deal with
> +        *  references from .altinstructions
>          */
>         .exit.text : AT(ADDR(.exit.text) - LOAD_OFFSET) {
>                 EXIT_TEXT
> @@ -412,9 +412,6 @@ SECTIONS
>         DWARF_DEBUG
>
>         DISCARDS
> -       /DISCARD/ : {
> -               *(.eh_frame)
> -       }
>  }
>
>
> diff --git a/arch/x86/realmode/rm/realmode.lds.S b/arch/x86/realmode/rm/realmode.lds.S
> index 64d135d1ee63..63aa51875ba0 100644
> --- a/arch/x86/realmode/rm/realmode.lds.S
> +++ b/arch/x86/realmode/rm/realmode.lds.S
> @@ -71,7 +71,6 @@ SECTIONS
>         /DISCARD/ : {
>                 *(.note*)
>                 *(.debug*)
> -               *(.eh_frame*)
>         }
>
>  #include "pasyms.h"
> --
> 2.24.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm1yGkYtiqHqDvi_e%2BjSdbp102AbPsaXG42fR4Tyw42Aw%40mail.gmail.com.
