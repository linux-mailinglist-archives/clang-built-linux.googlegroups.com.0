Return-Path: <clang-built-linux+bncBDYJPJO25UGBBI4V6TWAKGQEC6UIMEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 51008D0345
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 00:16:04 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id e14sf829924iot.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Oct 2019 15:16:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570572963; cv=pass;
        d=google.com; s=arc-20160816;
        b=pJXBvfXNz/N6zqyh08MXzYFSzsi0MU1X9scFSE42GqQvAptAWp2JsgPzWAYikMz95n
         N83guEYDllBDFKWaaxi9+AtYe6aj45e48Ah4iegGMkuOufFmtCx1j6QyjqQfcCJNGk2+
         KMkZ832ovnrX1WNP7koJXzdx52woqZiqrxDmMzkszlyGOoqozX/Acd9sn52c+RnxE9HI
         8BHAAB5bIc9fnMaDokEMyki5oVvnMyaOb/RLn57MFCX/0POXoCd7MGBK2z0yKOzOzLQW
         DTRotkAlOR4/x7vU7xRLaJNrPGRoG6oRkXGiXwOgzA5ZgsgAhJCSlNtieY9gedQ+puAf
         Czyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=UbgzsTazBJMUYxEqSDQYOXTVIR26SeI7iHYze18g1tY=;
        b=vivigaG58WVwFRkJ0c+QJzqGJ4HFikn19MzeLWNnIEhkYAMc6m7S6Y65R8IxWlbwEw
         NIrtZQBSumovunc6+mCmcWzBdpiBZzbuKtJjM7AR177RixHiJWht6LmH8m5ZC1O6bJZq
         KOmJNH3DJUV8gaA5r67j9WuY/gLES0Htos78SGrCsz5vcvOxUY4vy8NYMje0CBNP5WSC
         +QORPxOudWuE17T7EA256w1gtfGZIEyYebL1n9UCHGnog0SQDKf9khMs1laruGd3ou/r
         BU8An7SS4HbdIKwlfBbFzoQCDDBShETSbr9CVzZcdDgfkjt8agLfVZK7EDut2rjFYtlp
         SujQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RqkR8rc+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UbgzsTazBJMUYxEqSDQYOXTVIR26SeI7iHYze18g1tY=;
        b=Epbt6W4pq/l8Czh/Cj05vw96iKvWngVWy40EXmTS4J0ooKoDWrkTci4kcsvEBUS5Wa
         p1T8fwup8TtcmI0FjHKO70vvO0V8p0MrKzCZS8o6Y+FEUOKFJ3/p+GYFK/59KREs6GXO
         fWjgctyY4IQQz6PBgEFWFbbr1lXHh2ixHlX2xB9P52QR9N50Pl1fXmzDZXHSx7cYDhSM
         Anl5b7LglR+kBTvjlvAybUFYvOtcrDRferKItrjTK5CAZnAAS+rKNGJax4rreIwuCcm0
         vzlMSnZeAb8+UMFsovUzGge2cLw5dDbIr2MBhPDUqu2f8kBk4H97sMEwSOGtwEz0roiD
         YJrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UbgzsTazBJMUYxEqSDQYOXTVIR26SeI7iHYze18g1tY=;
        b=LnYC4j6nP7dnVCfikkFkX/FY4lCaIbHbsKtxIJ6+Uhkr/dS091mRjxokZmpiZbT+Hi
         ey+cpniX0JcfQl3mz9NM1d83Yutvo2gZR+/Ln4ByBao6vv5tbrx85lOPh3sTfsLpoX5W
         +faSCSI1dysJvyjDZQYQsjbrCz+oqVjY0H+eablUlMomMnYaC8ZvHwVnU5ng73wSXLNi
         CN/NfgzDwD/4kRyxqBCBkkw0Oo7o0rO9VkP5ESCO237L2ICOpNnvdZy2N3zMUiRL10rR
         6R5qKUwo4Og5/Zdl0M9P+gAvE/pLHpZwKYiGK8/cHN38qZQDLph7fwNcb40Vmc61gSIY
         dFnA==
X-Gm-Message-State: APjAAAU8ZD800N++p5qPFYFAEiR5fpMkcTgjtV097b4cWc8irFQJxOmG
	diStTM/Sn3P8pAZwd5n1TJE=
X-Google-Smtp-Source: APXvYqzRUQehd9YjffewH5hC4VYQX7FyWNgLh/gKU24zGnXFZ7Qd5l91xNbfxuAdxTAjhKl/fHvCNQ==
X-Received: by 2002:a5e:c31a:: with SMTP id a26mr520043iok.0.1570572963164;
        Tue, 08 Oct 2019 15:16:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9d46:: with SMTP id k6ls87470iok.1.gmail; Tue, 08 Oct
 2019 15:16:02 -0700 (PDT)
