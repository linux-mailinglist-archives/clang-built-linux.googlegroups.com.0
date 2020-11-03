Return-Path: <clang-built-linux+bncBDYJPJO25UGBBO52Q76QKGQEY25RIMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5B12A5A3B
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Nov 2020 23:44:12 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id p67sf8570201iod.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 14:44:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604443451; cv=pass;
        d=google.com; s=arc-20160816;
        b=vr7uCSLPnIUq/FsGMCHI3ORrWUYJeBzmfR4W2vDcoQKl3B1019fEyfhsYL6FrA9lRE
         n6xM1gurw1FaAu8Y01GaUBNECWqCxs4PI2EmTn0zw3xcbP6lnjIg0ifYkJvynsRkG8Od
         YKNMMbkt6Da1lC4kfdXcg9zjRjQXS8Uj/cMmjHIGm9XNM4jLZw3lLL6kAb4BTYpJQiTj
         mMc37gjcDjNuGc5B4ne1eRFPgpR5paTVIFeAo0UlWLfyLNRl1CmRFRUghUUNPNIqlUp2
         lRheahH/Y/EaK3vHiR6r3u1JNCdIZUOLQhKhDYKD7mYvkdTitWY6FfolgHaa061OR+l6
         HvlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wKmMiVZ+Jmz4EpFxcB6J6zjIXNdDT2HHGfJJ35LHgnc=;
        b=lpKsLJuABy7NE081s41ZSWxcN7Px3VsumTcBgY7ePGKEgn3cZtmaXeoNh7W/dyIIpR
         ndxc8G9ZEk1PcXYKcfaxSKerM6yRZ5dkz2PMoiUS7cjF5wDon054LW8Ztz7KfkF+eetu
         Bc/IikQ1GucxNcxuLX/E4DeIIwzfTftz3Bl9a7O03Cf09B7KQBn3hxUg8MUdfEVT63oi
         27P1MPnxAFAjxI1IIy1ilwmy+sSaEFNs66GuWpgsnL/Bw87vvTFuDfYWwNwzR5SSAhTI
         +l5PIFbPVaIldMakWpLVonxbDynpAkJfz34NH3PP9DNqONKR8B29Mp/vgn98T9prjIud
         JMrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SZx8405X;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wKmMiVZ+Jmz4EpFxcB6J6zjIXNdDT2HHGfJJ35LHgnc=;
        b=lpDG1WWr/BAZJxXT6QA3o8nrYVcqnYE7XQ5zBltrTH44FnkkOekbaOBzOavKvG9MSL
         mnhxXrf8/f/wmGV+q0cF3uZmH5BRDxTOK9YKLVC7EDgCXdUK9rOltlmpKssnuOfQgtAP
         sqqYL9O2X7+1O9lZ0Vb8nNnULmIUTrDXa8QeRGkCfGwxLJzCJingc5p/X2yketKsg+N5
         86fbZQpxR/zw6laIy2QKQMuP708NZDXQgrcYN5/S+0hMOPOakq6KpDqVJiE8YT26eK3g
         BClKsx1Jr+NnU+VYpcS3a8tmL9a1WGGgkpWeiwH/vD6ZGXLzElwn4+bUtrfny2fSZauC
         f44g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wKmMiVZ+Jmz4EpFxcB6J6zjIXNdDT2HHGfJJ35LHgnc=;
        b=OQVsVV2NGqn19QNNuKhN9tWpQH3IAiLjcmCwjwPrK1kX2KYbThxTJ/Ep0jac59Yrpx
         +bFWOrI55Cx3WW70RlvgDgoKcj0BaG2DYuB2nxH/BJ19or6WR3U57r9pCQuW+pSDUFM+
         AS3FjTD0fwlEpVazP3xgBfq8bur7RkK+4WviQBuBnmDQ8QRRhKttX/n0RKyhOod94xnW
         UQ2qpBIcwBGdZI/1u1Dz0unULltdJCk6VlHOmDLSLLSt1FHFPBWh4vvsjpkG5NQdSXlE
         lU7c987saLLMjAqjtiknXGsm2i6M+9L5VRZ4zyxSMUo7tSJ2PKyzFieXSAhWkFEgctyd
         v1zQ==
X-Gm-Message-State: AOAM533VCmJpk4tjXrqLvbHaVTTzHtwXW1UgCWm2/ANnXGxktpNbWK/h
	s4VXw23UrnbT6/tEUzsOy3A=
