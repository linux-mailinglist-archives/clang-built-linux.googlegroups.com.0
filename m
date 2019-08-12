Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOHQYPVAKGQE6BG4MWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BB1896BA
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 07:25:13 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id z2sf4888131ede.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 22:25:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565587513; cv=pass;
        d=google.com; s=arc-20160816;
        b=HXxE0QtBsgqujQVeFnKlwSgGAuEmYRSowAnVhPq4b/kCgKdGk5kQEWsjuXfksStfRm
         0+TSJRf1WExyuYiMSI1rQ4MV2/caKh2z2OTYdfX5EBNE8q6IQre3gyQFnoDoQOcQZItt
         7mGQwK4LcsowIjAWYcaTAYXVJhmnw+ZGR30NJMgNdRNIrNBEw9dvTM4RIZzrYsScelrd
         VM3mPLyJpV0Q1QymujPlUKpECCaB6lOKk/bD0RtQ5aufyWfJBswLTPWFQmt8e62K2zgD
         lAZKx5n/f+YdjR9TIe5OvoxXKTp5At6uLuG8ryoGZ0TP7nYozA0tY3y9aLbbQPKhO5dN
         4KrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=k575Hj158pAgBdq5cYwTEU/8KMsjbpN6Ux1TL72ld+Q=;
        b=FOpn2ZxP9gW4kLbIssVgz6VQ2k7hBQhsECi21V9b6qh8OxRBMkvwbDHvP9kyWNh6yQ
         R/nbso9B8Kdb2+pk+R9bTEKQSlcfGbYZmIrd7TrI/isIiotslmoCq2t9SxWXUbYe1j/0
         va2KGzDF6ZDIY8bSZI67B1KgL+B+iV8KVeMdGTpoAvFMni0fKIVUb7EwVflVpX8O/RMZ
         PngfG5+MhzFGzsM1g+AYFSKVXohyJ5Gn+G1wWBkMEBTUKSYEbyqNQog0bvpBJ738QXfL
         8Fam/SyqgIv0Q18nQOQmSQ8AlNztzNCtkc839p47zbSH53+EW/RQnhlD5RDC4HNpHLyt
         4KfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bsytUiVN;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=k575Hj158pAgBdq5cYwTEU/8KMsjbpN6Ux1TL72ld+Q=;
        b=LO0jQcRM42ZaIR5GcFR4sFC8pAs+y3O7uOyjSDLHXpHR4zK+7Tmvp6OncEfTJ9Rang
         guU5NplyoTjaCTMgGrZyS385/jsy9wcnNW043amH6jgi4Y8sv/PogWzpbd3BLtwH28HV
         w78wdZYQnTEp2IqY0sV9CP96Pz5parwjSYMVr+L2W/YShLMHmju2gKpLRWyBiV8sAALf
         s4Ln1KZXK5CN1ErYU3KtIuMmgUzsk9C16wzW4fSPFO9kf3/ye/6PKAiNv1yyLBeI/h3c
         DTRJ1VdKCmG+xoR97Lv5FAjx0SfxUTQdYgOdmSJbCBzZrd1bLuH6xUoTF7WJt8N3Jacm
         f6tA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=k575Hj158pAgBdq5cYwTEU/8KMsjbpN6Ux1TL72ld+Q=;
        b=KhLJ0Q3t/VSy1lXSNMWkX2q7xfc3tGEf9YMgmIoxE1WAcFujlsOqOV7KQQhL7HEb8s
         nkMn9YAMYkq0SlVfgimQ7r0doe27OBsVq9CMjMhv53LB/AgeLZkj27deqSO6ww7coR9T
         0kDpQM9g0yHkR3STxIjqZld23ro2KbmDP0zKeymrUxt/nUHcBiUnvtk8y+C7yJbw9I2d
         Qby8J0dflN5boIkh51T1T2nQEbtfQ4sPyDmNXZ+K4/yaf5544j+BUnhgHWUu5INuAJDv
         mOAPah0Co/c6m1lm+oggK5+w7xnH+dDgmY6AHYcRm0XbLzLh5OM6Y/jhUlL03A34eoRj
         EANw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=k575Hj158pAgBdq5cYwTEU/8KMsjbpN6Ux1TL72ld+Q=;
        b=Rv5Zf7wm65Lz/lcjQndqyWbfakvJ/UT9wTN/6VU5U5XITnGVGrVIRQuqP1GlYucJ5z
         jC54eij18bn9lQTBrOWgCzkxAz0g1yUsno1lX2Y51rObAM0CjWcYlnpOor9GnxnNLpVe
         8lsSWHnzyrvo+YA4zxgiqLvVl1oSBgGf7ikQF+uOlGsOFREZ19Qjfg7+BDnQUk5HRz0w
         o2QLgz5bk38LXAyaMffQMIuy+Y0KbXiOVUN7pSlwH44dz+P51UlDwvdFLdU8E9kYJRf3
         iyvtj7fgaPGG8kQKtohIbQa11Na5iV4cGKvw9M292o6VmGyey6jVfZ3kyXYNvpVMTCMV
         akvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXS0JI0motvcDqNl+SX1kyuFY8APQ6jCuBqfRLRHhmiB1vJct9u
	agUCBFWsd5SEzRG5xZGbZhc=
