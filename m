Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBOFX73WAKGQE6JA45DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B0DD3301
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 22:59:37 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id c8sf7069659qtd.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 13:59:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570741176; cv=pass;
        d=google.com; s=arc-20160816;
        b=e3YGqGyyjtePLXVnlOYilW7NDZDo9ncl4LYlhnrM84u1bwPMmqEh2h6tBKIEn9BFhK
         5TNvU0SofWRYvfttwk/aUUm4aA7MtjfXinVsGt7m5xKJ1+O2RIoM+yzF7etsshTmqrnB
         kVRSjlrcuk75wamHODWKkFf0UPnpumitbi6rm460H5yRuSsFvixjGujf/9uYIlylrILA
         v/iXF1mMWRuMtZfXMsqQgUB6Aj9LKMxncN8zB6ThMdxhjrOqsWanpP7G72kxqSFQm8CV
         To2omC50y/M9feVhItdHc9ZiAkX3+Qt53bo8vHbUgQelgN49/Qxuzxvuw8t+wEAynl58
         1Qbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=E0mGexKR6eSACwDe0q38xTKPlfbU8oHDbI/k955ruJ0=;
        b=OI3wRmLB0agdJ7kPZp4Yi7sJUkLJEfLn4+G/Bq0qb8UiD+f546Wl72Jv8yX7r2LLC/
         0Ox9xMa4tbQ8ScJT2Ad0+e+LsjxXbCYSVH6tf+sYIfM+0Do7LIhHTI/6atKJjXXstYJg
         P8I6xSlSFVDtwwLhgU/mDOU8ZUzxRUMAT0AZ+4pS9lFvj8DI0F0e8Ii7QlVthSQKg2KO
         AdmDD4IB3IXrlzWN6fT94RUYY+YVJHShPGih1PckNs29e6A83ezhCvwW4yJkcYAQdKTI
         lHQD+gW5SJta7oMiErWKUWh4XXVzrSKZZBbLmW62ncydxJyvWNb2aQXENS3wF69qOAa9
         02oQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DBXLdLLd;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E0mGexKR6eSACwDe0q38xTKPlfbU8oHDbI/k955ruJ0=;
        b=oRm9CWx/yWTeamveujmTLLfQ/L/jYkLA5k7912yPp3U0AlWspFb8ShwL7mryT/f/ih
         v4yX81tsIxGnH4FrRz/Ilo3c3jEmh0qhSB/vk/EV6qPGzrMFcsrw/cw8GfbfJ3WjJTCL
         3i8JD1eAybT/ZbNBTHfpFLX33XMa1rz4HactDqVrUL2qP7xLTUQRl2uF/LfRkm4Xi7Iu
         WTSQ39nW7BFYZ6ajtOldPq/pa9JhwfkYVq+t6g8B637yJiaEPxnSbquPDTfqjH4ERJKd
         yTMkEmN2HIaGW9MHXCNY/o0KsA6tuP8wxt4HsTEsQoKglHTTau4Fd5XS3FpkzLHUOyy6
         SOFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=E0mGexKR6eSACwDe0q38xTKPlfbU8oHDbI/k955ruJ0=;
        b=tERoRB+lEVjlN7B8V+ys7EQRtiIn7CehahIZ18yj8dlSZUvS/3zVxLoTvEn6FG7CN6
         SrPtopD431/JsKVtRcZh5ghhNuRPvNq7VwXYWWqW+KNJL0SynrraeWLI0Oglw/TBf4X6
         By1mMLcF6ROQHhweZ7K+T3Fi8XCFqz4+4DMsQ2LP+fecCdtVh8mfZj4DrZ2JyFgBXB8D
         srw7iwIrR5qruc06AYW9EEhsY8UeQc5D8F4wCz3jfvRdGdacc4NGh/LaYZkDfWTsbbXR
         AuK5ETL3UqiKejWfT+nhPRH1E13lmUtpQEU8YItFiizwkAEuR2+RqYIHvOPsjMaXKJiG
         gzSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUe1NymHJ++gBVAJlLcJ1yP0EnnaKqNekbjH3D6LkLZV2I6/dlX
	0i5DQ+UrVf9eGS+drsCPOk8=
X-Google-Smtp-Source: APXvYqxY+ZRBmMCXxhLbQS5MfPSj2qt9lii8cdubQP5Z78lqrjLT/oVu3geDoTFt6IeQ1bpFcdEAzg==
X-Received: by 2002:aed:2371:: with SMTP id i46mr12942702qtc.72.1570741176728;
        Thu, 10 Oct 2019 13:59:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a0d:: with SMTP id 13ls867029qkk.7.gmail; Thu, 10 Oct
 2019 13:59:36 -0700 (PDT)
X-Received: by 2002:a05:620a:896:: with SMTP id b22mr12367031qka.390.1570741176407;
        Thu, 10 Oct 2019 13:59:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570741176; cv=none;
        d=google.com; s=arc-20160816;
        b=G2tGa+FpEEk7I2vsKigLR2zEjUYufI3OhQJPuTp0lShqpQUPwSuerQJZqIkBlYpfYW
         ow4t3BAoNyT08hE3xbrT+9MpovhHCPo7cQ0rWTRatMnTJ9qq9+/mdmhY9phDBrt100+x
         ChxLqrk+IgoAeIc+3I6OQaJZtIIXUKmIykSOdhPJDR7Ug09BP4fKusqcTqQ4bSuWiNVy
         536w61tdfpCzqfvFJoYK3Smfl9vN23ijX/eQBJFsH9kKJSJhQ7UWieWR9WW+iHXndDOV
         Lg3WruJ0WoXVYPxSCepVNbHrHiM+OKOWgzvYWUeWASPQ9SC+DgCDIB/tN1vLMmvt1tE4
         M04w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1k9sybljldf+1YSx8TQi5Eii2zqWsdz104QWmAyi4uE=;
        b=g6UykXlESz2DsK7vyOL6zB4A6Ay/rITKpBfzoAUFEzJQR3z/DFEk4yUKfPhpN9Df46
         HKA3VyCOz8CY1PoSNDGvfWa9hyzYBz957ZagVkXzFGFZfvhU0T58LpcVh2R5m/wvJWwY
         MJkQiYNS0QLOhyFAyGxTQ8Nwr8rl04d9j8bUa9ZiwukhXW6HG/KdDPbvePBteNFnzt+B
         3hRz69yXYwWikw3TyAepeLEmSTaeyaVqF/QClneVc2Esr0MBcCg5xgOW/fVpu2gug+P8
         61WpUscDXJdWbTnvHKsCjaqvcJJllBXAVvyZeLKwf1/Xa/8fkisksE26a5MpRH+1Iudf
         cmSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DBXLdLLd;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id u44si774304qtb.5.2019.10.10.13.59.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 13:59:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id q12so4662361pff.9
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 13:59:36 -0700 (PDT)
X-Received: by 2002:aa7:8e16:: with SMTP id c22mr12577390pfr.116.1570741175468;
        Thu, 10 Oct 2019 13:59:35 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w134sm6441178pfd.4.2019.10.10.13.59.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 13:59:34 -0700 (PDT)
Date: Thu, 10 Oct 2019 13:59:33 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Andrew Murray <andrew.murray@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] arm64: lse: fix LSE atomics with LLVM's integrated
 assembler
Message-ID: <201910101358.2F9CF63529@keescook>
References: <20191007201452.208067-1-samitolvanen@google.com>
 <20191008212730.185532-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191008212730.185532-1-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=DBXLdLLd;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

FWIW, my arm64 builds remain happy with this too.

Tested-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

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
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910101358.2F9CF63529%40keescook.
