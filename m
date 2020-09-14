Return-Path: <clang-built-linux+bncBDYJPJO25UGBBV5N735AKGQETRBX3PQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3C9269135
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 18:14:17 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id y76sf14769pfb.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 09:14:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600100055; cv=pass;
        d=google.com; s=arc-20160816;
        b=LGp7CpgLsX5NJPQNy6hksvrrer9x7OGKH4cv00F+MMaRzUxfoyOsp6XoauIx/O7Wbt
         qo0zqrK6foBIFGgUssMBzrqZtDen4HEHgRxFgN092Rgm8Ns+OeCMk2LIseWGUoW6/Zfw
         N5NGFo72dmgIlbenkg0vmcgl7CSPWxgLGEzPaIaU1MPbb7qjGbXdOR4TKmrorH7GTvwq
         tA7P+xlrkYtJE91XMWnVFAsFqlfiwUHI/s0TLyKfpplLD9F0SeWX/FwXOTluIBMWgsTo
         s9PeqFckY6BU++ZeGBR4tJABJ43/nwdcujziiNQS8xOCyeoRYxuQXVfu+RB9BhxMnFVL
         XvSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OA0l+8ETVjcafz/C2C+CloPvnjjCECKUtIQLpY9VtAs=;
        b=DVFwmthUbg93HCNzad6PWUxK+EtQXIUCO7iaWzZg6L2SjoK+UduH0MWFoscxTtWFHx
         RM47uBp1rW0Rafr6UyhlSyRGMRZItpM/jR6qo63wJ8CiR6FwjJvhCgDYf3TpsLmojtXi
         tsj6w4OcRHX6/aWv9Cyxa2/g1DYGAUk76t/do1bidujfEfOOIKQLgE1lljH9J32qlItx
         +MFRNqGdLGh971RPBJta2ro41IFXrtMSLV3yFETsL6G5+ekHs4kVTRQIq0EJ6kyviF/X
         0euOcogxc2ZRnOwPp0Ss2GTFE5Rq3qc42HKXgCoxlJEsrg04SF8TXDDbYTDFhaOFCCbi
         SJzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nDk1vkg2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OA0l+8ETVjcafz/C2C+CloPvnjjCECKUtIQLpY9VtAs=;
        b=IccP+Lx1UA3gLqHidcfkwQcZUCjPOHatiPwgDExvTUbFE0jbZAKCGaFzCrBdyDbWCI
         ort/U429qcxtg+q2E6Afo0V3TFJrPO/Er5GREtCXwA1LsBmxPiuRnW1OQ21cORUsvbl2
         VWa/8pc6LaY9ZtWCYobA69fwLJrSXBynoS0wbxsehBTcS6IgkEu8ijhMAbFJtsQ40b4v
         +L868ZnzdmBZYwHlshlhtRREQCj65+XneZDpz+LbtZw3Gc8paEmCg6G6bMFa50LhEx89
         kt8UOwY5RlhoqRJIH5osfQ7lYz1RafBWLP3nx5bZO6Uad40dd8u1QqZkc/tY/SNr0Oi3
         Ylnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OA0l+8ETVjcafz/C2C+CloPvnjjCECKUtIQLpY9VtAs=;
        b=EKTwnVbRSAva9hsZN5bn7USZSyvE0KK6uE9iMrpqikPoIb0vqP0qp+o8r/A1WFAbvh
         witiLVCl2SKktnb8BCAZowd/jwRoBFMNElM2lfBu+SemivRdrAu/lJDoTxmpadQ1568E
         jBF9kDEp5krOM4uPIWc9pEqKuVHH4nnkxQg4FbQEoyhAxTnhUOcsxb5r8kw6c/1Itwtr
         KGrmgRq9/Pa2ABmrkXZmiSdGD0BCsq/F4mRczTRjp+w7yo74YCHYikaV5C2nyIBNvnkc
         Smp5QvDfmTQLiIIemlFi3nLQ+tZYTk21ZXp4HBJEJBAa45TLNJ3VxGvv4mhQb6N6m9pY
         u2tQ==
X-Gm-Message-State: AOAM53179o96l/jgv+wVypuiLI+disRhxLjOojfpnaX7z7S4KdSwnDZa
	XgSxKmndhOricxQQLDF2BxE=
X-Google-Smtp-Source: ABdhPJyPOjoc+aZ1viFHuWSSCtdtneMdQkqhVq11SebyxF2GX6tDqJLTyaLYPdH1AXD3tCijkwUd6w==
X-Received: by 2002:a17:90b:350b:: with SMTP id ls11mr88964pjb.201.1600100055716;
        Mon, 14 Sep 2020 09:14:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d718:: with SMTP id w24ls1519355ply.0.gmail; Mon, 14
 Sep 2020 09:14:15 -0700 (PDT)