X-Google-Smtp-Source: ABdhPJz66S6vR289CjbUUTMnz/lwbCPhLebgD/0gXEhZk3vQYxcHtOE3+yTQfLl2FDXgb3iObWkMAA==
X-Received: by 2002:a92:3312:: with SMTP id a18mr11034695ilf.165.1604443451364;
        Tue, 03 Nov 2020 14:44:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:1b42:: with SMTP id b63ls796907ilb.6.gmail; Tue, 03 Nov
 2020 14:44:11 -0800 (PST)
X-Received: by 2002:a92:5b46:: with SMTP id p67mr16031287ilb.150.1604443450957;
        Tue, 03 Nov 2020 14:44:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604443450; cv=none;
        d=google.com; s=arc-20160816;
        b=GFBHgv64dGpmmov/U4Cz4QMDFawRA6h72abzcQjxByjMRs8ZmlD8zMjeOc5y1FbSqg
         eLTMz2dBHnQnXh5WW8sBXNZ63vM3ocG8ue+x7ZTdJLQ4vbmVWGJKmgE4jfNXBYDbqyue
         yAqdvetOk5Hfp9kvtwpZLjNVs+CVMvXa+RvuHOub1Rzo7Fs1j6XrmqXOnv+wPJO3U1xC
         xQoNDm9VJlhN93Mg/0TxLRdEv+SZUs3Ht5CQgbE9ECwNJOV5yZBkHpwyBa1Vxy5/IOAE
         BFIeKhOEHMU+QWDX/uXAL4WTvzxjlgS8fKVBM+3IhStkQy81HkIv4WliTwGNwNtlonU1
         H0Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=I/uB5S23puPABQIKDt8mffgwxH7OPp4NpnA8AnbObM4=;
        b=F6zJOh3q1z42zt5oPqGGC1grHMogMXmgUzbCxXgrdSFgDT6WJxigUmatBYQ1NGpePb
         uxpUi5qp4qlc01eEjbIi5Aar93DD9hfl88SYkxNIAlCAgP+2+VXxilY6RFKfzZ7DMG6Y
         Hl8MaGux/5bmwO3/TlpviFDqQzs/mK0siXOYKCwArjTO4cFYzbzkE4+mc5QJFApfxU0t
         GsvZgRdQHOTmFWJYCTQ77WnjcdTbDCCaHfDmfo59e3dvV05V+R22sEh21OUCMh3CJPeX
         ZMeiPA03V4v4T9VOi/j30PfZZVUgDC9ixn/6+6lAcTg6mQxg+Lit+oNtXdoKXc9tseKT
         EzLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SZx8405X;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id f6si18436iob.0.2020.11.03.14.44.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 14:44:10 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id k7so4196plk.3
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 14:44:10 -0800 (PST)
X-Received: by 2002:a17:902:8ecc:b029:d6:991d:1193 with SMTP id
 x12-20020a1709028eccb02900d6991d1193mr22527630plo.56.1604443450113; Tue, 03
 Nov 2020 14:44:10 -0800 (PST)
MIME-Version: 1.0
References: <20201103012358.168682-1-maskray@google.com> <20201103014602.GA3271702@ubuntu-m3-large-x86>
In-Reply-To: <20201103014602.GA3271702@ubuntu-m3-large-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 3 Nov 2020 14:43:59 -0800
Message-ID: <CAKwvOdkiSUesFPD30EqhU0Np=BsM2hJ6Cu+qv38r4yyVCi3rag@mail.gmail.com>
Subject: Re: [PATCH v2] x86_64: Change .weak to SYM_FUNC_START_WEAK for arch/x86/lib/mem*_64.S
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Fangrui Song <maskray@google.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Jian Cai <jiancai@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	"# 3.4.x" <stable@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SZx8405X;       spf=pass
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

+ LKML so I can find this easier to fetch via b4

