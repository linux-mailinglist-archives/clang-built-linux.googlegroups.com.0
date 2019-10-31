Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZ4K5XWQKGQE5BNLFPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 597BBEB86B
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 21:34:49 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id x3sf5506156pfr.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 13:34:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572554088; cv=pass;
        d=google.com; s=arc-20160816;
        b=TMDkr+p+PClwC/zFOXMLt6IEo7sOnMgndsfHI/nPdSmNCy0S/1TRFb6ysNMC1iX1HB
         oA3OSwT2sQ4hwrDYyXv5NxQG82HQYgJkx7z55FBDojIbPXlLAk5zoGz4sAoNV4hAsKsW
         kjOaM8Vs+Txsqs/QgS/v2eOrZyHqnldX7yO7riNAu9waqAYtWlykqSUvXJPJbl8lBIty
         NwxnRaFroKHjURKKi5W9YqXpiI6ftatsJ5IvrpCl5iHqDmCfjyib67CwD/DqNmSvLE64
         TLpGTU8VvvrKAf4vV/QVLZ2yXmAsvYk0qmh7OiQiHKAIWOD3dRapt809rGezTjmieTZC
         HoMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1bFwyM5cEBx415r6ZkY7ZwHRSU6v25sg5qKkCPJKQ/Q=;
        b=b3aVlKl1GI/cm4z1tgS9oHj7ZmGq4al6bn6U3K55wo5/qVpizZf6Pabv7zhLJk869r
         8E2cOWUBc5a6TfKa2ZM4ywwwVd33o3EyynK4l1G6A6e69GP/MhncTb8sdTL6RBjDedrX
         bF4UiUuQ0/2ECVLLC6RFURBjIhDrGJ/cgKAZfw42uCs8azARI0YwaU9g4dC5dUENp1SW
         CLs6lu2spiSbpd1rV/1j7gKzf+2qGPnoNcYvAhoHaEgfK9VUiThg7QWMCtasnaPij4pJ
         xgVN7uTzfmEjSaXbbRNmCYIbcZWX7seA8iokXFxI0fKYaDHgOYdK/UdynTQl9JzOoDBY
         Ggdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="S73tGnS/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1bFwyM5cEBx415r6ZkY7ZwHRSU6v25sg5qKkCPJKQ/Q=;
        b=cTN9fqkFO6qONPCjSRmhcpIiJoGkqq7JAhiYnx8BqwQDuhGr4UmRErbR+ENJ59XCDG
         9o09/HRDuFnOe5N0sXnkcRaT9fRJWaFJcGhpICy1BCn6ljhiWLPUcl1zXZT+EHAKvCvQ
         FEJAUzQ7jGRT5G/w7f0HYk/Kq2rwgrgAGs5yBt5uhSljbANKNJfZcVQISZv7tvRn3ove
         IMZEz/46LkQlyjINsWhPm1ZrjGXe/0EYSvmkvQ3GMzlTPFmJ8c10K7vrhdJVDst9gte2
         EMP4dR33GRHCi+1uIaPjmEOk53+boyFPc18OAK3Pp1uCGl4+r/erAzyvJI9uC0Cy4Njg
         CW5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1bFwyM5cEBx415r6ZkY7ZwHRSU6v25sg5qKkCPJKQ/Q=;
        b=TSPQri+b6GaQXtzEI8+iEq5TYVAv+SQLBVy4kklXKUyJC0AxCbqs9uQNkyfXEjaw44
         fyS13tO8hl2BWa/sY0lq9FSZVg7LbKwuMt1RHUosbaYBBoQhu4NURo7XNqki4vTzLzPN
         BQcMwNV7VeG050OYYeW5s/2ZiY3mJdGelfBwtCdDhmx4pfuwlr2N9YwNG+GKGoEKFou2
         bON4ktjDnYrmayMLhn85GyRiDZRg7WNgmorqoS/IeNYAnzDAULbNMBo9NGVzv2NpcMTZ
         dIlKgcKPbZfFzqDdtOcYhiLY68nlGJtyu8XolZIH74GhLVSqUyoPhiVEdgBLWwdYmplI
         wIQw==
X-Gm-Message-State: APjAAAV8BGakGT40MesNS/xoO56qCdnsL7/RE6FXizbCjfXlU6eO2bVk
	XikyG/wsYQ38/RBa6Zv26U8=