X-Received: by 2002:a17:90a:6a0d:: with SMTP id t13mr126428pjj.208.1600100055141;
        Mon, 14 Sep 2020 09:14:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600100055; cv=none;
        d=google.com; s=arc-20160816;
        b=EU3RXp+WMgwegnMy0+tW1UjZ1eU6rM30AOPFH4w5EC3VZ9hT+SE2PYGS8FrcWemwhI
         GtghptxDV/PLDwctzE6kL3hj2WUkOtlG35V8KzE4jDyrxMF+VM9y6+56EDQzxANxco1W
         SLM4zkAZ5h9lNRHeMytA7WhOMuzuJPuqVzKPXsedVC1eXIF5q4wmeuLUGN6LmzeQBh31
         OgWh/dMTt3YDBxzAsgt1ImUxzrw9Dfw2Dtppz0xeA/Z7DGXUN4inLtcXlsHQ1/+faXFP
         1boHYeDbKA/U4cIkNbmEbYDa2qVGaGB+2M4iuoMKnMKlGOiLTPoLUTI1SNsVqb0GeeYX
         xOWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JtLqKIqxK7wc9FLa1pAfxW1qizIDuJ12ED71Joxln3w=;
        b=lqTuYWXeNbz12EWH/WqDB5xz1i5rqZZIejhydJ4BqX2WsqahVUtIzyiIXHAoPqXQf1
         bnmQ32nlvslTDfx5rHuoiD3g6CZtZXNCe5sJ5G/ijlljKD6C9cDl4fBJD2vZK8pYNhGc
         e6aUe/mVgur+qcrgi4awDFjCWdASS/1GUBw7ZXHVy1vuC2kwy7G3MDprg2QV1LzWeUzi
         Ls0xUdYZQOiFBXJ2Gfc7ZgH8cynOHBrteSHPABezw9o6kd8eN8kQw0riD0WyQJGedeAJ
         e1gSL013Vm03BFO6DCraG1HIQCyD2nk3IXeu+uXZo+cbWsx8RdE5Ojwx4WQ2DKJ6g/yL
         vlmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nDk1vkg2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id lj12si728758pjb.0.2020.09.14.09.14.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 09:14:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id t7so64596pjd.3
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 09:14:15 -0700 (PDT)
X-Received: by 2002:a17:90b:889:: with SMTP id bj9mr101969pjb.101.1600100054525;
 Mon, 14 Sep 2020 09:14:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200914160958.889694-1-ndesaulniers@google.com>
In-Reply-To: <20200914160958.889694-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 14 Sep 2020 09:14:03 -0700
Message-ID: <CAKwvOdno19XHTEUAjUDkNCdRpX_BywOFbdsNV5+7SspMMn487g@mail.gmail.com>
Subject: Re: [PATCH v4] lib/string.c: implement stpcpy
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Masahiro Yamada <masahiroy@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Andy Lavr <andy.lavr@gmail.com>, 
	Joe Perches <joe@perches.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	Nathan Chancellor <natechancellor@gmail.com>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nDk1vkg2;       spf=pass
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

