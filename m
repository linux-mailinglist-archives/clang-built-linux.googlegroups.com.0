Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDMDQH5QKGQEKDDRFWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F831269D09
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 06:22:38 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id c8sf1640491ila.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 21:22:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600143757; cv=pass;
        d=google.com; s=arc-20160816;
        b=xy8HJw0UASNBdhSI5IVVE7NaxIKmEJ4UcQo5TmNGObMLOTJbzCeFFrFkyRZZsCz9hA
         uCw2dQ9PizXGxSYn6p9a5VFjTdXjKeE0DCNQn/llGRaAqFPvqogOPerNTLCu+uOOH3mR
         0RhsnZr4UH6ueem40F+Knx4JJmJbpRQetaOayglpB/kTHsovs8yfx4bR2hSMUZXPC0b8
         Nqbpym7x/Y1sPQ/bFBuFpATXFEU4ykoDEv5H20szOpgsC8ZakthWDLccihhxYEw1xU0w
         dw50Ju3pstpL8mfCVh2IoEemKYplrePOXgHQSc5c/vLQwd4qUvTBAjqOB+/SGCUijxNu
         whxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=1usgaJPY39GR/ybyKEL3TTwF4xOcMH/KdO9zn8zcLTs=;
        b=B0oTnfpZQbp5aMiI4y8W/FUOZMbg78t4QV/0bUdC2E+adFBZL0EMO+isGMV0Mj5xNF
         sjcM7xPluOGO1Tj4V7pE/aNTm9WgbZk2Ssi9U69VepYSUsnOStNSBBaYLV6Ow+L9LaGE
         1jSNVLgo4ijvPq5H4InoSxvZWb/U754Fa+1AQybwxUqgm+ha06/apiOGWW53YivFJTGu
         ksvF+z7kR++4SQylKzulKQIptW4CyU+Io9BRx+hNFpqvn/lS+38Z21TsGMX8/JAVa0kv
         TG6nBBAkcsai4nEy5y3y5x1G/MPCnwCr8VBnKFpV17cxPfGGR9x6vSwKXNsqjOfxzysI
         BwMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LngxjjfD;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1usgaJPY39GR/ybyKEL3TTwF4xOcMH/KdO9zn8zcLTs=;
        b=LZGZUp0NLZDBNWFEDQT6TeaB1pw+Fk7ghfTtxVr/IZIDSd/Ehsp4Jv8jpd/4chkCzf
         PBJTJ3NPUJXi7I2OKAC/mIHR7edHKj2Nza2Q5CU1R7p2h7Py2FU9vXVIykc4Jud9DU+B
         CfF3tHj41ssli/MnfTn29ErK02HgG3LTnshH2CpN93gqE2wG1djLvxT8hWcK1/iCwJ38
         Vc4R/E5w96Uy+pBsXD8H7Sl8XXP3xLQpZQxypEZicj2o77QMkKnUHShdZKWOF/eXepDx
         bgQ8fWw59z278BEppRPXTV6kboUjJCbl7xdyguVDo/VeeZOg8J1hJ0YhihaWVp+rImy8
         ZEdQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1usgaJPY39GR/ybyKEL3TTwF4xOcMH/KdO9zn8zcLTs=;
        b=mEXw7ka4hFtpWOorYLJBscj9Fo5tcIRw3pAI739YD/cnI2kIy7fauldmmSiLicmW5G
         0KPKrxp52DrKzgBAH2XhlOtj0imjA0OjdFa+7H1ngFbWHxQZB2zxC3UyWYBa/fF52qy9
         GM/I38c6RsZDw7CXyxvYyhMZYY9ywBJNvFMbPCN1g1xC1pPzXl6RXQ4kzrcDRvYDkToX
         oHga9mwqCyRQ5WZnT2qY/YdjH1aK6FCPE7XrOplMaXApEsGDhl+rajMVoyuKa20HnXZc
         3n4ec2Wq0hFDRMUgAzM6nc/GVdak1+rCP7iXzzdqhOWO3LKIWXjTcsvjGbqz5rRRFc01
         iSfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1usgaJPY39GR/ybyKEL3TTwF4xOcMH/KdO9zn8zcLTs=;
        b=jQGKtM6KTVfgw6PzreWmmQZaRYlBSUPTqFTpTNg0ongAPzTzUhTa1DvhcCcRlSRlDj
         R/D0c6rrHrKsu8Qre5MoiCBePptLankzqVxNFU2Avokn0qpYC94yoIR1PQRD1pT7KTNQ
         Vnu+X/ia/jGcc8MYKKolNRhn+2oAv33IKJ2QMbK5FHifhtBWkRUe8G5iL8it2UZA5VRv
         WxqlNA3jh4J6Vur0XMYL4sQ2n4+jlqyUJcigceN8MobzZfEf8CmCkZ5KsjQ5AUx/NZPj
         Ct4CDfeYiKtqWVj0laGtekcdI3Qm5H7plU5zq8o0USAf8f9ZZh8sZvHku3dOZJhrTniT
         2NQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+q7eU7wD/ipYlZr+2vi1QsjtDb4AfR0zCbax+NUWKMhmpeA/o
	6/Fx8WZG8SH31wPja0pOgtA=
