Return-Path: <clang-built-linux+bncBAABBXVY6TWAKGQEJUN5SZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id D7800D0423
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 01:31:42 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id 5sf48942lje.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Oct 2019 16:31:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570577502; cv=pass;
        d=google.com; s=arc-20160816;
        b=FH+H2tNVEjMsE1C1OoHcSEfI0O+mVb3BaFtifgBp/8Ba+Ldh/oN1aoS49b/PPGScsz
         Voo9XYQZbqcer4DuNBN3uG3+oJmKMWMPwJo8lrg9UtdZbeTc54VqdRFSELgRH/ONZ/27
         dZ3JzTcAwX/jHBuu0vd7NKO9PU28+Vi2EuzT6vkhmzRegG+lgm+7fi6+i6yvWiXg3dYf
         6yQYV4xFM8rbxbkahC9NAOaMSm4oJlufQFHKaCtdFCBXjTxGGoslKnE7bjnX5m4rD5kC
         4oR8nelflj39Ey2dCZ9lPWUwBsp+MhLlj9dkeS4kHk/uV1d3PCHDl6sbzoQXUmeNb1Ry
         xVIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=+OsnFc5msOgTN2pP3oI5cArtqjfTNI9E2h6yu8dYX6E=;
        b=qticxq8eBpYBQbsCdl/sTPa/B71BzRAiuXZQltB1H2HAoxDNfb+4NqR5htgoK5BqJX
         biEeV0LcZzrZGRerbeWEFCtfTzmOrOhTHy3x8/KVXCiCEaENDK8fzuEcDlgvv8qR7Mqg
         fRsy/e0xnLYpejb7p3hyV0goEJ9i6ybbFsURm7thpOgcH8ixImrIX5JwctrkUs35cRBd
         oXvcysEbK7qVWnZaOZcvo9lHJBAVQwPlf6NrXVT0yQQkDRtzTyYgqug2sk0Ojl2GK/90
         Q0ccX3o7oV86dlrMW9PntVSpC9ENTTmG3ttrM7hSTZVu83Gym2okpCDFVTn5wzsLLiTC
         rZOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew.murray@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=andrew.murray@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+OsnFc5msOgTN2pP3oI5cArtqjfTNI9E2h6yu8dYX6E=;
        b=TdC4DzRzlzommVlA1KQYJbijoi2XaVjfFE7RRWSES6aD0GfCpPM9+FpFTC5gMX2wFg
         aRucyq1Miz9YToIVom88GTp5rc2V+ryvE5d/QebwFkABFAZSglJivGz2XOKlFV49pamW
         Z8NBUAbAZGyqVB+AOj7YDfHzlfi7kr0XMntNf7nHocs+A0K0jcTX11DJvyo+lrbuPuv4
         Ma5hMUWafHl5BhcU2Oo8hr38jJdxtKT4m4EuN+qNukFHsGuzN6uwH0ffKw+fClCKc2rz
         EcL7imfo51oBvS7JuFl/RleRBCdZdr8V7BRhlSfvzOSNTI8us+N0QbvhrWCO9FtxMhRR
         ifog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+OsnFc5msOgTN2pP3oI5cArtqjfTNI9E2h6yu8dYX6E=;
        b=pEpxvWqsEx2Zo7LUsR2+ltCapmKHS6DOjtsQURzrFEghtCglIegph7xJG6tFnapY6x
         l+sN+0I/nTgs2x6hKIbX+yXlGzwWJUC5KmXOqmMSS5ee97oPaJWOg/kB/vg2UNTKT+Ei
         L1CQYhA7gfiCU/W0KuqS4mnwwMF9xv1JJOfV56B0zQwmhHItmuYI+/Z0TF7DGSt2EanZ
         cOgq2WTv4oGVGQrOJvVUBqCw2sBRiWSy5OYiX+hEgv5H5EHPBMrQSscvGCmKIPqFeZDz
         2Y4yhhxvbEAubNhaEGaxH8Yu+q98cEdtiL3u5IF2jLxTkOTVByOjtskYC2KGU2CzM3rp
         82tA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWPuDpCR5xEfcdeD/Jbcvpi9Z8ywKKb7ZKeH7+zq6Z8i/a81SuU
	ercJZPVcehpjNyWX4LvWUbI=
