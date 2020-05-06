Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZ72ZD2QKGQERTI23FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id C70D11C66F7
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 06:30:33 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id u7sf616974pga.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 21:30:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588739432; cv=pass;
        d=google.com; s=arc-20160816;
        b=XASye11PetsNfzC61FOwmJncQE7ynYbN97K+PPXzqyB9D3aIqUCfSgik1GC69SZTf6
         YZGcL8wCmDc8wgBEuURRppKP2NCMHX9BPNFa9fYoLO1VKE/EkNWxZhpEHoRIHrOYVd71
         BnUbrvSjX1lIpn7+n6ADDGe7hT0AYQT0qqU3205tWnJFQBDs2Ed8rPTPSBb6oY8xioAx
         6QYAu3wLqPRKXG8Fy8QtWvP6KBHc/yQaSrLa1hST+8vfhynrVfQNHPPCEzy3kTnxiQOM
         xP2Os3pOazWSF2gJsNUx3Xae/95gJEbw/NW2EMHi2QjNXoLhwTPlHazDx9AelXWVYd2Y
         brPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=afb1j8X0575aCa2swFTnKsRXB/gX7dZO6xtlqbJsCLU=;
        b=IPx9IYthUDI5Cu+StzSR5J8zcsr64BaY8hrl6Q5/8Uy2Ij+2nGI1iI1TqvhLUgEH2Y
         GKX1+UGDFTovmsbCyycSvkr03v/c0Kd7/3ut8izvY6/cerTAWIXVZNZvAo12tS7yUGRa
         MemS5QIi0Y80O1W6RyebkmBgB9+cvVNTQS75f0nCsO1OOV7DgKc/p3aMS66/2c+5GTba
         Cymy8s8ooqm/F1g+dBLG0ujaIPqNFv2MD53gb/NwCPE7OQuTc6fnP/ruBFEJL/XxqJOA
         Ocgo7BlDqFf71PlxHYKW609hZydxw5ETNoQPGRvJ3xFpfkQFofwUvmZ5Knt776Fe6Vym
         BflA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pRdL+sME;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=afb1j8X0575aCa2swFTnKsRXB/gX7dZO6xtlqbJsCLU=;
        b=kPGNqpsinkyntjOghhDpoSnDTbToHl7QRekDnnPfzePnWHyDaD5ktX5DE+fUqkuIwA
         TP0Yygpe13VeTwcrx7DJSvYc/liCERS3Vz6pDhAEoj5j5PUJjY1hjHC+tNTR6cVliSH7
         mYWKmiNzsso/ZfLFJWLFusKsEQaQB9rfDDbrrjH2gG5DUuic2QKs98hozKQlDuf6S86p
         UO+rwHZ3JgL1nLDiZ1k/X8FJgeC2biCCDOye0/UNjMQO6EBx2OZnWfG96b1bOBcJFD1t
         f4g9b2JjV5XCMHpB3WjgiiUHuHDhhzbEX7d076Ckz3CoBabjgyWyYqHrmMkBMXf9UmX/
         TOlQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=afb1j8X0575aCa2swFTnKsRXB/gX7dZO6xtlqbJsCLU=;
        b=jQyNfd73RBPi0nnIDQhS79iCr4AamKDpx+9f9EgB5rc/JweAj0Wqif4goreu5Zb35C
         7blsMMTADG6rL8EhqJSPHIopbGfeBkSiJ99QFROqr4b1bGXtVFfcXNhAZjswam5C44Mz
         szOF1ePQVOzoI/+xXomlwCkt02goU8px4TvcxJEzF+tobBs+oiD41m213yCEBDcVHbRK
         DAVzklUbPOwX5BqDZsruDUcCr8d6MNfo7j6J4V1Th93bhAlDASl3R+oKHgrwovQyeNfs
         N1BOI+zcDG6npeR6zLshXpdO/+pTkm+HOH5XnRbwpanrXj3g4s7gnNlr9BCkrivGhYmD
         BDcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=afb1j8X0575aCa2swFTnKsRXB/gX7dZO6xtlqbJsCLU=;
        b=UXVWLG/RyAy+JUYhF6BxDXAzPZQzZ5JgwG94vfhAkKnFEE8MR2vzUJHwU8WlU6WlMp
         Suf2F062zkOdjmf3iTMCJrMHDhXEhufwH7jodXlMdgk48IG5vUHiQshBvNTySUrarU2L
         QGyenzjIIQMxbodo60AICNruIJEhSkVX6ALHabLc5AVCs2L26Xjme7+rct2HHxkWH2Yl
         L5l9B1vCU3rsS8LzPRFBfaPnuc5+7UEG5NY92l9f1bgunOAKvRuJdzhoeVDb6OIS10z+
         WrlDVqlDIxl20N3fghzBp9tmZFGsY5sALvNUh7QU1/q8arnI0uFgebGNl0x+EE/Vdo+u
         r3Rw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZBu2suekor+K7hQe58hNd3efp8WvCSAQD95ZlRxRtqE4wfrTOq
	dXYyRJvD9ojsQxPVE7YUo1c=