X-Google-Smtp-Source: APXvYqy9O9/EJDvO7LO0lhkInwfpxNe50aGuYFKs1rn2r8HUyfBa/xK6/ok+KP8zu9vKD1ddRKS0EQ==
X-Received: by 2002:a50:e619:: with SMTP id y25mr34719913edm.247.1565587512948;
        Sun, 11 Aug 2019 22:25:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:95a:: with SMTP id j26ls2070457ejd.14.gmail; Sun, 11
 Aug 2019 22:25:12 -0700 (PDT)
X-Received: by 2002:a17:906:3498:: with SMTP id g24mr19154048ejb.137.1565587512562;
        Sun, 11 Aug 2019 22:25:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565587512; cv=none;
        d=google.com; s=arc-20160816;
        b=t+5TJgkQw3ysvSAEhbWkkZCYhQ3L4J37vg0hKipXO9OWcL3Z2muoAh97JtNunEV9ft
         1y7s1UtC5ytftTEezMeVhXEw7+qG/HGtwBI1w0SPE22HMkNBB0riQ+xqoP9mk4M3zDUG
         iThnzLYUoQ3ChXm8cpS77Bn+7VkjbrlO9Oj24cE5i9VOG8eY26KkvneZBtjz6QzqYB9Q
         iEtE8qyTCRhwFvjv8FM2kEX4qADvUOFMZLHGuHfMovLGeE+2YfhcE7KBeSdb3+crr2jU
         DUfZ1vG9PxTp3RVY61W73VJjENGhPxIKt6OiYSegypJabs6aT4iYUwlnKdpvSr3GaFJi
         onYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Zrtq/OcTTH2eTqgcPRB8HJQQ2tKzQ93zxFStLVLHmTY=;
        b=mpSq4KxzvrHwHD2GUAWNu9vyf3rWvxoRk9rg5dH2Uc94ZpCkDWjEg4MSt+NC3hl3mX
         jXDXSbDrJOTU4gSMsxA14DGzMxqXwNQmseLR3DOcywAiE2P9vZzrdopf+bwrsKK8Hzsm
         GBLpehDFl2G/awbmkg5lTmqfTWVYewid1ucI1NksayPqgJisxwo/zjCPlbSd39Lj3eFR
         O6pBaEe6qSBeGZdrkmMDOnoxiTYuwEA6zdb/87lgnB8pcM9j0laLKqgMDGZa6HdZh9xi
         omdhdcKyLpgNWWIW4irmH3SeAkLeZWqBQ7yPVNqNck3eqCC0djjT3OojZXqTcEXqyybk
         VF+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bsytUiVN;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id l17si585796ejg.1.2019.08.11.22.25.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 22:25:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id e8so9801428wme.1
        for <clang-built-linux@googlegroups.com>; Sun, 11 Aug 2019 22:25:12 -0700 (PDT)
