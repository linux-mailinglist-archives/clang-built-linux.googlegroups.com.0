Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBKEFTL5AKGQEFYW3HQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 201562533DE
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 17:41:30 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id a20sf1419822pls.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 08:41:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598456489; cv=pass;
        d=google.com; s=arc-20160816;
        b=nGCUy1aa2GNPeHEBFD9GgKEWg/HxJoSL2U0lecsEg4R0U7knocRsAf5chkgpB67mhz
         oFLUtsJ555D4Onu8cdHMUjk5yB1ip6qR+firHfabXAr6tF7YFGLAQhM+f2Ov2fhRJHwB
         JtRf+YcSQm2IqqTTKZ7Vxdb0bBgg/y1WP0K+vvzCwiw9HoqIGM3TrFmr/jq1aCNL+/3b
         g5b4FeU3rDkdKygpiGdXqwniZpgoQ5WIQ0oi6dKHpBJgn5EryXuZTlIND0jN/kL6peUD
         WIaGQWbF9G2OQXnznM2Qz1yE5ezAjuLvPZqtMo9iEiHvL46jrUJDruxRrsIFI5X4KyS+
         0lcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ITn/s9rmLb0i9sr/56Ohijcf2nty6jnG7xONd977bb8=;
        b=GYBvHg9RFlAmEgh9wCQqRzdaExP51+x3tFVqKc2rP+IQnDKoI4v5CLZz3vNx+afHzS
         zzViOrsIQyRccyEZIWEOJjbxeRKxoXLDmpPO7j9i9Q5y5Itd0wSywbYhlhq5QEOKIRlW
         /3mz1i0wiZN3W2vYYiiPygY+Oimyvr9v1WC5UupWuWnBnHrsQL2ir03mvj4TEhrN8u9z
         Hr6WiQoVmhPvQYTQ9LSHLVMqfO3AdhxeQVyR8iluMM2Xqx5zy4RDVofeSWUiXSkf+iip
         xfDTpayOVWNF9sVR4W1+hQPAy5fNAfTFPC6kHbbC859eHPheX1z0iBvWrUunhsoQkiX6
         A3ig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XVL6Frg5;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ITn/s9rmLb0i9sr/56Ohijcf2nty6jnG7xONd977bb8=;
        b=arVbIu+0N5NrBZo+ix7He0IGxDedV1bdIpiYvExB61W5IZcP1bq24rqkVcsBctm9fs
         IjiZewA5w6F8JMWB2p6x+kup/l5SvvCY+aYlSPOUptpZ7q8AJFHUB3lDCIxZEXKhawHo
         DBnJeQGti6L5v91u3kONROD6Q6sFXEwoLnPRWpfBQuiy+GggvTBvdyOSjqic9hqh8vNZ
         D3oHoHLWQ6Cg/IJxGW+0TVzjzsT0M9c7REtiv3Cu5/eltCxKbViNdJ+BKkazNzKJ9bPq
         ad+wKc8De7eWBF6JVCYKe54GqFLVVJBkbjJxA4mp8s13iBJFRLZU5mplEXmAYRuYtiio
         Gzhw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ITn/s9rmLb0i9sr/56Ohijcf2nty6jnG7xONd977bb8=;
        b=G8OisoTidBDHcOksvloCRaNzyBWnRM4vU+lW+/EwH3aTQtTMr/Rw4yvVVG7r2NWZwX
         2pdLvAIvHTx2GmhQ6QBjBL4AVOAO3n1pv/kXdPkT2Al3JMv/bWMMAsJSo9/C6BCrNbY3
         KwlAt5cUaoRD/sj6VRqp6h9J34iiv5NRvktg0cch0roTtqEGUEaOqYjBoU7RP+ztqmkn
         K4eEFOvjX8cc7RrKh/fJsTuWUONmht66HhMJp+yuYC7RLUV7UQ4w76Jyk9r74vfEEOsv
         zAjvoHIBpV3qbZub2dQ/xzkGibcr3jewcMXunQhaCdOwyIwaET6Janr3odhs+6b2z84j
         mV+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ITn/s9rmLb0i9sr/56Ohijcf2nty6jnG7xONd977bb8=;
        b=hLtgsLWv7AHwNaCACkAG7CKnbjwV1GQmzjka5LPKsUqjNrJjWvzX8eHD6LwFrjp98P
         7Cn6CIPx1JL8tAv5bFspP/a6DGhZErluQLZs0jWE89rg4I7kO3wJv2G39jKh274bUixI
         inLQO8m2K3NK7c9wNj5yK48SIA6/3ulagVF2GDuLByyQtzD1gP6kMsbKCPI01g2R1XWE
         0MtkZuRaR/naFFOjJoykYH4SPBUk8YC0f6dg4H5TTmdBdjX3VjcKi2s1nm6jD8LWvD2u
         uCT2lmBjDUfWuqO/qNvd7RLc2/EnipO93l2IKHl2kBFsF67nHLFPfUtDKQnKcS5SIMCF
         QxUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530UVctcKItDFPdLoHmIgySSDmcp9UReOBjQcgqM5+t6Ane0fOpo
	jb2M78Cc29KyZqZlk2mfHDA=
