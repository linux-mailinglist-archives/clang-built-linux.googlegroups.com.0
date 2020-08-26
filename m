Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBX4NTL5AKGQE25AN7IA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C26125342F
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 17:59:29 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id c2sf1438991plo.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 08:59:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598457568; cv=pass;
        d=google.com; s=arc-20160816;
        b=YLtNegyHbcnlWHLOS212b0V3o5O5Ac3lZCITLo1rqXAdAvyXMl2dhndi9rTmjcvk/Z
         Gs3eJ3IjN4IXR/Di5MlS2RedUJDtuDmnjyt2Mz5dTI75a2gwbaYcv7NAQ/mTt42gNVZw
         wr4yJ2PW46OP8NFT22SfEUwB3VxTiXjYz9jM9oNQW4dpwTLaUHjeBah+aRt2kbt9d9rw
         T+s++IgvDmERj1cEM0Tln15n6uJZGTjUrCFHt1/cPJFlhzhU1zypB8o8AhAUhJklYyta
         JhJhgPxQ7TC56crCU8eXnsIuF8di/Ormk0C/xP9j5V1kcgAP1tSS5P8BRgiMadmhDF9A
         NiIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=QDBCnIhyj1N0DrWsO4tB0rVermKNiGVie9h0s6FJ+G8=;
        b=zMnmyXFwITuN3tK1wOzPAHcqPLw9UeRarGrYq3YcUxvlk9mI8UuKw7n8fALm0Zua6n
         bTo9VC0ZeYyE/CG2QryVsiYWrH3a/X3ew99tKj9Yf47vqTiktSAlqnf7hGgW/4hpZf/x
         RuUqPNfVacw2rlnBjO6JLnZnnWpifRLUCRip5UmxkkNRU2vJNaXmF4hPbDpT1RG9/dMl
         cBxC58ommmJLg8zO5nNw8Cjj5cu+n6yyl5jHSB4I+yPJqcja6V6yNdXG32vExDNWmRbH
         Gepyl0vJKBznn/Z30xIfuBWBwM/iPmgTTKGhjpcRaVNZcaJ16vuwjxIvUZP3+j6YuC25
         TnXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=XhOXMPog;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QDBCnIhyj1N0DrWsO4tB0rVermKNiGVie9h0s6FJ+G8=;
        b=LUVeGvmU+XswaxE9bxhIf4CVfDfLYg/v8H2RZr31/BAWE2/Rp7c8IoQQwKoHIXeRCY
         P+bkEs/M1rDj9ML0n/xL7FSxH0yaS9yc5auAMQC3NO6PDvZyc7GUO3XOfys9kEu9ke9+
         BlvVzbVGowvUksnbB6/kPH0ryf6Bt+JRlOdM4ZHDH7qNF67cJY3tL2pBwpckLoaSJMOW
         8TxpFvOUItZ3QjSgnaaaD9/eypBVrNW6cLolOLerQjbKzaF4LNtXbwQm6kZcVblsYtAX
         iN5RvUzMIiQ684XH9fXjhQqLSMhbNQDEy3ip6Isyn1gkrrPWs63e5mBQ1DQe5KcShRw4
         Juiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QDBCnIhyj1N0DrWsO4tB0rVermKNiGVie9h0s6FJ+G8=;
        b=l7PD3MqUN9iu0JgxTzZGVjFhDUkz7n88L9MTTgskYM0PiYk4dfhErwvDsoevAjH6U/
         ES/oPw06uJgUvkFOU0hp3a6C5jQWxcnzLd0MVrmXYuY0brkAq+4xiUbpjbBNPBwzGXkR
         /WL0ZhYUyA8s4DZpdZ9YKVDW197WtScCUWiL3mKkKGIFdxvwEApXav/l/IZSrB1zHA/G
         EHu+4+Gy9Z8+1tGLlLDgKF/LM0KBXzGnQRkEAuoyss7BXf6QNnbSWq97eWtx8Z2LUbBR
         PGNBIEUy5Mk2/UVUqjEBlwaSetA/AeKDt4eXKM76OTov5TrhPGm6bHkY5FHqCTHrI0en
         5pkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530iOOUwCGRVANhE8MVFPZCRR6n+MfBAy0ZqNlMhW629Fz5Mzqxw
	NwQCJubCGuWsfkyVeTieGB8=