X-Received: by 2002:a7b:cd09:: with SMTP id f9mr24341011wmj.64.1565587512105;
        Sun, 11 Aug 2019 22:25:12 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id 74sm3588349wma.15.2019.08.11.22.25.11
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 11 Aug 2019 22:25:11 -0700 (PDT)
Date: Sun, 11 Aug 2019 22:25:10 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
	James Hogan <jhogan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Werner Koch <wk@gnupg.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Herbert Xu <herbert@gondor.apana.org.au>
Subject: Re: [PATCH 4/5] lib/mpi: Fix for building for MIPS64 with Clang
Message-ID: <20190812052510.GB47342@archlinux-threadripper>
References: <20190812033120.43013-1-natechancellor@gmail.com>
 <20190812033120.43013-5-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190812033120.43013-5-natechancellor@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bsytUiVN;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Aug 11, 2019 at 08:31:19PM -0700, Nathan Chancellor wrote:
> From: Werner Koch <wk@gnupg.org>
> 
> * mpi/longlong.h [MIPS64][__clang__]: Use the C version like we
> already do for 32 bit MIPS
> 
> clang errors:
> 
> lib/mpi/generic_mpih-mul1.c:37:24: error: invalid use of a cast in a
> inline asm context requiring an l-value: remove the cast or build with
> -fheinous-gnu-extensions
>                 umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
>                 ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> lib/mpi/longlong.h:652:20: note: expanded from macro 'umul_ppmm'
>         : "=l" ((USItype)(w0)), \
>                 ~~~~~~~~~~^~~
> lib/mpi/generic_mpih-mul1.c:37:3: error: invalid output constraint '=h'
> in asm
>                 umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
>                 ^
> lib/mpi/longlong.h:653:7: note: expanded from macro 'umul_ppmm'
>              "=h" ((USItype)(w1)) \
>              ^
> 2 errors generated.
> 
> Fixes: 5ce3e312ec5c ("crypto: GnuPG based MPI lib - header files (part 2)")
> Link: https://github.com/ClangBuiltLinux/linux/issues/605
> Link: https://github.com/gpg/libgcrypt/commit/e7ae0ae243c8978a67c802169183187d88557be8
> Signed-off-by: Werner Koch <wk@gnupg.org>
> [nc: Added build error and tags to commit message
>      Modified subject line
>      Removed GnuPG-bug-id
>      Removed space between defined and (__clang__)]
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  lib/mpi/longlong.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/lib/mpi/longlong.h b/lib/mpi/longlong.h
> index 8a1507fc94dd..5636e6a09f7a 100644
> --- a/lib/mpi/longlong.h
> +++ b/lib/mpi/longlong.h
> @@ -688,7 +688,8 @@ do {									\
>  		 : "d" ((UDItype)(u)),					\
>  		   "d" ((UDItype)(v)));					\
>  } while (0)
> -#elif (__GNUC__ >= 5) || (__GNUC__ >= 4 && __GNUC_MINOR__ >= 4)
> +#elif defined(__clang__) || (__GNUC__ >= 5) || (__GNUC__ == 4 && \
> +						__GNUC_MINOR__ >= 4)
>  #define umul_ppmm(w1, w0, u, v) \
>  do {									\
>  	typedef unsigned int __ll_UTItype __attribute__((mode(TI)));	\
> -- 
> 2.23.0.rc2
> 

Hi Paul,

I noticed you didn't pick up this patch with the other ones you applied.
I just wanted to make sure it wasn't because it was sent to the wrong
person. This set of files doesn't appear to have an owner in
MAINTAINERS, I guess based on git history either Andrew or Hubert (on
CC) pick up patches for this set of files? If I need to, I can resend it
to the proper people.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812052510.GB47342%40archlinux-threadripper.