X-Google-Smtp-Source: ABdhPJye2/dBgKvgTVQxe4ZWpR1ksXCFGsDNybSEv+KMS1P8vHID35fhYFFEyTmx93BbF+NvKf7k4Q==
X-Received: by 2002:a92:ba45:: with SMTP id o66mr15411153ili.38.1600143757528;
        Mon, 14 Sep 2020 21:22:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9142:: with SMTP id t63ls2908755ild.10.gmail; Mon, 14
 Sep 2020 21:22:37 -0700 (PDT)
X-Received: by 2002:a92:9996:: with SMTP id t22mr14343728ilk.216.1600143756984;
        Mon, 14 Sep 2020 21:22:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600143756; cv=none;
        d=google.com; s=arc-20160816;
        b=pd021Zf1g+iF8lnobxeolryQ4lGeMvoC3Z8B38co3bTy0A/B4PEV6eDyin3gnAFSm9
         w1lqX28Rmboq84pNjdSSqZqt2ZlkDpWosDY44GSIfYNeW5KJRRfqLRQ9aoPrWisaPpYf
         17azsM1IWEJlzqPv4QB2T+7IMXq2wvboelWJBePvQklrGsEEb9RZGvheImCCVM7SrUI1
         saC/1kZsdlSOJqbzfg5mdlRMY1K9mzox6Vx6u+Jjp6pb/xSQUGlPsR2fX5EHjYWvHYtS
         r7woxR5hmzuwrHk3Fm0pur4NmvgC94EmJcOxIdN8mQSSVweaTg1Z0ilOYJ/P+RR/7DiW
         TV8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jvCpaWoKl3y2G34oeLNnfPa7Fz736trZYpBdRyWF9i8=;
        b=k4kBsKE46N7kbEUigTNyrEX6MaRw+TO7qKV6U2A8Jdcfjy1PNUgNvsvQyUEv5JhmR6
         0L/Lqz/sOHKJqOaJnDE5gvpK67g5fuMIwJJ24ihPj9auA6Zb8qJjmNe5triX4g9yX3e9
         /UuStaLchkoEvYhUcqXeUdVrukf46QQIAEYWIgM2tAgHz2uTk0PnNdOAyDFC+DDlseBb
         kgJ+orkMmjsg0UXZhZWDgKsinMS/Xc8/3wYbVGiecrO86MvFqmgMWVGTP+dQASHI4jqw
         U37Dq3KLuFKIAaPMY7yY2HquoMpgVK7Zk0jJyI0iEY5HPBKpu7Y0o+uTLWXUcKPWC+u0
         17aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LngxjjfD;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id m2si1005055ill.5.2020.09.14.21.22.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 21:22:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id z2so2184909qtv.12
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 21:22:36 -0700 (PDT)
X-Received: by 2002:ac8:5d43:: with SMTP id g3mr4191287qtx.295.1600143756335;
        Mon, 14 Sep 2020 21:22:36 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id u66sm17422235qka.136.2020.09.14.21.22.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Sep 2020 21:22:35 -0700 (PDT)
Date: Mon, 14 Sep 2020 21:22:33 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Masahiro Yamada <masahiroy@kernel.org>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Sami Tolvanen <samitolvanen@google.com>,
	Andy Lavr <andy.lavr@gmail.com>, Joe Perches <joe@perches.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, stable@vger.kernel.org
Subject: Re: [PATCH v5] lib/string.c: implement stpcpy
Message-ID: <20200915042233.GA816510@ubuntu-n2-xlarge-x86>
References: <20200914160958.889694-1-ndesaulniers@google.com>
 <20200914161643.938408-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200914161643.938408-1-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LngxjjfD;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Sep 14, 2020 at 09:16:43AM -0700, Nick Desaulniers wrote:
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

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

It would be nice to get this into mainline sooner rather than later so
that it can start filtering into the stable trees. ToT LLVM builds have
been broken for a month now.

> Cc: stable@vger.kernel.org
> Link: https://bugs.llvm.org/show_bug.cgi?id=47162
> Link: https://bugs.llvm.org/show_bug.cgi?id=47280
> Link: https://github.com/ClangBuiltLinux/linux/issues/1126
> Link: https://man7.org/linux/man-pages/man3/stpcpy.3.html
> Link: https://pubs.opengroup.org/onlinepubs/9699919799/functions/stpcpy.html
> Link: https://reviews.llvm.org/D85963
> ---
> Changes V5:
> * fix missing parens in comment.
> 
> Changes V4:
> * Roll up Kees' comment fixup from
>   https://lore.kernel.org/lkml/202009060302.4574D8D0E0@keescook/#t.
> * Keep Nathan's tested by tag.
> * Add Kees' reviewed by tag from
>   https://lore.kernel.org/lkml/202009031446.3865FE82B@keescook/.

For the record, I don't see Kees' review tag on this.

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
> 
>  lib/string.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/lib/string.c b/lib/string.c
> index 6012c385fb31..4288e0158d47 100644
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
> + * value is a pointer to the start of @dest). This interface is considered
> + * unsafe as it doesn't perform bounds checking of the inputs. As such it's
> + * not recommended for usage. Instead, its definition is provided in case
> + * the compiler lowers other libcalls to stpcpy.
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
> 2.28.0.618.gf4bc123cb7-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200915042233.GA816510%40ubuntu-n2-xlarge-x86.
