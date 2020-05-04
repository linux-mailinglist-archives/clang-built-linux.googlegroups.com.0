Return-Path: <clang-built-linux+bncBDYJPJO25UGBBN7EYH2QKGQEJQ4ENHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A8C1C475A
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 May 2020 21:51:21 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id m6sf79509pjo.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 May 2020 12:51:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588621880; cv=pass;
        d=google.com; s=arc-20160816;
        b=XcCuHGMFhFSpEM7sdGx0RK173DlvoOyIL5cUZqar00QfVcQrk4r/jckF336IP3cxtl
         qKRNAXlmzQ8u/bmUgbGU3LUHrsQFf+T+qDN2+oT5dr38mmN+HMqKQoUi9H72iz8rjTBM
         mfPeU6chYPWVby5w75C1UDflVCdlcBC7KOfXO6NpGPSziGM/FnDMfz7e5oDf+hhUoEY8
         X3KeLShArlLOmtONZxs22Lrw7wB64Ab0wi3KcazrbYmdOOM0Sk+e1HzIrFKfcOWWyKet
         0JX/v5c7YlDklzZemJF9zaulhSCOF9LtMgvJqF4PJKmXFKcfvycbcCcP6H411vjOd69E
         8Omw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject:status
         :references:mime-version:message-id:lines:in-reply-to:date
         :dkim-signature;
        bh=RKr+0r1/AFmCiN0M4/aB2/FAkguTBcFUIKdVz/9t/IQ=;
        b=nrTm6H0PH8uqeRdrXAp1+a5Avx4dpdY2KrjbMJBz/KACsR8e5Sid6zronguvfTNskI
         NSzBma7HjNCj/pR2scxWPyiJ5Dk3iguQA7fhFgpJfwgNbqCIU74IOKIUZ+lU+J8hJUj7
         ftUeizNxwpU4soKsUjnKU4SnOZwgqJLmfvwTIjhWdW5VU8MtCjOys8AVVxibuOGXaD84
         b+eQnm07XjFrP1SIZxvMcy2I9oKb37flqPsI4j8N1dnJhPfw+yCNrnrpgumxMOzOBcRF
         gdM4ca7PbE7A7CCIjbSSXZfoNM7E02WrPjQ2d0kyY+sfXjJoEFv6MvkYcUQfyYPsU5XP
         WvjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hpnZ84ME;
       spf=pass (google.com: domain of 3nnkwxgwkancg67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3NnKwXgwKANcG67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:lines:message-id:mime-version:references:status
         :subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=RKr+0r1/AFmCiN0M4/aB2/FAkguTBcFUIKdVz/9t/IQ=;
        b=D/tpJo3Khmr20BP0GzS/mCsQnGBIIFJ1FapIhw9n0eaTXVLtTYGmVu6unkQmF5WfGN
         e0sQQDFYfAYOHVBbowR3fcNwmo5MD5U0jXAKwc2G/oljnlcLrLjTwCEvDBtm/UliT65/
         Qa0j/FMIU7tXArPMiYoYUjS3k0Zv0Bt/LTTMmZSqEn+5UYWcF2q5wryLVugucb7W7A+0
         m19y+vnPAbsOwTiZfeDqErV8/8226gw4wVFJZ7u5/lS8o8evm3qjXLv9XyaVWpOZ/Ejr
         2mtaB01f/o709A4f0u6ZRlJ/8lKiAvVc5J68inHVuveWoeQehSXam2ErbfT+HEVcHtYy
         ITMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:lines:message-id:mime-version
         :references:status:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RKr+0r1/AFmCiN0M4/aB2/FAkguTBcFUIKdVz/9t/IQ=;
        b=UBcAd6dDFGadOnRA3HOJBw4Uv10Eaeo37NSzlOG7eeed+zFj4e03gAWePafuJFH7GC
         SMd/pxikrNu2MkzRtBdBx6isQK4LGLCJD1Pjo9q48Sb3eWCUVrMKzQ1SNVk6Sc14uw7K
         GjuVPrcUo1uTaj8gZmL7CnAun7Ymt5E5SiHm33eGjqjmvDiUYH1+vZva+hN4PFEZHhI8
         bDZI0if+iJ9oNiGPo2Rnr/1HHvUe/bck1Ip6KxiNj1AN/TmRyA8dnOQkX8z2cwMRX+L7
         3sxrRkhw93aPIJs7Z1R5bSxShsDOBwP/WhQTgpEZpbNiSklThkRi6t1j6NkTzPP0hUCQ
         TAEg==
X-Gm-Message-State: AGi0PuYkBvwi+AmjaA5ZTMrFjv+1aYyG4ptLBFSuu4KS2IhaO0kzO9KJ
	R2x8N/VzYig2i0ReJjAbJ84=
X-Google-Smtp-Source: APiQypL8Eren7p1JJKdQXwwOafWhQ2f1xgbiWSN6q7Xg1ax3wq6pfG4Im2Vws4nyg2ckklOuExEZLw==
X-Received: by 2002:a17:90a:324f:: with SMTP id k73mr685640pjb.195.1588621880026;
        Mon, 04 May 2020 12:51:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3c5d:: with SMTP id i29ls13255390pgn.2.gmail; Mon, 04
 May 2020 12:51:19 -0700 (PDT)
X-Received: by 2002:aa7:9575:: with SMTP id x21mr19250558pfq.324.1588621879543;
        Mon, 04 May 2020 12:51:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588621879; cv=none;
        d=google.com; s=arc-20160816;
        b=omFQq++E0eXPkcH6rzOUxVN8wHu8rd083PFEj/K6KJgOn/9JMcmsgbfbSgy3zxCXDa
         iHHG4Z43p2WPU7WIFld6+u9i9cAlQAd+aasMRcVmSB50etBMTsKctZApRj8SvwXXnjKf
         bMEVgUGSgitmn7mgWduu0LyrTqAEBDvgegita0J6RfCo6v9ihrySBfK8M/U+aciD1F1d
         V25HUSpBoZHCi77BrKqUGii4d3fEMqQDAcgOZy5+BqZfmwnTR5PX9/ZcGWWItcPY7sF8
         RMK21qC5OzyS5LqWLaGoqXD8SenbFLUSE23vXl+2A5EFPOW5TLN1WOyUdRmAw/M0i/0O
         6I3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:status:references:mime-version:message-id:lines
         :in-reply-to:date:dkim-signature;
        bh=X8NX08KGwHXGtdND9KewzMckMdQ7tIv1to1at6CCbF0=;
        b=z6lXlk0nMy5PQiZMUq29d8KWRNVIruxVNOFXgEKdxZN1SibC/DYC5HkAsqbYSWVXiQ
         p0I98Yyu1fvCLYCSw/G+shdadVyUqDOH9GFFgROhAEYIwTCnnZxtrWjRRTsH7wtqkhPW
         zqF+tqAYadLDJvtdupwgbr0nRpq1f2bq72O8CoyILcvu+j61SRZrr8LTGsN513YwOlBO
         14Fdvx14DgKAZ7phr9fiME5Kk1ypGuuVz5JK6SFEbyrr5bPXLrdrcNgGedMgyz5aQQJc
         OEfBZNWHRBkXRb35mqhG19LnUtsf3Sti0iBL+TmvOCvIPSbubxQY8smQxf3BjOwCArFY
         Ze/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hpnZ84ME;
       spf=pass (google.com: domain of 3nnkwxgwkancg67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3NnKwXgwKANcG67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id t6si91155pjl.0.2020.05.04.12.51.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 May 2020 12:51:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nnkwxgwkancg67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id h185so791612ybg.6
        for <clang-built-linux@googlegroups.com>; Mon, 04 May 2020 12:51:19 -0700 (PDT)
X-Received: by 2002:a25:9d81:: with SMTP id v1mr1303367ybp.443.1588621878605;
 Mon, 04 May 2020 12:51:18 -0700 (PDT)
Date: Mon,  4 May 2020 12:51:12 -0700
In-Reply-To: <20200310221747.2848474-1-jesse.brandeburg@intel.com>
Lines: 89
Message-Id: <20200504193524.GA221287@google.com>
Mime-Version: 1.0
References: <20200310221747.2848474-1-jesse.brandeburg@intel.com>
Status: RO
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
Subject: Re: [PATCH v6 1/2] x86: fix bitops.h warning with a moved cast
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	andriy.shevchenko@intel.com, bp@alien8.de, dan.j.williams@intel.com, 
	linux-kernel@vger.kernel.org, linux@rasmusvillemoes.dk, mingo@redhat.com, 
	peterz@infradead.org, tglx@linutronix.de, x86@kernel.org, 
	ilie.halip@gmail.com, natechancellor@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hpnZ84ME;       spf=pass
 (google.com: domain of 3nnkwxgwkancg67l3negb7kl9hh9e7.5hf@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3NnKwXgwKANcG67L3NEGB7KL9HH9E7.5HF@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

On Tue, Mar 10, 2020 at 03:17:46PM -0700, Jesse Brandeburg wrote:
> Fix many sparse warnings when building with C=1. These are useless
> noise from the bitops.h file and getting rid of them helps devs
> make more use of the tools and possibly find real bugs.
> 
> When the kernel is compiled with C=1, there are lots of messages like:
>   arch/x86/include/asm/bitops.h:77:37: warning: cast truncates bits from constant value (ffffff7f becomes 7f)
> 
> CONST_MASK() is using a signed integer "1" to create the mask which is
> later cast to (u8), in order to yield an 8-bit value for the assembly
> instructions to use. Simplify the expressions used to clearly indicate
> they are working on 8-bit values only, which still keeps sparse happy
> without an accidental promotion to a 32 bit integer.
> 
> The warning was occurring because certain bitmasks that end with a bit
> set next to a natural boundary like 7, 15, 23, 31, end up with a mask
> like 0x7f, which then results in sign extension due to the integer
> type promotion rules[1]. It was really only "clear_bit" that was
> having problems, and it was only on some bit checks that resulted in a
> mask like 0xffffff7f being generated after the inversion.
> 
> Verified with a test module (see next patch) and assembly inspection
> that the patch doesn't introduce any change in generated code.
> 
> [1] https://stackoverflow.com/questions/46073295/implicit-type-promotion-rules
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> ---
> v6: reworded commit message, enhanced explanation
> v5: changed code to use simple AND and XOR, updated commit message
> v4: reverse argument order as suggested by David Laight, added reviewed-by
> v3: Clean up the header file changes as per peterz.
> v2: use correct CC: list
> ---
>  arch/x86/include/asm/bitops.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/x86/include/asm/bitops.h b/arch/x86/include/asm/bitops.h
> index 062cdecb2f24..53f246e9df5a 100644
> --- a/arch/x86/include/asm/bitops.h
> +++ b/arch/x86/include/asm/bitops.h
> @@ -54,7 +54,7 @@ arch_set_bit(long nr, volatile unsigned long *addr)
>  	if (__builtin_constant_p(nr)) {
>  		asm volatile(LOCK_PREFIX "orb %1,%0"
>  			: CONST_MASK_ADDR(nr, addr)
> -			: "iq" ((u8)CONST_MASK(nr))
> +			: "iq" (CONST_MASK(nr) & 0xff)

Sorry for the very late report.  It turns out that if your config
tickles __builtin_constant_p just right, this now produces invalid
assembly:

$ cat foo.c
long a(long b, long c) {
  asm("orb\t%1, %0" : "+q"(c): "r"(b));
  return c;
}
$ gcc foo.c
foo.c: Assembler messages:
foo.c:2: Error: `%rax' not allowed with `orb'

The "q" constraint only has meanting on -m32 otherwise is treated as
"r".

Since we have the mask (& 0xff), can we drop the `b` suffix from the
instruction? Or is a revert more appropriate? Or maybe another way to
skin this cat?

Link: https://github.com/ClangBuiltLinux/linux/issues/961
This is blowing up our KernelCI reports.

>  			: "memory");
>  	} else {
>  		asm volatile(LOCK_PREFIX __ASM_SIZE(bts) " %1,%0"
> @@ -74,7 +74,7 @@ arch_clear_bit(long nr, volatile unsigned long *addr)
>  	if (__builtin_constant_p(nr)) {
>  		asm volatile(LOCK_PREFIX "andb %1,%0"
>  			: CONST_MASK_ADDR(nr, addr)
> -			: "iq" ((u8)~CONST_MASK(nr)));
> +			: "iq" (CONST_MASK(nr) ^ 0xff));
>  	} else {
>  		asm volatile(LOCK_PREFIX __ASM_SIZE(btr) " %1,%0"
>  			: : RLONG_ADDR(addr), "Ir" (nr) : "memory");
> 
> base-commit: 8b614cb8f1dcac8ca77cf4dd85f46ef3055f8238
> -- 
> 2.24.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200504193524.GA221287%40google.com.