On Mon, Nov 2, 2020 at 5:46 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Mon, Nov 02, 2020 at 05:23:58PM -0800, 'Fangrui Song' via Clang Built Linux wrote:
> > Commit 393f203f5fd5 ("x86_64: kasan: add interceptors for
> > memset/memmove/memcpy functions") added .weak directives to
> > arch/x86/lib/mem*_64.S instead of changing the existing ENTRY macros to
> > WEAK. This can lead to the assembly snippet `.weak memcpy ... .globl
> > memcpy` which will produce a STB_WEAK memcpy with GNU as but STB_GLOBAL
> > memcpy with LLVM's integrated assembler before LLVM 12. LLVM 12 (since
> > https://reviews.llvm.org/D90108) will error on such an overridden symbol
> > binding.
> >
> > Commit ef1e03152cb0 ("x86/asm: Make some functions local") changed ENTRY in
> > arch/x86/lib/memcpy_64.S to SYM_FUNC_START_LOCAL, which was ineffective due to
> > the preceding .weak directive.
> >
> > Use the appropriate SYM_FUNC_START_WEAK instead.
> >
> > Fixes: 393f203f5fd5 ("x86_64: kasan: add interceptors for memset/memmove/memcpy functions")
> > Fixes: ef1e03152cb0 ("x86/asm: Make some functions local")
> > Reported-by: Sami Tolvanen <samitolvanen@google.com>
> > Signed-off-by: Fangrui Song <maskray@google.com>
> > Cc: <stable@vger.kernel.org>
>
> This resolves the build error I see with LLVM_IAS=1 and ToT LLVM.
>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

>
> > ---
> > Changes in v2
> > * Correct the message: SYM_FUNC_START_WEAK was not available at commit 393f203f5fd5.
> > * Mention Fixes: ef1e03152cb0
> > ---
> >  arch/x86/lib/memcpy_64.S  | 4 +---
> >  arch/x86/lib/memmove_64.S | 4 +---
> >  arch/x86/lib/memset_64.S  | 4 +---
> >  3 files changed, 3 insertions(+), 9 deletions(-)
> >
> > diff --git a/arch/x86/lib/memcpy_64.S b/arch/x86/lib/memcpy_64.S
> > index 037faac46b0c..1e299ac73c86 100644
> > --- a/arch/x86/lib/memcpy_64.S
> > +++ b/arch/x86/lib/memcpy_64.S
> > @@ -16,8 +16,6 @@
> >   * to a jmp to memcpy_erms which does the REP; MOVSB mem copy.
> >   */
> >
> > -.weak memcpy
> > -
> >  /*
> >   * memcpy - Copy a memory block.
> >   *
> > @@ -30,7 +28,7 @@
> >   * rax original destination
> >   */
> >  SYM_FUNC_START_ALIAS(__memcpy)
> > -SYM_FUNC_START_LOCAL(memcpy)
> > +SYM_FUNC_START_WEAK(memcpy)
> >       ALTERNATIVE_2 "jmp memcpy_orig", "", X86_FEATURE_REP_GOOD, \
> >                     "jmp memcpy_erms", X86_FEATURE_ERMS
> >
> > diff --git a/arch/x86/lib/memmove_64.S b/arch/x86/lib/memmove_64.S
> > index 7ff00ea64e4f..41902fe8b859 100644
> > --- a/arch/x86/lib/memmove_64.S
> > +++ b/arch/x86/lib/memmove_64.S
> > @@ -24,9 +24,7 @@
> >   * Output:
> >   * rax: dest
> >   */
> > -.weak memmove
> > -
> > -SYM_FUNC_START_ALIAS(memmove)
> > +SYM_FUNC_START_WEAK(memmove)
> >  SYM_FUNC_START(__memmove)
> >
> >       mov %rdi, %rax
> > diff --git a/arch/x86/lib/memset_64.S b/arch/x86/lib/memset_64.S
> > index 9ff15ee404a4..0bfd26e4ca9e 100644
> > --- a/arch/x86/lib/memset_64.S
> > +++ b/arch/x86/lib/memset_64.S
> > @@ -6,8 +6,6 @@
> >  #include <asm/alternative-asm.h>
> >  #include <asm/export.h>
> >
> > -.weak memset
> > -
> >  /*
> >   * ISO C memset - set a memory block to a byte value. This function uses fast
> >   * string to get better performance than the original function. The code is
> > @@ -19,7 +17,7 @@
> >   *
> >   * rax   original destination
> >   */
> > -SYM_FUNC_START_ALIAS(memset)
> > +SYM_FUNC_START_WEAK(memset)
> >  SYM_FUNC_START(__memset)
> >       /*
> >        * Some CPUs support enhanced REP MOVSB/STOSB feature. It is recommended
> > --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkiSUesFPD30EqhU0Np%3DBsM2hJ6Cu%2Bqv38r4yyVCi3rag%40mail.gmail.com.
