Return-Path: <clang-built-linux+bncBDA5BKNJ6MIBBDNJ6OEAMGQEBILMKFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 413DA3F00A2
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 11:36:14 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id d69-20020a25e6480000b02904f4a117bd74sf2202933ybh.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 02:36:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629279373; cv=pass;
        d=google.com; s=arc-20160816;
        b=rcB5B8DkPWWFk92OoFIDqeZiuW3vcsRtNkLcyud4LDUZu15U7D/Fc8QDSwe6dJsLqB
         yNtHO6v9gkeQpRLjAZ3cab6Wg2QuBKf9lOcXbfhPVTHLRdS4ggvC4jM6VhiGcAPC26Z/
         w8eAR7O6+wn/Gb1oUZrU2Cnhh4Z9DM8YcWYqYX8esXnIs8pc8PQeDSdY74dT30uonmun
         xTTNS6wdk1JJ8oY59SjlYnTmgnwho0+tK/yMe90nQJY1S48v93Nu2j9P/qoQVlgIwped
         fo0ecNv5IyyHgv0I+C6vvNkA/m0Rkd2uQGbgHAqZPuOXGOlcW8wh05FUF8RN46acAb0P
         qaUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=V8rp3KgAQ1ogwWj1MHjLDCDGH3rJlHO9hXvwinbuaco=;
        b=X2xTJwJ/Y5hI4S88ZNnKjLPJYXzpFcKYnwbomRUnZ4GYcwY+LBfDu/LQ9M06b3rS6K
         YLzxIkgPgXeiVqP5G4RABIx5yAT7nysCycYmVCuurxqd96TXBl925W+TH0vPae0PXgvM
         6/BesvXc676+Ys35x61vaBZoJbcfnuzWaUF8KAaK7pR+8hINX/nYcABOnVi4E2JKu38N
         w7QuX2ZaNg64HOGFECCwMy/IOi2ZmwcdcIRufkl8XF8LrEa7NEQNeb6AxZPfuoHkiffB
         6ebGWAiVPTDkeJhLhNOWPieufesk9mdCsp76O08TpCzjvxCUn7QARuVtK5sV2w/aaKwd
         U2bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:organization:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V8rp3KgAQ1ogwWj1MHjLDCDGH3rJlHO9hXvwinbuaco=;
        b=tkDa25g4q/S+IF2n3wIVrW7uJsizmcrqm+mXmvmTy+aoSMhoEdQbfRpRJOaW7JqpRY
         WZZfYxVIMeAY9cU9fW9xYxtslwfntkMjxPOk6qg9DqVmHoMR3GPNLh6PXQwjm3D5vrMU
         gNKYgrsyjJVDrkGNx5ppL/8oqjuE6SyULgK2K1w2z5LxKVPK0nbTVZt1eea9mcVrjj/z
         KqXxm/sD2oqlDyrJiEBM4p9CzlgISHlXmUJLtkStxGc6laxJxw30nDgssNBZnkHtQp4p
         rBI+nshj6I84n3ZtNJSMLcPN02+ClDPpcPvR78Mfni+FArk5QBiz4gSoQ4lS/kEpQoek
         zcvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organization:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V8rp3KgAQ1ogwWj1MHjLDCDGH3rJlHO9hXvwinbuaco=;
        b=H5fMunLoqO3PX41SQVuqqeyf1eOiZVpqNzTmghJl2AtIKSPEyI5gCuo4APAAXdJj7W
         R8M9qd+jLbPn/cTF87S4prgyNZqHQh7U3VzMscUTEIDCxXup3aKdQ/tW7krSQo2mU1u5
         njfsB/rA2TP1m/gC7A2PSnEx982e3w/0v+pRrTmjVoYZOWsC40MeUPbXa43Sl+KoiPsJ
         kHgHDJNmkv6caZoRGLdY/XkRra3cYbL3DwDn0fa6fYqRj3uePvzc81wMncmK8Gg8zn2E
         +UJzUmCrTBIq06yLbywNIeKNk8byGnZskH+bCwW/oDdlObpsH/lbSJOhKROAi6uWm/ig
         j9ZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533oh9djoTuO1UNlqpNs0jSs9tx3FdYom9SK3PhEQO9egxpxId+k
	2X+USMRLhPm8boxm8lypkyQ=