X-Google-Smtp-Source: APiQypJiXD0QOwPnBqJytZmuWorR4QFPSYTT8+e5TAYrCdJy+/EJmzDLPeAPFamxRzs5pCQOguu+nA==
X-Received: by 2002:a17:90a:5c81:: with SMTP id r1mr270440pji.1.1588739432099;
        Tue, 05 May 2020 21:30:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:fe52:: with SMTP id x18ls720667pgj.6.gmail; Tue, 05 May
 2020 21:30:31 -0700 (PDT)
X-Received: by 2002:a62:4c6:: with SMTP id 189mr3181841pfe.18.1588739431615;
        Tue, 05 May 2020 21:30:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588739431; cv=none;
        d=google.com; s=arc-20160816;
        b=RVkJ3lxYqBjYpmQEU1OJMLOxmlHtz7VNua62qOWR41eY4bi3JuyMqypTVFjft+V3Bv
         CqYXXj5Qga9x1XheKexITg4f0ppgYbVPd9xJ4LtNFL2pXhzgw1flFe8/vtI5e9Qw8y+y
         6V/x0aZpP6H1WNWCKTUIiXbjOrS8K1NDltPul3C1hRSi5WAEOM1ht2W2+Shbr3zLMqAB
         cqWF/CSp+v4YZPHmX+kAdyrglUQuHIP6OcUSPhcAffxAEoqzuqGIeTjDvnP0gNTjno2A
         cdoPc5C47APN2hilIvd/HYEXkOPPHGw2hVw4ECGJ56lM0SywagkApx23ZIfbDGtVoGUZ
         uiXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xZONTa1LCuYbn7xKCYYHFEkVfOQmQt+9e4kIPuOoC/M=;
        b=0KBWGgGYXRQ/rJrpTXbH7WBwI+LlMAMjHYhPbjSCnT7RQi4iCHT9QHgG4ZrJV5pMPj
         HfMl9qIYCpfrdYdBBWXtSObyrnQJ6ro+rwYuVnA/rdEwK9pI6Uxacgis44hh1w6ENQuP
         hS78T19ofs3+mk8CyOKRlg+cNF4CrD1gn/XAGOJN4sseMD2W2jkYsiuFvG8BAP9c0GnH
         BEfaidkz4O63oTuiRYhuQfZYOkxUEkUzPgRVraZTrGUU3ZsoEO9DhcBbqPZvLr3FxBhM
         rHUM9SlrcR4uVYysn+1/LFeS9ZwqoHwVf71+P9DhTD1AwLQa8dAURJi6AGVHp4ZcD8es
         MP9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pRdL+sME;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id l10si25087pgh.3.2020.05.05.21.30.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 21:30:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id r66so615714oie.5
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 21:30:31 -0700 (PDT)
X-Received: by 2002:a05:6808:919:: with SMTP id w25mr1358214oih.111.1588739430872;
        Tue, 05 May 2020 21:30:30 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id k24sm280294otn.32.2020.05.05.21.30.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 21:30:30 -0700 (PDT)
