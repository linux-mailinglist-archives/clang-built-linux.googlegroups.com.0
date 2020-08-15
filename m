Return-Path: <clang-built-linux+bncBCIO53XE7YHBBTE63X4QKGQEOTSDWZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id AA49724506B
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 04:58:21 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id j63sf4978100oih.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Aug 2020 19:58:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597460300; cv=pass;
        d=google.com; s=arc-20160816;
        b=joB3rYcZvhzxey/Bv3BhDl3cEE71EhkNryM8wPorVVK7xSwGS16IL6XVujfr2pqMrP
         qWof71FCqTLOdgsH/8EXJ/Qe+ttcCy9FRoLzBJFmPX0JXxgAeFAIWTLqYFvGgmG3lqJa
         zJrHLPv/PpM0Uq2ri3YX0Y35zYhWUL08Ie/zpFPypwiehHSVz2ye2eHHV1j8VIt09I2x
         LrODMyoZBFf9+ZYXPdr4vJoGtLLmvYTxOR9Nc6td47QhJRtxD6C+9WENC2q/cL2UwgnX
         vK/s8FozRjW8137Z4P81dAgBDJEMQyxAJWs9PPt55C7fZ/aAMlHZCLJbq0B8U+aUetnF
         eVpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=LrsdceV+OnVRgEtSCwd4Hw8wNnXA91HN8QQLFhXl8FQ=;
        b=GXXVpSAGWu7/6Cts2pmz98cpDc8OrloEKQ+JdN0gFriTLyut8zlasQcusnof8/N1UH
         OHiU8CQtN1Cg6csiup/q7MMnt97/lLTm0f/n75eMu8hpVY9MWpJtdFJfbEEtFBihq+DI
         Bmd3lsSTD6fmBDUcRiljkpbfl+k776XyZJJfhLgEnBzWkFzL3N899KSzUuqkQ4xpPVFm
         uEF7mu72q/gZAJUXC+2S5g9FhFkmTRV47cGK6UkBn/9Y4SeIOoyMGr9djKku9/SBrJAB
         qTwYrUjZ4CISLVdOfL2Nc+8jlEPxhXp8DMjpIJ4eAqWKwXUIURoumtSqreOafYsyBYRp
         R19w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ak5n+gjx;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LrsdceV+OnVRgEtSCwd4Hw8wNnXA91HN8QQLFhXl8FQ=;
        b=Zl+SER78VYyPNTnTBQ5Vx/r5NF5lPVfTb4sKlCh3mzV+vpcibytzwsjJ/4jbjnBsj8
         rgS3rMBzOu7dlKJkliueUebn+YHypUuJqmn6nS4J9r9ntlXQd5nnXlns9E3dHGMnB+fF
         hFm2OOAswiEvZJA/XFWQJpVjOPCJFs4N6cBSW0Ea2+7f1PgNkaSQ4cD736gqEi4ZA+Uc
         dLF9FBnZ1STDDaC8EYXspDuURsJng7/6hiEsurxjHMSxmtXg4hNH/tpwZtlgtR9FWZEJ
         dp2DYYQMbLkqH0dhVaK1EE3yTL0w6vQoUHhGbUmtAB7XLzuKJ+70QEtdCqErHSHukYLi
         q0Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LrsdceV+OnVRgEtSCwd4Hw8wNnXA91HN8QQLFhXl8FQ=;
        b=XjWrtaJTYXy31LcFNqvdvx38SzCJaMb+VqXK7hYCwJcHD0AI0xlMjMJaOtGik2Tx9A
         AjNkHtsi2FJfmFluBTXzHLqvdCquLvXQ3VHswbng2KGSWddLIOmiyrYgDaapdWu5Dodh
         bX6xMtwv+Ikp+x61OEy3ArJRzSkGi9PYJs0QZQeYJjqUVG7YqJHcFews/6ndMoZkWNYf
         eTAKrlgENDu76Fu0dNzXrMpw/4W+XogVn9alj4AdW2dEUg3YhYQ7rXXbjpq4RXclKkxI
         uTM8rg9rnLKAKBkz+hMv+rxs+Or47HbNYJ3NoLgBABAKDv4tROuYW2Uc/8hyxtf902Ky
         VgQQ==
X-Gm-Message-State: AOAM533KXsBgrjXTUL+/hWznAbMbgg4wOZlicBXkPB8UG5P1rqKvclda
	1ZYoDGaa56g7jBDToFBSGJY=