X-Google-Smtp-Source: ABdhPJyocJr2z31dbRU4LSvi4htAtT2JfrnxKBzLM1vPVrs4g5H/epK/cu4lBRSO6NJqoSKnptcScA==
X-Received: by 2002:a25:b288:: with SMTP id k8mr10166020ybj.154.1629279373313;
        Wed, 18 Aug 2021 02:36:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9307:: with SMTP id f7ls803699ybo.10.gmail; Wed, 18 Aug
 2021 02:36:12 -0700 (PDT)
X-Received: by 2002:a25:cc42:: with SMTP id l63mr10203617ybf.417.1629279372780;
        Wed, 18 Aug 2021 02:36:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629279372; cv=none;
        d=google.com; s=arc-20160816;
        b=iDRhFYIFMmk8KnNNpv1vEWM3xQhopAHtMc0H1WANz/WnVx0itOqa5nWa26R/n/bzRk
         9tt6SHsWhr54EBNo1xvOgvK0Slb4UWsPDK/6SfXC6SWIEYDqITLKTonWLC/LrWPGnnIM
         kGqKb42ZYnFb7OfuGYx1pO1SDtYB5YV6Xveza6O2FOwg911XgcetaQA6iWdwbUuZdT9T
         2NyMIMq4VueP+fXubO7LIhSVCmwaNx1HdLYvB5YtPC4GHf9jCh8vTOiLc03Nilw/KSeE
         /xlfG+WVe0MobULdy7OCCrd42nLH7kXduk4nAafyb5mLy32RTGPJz5q+vs3OHehkEU2M
         YEUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=organization:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date;
        bh=QNHJc+saO+VcxA2ulddMtyapga3FTpQ/xAisN0IiKgM=;
        b=m/bsFuB09Ee6mDfarLlpvINV0n3ylVjQPZfxc5uV+6WEnJzSTbpOL8d21zkyqW2dKY
         iGiQK/mSISVBpHjrqeyPSvla2zGkHs5bhpVUe3hNSHxpGUVNI2Sj3P1vG+4tENLEI0VU
         vpzSkTmRf4pwAXqXmL0bkcgVwE08BHKpjBkYYT0DwnXvvvwNLzswrG/MBFltA7ll4Per
         J6QbEfPRVtlJ75ZNk4IKCyVUP7zvlcT6xe+MKPD/qZiuilgAgD5y70jxwJ7LHrp8+i/l
         wxF1yBjehPAqgujf+DQVXrvJOJTgwuATCacV1QHbQ1Doad/Ir6Wn99mdzpPT+0j9b4nf
         aq9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id e137si452580ybf.2.2021.08.18.02.36.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 02:36:12 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-IronPort-AV: E=McAfee;i="6200,9189,10079"; a="277314911"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; 
   d="scan'208";a="277314911"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Aug 2021 02:36:11 -0700
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; 
   d="scan'208";a="641264466"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Aug 2021 02:36:05 -0700
Received: from andy by smile with local (Exim 4.94.2)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1mGHzK-00B45i-QA; Wed, 18 Aug 2021 12:35:58 +0300
Date: Wed, 18 Aug 2021 12:35:58 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Andy Shevchenko <andy@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andy Lavr <andy.lavr@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Alexey Dobriyan <adobriyan@gmail.com>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 26/63] lib/string: Move helper functions out of
 string.c