X-Google-Smtp-Source: ABdhPJy08poRjI4CCtqVRPejJU+G+NlUfMDeM+n3O3C65bMyzGbQfS924NwABnroYpGnhV6EHuhUwg==
X-Received: by 2002:a17:90b:183:: with SMTP id t3mr1303358pjs.21.1598457568191;
        Wed, 26 Aug 2020 08:59:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c244:: with SMTP id l4ls841406pgg.9.gmail; Wed, 26 Aug
 2020 08:59:27 -0700 (PDT)
X-Received: by 2002:a63:5825:: with SMTP id m37mr11363240pgb.257.1598457567505;
        Wed, 26 Aug 2020 08:59:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598457567; cv=none;
        d=google.com; s=arc-20160816;
        b=KoeI61oQtnqqjHD5YwhkxblVVgBoLSqVpabJ4HkquH5YINLqmojCXaH8gh+DQyJ6E7
         i9yLODBgMtgre7HeHGsMhZ6+Mz2XPgD418/86HoH40Si+BpEVpaV7RFPFQaEiqiK/+uU
         hLgZBGTCtzxVOggwusMK02EV8TfbFvTD/uN/CCvOT+FVtamk4C1QUfCyn8/Pt38PhMyA
         I4Prg0kvDNjN8ry7oDiS1MkP7fO8Q47BzSACk7Hs9WbysysFnkWZWHSUsGaIL7MJYMss
         XaeLEFuDkinBup3k0xuOhci1EhHlBsjQj2Sw4ED/hOLk4VweTPvGob0L84FAlDc2NhcC
         2p6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=yX3IqN+NoRTIwsiiX/OmbbqTaUyvEzkdWXewDnXfoUg=;
        b=0Lp69HEolwIjz8VhUYh3XEpwCc4hdVTs7DXkXwjIRwoG06mJ8ujuH5PoHRhZmc1myh
         HPiZh1kmJuDvp3cuexjnUxdtmgjkg94GeJguyF7VvBZ8zKj7TAtsxNiMs3h2giOgcVdh
         t96ZNhBKm71H7GKTUhcPFFCOKIOO/70vdCshD0EhLNTDlgHIEmmBp0a3RNyQeAvmYKe9
         9NMjQcRPlwJpt3pOE+6VYR4hDXjsDCLXksx7uQ4muTmDDk1IZ7iDyu00ITmhY3hSBquP
         tOCLcTrynpc+3534u7GJnuwuPm5RkTTdwbBIGsA4/gk78XKHMj57F2+GmtPAX1n19nW5
         LE/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=XhOXMPog;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id u204si67964pfc.1.2020.08.26.08.59.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Aug 2020 08:59:27 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 07QFxDCn018975
	for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 00:59:14 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 07QFxDCn018975
X-Nifty-SrcIP: [209.85.216.49]
Received: by mail-pj1-f49.google.com with SMTP id ds1so1092138pjb.1
        for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 08:59:14 -0700 (PDT)
X-Received: by 2002:a17:902:d90e:: with SMTP id c14mr12454368plz.76.1598457553172;
 Wed, 26 Aug 2020 08:59:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200825135838.2938771-1-ndesaulniers@google.com>
In-Reply-To: <20200825135838.2938771-1-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 27 Aug 2020 00:58:35 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQvQBhjYgSkvm-dVyNz2Jd2C2qAtfyRk-rngEDfjkc38g@mail.gmail.com>
Message-ID: <CAK7LNAQvQBhjYgSkvm-dVyNz2Jd2C2qAtfyRk-rngEDfjkc38g@mail.gmail.com>
Subject: Re: [PATCH v3] lib/string.c: implement stpcpy
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
        stable <stable@vger.kernel.org>, Andy Lavr <andy.lavr@gmail.com>,
        Arvind Sankar <nivedita@alum.mit.edu>, Joe Perches <joe@perches.com>,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        Sami Tolvanen <samitolvanen@google.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Kees Cook <keescook@chromium.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Alexandru Ardelean <alexandru.ardelean@analog.com>,
        Yury Norov <yury.norov@gmail.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=XhOXMPog;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Aug 25, 2020 at 10:58 PM Nick Desaulniers
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
> + * src.


return a pointer to src?


"man 3 strcpy" says:

The strcpy() and strncpy() functions return
a pointer to the destination string *dest*.








>  This interface is considered unsafe as it doesn't perform bounds
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


--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQvQBhjYgSkvm-dVyNz2Jd2C2qAtfyRk-rngEDfjkc38g%40mail.gmail.com.