X-Google-Smtp-Source: ABdhPJyZUfuonO3nX1HQCxE67aFePaJSLTuy7FGRTl0Fn260Z5K2MvxvK8qFpt8Jn7XE2IqRlQJJ9A==
X-Received: by 2002:a9d:73ce:: with SMTP id m14mr3878699otk.265.1597460300555;
        Fri, 14 Aug 2020 19:58:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4404:: with SMTP id k4ls2244278oiw.8.gmail; Fri, 14 Aug
 2020 19:58:20 -0700 (PDT)
X-Received: by 2002:aca:31d2:: with SMTP id x201mr3452730oix.5.1597460300066;
        Fri, 14 Aug 2020 19:58:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597460300; cv=none;
        d=google.com; s=arc-20160816;
        b=VRKG4RzE0bSRMzWMzetHffgscxI0KvsCVtCA0BihQXiR0eGuAtsaYfDc8iC/Uuc/Uz
         flMzN3Gmol7khEXBt9uCzrJV4DsE4m7bnM7yMWHqj0VzSY+4udnoximeQgG64KF0Gxf3
         Ltm/FMxhx+uHYyvbORYn8yvoYT8in7UqpZyCdZHbXLh6FtqYnqARsAGVXbD90e5WJwX4
         9qwXZnc0tZ4reIS5ktvbV5G24bjnyROVKzBKwgR2TgPf7oW7aglfnuhZp/4HUxcaw32e
         9RDgbOuxz0by0tm5d1dywOBozuMYm5LYFzEp099QOJSaTv1fKBWENtCLlo54xbELxyFP
         XQBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=/fEGoVdDdtmlO46PesKTLAIEf8IpLdTiSt2G5gOFkkI=;
        b=dMeXPbzorSdzKv1wUdVe68L5ByiOMXKEPMq5/zqPg6d9OJNQWeKKxZ/ZY9yRWk1XLL
         ZHE4yW5Kr1+VvTx6dXAn7rsLlaLkzdeS+OxL6b/WvZmsaosIeeRm/0wFQYoSjxYX7tYN
         wkwlYBRw++plRkleDTWIXdtKrMDUhYJE198ZDvP9F0TS/t5fnrbFT78L0IpDPh9t4wcD
         /yk9uBaME5ble4qHTvQ8XXf+RSlR+jofpa402LGkdqXfjzf0IbR1RRg2VlrrgRYI0Ggi
         iAMTApXl0T7VrmCLzKuPnnzzIDAyOhvwPnOY9/EJsKG9xKJekMZRPMT5wGDXfvmQdk1O
         ZD7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ak5n+gjx;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id r64si485841oor.2.2020.08.14.19.58.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Aug 2020 19:58:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Received: by mail-qv1-xf44.google.com with SMTP id cs12so5242500qvb.2
        for <clang-built-linux@googlegroups.com>; Fri, 14 Aug 2020 19:58:20 -0700 (PDT)
X-Received: by 2002:a05:6214:1742:: with SMTP id dc2mr5652005qvb.90.1597460299518;
        Fri, 14 Aug 2020 19:58:19 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id c33sm12431516qtk.40.2020.08.14.19.58.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Aug 2020 19:58:18 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 14 Aug 2020 22:58:16 -0400
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	=?utf-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>,
	Eli Friedman <efriedma@quicinc.com>, stable@vger.kernel.org,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Joe Perches <joe@perches.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	Daniel Axtens <dja@axtens.net>, Kees Cook <keescook@chromium.org>,
	Ingo Molnar <mingo@kernel.org>, Yury Norov <yury.norov@gmail.com>,
	Alexandru Ardelean <alexandru.ardelean@analog.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] lib/string.c: implement stpcpy
Message-ID: <20200815025816.GA221583@rani.riverdale.lan>
References: <20200815014006.GB99152@rani.riverdale.lan>
 <20200815020946.1538085-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200815020946.1538085-1-ndesaulniers@google.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ak5n+gjx;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Fri, Aug 14, 2020 at 07:09:44PM -0700, Nick Desaulniers wrote:
> LLVM implemented a recent "libcall optimization" that lowers calls to
> `sprintf(dest, "%s", str)` where the return value is used to
> `stpcpy(dest, str) - dest`. This generally avoids the machinery involved
> in parsing format strings.  Calling `sprintf` with overlapping arguments
> was clarified in ISO C99 and POSIX.1-2001 to be undefined behavior.
> 
> `stpcpy` is just like `strcpy` except it returns the pointer to the new
> tail of `dest`. This allows you to chain multiple calls to `stpcpy` in
> one statement.
> 
> `stpcpy` was first standardized in POSIX.1-2008.
> 
> Implement this so that we don't observe linkage failures due to missing
> symbol definitions for `stpcpy`.
> 
> Similar to last year's fire drill with:
> commit 5f074f3e192f ("lib/string.c: implement a basic bcmp")
> 
> This optimization was introduced into clang-12.
> 
> Cc: stable@vger.kernel.org
> Link: https://bugs.llvm.org/show_bug.cgi?id=47162
> Link: https://github.com/ClangBuiltLinux/linux/issues/1126
> Link: https://man7.org/linux/man-pages/man3/stpcpy.3.html
> Link: https://pubs.opengroup.org/onlinepubs/9699919799/functions/stpcpy.html
> Link: https://reviews.llvm.org/D85963
> Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> Suggested-by: Joe Perches <joe@perches.com>
> Reported-by: Sami Tolvanen <samitolvanen@google.com>
> Tested-by: Sami Tolvanen <samitolvanen@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes V2:
> * Added Sami's Tested by; though the patch changed implementation, the
>   missing symbol at link time was the problem Sami was observing.
> * Fix __restrict -> __restrict__ typo as per Joe.
> * Drop note about restrict from commit message as per Arvind.
> * Fix NULL -> NUL as per Arvind; NUL is ASCII '\0'. TIL
> * Fix off by one error as per Arvind; I had another off by one error in
>   my test program that was masking this.
> 
>  include/linux/string.h |  3 +++
>  lib/string.c           | 23 +++++++++++++++++++++++
>  2 files changed, 26 insertions(+)
> 
> diff --git a/include/linux/string.h b/include/linux/string.h
> index b1f3894a0a3e..7686dbca8582 100644
> --- a/include/linux/string.h
> +++ b/include/linux/string.h
> @@ -31,6 +31,9 @@ size_t strlcpy(char *, const char *, size_t);
>  #ifndef __HAVE_ARCH_STRSCPY
>  ssize_t strscpy(char *, const char *, size_t);
>  #endif
> +#ifndef __HAVE_ARCH_STPCPY
> +extern char *stpcpy(char *__restrict__, const char *__restrict__);
> +#endif
>  
>  /* Wraps calls to strscpy()/memset(), no arch specific code required */
>  ssize_t strscpy_pad(char *dest, const char *src, size_t count);
> diff --git a/lib/string.c b/lib/string.c
> index 6012c385fb31..68ddbffbbd58 100644
> --- a/lib/string.c
> +++ b/lib/string.c
> @@ -272,6 +272,29 @@ ssize_t strscpy_pad(char *dest, const char *src, size_t count)
>  }
>  EXPORT_SYMBOL(strscpy_pad);
>  
> +#ifndef __HAVE_ARCH_STPCPY
> +/**
> + * stpcpy - copy a string from src to dest returning a pointer to the new end
> + *          of dest, including src's NUL terminator. May overrun dest.
> + * @dest: pointer to end of string being copied into. Must be large enough
> + *        to receive copy.
> + * @src: pointer to the beginning of string being copied from. Must not overlap
> + *       dest.
> + *
> + * stpcpy differs from strcpy in two key ways:
> + * 1. inputs must not overlap.

Looks like you missed my second email: strcpy also does not allow inputs
to overlap. Couple typos below.

> + * 2. return value is the new NULL terminated character. (for strcpy, the
				 ^^ NUL terminator.
> + *    return value is a pointer to src.
				      ^^ dest.)
> + */
> +#undef stpcpy
> +char *stpcpy(char *__restrict__ dest, const char *__restrict__ src)
> +{
> +	while ((*dest++ = *src++) != '\0')
> +		/* nothing */;
> +	return --dest;
> +}
> +#endif
> +
>  #ifndef __HAVE_ARCH_STRCAT
>  /**
>   * strcat - Append one %NUL-terminated string to another
> -- 
> 2.28.0.220.ged08abb693-goog
> 

The kernel-doc comments in string.c currently have a mix of %NUL and
NUL, but the former seems to be more common. %NUL-terminator appears to
be the preferred wording.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200815025816.GA221583%40rani.riverdale.lan.