Date: Tue, 5 May 2020 21:30:28 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Sedat Dilek <sedat.dilek@gmail.com>,
	stable@vger.kernel.org,
	Jesse Brandeburg <jesse.brandeburg@intel.com>,
	"kernelci . org bot" <bot@kernelci.org>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	Ilie Halip <ilie.halip@gmail.com>, x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>, Marco Elver <elver@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	"Peter Zijlstra (Intel)" <peterz@infradead.org>,
	Daniel Axtens <dja@axtens.net>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86: bitops: fix build regression
Message-ID: <20200506043028.GA663805@ubuntu-s3-xlarge-x86>
References: <20200505174423.199985-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200505174423.199985-1-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pRdL+sME;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, May 05, 2020 at 10:44:22AM -0700, Nick Desaulniers wrote:
> From: Sedat Dilek <sedat.dilek@gmail.com>
> 
> It turns out that if your config tickles __builtin_constant_p via
> differences in choices to inline or not, this now produces invalid
> assembly:
> 
> $ cat foo.c
> long a(long b, long c) {
>   asm("orb\t%1, %0" : "+q"(c): "r"(b));
>   return c;
> }
> $ gcc foo.c
> foo.c: Assembler messages:
> foo.c:2: Error: `%rax' not allowed with `orb'
> 
> The "q" constraint only has meanting on -m32 otherwise is treated as
> "r".
> 
> This is easily reproducible via Clang+CONFIG_STAGING=y+CONFIG_VT6656=m,
> or Clang+allyesconfig.

For what it's worth, I don't see this with allyesconfig.

> Keep the masking operation to appease sparse (`make C=1`), add back the
> cast in order to properly select the proper 8b register alias.
> 
>  [Nick: reworded]
> 
> Cc: stable@vger.kernel.org

The offending commit was added in 5.7-rc1; we shouldn't need to
Cc stable since this should be picked up as an -rc fix.

> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/961
> Link: https://lore.kernel.org/lkml/20200504193524.GA221287@google.com/
> Fixes: 1651e700664b4 ("x86: Fix bitops.h warning with a moved cast")
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Reported-by: kernelci.org bot <bot@kernelci.org>
> Suggested-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> Suggested-by: Ilie Halip <ilie.halip@gmail.com>

Not to split hairs but this is Ilie's diff, he should probably be the
author with Sedat's Reported-by/Tested-by.

https://github.com/ClangBuiltLinux/linux/issues/961#issuecomment-608239458

But eh, it's all a team effort plus that can only happen with Ilie's
explicit consent for a Signed-off-by.

I am currently doing a set of builds with clang-11 with this patch on
top of 5.7-rc4 to make sure that all of the cases I have found work.
Once that is done, I'll comment back with a tag.

> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/x86/include/asm/bitops.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/x86/include/asm/bitops.h b/arch/x86/include/asm/bitops.h
> index b392571c1f1d..139122e5b25b 100644
> --- a/arch/x86/include/asm/bitops.h
> +++ b/arch/x86/include/asm/bitops.h
> @@ -54,7 +54,7 @@ arch_set_bit(long nr, volatile unsigned long *addr)
>  	if (__builtin_constant_p(nr)) {
>  		asm volatile(LOCK_PREFIX "orb %1,%0"
>  			: CONST_MASK_ADDR(nr, addr)
> -			: "iq" (CONST_MASK(nr) & 0xff)
> +			: "iq" ((u8)(CONST_MASK(nr) & 0xff))
>  			: "memory");
>  	} else {
>  		asm volatile(LOCK_PREFIX __ASM_SIZE(bts) " %1,%0"
> @@ -74,7 +74,7 @@ arch_clear_bit(long nr, volatile unsigned long *addr)
>  	if (__builtin_constant_p(nr)) {
>  		asm volatile(LOCK_PREFIX "andb %1,%0"
>  			: CONST_MASK_ADDR(nr, addr)
> -			: "iq" (CONST_MASK(nr) ^ 0xff));
> +			: "iq" ((u8)(CONST_MASK(nr) ^ 0xff)));
>  	} else {
>  		asm volatile(LOCK_PREFIX __ASM_SIZE(btr) " %1,%0"
>  			: : RLONG_ADDR(addr), "Ir" (nr) : "memory");
> -- 
> 2.26.2.526.g744177e7f7-goog
> 

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506043028.GA663805%40ubuntu-s3-xlarge-x86.