X-Received: by 2002:a5e:8819:: with SMTP id l25mr473694ioj.18.1570572962817;
        Tue, 08 Oct 2019 15:16:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570572962; cv=none;
        d=google.com; s=arc-20160816;
        b=EoL+LEpkU4Pe4INUtQGhvdY/a6U72n7vHozA36ThAgdx6lpqAXta5ItmAT5ThnkxFy
         OBX7RxwZHGlo03t2mEji0xxqC6ZtItrixI7OLf78CwNGECwEdX+tplADrGb7lvf9M8rc
         YebYAIwquj/Jy0tQtK4vvYm4bdb0nBhxpd9hpdMxp//2Yj+CzRfGDWBYHcoYHRTQHBUn
         2xLgrYVS5Z0xIAwB0yo6HR/1RPB6gZJLUh/SxoPwtP3cvu04BUsHqngOrFbD4cY8w9dW
         PoRRTR6TUT0eeSs0A7TK4UdkwZioOGgDTacsYsHRm/QzypUVI/JsRHWLYzK5TUOGrqkb
         q02w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NiqFnu89plxZSLedgLcdRBN9DKh7erYv6ytT6fDXTcU=;
        b=XEeAJGM15HgXXlYXiog++BPnlkZGGicB1oufm7yJKdqNgIWE3XqFqk17pHzgB9YTbv
         tLTVfz4v3cYrQroPqlizh/6rbTsK9wsWTTbTQaST1yPJeVlym4xG3Ti0DaybQzae8xOc
         zHPuZbLHK3FYbSm6fKrPeTyYu9i/RkBiMNK2wkP4060iloyzJaont+BVI13n+vFP2wmE
         Ygw7pzfgQ+JpCwBhZfTIfZlefySSndq1iKoa+lQmv4hYmV2hOu1xKeMCNzi+uw7bmWNR
         DEef6GqfftyF5OACUNPvwnW1m0Ykd1bV4uNIJa7nPUr+IaFCcjkCG/3ayb0cQ57/cTs6
         K4EA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RqkR8rc+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id q207si3946iod.5.2019.10.08.15.16.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2019 15:16:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id u20so32041plq.4
        for <clang-built-linux@googlegroups.com>; Tue, 08 Oct 2019 15:16:02 -0700 (PDT)
X-Received: by 2002:a17:902:7c08:: with SMTP id x8mr35766287pll.119.1570572961517;
 Tue, 08 Oct 2019 15:16:01 -0700 (PDT)
MIME-Version: 1.0
References: <20191007201452.208067-1-samitolvanen@google.com> <20191008212730.185532-1-samitolvanen@google.com>
In-Reply-To: <20191008212730.185532-1-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 8 Oct 2019 15:15:49 -0700
Message-ID: <CAKwvOdkG9PjEkNNsi7P4bD2gtVvgPLPpmyAqzOFv4v9PL3uoeg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: lse: fix LSE atomics with LLVM's integrated assembler
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Andrew Murray <andrew.murray@arm.com>, Kees Cook <keescook@chromium.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RqkR8rc+;       spf=pass
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

On Tue, Oct 8, 2019 at 2:27 PM 'Sami Tolvanen' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
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


Thanks, I think this will better limit the assembler to use of these
instructions, while preventing the C compiler from emitting them.
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang AS=clang -j71 clean
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang AS=clang
-j71 defconfig
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang AS=clang
-j71 fs/ext4/balloc.o
<error explosion>
$ git am <patch.eml>
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang AS=clang
-j71 fs/ext4/balloc.o
...
$ echo $?
0
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang AS=clang -j71 clean
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang -j71 defconfig
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang -j71
<builds successfully>
$ qemu-system-aarch64 -kernel arch/arm64/boot/Image.gz -machine virt
-cpu cortex-a72 -nographic --append "console=ttyAMA0" -m 2048 -initrd
/android1/buildroot/output/images/rootfs.cpio
<boots successfully; doesn't appear to regress the case of GAS, though
I doubt such a compiler directive would>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

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
> @@ -331,6 +348,7 @@ static inline u##sz __lse__cmpxchg_case_##name##sz(volatile void *ptr,      \
>         unsigned long tmp;                                              \
>                                                                         \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>         "       mov     %" #w "[tmp], %" #w "[old]\n"                   \
>         "       cas" #mb #sfx "\t%" #w "[tmp], %" #w "[new], %[v]\n"    \
>         "       mov     %" #w "[ret], %" #w "[tmp]"                     \
> @@ -377,6 +395,7 @@ static inline long __lse__cmpxchg_double##name(unsigned long old1,  \
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
> 2.23.0.581.g78d2f28ef7-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191008212730.185532-1-samitolvanen%40google.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkG9PjEkNNsi7P4bD2gtVvgPLPpmyAqzOFv4v9PL3uoeg%40mail.gmail.com.
