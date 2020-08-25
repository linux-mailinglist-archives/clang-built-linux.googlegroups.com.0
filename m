Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLF3SX5AKGQER3VRV4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE67251F4D
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 20:51:26 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id k142sf9716917qke.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 11:51:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598381485; cv=pass;
        d=google.com; s=arc-20160816;
        b=yC2BwhVlA/h8DU/KRqL0JzVocUZXETNaRO1N0g6gqgrIz9BfJWwMq95GAlieInHbq7
         mq0HdvglBVslqerqtkYHO3GhDHxSKHQyRlBmu9RrZAnKd0fbK2a/BnpMeCg/BoUoH/vT
         weZry3Ymm32GSjzFNCXtw1GRTRU0vAmYp1/zd4yCNjuHNc32WV7IAdMGBvf/p1VnkzD3
         dpUt/edpRSu0JNIMoQKisPbj7doUClbnhykhkI7VD8R1qlrLQwuUrwwdxR76qAa7rSC7
         pXJ0680Uj7sIk8qKOlKtABxjD/uHdKvYTjl5lInqHave+wtIoFiEJr3WCaiAdtRWKXhD
         jG5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=EnXWqFhvUYZojKhBdxZc9MNoOlwFldZ2WPmLizSqs7w=;
        b=giUHp9cs6h+2JiIx2sbK9IH5qG/lD8MgEygHKZ2cF7rSXPsa+L6KMJZu3aeH5hNjCq
         lzqQJiyv5+hN1wc11+/KWj4tKCFJrJ29GC+jZ+mYrfUNvF80tO5Hik0TMX/oSyNsgtby
         nnjta3/beNQwSPJ0hu2LX2OABZ7bXUKllnZXy49FcFnl2GDbxeWrDqlwWvcphqn41NVQ
         nNCdhj9dRS5NcpLtAY4T/o/wS+AeHm1/Qdvsp+y+yP4ndbwjapAOtSxmDzNVM8NAeVDr
         5BmOSibiDJm3rekqne4cfxJkN/elPS98lzEk65GciF37YpRvaD/+EDE1VUUMr6jCHfm6
         DUJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ghGTgj4N;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EnXWqFhvUYZojKhBdxZc9MNoOlwFldZ2WPmLizSqs7w=;
        b=rOEZlcveZu6RW+C5djXiZmHF401TH3EhFU0Ob6toyNYo9lZNlZdymr025r+d95mMoV
         W+co8ASWz/0t+bL18mo28QDhRzKdBqvv6SmNwWyiu1bK/MXMQc/+i7gwAr6TXY2qIkFq
         0Z924f6rKVA/dP1IxNVumLoxout2NmApx71IgEFcBw9ZYxtTnXiDNc2LvLU0dNfyEeVh
         wfyDQfJHETs3GyftHmhd75wOtsjPcTwfZPeNgphCwq8eRjrQKV0JqSEDhjIuhk40PrQJ
         n41RqE4MmNmG4vPlbxzhXhrI1eoRBXPnONrYkjh/qn344eOL6kUFo6mea/vsOZ8Zmmhz
         CPMw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EnXWqFhvUYZojKhBdxZc9MNoOlwFldZ2WPmLizSqs7w=;
        b=ulD5IRtyQRbmDM6zY+vmVCfyDMTLb/9Q9d2ABiy/hK24T/wio1ToWC4lW6eW4BDh0z
         EF/k8o3wvm1h0Piotcy8faFnxKcS585JeIn6DKHwVs6l19PJ2xDK66cDeyCsm/t9xWVt
         aY6JHQXEkfpzXJ9gLjEV7SljF3T08Y00UViCGPYHwGyOEZT0hSoewtO+hlvRv+rz7kwA
         ZqOMg6GSv8FMQRo8EkEbBk+O9H7RdJMd7IbicEnBHSB2n+KSYxaSVNLyNK2xiqXkx1MV
         LH1M4Zxi+6CiBb/rZ7Uzcws39NoiicJwG3HkBSA+O+WQS6SYPbl9mfeSXNRIisR2gnLk
         yBQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EnXWqFhvUYZojKhBdxZc9MNoOlwFldZ2WPmLizSqs7w=;
        b=RjN0IW6xhWMyvZA+9FHv7Z+X/w9Osab20RFYnTBaM/GIHp1yBPCudTWafJ43KqLw7R
         0nyNfkdzWmPtLlJgjz4D1kKIn1Qp1Mxgs1CkQ9cYuxrD4g7Gg86kf+ygIxIAl2SYaEFl
         HURAQOSzVka90Lg5XT9LMDAmvGjzuqDpwM3isoR6l9hfifvqEZNnIebaEtGQYAeNsx1m
         FR6T9W+m0ecL7EwpSlxlcKLE7lsQaXOo9h/4WajhTQTIqJu9S4SYNAgcnSIjRCW9dQ7k
         pPNGiF5iNMyVYhu354t8IeUWVh3yW0Y31fOot2RW8A0aFx68FrlV3ZreT8xwafk8rL1/
         JZ8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533KjiQqiV/gGpWukdJ+Uglm4pI6rjorM/vl5gLtQPXZG2IRT1NT
	JDXhfZ0j69zspe1ZSwEEWFg=