X-Google-Smtp-Source: APXvYqxLzPeYXIBIq3OwpGaN8+8rQPTmHE+lH8dywAIuJzYbQyDxo/ZmSkP9SWXE51f3ofvkMi7AEw==
X-Received: by 2002:a65:5cc5:: with SMTP id b5mr8783984pgt.137.1572554087961;
        Thu, 31 Oct 2019 13:34:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3687:: with SMTP id d129ls1038875pfa.13.gmail; Thu, 31
 Oct 2019 13:34:47 -0700 (PDT)
X-Received: by 2002:a63:89c1:: with SMTP id v184mr3622727pgd.35.1572554087517;
        Thu, 31 Oct 2019 13:34:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572554087; cv=none;
        d=google.com; s=arc-20160816;
        b=YH/+S96NxTRPoWv6Qdgp0wTj9W7catYzljApJ0xjkIKQiAOP8L1jNUUir3D5tuOS5s
         vHRDnyE3YhemUM4W0BzH8rkezz3HGmCmIlDlLM2BhP7nrfZeNXVMr5b6N5/guxf8WafK
         XvrRamUiQN5hgsFF1tMoZEtKZ6t6zggXbfUL9dK49TumXGHwEfxbzWCCrvcW7gZPn8O3
         VE2dmbrpEP1yDuE5zigi3mKJtBBgaBoxUgJNcYdrjzPn0Y9Mc84VcTDKnIrSL2HHiBju
         wwqk/aHs2ebnkSz7757uLd6xiCbGHNpij9JFMzbmE8PtBpgKTnInuEHIrWnd0nSaRoai
         p5vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9l1iF8Yd4cbsJGLUM/SW26KknarkUcShmOF9BoqHMJM=;
        b=mSDqRIMlGHofK9kV/IekjjjhjXcD0YJo/0QEAhfE1HjU5MlwFuGXhEMLNpu1j/O5Li
         TrewVgi+fEyD0t5CJdylHBNc587osKMlDq30BR8v6EB/b8xsOF9D3FcT6q8/BNppavVu
         T78CVZqRixt8V86GZ+gT4h9CnAsFhx3CZo0CAjHLu7LGmBGlo1d481RFxsVvLppoDNIf
         kckO8AqcAmvBOWhjDT6oxsNMjVeFL6HyAqaPuZPu00kqO1ToPOWMbyxGKws5h2NFzndt
         RasTB/GV2BlSa0gkjQEz7XyRo+f7nHvrQfXUX7oBSje2pxSlnVC2CDP4+WEawmMNL4Kn
         TjLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="S73tGnS/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id f17si363424pgk.3.2019.10.31.13.34.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 13:34:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id a18so2081973plm.10
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 13:34:47 -0700 (PDT)
X-Received: by 2002:a17:902:9b83:: with SMTP id y3mr8343680plp.179.1572554086594;
 Thu, 31 Oct 2019 13:34:46 -0700 (PDT)
MIME-Version: 1.0
References: <20191031195705.36916-1-samitolvanen@google.com>
In-Reply-To: <20191031195705.36916-1-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 31 Oct 2019 13:34:35 -0700
Message-ID: <CAKwvOdnnGFQSbchQrCKhzx5KxsD0MQAB9_0LO4d67AV8_u_tug@mail.gmail.com>
Subject: Re: [RESEND PATCH v2] arm64: lse: fix LSE atomics with LLVM's
 integrated assembler
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Andrew Murray <andrew.murray@arm.com>, Kees Cook <keescook@chromium.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="S73tGnS/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