Message-ID: <YRzUfib7a/APXztH@smile.fi.intel.com>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-27-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210818060533.3569517-27-keescook@chromium.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Original-Sender: andriy.shevchenko@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com
 designates 134.134.136.31 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Tue, Aug 17, 2021 at 11:04:56PM -0700, Kees Cook wrote:
> The core functions of string.c are those that may be implemented by
> per-architecture functions, or overloaded by FORTIFY_SOURCE. As a
> result, it needs to be built with __NO_FORTIFY. Without this, macros
> will collide with function declarations. This was accidentally working
> due to -ffreestanding (on some architectures). Make this deterministic
> by explicitly setting __NO_FORTIFY and move all the helper functions
> into string_helpers.c so that they gain the fortification coverage they
> had been missing.

No objections
Acked-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

> Cc: Andy Shevchenko <andy@kernel.org>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Andy Lavr <andy.lavr@gmail.com>
> Cc: Nathan Chancellor <nathan@kernel.org>
> Cc: Alexey Dobriyan <adobriyan@gmail.com>
> Cc: Stephen Rothwell <sfr@canb.auug.org.au>
> Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/arm/boot/compressed/string.c     |   1 +
>  arch/s390/lib/string.c                |   3 +
>  arch/x86/boot/compressed/misc.h       |   2 +
>  arch/x86/boot/compressed/pgtable_64.c |   2 +
>  arch/x86/lib/string_32.c              |   1 +
>  lib/string.c                          | 210 +-------------------------
>  lib/string_helpers.c                  | 193 +++++++++++++++++++++++
>  7 files changed, 208 insertions(+), 204 deletions(-)
> 
> diff --git a/arch/arm/boot/compressed/string.c b/arch/arm/boot/compressed/string.c
> index 8c0fa276d994..fcc678fce045 100644
> --- a/arch/arm/boot/compressed/string.c
> +++ b/arch/arm/boot/compressed/string.c
> @@ -5,6 +5,7 @@
>   * Small subset of simple string routines
>   */
>  
> +#define __NO_FORTIFY
>  #include <linux/string.h>
>  
>  /*
> diff --git a/arch/s390/lib/string.c b/arch/s390/lib/string.c
> index cfcdf76d6a95..392fb9f4f4db 100644
> --- a/arch/s390/lib/string.c
> +++ b/arch/s390/lib/string.c
> @@ -8,6 +8,9 @@
>   */
>  
>  #define IN_ARCH_STRING_C 1
> +#ifndef __NO_FORTIFY
> +# define __NO_FORTIFY
> +#endif
>  
>  #include <linux/types.h>
>  #include <linux/string.h>
> diff --git a/arch/x86/boot/compressed/misc.h b/arch/x86/boot/compressed/misc.h
> index 31139256859f..49bde196da9b 100644
> --- a/arch/x86/boot/compressed/misc.h
> +++ b/arch/x86/boot/compressed/misc.h
> @@ -14,6 +14,8 @@
>  #undef CONFIG_KASAN
>  #undef CONFIG_KASAN_GENERIC
>  
> +#define __NO_FORTIFY
> +
>  /* cpu_feature_enabled() cannot be used this early */
>  #define USE_EARLY_PGTABLE_L5
>  
> diff --git a/arch/x86/boot/compressed/pgtable_64.c b/arch/x86/boot/compressed/pgtable_64.c
> index 2a78746f5a4c..a1733319a22a 100644
> --- a/arch/x86/boot/compressed/pgtable_64.c
> +++ b/arch/x86/boot/compressed/pgtable_64.c
> @@ -1,3 +1,5 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include "misc.h"
>  #include <linux/efi.h>
>  #include <asm/e820/types.h>
>  #include <asm/processor.h>
> diff --git a/arch/x86/lib/string_32.c b/arch/x86/lib/string_32.c
> index d15fdae9656e..53b3f202267c 100644
> --- a/arch/x86/lib/string_32.c
> +++ b/arch/x86/lib/string_32.c
> @@ -11,6 +11,7 @@
>   * strings.
>   */
>  
> +#define __NO_FORTIFY
>  #include <linux/string.h>
>  #include <linux/export.h>
>  
> diff --git a/lib/string.c b/lib/string.c
> index 4fec38fc6e58..4e111d9dd6d5 100644
> --- a/lib/string.c
> +++ b/lib/string.c
> @@ -6,20 +6,15 @@
>   */
>  
>  /*
> - * stupid library routines.. The optimized versions should generally be found
> - * as inline code in <asm-xx/string.h>
> + * This file should be used only for "library" routines that may have
> + * alternative implementations on specific architectures (generally
> + * found in <asm-xx/string.h>), or get overloaded by FORTIFY_SOURCE.
> + * (Specifically, this file is built with __NO_FORTIFY.)
>   *
> - * These are buggy as well..
> - *
> - * * Fri Jun 25 1999, Ingo Oeser <ioe@informatik.tu-chemnitz.de>
> - * -  Added strsep() which will replace strtok() soon (because strsep() is
> - *    reentrant and should be faster). Use only strsep() in new code, please.
> - *
> - * * Sat Feb 09 2002, Jason Thomas <jason@topic.com.au>,
> - *                    Matthew Hawkins <matt@mh.dropbear.id.au>
> - * -  Kissed strtok() goodbye
> + * Other helper functions should live in string_helpers.c.
>   */
>  
> +#define __NO_FORTIFY
>  #include <linux/types.h>
>  #include <linux/string.h>
>  #include <linux/ctype.h>
> @@ -254,40 +249,6 @@ ssize_t strscpy(char *dest, const char *src, size_t count)
>  EXPORT_SYMBOL(strscpy);
>  #endif
>  
> -/**
> - * strscpy_pad() - Copy a C-string into a sized buffer
> - * @dest: Where to copy the string to
> - * @src: Where to copy the string from
> - * @count: Size of destination buffer
> - *
> - * Copy the string, or as much of it as fits, into the dest buffer.  The
> - * behavior is undefined if the string buffers overlap.  The destination
> - * buffer is always %NUL terminated, unless it's zero-sized.
> - *
> - * If the source string is shorter than the destination buffer, zeros
> - * the tail of the destination buffer.
> - *
> - * For full explanation of why you may want to consider using the
> - * 'strscpy' functions please see the function docstring for strscpy().
> - *
> - * Returns:
> - * * The number of characters copied (not including the trailing %NUL)
> - * * -E2BIG if count is 0 or @src was truncated.
> - */
> -ssize_t strscpy_pad(char *dest, const char *src, size_t count)
> -{
> -	ssize_t written;
> -
> -	written = strscpy(dest, src, count);
> -	if (written < 0 || written == count - 1)
> -		return written;
> -
> -	memset(dest + written + 1, 0, count - written - 1);
> -
> -	return written;
> -}
> -EXPORT_SYMBOL(strscpy_pad);
> -
>  /**
>   * stpcpy - copy a string from src to dest returning a pointer to the new end
>   *          of dest, including src's %NUL-terminator. May overrun dest.
> @@ -530,46 +491,6 @@ char *strnchr(const char *s, size_t count, int c)
>  EXPORT_SYMBOL(strnchr);
>  #endif
>  
> -/**
> - * skip_spaces - Removes leading whitespace from @str.
> - * @str: The string to be stripped.
> - *
> - * Returns a pointer to the first non-whitespace character in @str.
> - */
> -char *skip_spaces(const char *str)
> -{
> -	while (isspace(*str))
> -		++str;
> -	return (char *)str;
> -}
> -EXPORT_SYMBOL(skip_spaces);
> -
> -/**
> - * strim - Removes leading and trailing whitespace from @s.
> - * @s: The string to be stripped.
> - *
> - * Note that the first trailing whitespace is replaced with a %NUL-terminator
> - * in the given string @s. Returns a pointer to the first non-whitespace
> - * character in @s.
> - */
> -char *strim(char *s)
> -{
> -	size_t size;
> -	char *end;
> -
> -	size = strlen(s);
> -	if (!size)
> -		return s;
> -
> -	end = s + size - 1;
> -	while (end >= s && isspace(*end))
> -		end--;
> -	*(end + 1) = '\0';
> -
> -	return skip_spaces(s);
> -}
> -EXPORT_SYMBOL(strim);
> -
>  #ifndef __HAVE_ARCH_STRLEN
>  /**
>   * strlen - Find the length of a string
> @@ -704,101 +625,6 @@ char *strsep(char **s, const char *ct)
>  EXPORT_SYMBOL(strsep);
>  #endif
>  
> -/**
> - * sysfs_streq - return true if strings are equal, modulo trailing newline
> - * @s1: one string
> - * @s2: another string
> - *
> - * This routine returns true iff two strings are equal, treating both
> - * NUL and newline-then-NUL as equivalent string terminations.  It's
> - * geared for use with sysfs input strings, which generally terminate
> - * with newlines but are compared against values without newlines.
> - */
> -bool sysfs_streq(const char *s1, const char *s2)
> -{
> -	while (*s1 && *s1 == *s2) {
> -		s1++;
> -		s2++;
> -	}
> -
> -	if (*s1 == *s2)
> -		return true;
> -	if (!*s1 && *s2 == '\n' && !s2[1])
> -		return true;
> -	if (*s1 == '\n' && !s1[1] && !*s2)
> -		return true;
> -	return false;
> -}
> -EXPORT_SYMBOL(sysfs_streq);
> -
> -/**
> - * match_string - matches given string in an array
> - * @array:	array of strings
> - * @n:		number of strings in the array or -1 for NULL terminated arrays
> - * @string:	string to match with
> - *
> - * This routine will look for a string in an array of strings up to the
> - * n-th element in the array or until the first NULL element.
> - *
> - * Historically the value of -1 for @n, was used to search in arrays that
> - * are NULL terminated. However, the function does not make a distinction
> - * when finishing the search: either @n elements have been compared OR
> - * the first NULL element was found.
> - *
> - * Return:
> - * index of a @string in the @array if matches, or %-EINVAL otherwise.
> - */
> -int match_string(const char * const *array, size_t n, const char *string)
> -{
> -	int index;
> -	const char *item;
> -
> -	for (index = 0; index < n; index++) {
> -		item = array[index];
> -		if (!item)
> -			break;
> -		if (!strcmp(item, string))
> -			return index;
> -	}
> -
> -	return -EINVAL;
> -}
> -EXPORT_SYMBOL(match_string);
> -
> -/**
> - * __sysfs_match_string - matches given string in an array
> - * @array: array of strings
> - * @n: number of strings in the array or -1 for NULL terminated arrays
> - * @str: string to match with
> - *
> - * Returns index of @str in the @array or -EINVAL, just like match_string().
> - * Uses sysfs_streq instead of strcmp for matching.
> - *
> - * This routine will look for a string in an array of strings up to the
> - * n-th element in the array or until the first NULL element.
> - *
> - * Historically the value of -1 for @n, was used to search in arrays that
> - * are NULL terminated. However, the function does not make a distinction
> - * when finishing the search: either @n elements have been compared OR
> - * the first NULL element was found.
> - */
> -int __sysfs_match_string(const char * const *array, size_t n, const char *str)
> -{
> -	const char *item;
> -	int index;
> -
> -	for (index = 0; index < n; index++) {
> -		item = array[index];
> -		if (!item)
> -			break;
> -		if (sysfs_streq(item, str))
> -			return index;
> -	}
> -
> -	return -EINVAL;
> -}
> -EXPORT_SYMBOL(__sysfs_match_string);
> -
>  #ifndef __HAVE_ARCH_MEMSET
>  /**
>   * memset - Fill a region of memory with the given value
> @@ -1221,27 +1047,3 @@ void *memchr_inv(const void *start, int c, size_t bytes)
>  	return check_bytes8(start, value, bytes % 8);
>  }
>  EXPORT_SYMBOL(memchr_inv);
> -
> -/**
> - * strreplace - Replace all occurrences of character in string.
> - * @s: The string to operate on.
> - * @old: The character being replaced.
> - * @new: The character @old is replaced with.
> - *
> - * Returns pointer to the nul byte at the end of @s.
> - */
> -char *strreplace(char *s, char old, char new)
> -{
> -	for (; *s; ++s)
> -		if (*s == old)
> -			*s = new;
> -	return s;
> -}
> -EXPORT_SYMBOL(strreplace);
> -
> -void fortify_panic(const char *name)
> -{
> -	pr_emerg("detected buffer overflow in %s\n", name);
> -	BUG();
> -}
> -EXPORT_SYMBOL(fortify_panic);
> diff --git a/lib/string_helpers.c b/lib/string_helpers.c
> index 3806a52ce697..bde13612c25d 100644
> --- a/lib/string_helpers.c
> +++ b/lib/string_helpers.c
> @@ -696,3 +696,196 @@ void kfree_strarray(char **array, size_t n)
>  	kfree(array);
>  }
>  EXPORT_SYMBOL_GPL(kfree_strarray);
> +
> +/**
> + * strscpy_pad() - Copy a C-string into a sized buffer
> + * @dest: Where to copy the string to
> + * @src: Where to copy the string from
> + * @count: Size of destination buffer
> + *
> + * Copy the string, or as much of it as fits, into the dest buffer.  The
> + * behavior is undefined if the string buffers overlap.  The destination
> + * buffer is always %NUL terminated, unless it's zero-sized.
> + *
> + * If the source string is shorter than the destination buffer, zeros
> + * the tail of the destination buffer.
> + *
> + * For full explanation of why you may want to consider using the
> + * 'strscpy' functions please see the function docstring for strscpy().
> + *
> + * Returns:
> + * * The number of characters copied (not including the trailing %NUL)
> + * * -E2BIG if count is 0 or @src was truncated.
> + */
> +ssize_t strscpy_pad(char *dest, const char *src, size_t count)
> +{
> +	ssize_t written;
> +
> +	written = strscpy(dest, src, count);
> +	if (written < 0 || written == count - 1)
> +		return written;
> +
> +	memset(dest + written + 1, 0, count - written - 1);
> +
> +	return written;
> +}
> +EXPORT_SYMBOL(strscpy_pad);
> +
> +/**
> + * skip_spaces - Removes leading whitespace from @str.
> + * @str: The string to be stripped.
> + *
> + * Returns a pointer to the first non-whitespace character in @str.
> + */
> +char *skip_spaces(const char *str)
> +{
> +	while (isspace(*str))
> +		++str;
> +	return (char *)str;
> +}
> +EXPORT_SYMBOL(skip_spaces);
> +
> +/**
> + * strim - Removes leading and trailing whitespace from @s.
> + * @s: The string to be stripped.
> + *
> + * Note that the first trailing whitespace is replaced with a %NUL-terminator
> + * in the given string @s. Returns a pointer to the first non-whitespace
> + * character in @s.
> + */
> +char *strim(char *s)
> +{
> +	size_t size;
> +	char *end;
> +
> +	size = strlen(s);
> +	if (!size)
> +		return s;
> +
> +	end = s + size - 1;
> +	while (end >= s && isspace(*end))
> +		end--;
> +	*(end + 1) = '\0';
> +
> +	return skip_spaces(s);
> +}
> +EXPORT_SYMBOL(strim);
> +
> +/**
> + * sysfs_streq - return true if strings are equal, modulo trailing newline
> + * @s1: one string
> + * @s2: another string
> + *
> + * This routine returns true iff two strings are equal, treating both
> + * NUL and newline-then-NUL as equivalent string terminations.  It's
> + * geared for use with sysfs input strings, which generally terminate
> + * with newlines but are compared against values without newlines.
> + */
> +bool sysfs_streq(const char *s1, const char *s2)
> +{
> +	while (*s1 && *s1 == *s2) {
> +		s1++;
> +		s2++;
> +	}
> +
> +	if (*s1 == *s2)
> +		return true;
> +	if (!*s1 && *s2 == '\n' && !s2[1])
> +		return true;
> +	if (*s1 == '\n' && !s1[1] && !*s2)
> +		return true;
> +	return false;
> +}
> +EXPORT_SYMBOL(sysfs_streq);
> +
> +/**
> + * match_string - matches given string in an array
> + * @array:	array of strings
> + * @n:		number of strings in the array or -1 for NULL terminated arrays
> + * @string:	string to match with
> + *
> + * This routine will look for a string in an array of strings up to the
> + * n-th element in the array or until the first NULL element.
> + *
> + * Historically the value of -1 for @n, was used to search in arrays that
> + * are NULL terminated. However, the function does not make a distinction
> + * when finishing the search: either @n elements have been compared OR
> + * the first NULL element was found.
> + *
> + * Return:
> + * index of a @string in the @array if matches, or %-EINVAL otherwise.
> + */
> +int match_string(const char * const *array, size_t n, const char *string)
> +{
> +	int index;
> +	const char *item;
> +
> +	for (index = 0; index < n; index++) {
> +		item = array[index];
> +		if (!item)
> +			break;
> +		if (!strcmp(item, string))
> +			return index;
> +	}
> +
> +	return -EINVAL;
> +}
> +EXPORT_SYMBOL(match_string);
> +
> +/**
> + * __sysfs_match_string - matches given string in an array
> + * @array: array of strings
> + * @n: number of strings in the array or -1 for NULL terminated arrays
> + * @str: string to match with
> + *
> + * Returns index of @str in the @array or -EINVAL, just like match_string().
> + * Uses sysfs_streq instead of strcmp for matching.
> + *
> + * This routine will look for a string in an array of strings up to the
> + * n-th element in the array or until the first NULL element.
> + *
> + * Historically the value of -1 for @n, was used to search in arrays that
> + * are NULL terminated. However, the function does not make a distinction
> + * when finishing the search: either @n elements have been compared OR
> + * the first NULL element was found.
> + */
> +int __sysfs_match_string(const char * const *array, size_t n, const char *str)
> +{
> +	const char *item;
> +	int index;
> +
> +	for (index = 0; index < n; index++) {
> +		item = array[index];
> +		if (!item)
> +			break;
> +		if (sysfs_streq(item, str))
> +			return index;
> +	}
> +
> +	return -EINVAL;
> +}
> +EXPORT_SYMBOL(__sysfs_match_string);
> +
> +/**
> + * strreplace - Replace all occurrences of character in string.
> + * @s: The string to operate on.
> + * @old: The character being replaced.
> + * @new: The character @old is replaced with.
> + *
> + * Returns pointer to the nul byte at the end of @s.
> + */
> +char *strreplace(char *s, char old, char new)
> +{
> +	for (; *s; ++s)
> +		if (*s == old)
> +			*s = new;
> +	return s;
> +}
> +EXPORT_SYMBOL(strreplace);
> +
> +void fortify_panic(const char *name)
> +{
> +	pr_emerg("detected buffer overflow in %s\n", name);
> +	BUG();
> +}
> +EXPORT_SYMBOL(fortify_panic);
> -- 
> 2.30.2
> 

-- 
With Best Regards,
Andy Shevchenko


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YRzUfib7a/APXztH%40smile.fi.intel.com.