X-Google-Smtp-Source: ABdhPJyiBFdvq4FA0In7wGmH6rdz3CKlCy2B17SNnfenSGOLxKXSntADLvyylCctuhq40fTBjFhEEQ==
X-Received: by 2002:a37:a10b:: with SMTP id k11mr7830510qke.96.1598381485072;
        Tue, 25 Aug 2020 11:51:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:246b:: with SMTP id s40ls2953457qtc.5.gmail; Tue, 25 Aug
 2020 11:51:24 -0700 (PDT)
X-Received: by 2002:aed:33a5:: with SMTP id v34mr10714663qtd.262.1598381484623;
        Tue, 25 Aug 2020 11:51:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598381484; cv=none;
        d=google.com; s=arc-20160816;
        b=A/jyElZznU3obHgfJ1qQlVgiDqNEVYtS6JjjpAJxWKYkjn7VZ1Kyv0Co8DObIq6bUm
         Bm70kzNjkINsDXiPIGxgfO2XxV4sgAHPT6boGgw6ZhyMtkG9f+mg52H2rVQRZlYSuBhM
         ugzlWiKp95Ldnmm+zRC78xTOVagr58NkMMDKMB9vJ8w0C3jzarqQemYxRfy4CPcYLJfM
         ShXXqN3baEjQsl004TE7Id17m9LDt4FY2M/Nr0PjkFMgoqLnjLLfHwpXuUoRWiEithk8
         dqO4/Tbxakd2Eg+iqdh1bnNsZU6r2IME6jrbH644lNRgZompJmaPdnsk3jYFiAFo4rIG
         qsAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6x0iz9JUsWXmCzILUsCg/89oPKkQvuUuZ5mSr/G7CCc=;
        b=SdREiRE/3mi1Eh6NyHOtIaQX4c6UtMSX90gOQZE0LBUTDnt+07lAjipgUYzYESRXw4
         IRLnsxnN1XnjNmGHm2Bd3heXXqpcIsf6Kd4VpFgerq1R1t2Sg0K+oHM5la2T415th7Ks
         1s9/yH9Yqfmxc+T5TysnozNvVXCKLMtoSoJAvQdYARZ+YJlbuqfgHc0ojYPFsihATRVr
         WnKqKF9F4aOcTlHf8Kwun7N7WupPERdF78ozsvsk5jAX7BfYV77VdLRWTjJXdPR6g+oK
         ixV1IVsLnO5yse5wjtWs/9XWjwtv+PVg/1JJ3PUIn8L9eDCBoftWPlP9sfNmh0ybgxDn
         sf9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ghGTgj4N;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id a189si582890qke.3.2020.08.25.11.51.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 11:51:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id x69so12016530qkb.1
        for <clang-built-linux@googlegroups.com>; Tue, 25 Aug 2020 11:51:24 -0700 (PDT)
X-Received: by 2002:ae9:e507:: with SMTP id w7mr10448078qkf.264.1598381484105;
        Tue, 25 Aug 2020 11:51:24 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id o72sm12491217qka.113.2020.08.25.11.51.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Aug 2020 11:51:23 -0700 (PDT)
Date: Tue, 25 Aug 2020 11:51:21 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>, h@ubuntu-n2-xlarge-x86
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux@googlegroups.com, stable@vger.kernel.org,
	Andy Lavr <andy.lavr@gmail.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Joe Perches <joe@perches.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Sami Tolvanen <samitolvanen@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Alexandru Ardelean <alexandru.ardelean@analog.com>,
	Yury Norov <yury.norov@gmail.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] lib/string.c: implement stpcpy
Message-ID: <20200825185121.GA602430@ubuntu-n2-xlarge-x86>
References: <20200825135838.2938771-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200825135838.2938771-1-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ghGTgj4N;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Aug 25, 2020 at 06:58:36AM -0700, Nick Desaulniers wrote:
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

Tested-by: Nathan Chancellor <natechancellor@gmail.com>

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
> +	while ((*dest++ = *src++) != '\0')
> +		/* nothing */;
> +	return --dest;
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
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200825185121.GA602430%40ubuntu-n2-xlarge-x86.