On Thu, Oct 31, 2019 at 12:57 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
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
> Tested-by: Andrew Murray <andrew.murray@arm.com>
> Tested-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Andrew Murray <andrew.murray@arm.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

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
> index 574808b9df4c..da3280f639cd 100644
> --- a/arch/arm64/include/asm/atomic_lse.h
> +++ b/arch/arm64/include/asm/atomic_lse.h
> @@ -14,6 +14,7 @@
>  static inline void __lse_atomic_##op(int i, atomic_t *v)                       \
>  {                                                                      \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>  "      " #asm_op "     %w[i], %[v]\n"                                  \
>         : [i] "+r" (i), [v] "+Q" (v->counter)                           \
>         : "r" (v));                                                     \
> @@ -30,6 +31,7 @@ ATOMIC_OP(add, stadd)
>  static inline int __lse_atomic_fetch_##op##name(int i, atomic_t *v)    \
>  {                                                                      \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>  "      " #asm_op #mb " %w[i], %w[i], %[v]"                             \
>         : [i] "+r" (i), [v] "+Q" (v->counter)                           \
>         : "r" (v)                                                       \
> @@ -58,6 +60,7 @@ static inline int __lse_atomic_add_return##name(int i, atomic_t *v)   \
>         u32 tmp;                                                        \
>                                                                         \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>         "       ldadd" #mb "    %w[i], %w[tmp], %[v]\n"                 \
>         "       add     %w[i], %w[i], %w[tmp]"                          \
>         : [i] "+r" (i), [v] "+Q" (v->counter), [tmp] "=&r" (tmp)        \
> @@ -77,6 +80,7 @@ ATOMIC_OP_ADD_RETURN(        , al, "memory")
>  static inline void __lse_atomic_and(int i, atomic_t *v)
>  {
>         asm volatile(
> +       __LSE_PREAMBLE
>         "       mvn     %w[i], %w[i]\n"
>         "       stclr   %w[i], %[v]"
>         : [i] "+&r" (i), [v] "+Q" (v->counter)
> @@ -87,6 +91,7 @@ static inline void __lse_atomic_and(int i, atomic_t *v)
>  static inline int __lse_atomic_fetch_and##name(int i, atomic_t *v)     \
>  {                                                                      \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>         "       mvn     %w[i], %w[i]\n"                                 \
>         "       ldclr" #mb "    %w[i], %w[i], %[v]"                     \
>         : [i] "+&r" (i), [v] "+Q" (v->counter)                          \
> @@ -106,6 +111,7 @@ ATOMIC_FETCH_OP_AND(        , al, "memory")
>  static inline void __lse_atomic_sub(int i, atomic_t *v)
>  {
>         asm volatile(
> +       __LSE_PREAMBLE
>         "       neg     %w[i], %w[i]\n"
>         "       stadd   %w[i], %[v]"
>         : [i] "+&r" (i), [v] "+Q" (v->counter)
> @@ -118,6 +124,7 @@ static inline int __lse_atomic_sub_return##name(int i, atomic_t *v) \
>         u32 tmp;                                                        \
>                                                                         \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>         "       neg     %w[i], %w[i]\n"                                 \
>         "       ldadd" #mb "    %w[i], %w[tmp], %[v]\n"                 \
>         "       add     %w[i], %w[i], %w[tmp]"                          \
> @@ -139,6 +146,7 @@ ATOMIC_OP_SUB_RETURN(        , al, "memory")
>  static inline int __lse_atomic_fetch_sub##name(int i, atomic_t *v)     \
>  {                                                                      \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>         "       neg     %w[i], %w[i]\n"                                 \
>         "       ldadd" #mb "    %w[i], %w[i], %[v]"                     \
>         : [i] "+&r" (i), [v] "+Q" (v->counter)                          \
> @@ -159,6 +167,7 @@ ATOMIC_FETCH_OP_SUB(        , al, "memory")
>  static inline void __lse_atomic64_##op(s64 i, atomic64_t *v)           \
>  {                                                                      \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>  "      " #asm_op "     %[i], %[v]\n"                                   \
>         : [i] "+r" (i), [v] "+Q" (v->counter)                           \
>         : "r" (v));                                                     \
> @@ -175,6 +184,7 @@ ATOMIC64_OP(add, stadd)
>  static inline long __lse_atomic64_fetch_##op##name(s64 i, atomic64_t *v)\
>  {                                                                      \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>  "      " #asm_op #mb " %[i], %[i], %[v]"                               \
>         : [i] "+r" (i), [v] "+Q" (v->counter)                           \
>         : "r" (v)                                                       \
> @@ -203,6 +213,7 @@ static inline long __lse_atomic64_add_return##name(s64 i, atomic64_t *v)\
>         unsigned long tmp;                                              \
>                                                                         \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>         "       ldadd" #mb "    %[i], %x[tmp], %[v]\n"                  \
>         "       add     %[i], %[i], %x[tmp]"                            \
>         : [i] "+r" (i), [v] "+Q" (v->counter), [tmp] "=&r" (tmp)        \
> @@ -222,6 +233,7 @@ ATOMIC64_OP_ADD_RETURN(        , al, "memory")
>  static inline void __lse_atomic64_and(s64 i, atomic64_t *v)
>  {
>         asm volatile(
> +       __LSE_PREAMBLE
>         "       mvn     %[i], %[i]\n"
>         "       stclr   %[i], %[v]"
>         : [i] "+&r" (i), [v] "+Q" (v->counter)
> @@ -232,6 +244,7 @@ static inline void __lse_atomic64_and(s64 i, atomic64_t *v)
>  static inline long __lse_atomic64_fetch_and##name(s64 i, atomic64_t *v)        \
>  {                                                                      \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>         "       mvn     %[i], %[i]\n"                                   \
>         "       ldclr" #mb "    %[i], %[i], %[v]"                       \
>         : [i] "+&r" (i), [v] "+Q" (v->counter)                          \
> @@ -251,6 +264,7 @@ ATOMIC64_FETCH_OP_AND(        , al, "memory")
>  static inline void __lse_atomic64_sub(s64 i, atomic64_t *v)
>  {
>         asm volatile(
> +       __LSE_PREAMBLE
>         "       neg     %[i], %[i]\n"
>         "       stadd   %[i], %[v]"
>         : [i] "+&r" (i), [v] "+Q" (v->counter)
> @@ -263,6 +277,7 @@ static inline long __lse_atomic64_sub_return##name(s64 i, atomic64_t *v)    \
>         unsigned long tmp;                                              \
>                                                                         \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>         "       neg     %[i], %[i]\n"                                   \
>         "       ldadd" #mb "    %[i], %x[tmp], %[v]\n"                  \
>         "       add     %[i], %[i], %x[tmp]"                            \
> @@ -284,6 +299,7 @@ ATOMIC64_OP_SUB_RETURN(        , al, "memory")
>  static inline long __lse_atomic64_fetch_sub##name(s64 i, atomic64_t *v)        \
>  {                                                                      \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>         "       neg     %[i], %[i]\n"                                   \
>         "       ldadd" #mb "    %[i], %[i], %[v]"                       \
>         : [i] "+&r" (i), [v] "+Q" (v->counter)                          \
> @@ -305,6 +321,7 @@ static inline s64 __lse_atomic64_dec_if_positive(atomic64_t *v)
>         unsigned long tmp;
>
>         asm volatile(
> +       __LSE_PREAMBLE
>         "1:     ldr     %x[tmp], %[v]\n"
>         "       subs    %[ret], %x[tmp], #1\n"
>         "       b.lt    2f\n"
> @@ -332,6 +349,7 @@ __lse__cmpxchg_case_##name##sz(volatile void *ptr,                  \
>         unsigned long tmp;                                              \
>                                                                         \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>         "       mov     %" #w "[tmp], %" #w "[old]\n"                   \
>         "       cas" #mb #sfx "\t%" #w "[tmp], %" #w "[new], %[v]\n"    \
>         "       mov     %" #w "[ret], %" #w "[tmp]"                     \
> @@ -379,6 +397,7 @@ __lse__cmpxchg_double##name(unsigned long old1,                             \
>         register unsigned long x4 asm ("x4") = (unsigned long)ptr;      \
>                                                                         \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>         "       casp" #mb "\t%[old1], %[old2], %[new1], %[new2], %[v]\n"\
>         "       eor     %[old1], %[old1], %[oldval1]\n"                 \
>         "       eor     %[old2], %[old2], %[oldval2]\n"                 \
> diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
> index 80b388278149..73834996c4b6 100644
> --- a/arch/arm64/include/asm/lse.h
> +++ b/arch/arm64/include/asm/lse.h
> @@ -6,6 +6,8 @@
>
>  #if defined(CONFIG_AS_LSE) && defined(CONFIG_ARM64_LSE_ATOMICS)
>
> +#define __LSE_PREAMBLE ".arch armv8-a+lse\n"
> +
>  #include <linux/compiler_types.h>
>  #include <linux/export.h>
>  #include <linux/jump_label.h>
> @@ -14,8 +16,6 @@
>  #include <asm/atomic_lse.h>
>  #include <asm/cpucaps.h>
>
> -__asm__(".arch_extension       lse");
> -
>  extern struct static_key_false cpu_hwcap_keys[ARM64_NCAPS];
>  extern struct static_key_false arm64_const_caps_ready;
>
> @@ -34,7 +34,7 @@ static inline bool system_uses_lse_atomics(void)
>
>  /* In-line patching at runtime */
>  #define ARM64_LSE_ATOMIC_INSN(llsc, lse)                               \
> -       ALTERNATIVE(llsc, lse, ARM64_HAS_LSE_ATOMICS)
> +       ALTERNATIVE(llsc, __LSE_PREAMBLE lse, ARM64_HAS_LSE_ATOMICS)
>
>  #else  /* CONFIG_AS_LSE && CONFIG_ARM64_LSE_ATOMICS */
>
> --
> 2.24.0.rc0.303.g954a862665-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnnGFQSbchQrCKhzx5KxsD0MQAB9_0LO4d67AV8_u_tug%40mail.gmail.com.