X-Google-Smtp-Source: ABdhPJzmaBSAXf4+eZQHeBRSUsFwUhG8v+2dnm4BJ1gPeqZF3PYfqSy7mjmYbtyS12H+MYcMXrkm2A==
X-Received: by 2002:a17:90b:1984:: with SMTP id mv4mr6642029pjb.32.1598456488714;
        Wed, 26 Aug 2020 08:41:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:142:: with SMTP id 60ls1404786plb.9.gmail; Wed, 26
 Aug 2020 08:41:28 -0700 (PDT)
X-Received: by 2002:a17:90a:ead1:: with SMTP id ev17mr6612947pjb.147.1598456488112;
        Wed, 26 Aug 2020 08:41:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598456488; cv=none;
        d=google.com; s=arc-20160816;
        b=uEVua3jsDXhvN4m0LpiA1rj8LDWM3sxFZPxHRTyzqZ7bsjW/ZdIz5fTE2Jr+4mC1LN
         EWFJdu8ONIOStDM2gukbyUv0kseMUw25EudWACOkByhzjInvY6wa+ZhQgDF5ZqcWd1+9
         h3ZWKmLfSrOf0dlfoyGDVvvWlCQ5Ze1XQqGzvkq9QOICJ2D5rmZ5pWn8GQ5zXCJcQsEw
         ZB9VVrQCwke74r+ikpkAeDxGPYt5gAQKjOzHrUwkNYGBtjiSW2+warxuXqbfiQSKnuw/
         Mlt/eYfOXB8gk/6bdAegWlH8pOCOEOc9t4l1b178RbJV86aw5tEFHNW2YDAOtXgz551S
         ZvAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TlYM/6e5dHK5cRRubxa4cvrgCiEU837Dg05XZuJtkSk=;
        b=jYkFPiMwMdn1ieBocEQuKiSvRO2rapea0VtuoJTka5gRMtO5vDkA/IAE/fCyZuIYm9
         F+14b2vhYXgkbM62KsIu8ChM4KQ7gry9C2yE8U4MyXguU6VAQRoe5MjqmaMtHVuZgmSZ
         8Apl9H16X6enUjUvaDtN+iKJJyniVEA/sQd6hGAS9wp7v2s3iqTuGg8HF4eK8Sp852hL
         hh82uHOEmtYBeQ8ndXIiLljdS8jKVzRrWd9VGZXHK10sh8exB8S48r9UcWsDcGF7hKqD
         TyhRmcQ5/AQ2AUOdcFIp0CDUleQTQPWUj21mIBFUkbeNblNhca5T2GUSEJnLl6ztcWBl
         kmjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XVL6Frg5;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id m15si124738pgc.5.2020.08.26.08.41.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2020 08:41:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id 5so1824982otp.12
        for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 08:41:28 -0700 (PDT)
X-Received: by 2002:a9d:48d:: with SMTP id 13mr11129208otm.9.1598456487387;
 Wed, 26 Aug 2020 08:41:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200825135838.2938771-1-ndesaulniers@google.com>
In-Reply-To: <20200825135838.2938771-1-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 26 Aug 2020 17:41:16 +0200
Message-ID: <CA+icZUWEjVnh1-ZNrLqvwnG8qnGDHw4U8UnKZwMSVNychpgiyw@mail.gmail.com>
Subject: Re: [PATCH v3] lib/string.c: implement stpcpy
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, stable@vger.kernel.org, 
	Andy Lavr <andy.lavr@gmail.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Joe Perches <joe@perches.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	Sami Tolvanen <samitolvanen@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Kees Cook <keescook@chromium.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Alexandru Ardelean <alexandru.ardelean@analog.com>, Yury Norov <yury.norov@gmail.com>, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XVL6Frg5;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::344
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

On Tue, Aug 25, 2020 at 3:58 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
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
> Cc: stable@vger.kernel.org
> Link: https://bugs.llvm.org/show_bug.cgi?id=47162
> Link: https://bugs.llvm.org/show_bug.cgi?id=47280
> Link: https://github.com/ClangBuiltLinux/linux/issues/1126
> Link: https://man7.org/linux/man-pages/man3/stpcpy.3.html
> Link: https://pubs.opengroup.org/onlinepubs/9699919799/functions/stpcpy.html
> Link: https://reviews.llvm.org/D85963
> Suggested-by: Andy Lavr <andy.lavr@gmail.com>
> Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> Suggested-by: Joe Perches <joe@perches.com>
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Suggested-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> Reported-by: Sami Tolvanen <samitolvanen@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Tested-by: Sedat Dilek <sedat.dilek@gmail.com> # included in Sami's
clang-cfi Git

- Sedat -

> ---
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
>
>  lib/string.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/lib/string.c b/lib/string.c
> index 6012c385fb31..6bd0cf0fb009 100644
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
> + * stpcpy differs from strcpy in a key way: the return value is the new
> + * %NUL-terminated character. (for strcpy, the return value is a pointer to
> + * src. This interface is considered unsafe as it doesn't perform bounds
> + * checking of the inputs. As such it's not recommended for usage. Instead,
> + * its definition is provided in case the compiler lowers other libcalls to
> + * stpcpy.
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
> 2.28.0.297.g1956fa8f8d-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200825135838.2938771-1-ndesaulniers%40google.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWEjVnh1-ZNrLqvwnG8qnGDHw4U8UnKZwMSVNychpgiyw%40mail.gmail.com.