X-Google-Smtp-Source: APXvYqy/efNdqKTHIQMhQaYa9ZQ1MtQTCUKbuD0jqdIwdSI9RoxLTRr99Gm8o6bwpbPwA+f86kHtdw==
X-Received: by 2002:a05:651c:1b9:: with SMTP id c25mr395083ljn.163.1570577502221;
        Tue, 08 Oct 2019 16:31:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9d9a:: with SMTP id c26ls62887ljj.9.gmail; Tue, 08 Oct
 2019 16:31:41 -0700 (PDT)
X-Received: by 2002:a2e:9d12:: with SMTP id t18mr424672lji.236.1570577501825;
        Tue, 08 Oct 2019 16:31:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570577501; cv=none;
        d=google.com; s=arc-20160816;
        b=D4PX87vlUbCOS37C06Ru+dYy6pGZQvKjaZh164VNcp5Cwub0iTQVZjm65EoPcr40ZR
         NlHnyD+WdESjyA9kcBdTZLMhCKTObG6VSIz5/S1/IB+25jCQJbe2eXRCDl3EIs8Kvjam
         XKx+SmeaxelSIBUJYZJsb4T85ZsfkteIyxqnEiIS/nn1h47w18hJpGjJtKf5DkxDOsGW
         DpFCNHyKjo0aco9XzW5nNko3LMmjTcme+yqTmBpt5gjZyEoGcfK/FFZMWJc+hkN3pbqa
         fNCVgGJwcllg+27lysYkqPQrH0PJklmfqv+27CsfAR8aSDZxs2fs/p6t9Q43meb+iPcx
         qpjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=0qid3oXZKVIQ/n2llawI+c1kLjue/KquIWZP6phjGOg=;
        b=qK0SkhXK8I7GJ64w7585ChZZd8WOvqMAEGCORomywFyonborFwKBtWz1/LgHVQWbO4
         dMU4OpUKN0aHyE4KOGKYSr/SQoas8gmjUuPm7YaP38Sf2zINUNJ8YI2aki2hR1etwX0A
         KdI5sGNWrStRbNkSSnI8LEuISB3MEbTYsVwNAFn6J6IIyW6HRU/NZcoCxHnHi2Mm/aef
         gSC8giCOu8v0J+OB4GFt+osv5p4X7huEwjd2TJAdez9PxQakL7HqAAV6f7Rl6ISCkDfV
         M/uQXWEvdNH5EipxDKtqZ++xrPhEkGvHS2xIJCsmw4XbIQYpyOuK+kghspoNzoRT72F8
         ckLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew.murray@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=andrew.murray@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id k24si21254lji.3.2019.10.08.16.31.41
        for <clang-built-linux@googlegroups.com>;
        Tue, 08 Oct 2019 16:31:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew.murray@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 192BD337;
	Tue,  8 Oct 2019 16:31:40 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8FB4F3F68E;
	Tue,  8 Oct 2019 16:31:39 -0700 (PDT)
Date: Wed, 9 Oct 2019 00:31:38 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] arm64: lse: fix LSE atomics with LLVM's integrated
 assembler
Message-ID: <20191008233137.GL42880@e119886-lin.cambridge.arm.com>
References: <20191007201452.208067-1-samitolvanen@google.com>
 <20191008212730.185532-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191008212730.185532-1-samitolvanen@google.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-Original-Sender: andrew.murray@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andrew.murray@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=andrew.murray@arm.com
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