On Mon, Sep 14, 2020 at 9:10 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> LLVM implemented a recent "libcall optimization" that lowers calls to
> `sprintf(dest, "%s", str)` where the return value is used to
> `stpcpy(dest, str) - dest`. This generally avoids the machinery involved
> in parsing format strings.  `stpcpy` is just like `strcpy` except it
> returns the pointer to the new tail of `dest`.  This optimization was
> introduced into clang-12.
>
> Implement this so that we don't observe linkage failures due to missing
> symbol definitions for `stpcpy`.
>
> Similar to last year's fire drill with:
> commit 5f074f3e192f ("lib/string.c: implement a basic bcmp")
>
> The kernel is somewhere between a "freestanding" environment (no full libc)
> and "hosted" environment (many symbols from libc exist with the same
> type, function signature, and semantics).
>
> As H. Peter Anvin notes, there's not really a great way to inform the
> compiler that you're targeting a freestanding environment but would like
> to opt-in to some libcall optimizations (see pr/47280 below), rather than
> opt-out.
>
> Arvind notes, -fno-builtin-* behaves slightly differently between GCC
> and Clang, and Clang is missing many __builtin_* definitions, which I
> consider a bug in Clang and am working on fixing.
>
> Masahiro summarizes the subtle distinction between compilers justly:
>   To prevent transformation from foo() into bar(), there are two ways in
>   Clang to do that; -fno-builtin-foo, and -fno-builtin-bar.  There is
>   only one in GCC; -fno-buitin-foo.
>
> (Any difference in that behavior in Clang is likely a bug from a missing
> __builtin_* definition.)
>
> Masahiro also notes:
>   We want to disable optimization from foo() to bar(),
>   but we may still benefit from the optimization from
>   foo() into something else. If GCC implements the same transform, we
>   would run into a problem because it is not -fno-builtin-bar, but
>   -fno-builtin-foo that disables that optimization.
>
>   In this regard, -fno-builtin-foo would be more future-proof than
>   -fno-built-bar, but -fno-builtin-foo is still potentially overkill. We
>   may want to prevent calls from foo() being optimized into calls to
>   bar(), but we still may want other optimization on calls to foo().
>
> It seems that compilers today don't quite provide the fine grain control
> over which libcall optimizations pseudo-freestanding environments would
> prefer.
>
> Finally, Kees notes that this interface is unsafe, so we should not
> encourage its use.  As such, I've removed the declaration from any
> header, but it still needs to be exported to avoid linkage errors in
> modules.
>
> Reported-by: Sami Tolvanen <samitolvanen@google.com>
> Suggested-by: Andy Lavr <andy.lavr@gmail.com>
> Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> Suggested-by: Joe Perches <joe@perches.com>
> Suggested-by: Kees Cook <keescook@chromium.org>
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Suggested-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Cc: stable@vger.kernel.org
> Link: https://bugs.llvm.org/show_bug.cgi?id=47162
> Link: https://bugs.llvm.org/show_bug.cgi?id=47280
> Link: https://github.com/ClangBuiltLinux/linux/issues/1126
> Link: https://man7.org/linux/man-pages/man3/stpcpy.3.html
> Link: https://pubs.opengroup.org/onlinepubs/9699919799/functions/stpcpy.html
> Link: https://reviews.llvm.org/D85963
> ---
> Changes V4:
> * Roll up Kees' comment fixup from
>   https://lore.kernel.org/lkml/202009060302.4574D8D0E0@keescook/#t.
> * Keep Nathan's tested by tag.
> * Add Kees' reviewed by tag from
>   https://lore.kernel.org/lkml/202009031446.3865FE82B@keescook/.
>
> Changes V3:
> * Drop Sami's Tested by tag; newer patch.
> * Add EXPORT_SYMBOL as per Andy.
> * Rewrite commit message, rewrote part of what Masahiro said to be
>   generic in terms of foo() and bar().
> * Prefer %NUL-terminated to NULL terminated. NUL is the ASCII character
>   '\0', as per Arvind and Rasmus.
>
> Changes V2:
> * Added Sami's Tested by; though the patch changed implementation, the
>   missing symbol at link time was the problem Sami was observing.
> * Fix __restrict -> __restrict__ typo as per Joe.
> * Drop note about restrict from commit message as per Arvind.
> * Fix NULL -> NUL as per Arvind; NUL is ASCII '\0'. TIL
> * Fix off by one error as per Arvind; I had another off by one error in
>   my test program that was masking this.
>  lib/string.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/lib/string.c b/lib/string.c
> index 6012c385fb31..b6b8847218b5 100644
> --- a/lib/string.c
> +++ b/lib/string.c
> @@ -272,6 +272,30 @@ ssize_t strscpy_pad(char *dest, const char *src, size_t count)
>  }
>  EXPORT_SYMBOL(strscpy_pad);
>
> +/**
> + * stpcpy - copy a string from src to dest returning a pointer to the new end
> + *          of dest, including src's %NUL-terminator. May overrun dest.
> + * @dest: pointer to end of string being copied into. Must be large enough
> + *        to receive copy.
> + * @src: pointer to the beginning of string being copied from. Must not overlap
> + *       dest.
> + *
> + * stpcpy differs from strcpy in a key way: the return value is a pointer
> + * to the new %NUL-terminating character in @dest. (For strcpy, the return
> + * value is a pointer to the start of @dest. This interface is considered

And, I forgot the stupid close parens...I will resend a v5...

> + * unsafe as it doesn't perform bounds checking of the inputs. As such it's
> + * not recommended for usage. Instead, its definition is provided in case
> + * the compiler lowers other libcalls to stpcpy.
> + */
> +char *stpcpy(char *__restrict__ dest, const char *__restrict__ src);
> +char *stpcpy(char *__restrict__ dest, const char *__restrict__ src)
> +{
> +       while ((*dest++ = *src++) != '\0')
> +               /* nothing */;
> +       return --dest;
> +}
> +EXPORT_SYMBOL(stpcpy);
> +
>  #ifndef __HAVE_ARCH_STRCAT
>  /**
>   * strcat - Append one %NUL-terminated string to another
> --
> 2.28.0.618.gf4bc123cb7-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdno19XHTEUAjUDkNCdRpX_BywOFbdsNV5%2B7SspMMn487g%40mail.gmail.com.