On Tue, Oct 08, 2019 at 02:27:30PM -0700, Sami Tolvanen wrote:
> Unlike gcc, clang considers each inline assembly block to be independent
> and therefore, when using the integrated assembler for inline assembly,
> any preambles that enable features must be repeated in each block.
> 
> This change defines __LSE_PREAMBLE and adds it to each inline assembly
> block that has LSE instructions, which allows them to be compiled also
> with clang's assembler.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/671
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

This looks good to me. I can build and boot in a model with both Clang
(9.0.6) and GCC (7.3.1) and boot a guest without anything going bang.

Though when I build with AS=clang, e.g.

make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- CC=clang AS=clang Image

I get errors like this:

  CC      init/main.o
In file included from init/main.c:17:
In file included from ./include/linux/module.h:9:
In file included from ./include/linux/list.h:9:
In file included from ./include/linux/kernel.h:12:
In file included from ./include/linux/bitops.h:26:
In file included from ./arch/arm64/include/asm/bitops.h:26:
In file included from ./include/asm-generic/bitops/atomic.h:5:
In file included from ./include/linux/atomic.h:7:
In file included from ./arch/arm64/include/asm/atomic.h:16:
In file included from ./arch/arm64/include/asm/cmpxchg.h:14:
In file included from ./arch/arm64/include/asm/lse.h:13:
In file included from ./include/linux/jump_label.h:117:
./arch/arm64/include/asm/jump_label.h:24:20: error: expected a symbol reference in '.long' directive
                 "      .align          3                       \n\t"
                                                                  ^
<inline asm>:4:21: note: instantiated into assembly here
                .long           1b - ., "" - .  
                                           ^

I'm assuming that I'm doing something wrong?

Thanks,

Andrew Murray

> ---
> v2:
>  - Add a preamble to inline assembly blocks that use LSE instead
>    of allowing the compiler to emit LSE instructions everywhere.
> 
> ---
>  arch/arm64/include/asm/atomic_lse.h | 19 +++++++++++++++++++
>  arch/arm64/include/asm/lse.h        |  6 +++---
>  2 files changed, 22 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/atomic_lse.h b/arch/arm64/include/asm/atomic_lse.h
> index c6bd87d2915b..3ee600043042 100644
> --- a/arch/arm64/include/asm/atomic_lse.h
> +++ b/arch/arm64/include/asm/atomic_lse.h
> @@ -14,6 +14,7 @@
>  static inline void __lse_atomic_##op(int i, atomic_t *v)			\
>  {									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  "	" #asm_op "	%w[i], %[v]\n"					\
>  	: [i] "+r" (i), [v] "+Q" (v->counter)				\
>  	: "r" (v));							\
> @@ -30,6 +31,7 @@ ATOMIC_OP(add, stadd)
>  static inline int __lse_atomic_fetch_##op##name(int i, atomic_t *v)	\
>  {									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  "	" #asm_op #mb "	%w[i], %w[i], %[v]"				\
>  	: [i] "+r" (i), [v] "+Q" (v->counter)				\
>  	: "r" (v)							\
> @@ -58,6 +60,7 @@ static inline int __lse_atomic_add_return##name(int i, atomic_t *v)	\
>  	u32 tmp;							\
>  									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  	"	ldadd" #mb "	%w[i], %w[tmp], %[v]\n"			\
>  	"	add	%w[i], %w[i], %w[tmp]"				\
>  	: [i] "+r" (i), [v] "+Q" (v->counter), [tmp] "=&r" (tmp)	\
> @@ -77,6 +80,7 @@ ATOMIC_OP_ADD_RETURN(        , al, "memory")
>  static inline void __lse_atomic_and(int i, atomic_t *v)
>  {
>  	asm volatile(
> +	__LSE_PREAMBLE
>  	"	mvn	%w[i], %w[i]\n"
>  	"	stclr	%w[i], %[v]"
>  	: [i] "+&r" (i), [v] "+Q" (v->counter)
> @@ -87,6 +91,7 @@ static inline void __lse_atomic_and(int i, atomic_t *v)
>  static inline int __lse_atomic_fetch_and##name(int i, atomic_t *v)	\
>  {									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  	"	mvn	%w[i], %w[i]\n"					\
>  	"	ldclr" #mb "	%w[i], %w[i], %[v]"			\
>  	: [i] "+&r" (i), [v] "+Q" (v->counter)				\
> @@ -106,6 +111,7 @@ ATOMIC_FETCH_OP_AND(        , al, "memory")
>  static inline void __lse_atomic_sub(int i, atomic_t *v)
>  {
>  	asm volatile(
> +	__LSE_PREAMBLE
>  	"	neg	%w[i], %w[i]\n"
>  	"	stadd	%w[i], %[v]"
>  	: [i] "+&r" (i), [v] "+Q" (v->counter)
> @@ -118,6 +124,7 @@ static inline int __lse_atomic_sub_return##name(int i, atomic_t *v)	\
>  	u32 tmp;							\
>  									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  	"	neg	%w[i], %w[i]\n"					\
>  	"	ldadd" #mb "	%w[i], %w[tmp], %[v]\n"			\
>  	"	add	%w[i], %w[i], %w[tmp]"				\
> @@ -139,6 +146,7 @@ ATOMIC_OP_SUB_RETURN(        , al, "memory")
>  static inline int __lse_atomic_fetch_sub##name(int i, atomic_t *v)	\
>  {									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  	"	neg	%w[i], %w[i]\n"					\
>  	"	ldadd" #mb "	%w[i], %w[i], %[v]"			\
>  	: [i] "+&r" (i), [v] "+Q" (v->counter)				\
> @@ -159,6 +167,7 @@ ATOMIC_FETCH_OP_SUB(        , al, "memory")
>  static inline void __lse_atomic64_##op(s64 i, atomic64_t *v)		\
>  {									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  "	" #asm_op "	%[i], %[v]\n"					\
>  	: [i] "+r" (i), [v] "+Q" (v->counter)				\
>  	: "r" (v));							\
> @@ -175,6 +184,7 @@ ATOMIC64_OP(add, stadd)
>  static inline long __lse_atomic64_fetch_##op##name(s64 i, atomic64_t *v)\
>  {									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  "	" #asm_op #mb "	%[i], %[i], %[v]"				\
>  	: [i] "+r" (i), [v] "+Q" (v->counter)				\
>  	: "r" (v)							\
> @@ -203,6 +213,7 @@ static inline long __lse_atomic64_add_return##name(s64 i, atomic64_t *v)\
>  	unsigned long tmp;						\
>  									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  	"	ldadd" #mb "	%[i], %x[tmp], %[v]\n"			\
>  	"	add	%[i], %[i], %x[tmp]"				\
>  	: [i] "+r" (i), [v] "+Q" (v->counter), [tmp] "=&r" (tmp)	\
> @@ -222,6 +233,7 @@ ATOMIC64_OP_ADD_RETURN(        , al, "memory")
>  static inline void __lse_atomic64_and(s64 i, atomic64_t *v)
>  {
>  	asm volatile(
> +	__LSE_PREAMBLE
>  	"	mvn	%[i], %[i]\n"
>  	"	stclr	%[i], %[v]"
>  	: [i] "+&r" (i), [v] "+Q" (v->counter)
> @@ -232,6 +244,7 @@ static inline void __lse_atomic64_and(s64 i, atomic64_t *v)
>  static inline long __lse_atomic64_fetch_and##name(s64 i, atomic64_t *v)	\
>  {									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  	"	mvn	%[i], %[i]\n"					\
>  	"	ldclr" #mb "	%[i], %[i], %[v]"			\
>  	: [i] "+&r" (i), [v] "+Q" (v->counter)				\
> @@ -251,6 +264,7 @@ ATOMIC64_FETCH_OP_AND(        , al, "memory")
>  static inline void __lse_atomic64_sub(s64 i, atomic64_t *v)
>  {
>  	asm volatile(
> +	__LSE_PREAMBLE
>  	"	neg	%[i], %[i]\n"
>  	"	stadd	%[i], %[v]"
>  	: [i] "+&r" (i), [v] "+Q" (v->counter)
> @@ -263,6 +277,7 @@ static inline long __lse_atomic64_sub_return##name(s64 i, atomic64_t *v)	\
>  	unsigned long tmp;						\
>  									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  	"	neg	%[i], %[i]\n"					\
>  	"	ldadd" #mb "	%[i], %x[tmp], %[v]\n"			\
>  	"	add	%[i], %[i], %x[tmp]"				\
> @@ -284,6 +299,7 @@ ATOMIC64_OP_SUB_RETURN(        , al, "memory")
>  static inline long __lse_atomic64_fetch_sub##name(s64 i, atomic64_t *v)	\
>  {									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  	"	neg	%[i], %[i]\n"					\
>  	"	ldadd" #mb "	%[i], %[i], %[v]"			\
>  	: [i] "+&r" (i), [v] "+Q" (v->counter)				\
> @@ -305,6 +321,7 @@ static inline s64 __lse_atomic64_dec_if_positive(atomic64_t *v)
>  	unsigned long tmp;
>  
>  	asm volatile(
> +	__LSE_PREAMBLE
>  	"1:	ldr	%x[tmp], %[v]\n"
>  	"	subs	%[ret], %x[tmp], #1\n"
>  	"	b.lt	2f\n"
> @@ -331,6 +348,7 @@ static inline u##sz __lse__cmpxchg_case_##name##sz(volatile void *ptr,	\
>  	unsigned long tmp;						\
>  									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  	"	mov	%" #w "[tmp], %" #w "[old]\n"			\
>  	"	cas" #mb #sfx "\t%" #w "[tmp], %" #w "[new], %[v]\n"	\
>  	"	mov	%" #w "[ret], %" #w "[tmp]"			\
> @@ -377,6 +395,7 @@ static inline long __lse__cmpxchg_double##name(unsigned long old1,	\
>  	register unsigned long x4 asm ("x4") = (unsigned long)ptr;	\
>  									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  	"	casp" #mb "\t%[old1], %[old2], %[new1], %[new2], %[v]\n"\
>  	"	eor	%[old1], %[old1], %[oldval1]\n"			\
>  	"	eor	%[old2], %[old2], %[oldval2]\n"			\
> diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
> index 80b388278149..73834996c4b6 100644
> --- a/arch/arm64/include/asm/lse.h
> +++ b/arch/arm64/include/asm/lse.h
> @@ -6,6 +6,8 @@
>  
>  #if defined(CONFIG_AS_LSE) && defined(CONFIG_ARM64_LSE_ATOMICS)
>  
> +#define __LSE_PREAMBLE	".arch armv8-a+lse\n"
> +
>  #include <linux/compiler_types.h>
>  #include <linux/export.h>
>  #include <linux/jump_label.h>
> @@ -14,8 +16,6 @@
>  #include <asm/atomic_lse.h>
>  #include <asm/cpucaps.h>
>  
> -__asm__(".arch_extension	lse");
> -
>  extern struct static_key_false cpu_hwcap_keys[ARM64_NCAPS];
>  extern struct static_key_false arm64_const_caps_ready;
>  
> @@ -34,7 +34,7 @@ static inline bool system_uses_lse_atomics(void)
>  
>  /* In-line patching at runtime */
>  #define ARM64_LSE_ATOMIC_INSN(llsc, lse)				\
> -	ALTERNATIVE(llsc, lse, ARM64_HAS_LSE_ATOMICS)
> +	ALTERNATIVE(llsc, __LSE_PREAMBLE lse, ARM64_HAS_LSE_ATOMICS)
>  
>  #else	/* CONFIG_AS_LSE && CONFIG_ARM64_LSE_ATOMICS */
>  
> -- 
> 2.23.0.581.g78d2f28ef7-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191008233137.GL42880%40e119886-lin.cambridge.arm.com.
