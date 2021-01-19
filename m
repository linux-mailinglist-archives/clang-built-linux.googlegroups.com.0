Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3GNTWAAMGQESY6TSYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2312FC479
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 00:10:37 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id w5sf8365886qts.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 15:10:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611097837; cv=pass;
        d=google.com; s=arc-20160816;
        b=09kbJ/XcWNZfUDfGeH7vW7kyQHLQJySPMTRFkO0572N2TvIwEC1EWbcb13TNUCviJv
         cTdTMNyVw15pmAwjc/aGKOeuGkjezJGxGEC29XOEPfuo5kaJbv1kKhNqatFcrxXQBvrZ
         jBnmnTJewnMQOXFrHKkJFQJjP7rQmgoyVunNujKuJ86R55bKKXjAAcgCB06Pyv43OxYT
         I4cbkn8BqrAsxLkMTXINRdR+HZjDi48RPT7+QpBG4N5ONlexOLXXDArs72hCXsdKFhhC
         WiFqsgZfp2SbI5TL+HWU5Q22gkqECk/lMwEFo6XugtWqEvH7a8FkO7Tf0tjagVrlEe3p
         T4eA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=IbcJ0hC+13JL6L4Mxjap1tltxMtclqvlVAnySNiaKuw=;
        b=0B29aHDIXWvdKDt00shz1KuMHrVXT1h6qSlHWM393sLu2kPTn1uHL8/0TgJ6IeUSly
         2DJfM27avB7bOZxqopKPehAMmCgOdZ9MFdRYq27yVmgMDrs5AodOmxl+jGo4vXEn4zHo
         Mgho0gSXVf5tx691mLxr17gAeR0IGvLwCRvwY1jpCgAq0AHOSIeOa0advsVlVd54pgC/
         OSv4bZ8j7ZNBI3ybsHEFvDpeiCl8R93lxjYS+JLMofsCeBwwibhSza49n7Xh9pqeNbhM
         oQ0fQQ5HG827gPGYPsFJT697AGeZiTTVbTf9cUdA0FSvMIqZXXnWlCkOG9jmdVippppN
         glgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LhWvTljf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IbcJ0hC+13JL6L4Mxjap1tltxMtclqvlVAnySNiaKuw=;
        b=cWdIHCwJTqs4xCVycgfwVSEiqwhqWNRHqKcSxqds/CYTqE6zcx+EbWbaiazKNAs9nY
         ZpVP7svz+Ae1YeXih3YiErE6Ct3c4B0+esld9Zp0Qxc+PkEwkKAucK7EqHM9b4njWng5
         wwgBZi6LTulMjn2aesL25xrkHYdwbTWzrvUu8q9sZ7xPiOT6YYPvUlMjXhw2PEaBaMQn
         fuN53X8hAuhS67AaNQS99XFRuY8CuYmQWG81lLAF5cs4zB97F+m6jHLXuW9gBVyE3wwX
         wJoZo2p+KtPoX0w6S5Ff5lFM4BJ2ZmiwCM0aW89NjKkdtc6izhGa92k1TFq5OF25gRpU
         NP3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IbcJ0hC+13JL6L4Mxjap1tltxMtclqvlVAnySNiaKuw=;
        b=RtBXEI3RvQ1rDpEUHZeOleyBiY6z8QiiPPgWpYPFobtWsk/1jJQwBHwqWchN3f6DpM
         znLPem5vuLx2KTF5cKbj3m3lfMdFtt7JhZdT+RnKYbysrHDdbmL5YaB5dzf7med3Zwyx
         xF6vKyrw9B9wSk0DuYZ5QodTkA8LInjJ8h6BsLmJwKZhtC1oP5iAKq4Hozxt8C451a4+
         H3DG6O3r7HKU2yf1n2jszmRgxr3yDZ5sBwPMlZbvWNl/onpIfQAOpVn8cwSYLygaVzod
         88w0SJMJAVKM1uHkp4+ehb2VykJxN57nRRhCCFa1qKhOyhANLOgi+54wEAK9pXIqrety
         +7hA==
X-Gm-Message-State: AOAM531v1FWtS1ONJbBXmhhca5Rth01VJ7SQkfU9RAnfSnY0KzFblj5g
	417wnPDqztht1mUMeyEE494=
X-Google-Smtp-Source: ABdhPJwwsUj3/ZpZRvXhKTXOEsPDJv4EFkmapTYOhoyqg9QBTlS1gTg6BeTZl9L/fDn1bLxxeIoNUg==
X-Received: by 2002:ad4:438f:: with SMTP id s15mr7003809qvr.13.1611097836924;
        Tue, 19 Jan 2021 15:10:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b8a7:: with SMTP id y39ls5123396qvf.5.gmail; Tue, 19 Jan
 2021 15:10:36 -0800 (PST)
X-Received: by 2002:a0c:b9a8:: with SMTP id v40mr6937198qvf.36.1611097836610;
        Tue, 19 Jan 2021 15:10:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611097836; cv=none;
        d=google.com; s=arc-20160816;
        b=YQukB7xQoso4+FVkKMSZO6+E7309TMIx8yPPoVN1wNQ8K/AfO+Rji+rfMVVBg1o1rf
         Z6E/uWnaf0DSvBHcFS4xpnOt7wiNTZ5IdtjOkVz08dWzhXkncDTVMVJG5/Uk5SFtSozC
         KNHOk6JE8PnWBYIdHrfpGkSt0c+PrlsOwVhpbiNU41Sjakj+vgMwgPX9LYBB5MR1u+vI
         I4x7jMpbteaV6imKd39IV7RU2B1d/rwnwUUbOpsScMKO1sZeuk+lT6LzCMkpuwbYdi0c
         Y942JOTkkWPBhor3Bu6mRgOAP2XSYxANOwV+nFMv8sn83wmPTKNabXnfF+IaKZovni7u
         M2xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yc+iZPAoEfYuwC32vfILEtYohiPDc+ecLJoHB/5av04=;
        b=gOkIK9H/nonqGTzFSHVNO3uquYwWQBlQn9S0IlNcFEFd9pPI+z3NpvcE5zTkFzzLVS
         sc/Dey8i/vmBLBhxdy4uDPo5PSI8DfOEW/xSFG35xlHCdz2+oDfQ7xAN5sumvoYGL1Qu
         pEWi+v1129XAXPgwRveoC7Pa6yTpeLd/8Sm3Jwn8GkyEIfNFQ4NVx3rqKcqq/vB+hF/w
         zy/uBJBZSJE6YZjh7D1BMZxNVAlu7fgMY0+vhZRgeR6aTsIEKD2sHZFLFjQcVTLWwxKQ
         q+mkSRIfj67dzxPMk7j+KOU3NXGWC/QbXCSPoDEGTUklX/xuZHQBaS13cCxTTRoTlyRE
         lcRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LhWvTljf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id g51si37861qtc.4.2021.01.19.15.10.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jan 2021 15:10:36 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Received: by mail-pf1-x436.google.com with SMTP id i63so6194706pfg.7
        for <clang-built-linux@googlegroups.com>; Tue, 19 Jan 2021 15:10:36 -0800 (PST)
X-Received: by 2002:a63:5701:: with SMTP id l1mr6516095pgb.381.1611097835433;
 Tue, 19 Jan 2021 15:10:35 -0800 (PST)
MIME-Version: 1.0
References: <20210119131724.308884-1-adrian.ratiu@collabora.com>
 <20210119131724.308884-2-adrian.ratiu@collabora.com> <CAKwvOdkNZ09kkzi+A8diaxViqSufxrHizuBu-7quG6an3Z8iDA@mail.gmail.com>
 <CAK8P3a0XWVu-oG3YaGppZDedRL=SA37Gr8YM4cojVap5Bwk2TA@mail.gmail.com> <CAKwvOdmPr8T9T=tjiVGWJAw-pGzDgsKxtkLxTW4CwTrHjT-v7A@mail.gmail.com>
In-Reply-To: <CAKwvOdmPr8T9T=tjiVGWJAw-pGzDgsKxtkLxTW4CwTrHjT-v7A@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 19 Jan 2021 15:10:24 -0800
Message-ID: <CAKwvOdkoKEve-SAFgnAGyRCCHWACdFRYJpuhsCTyrsk47EG9zQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6 warning
To: Arnd Bergmann <arnd@kernel.org>
Cc: Adrian Ratiu <adrian.ratiu@collabora.com>, Arnd Bergmann <arnd@arndb.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Ard Biesheuvel <ardb@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Collabora Kernel ML <kernel@collabora.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LhWvTljf;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::436
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

On Tue, Jan 19, 2021 at 2:04 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Jan 19, 2021 at 1:35 PM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > On Tue, Jan 19, 2021 at 10:18 PM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > >
> > > On Tue, Jan 19, 2021 at 5:17 AM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
> > > > diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> > > > index b99dd8e1c93f..f9f3601cc2d1 100644
> > > > --- a/arch/arm/lib/xor-neon.c
> > > > +++ b/arch/arm/lib/xor-neon.c
> > > > @@ -14,20 +14,22 @@ MODULE_LICENSE("GPL");
> > > >  #error You should compile this file with '-march=armv7-a -mfloat-abi=softfp -mfpu=neon'
> > > >  #endif
> > > >
> > > > +/*
> > > > + * TODO: Even though -ftree-vectorize is enabled by default in Clang, the
> > > > + * compiler does not produce vectorized code due to its cost model.
> > > > + * See: https://github.com/ClangBuiltLinux/linux/issues/503
> > > > + */
> > > > +#ifdef CONFIG_CC_IS_CLANG
> > > > +#warning Clang does not vectorize code in this file.
> > > > +#endif
> > >
> > > Arnd, remind me again why it's a bug that the compiler's cost model
> > > says it's faster to not produce a vectorized version of these loops?
> > > I stand by my previous comment: https://bugs.llvm.org/show_bug.cgi?id=40976#c8
> >
> > The point is that without vectorizing the code, there is no point in building
> > both the default xor code and a "neon" version that has to save/restore
> > the neon registers but doesn't actually use them.
> >
> >           Arnd
>
> Thoughts?  Also, Nathan brings up my previous point about restrict.
> This would benefit both GCC and Clang as they would not produce 2
> "versions" of the loop; one vectorized if the std::distance between x
> & y >= 8, one scalar otherwise.  But the callers would have to ensure
> no overlap otherwise UB.
>
> diff --git a/include/asm-generic/xor.h b/include/asm-generic/xor.h
> index b62a2a56a4d4..7db16adc7d89 100644
> --- a/include/asm-generic/xor.h
> +++ b/include/asm-generic/xor.h
> @@ -7,12 +7,21 @@
>
>  #include <linux/prefetch.h>
>
> +/* Overrule LLVM's cost model in order to always produce a vectorized loop
> + * version.
> + */
> +#if defined(__clang__) && defined(CONFIG_ARM)
> +#define FORCE_VECTORIZE _Pragma("clang loop vectorize(enable)")
> +#else
> +#define CLANG_FORCE_VECTORIZE

^ err, I had renamed it, but missed this. Should have been
`FORCE_VECTORIZE` but you catch the drift.

> +#endif
> +
>  static void
>  xor_8regs_2(unsigned long bytes, unsigned long *p1, unsigned long *p2)
>  {
>         long lines = bytes / (sizeof (long)) / 8;
>
> -       do {
> +       FORCE_VECTORIZE do {
>                 p1[0] ^= p2[0];
>                 p1[1] ^= p2[1];
>                 p1[2] ^= p2[2];
> @@ -32,7 +41,7 @@ xor_8regs_3(unsigned long bytes, unsigned long *p1,
> unsigned long *p2,
>  {
>         long lines = bytes / (sizeof (long)) / 8;
>
> -       do {
> +       FORCE_VECTORIZE do {
>                 p1[0] ^= p2[0] ^ p3[0];
>                 p1[1] ^= p2[1] ^ p3[1];
>                 p1[2] ^= p2[2] ^ p3[2];
> @@ -53,7 +62,7 @@ xor_8regs_4(unsigned long bytes, unsigned long *p1,
> unsigned long *p2,
>  {
>         long lines = bytes / (sizeof (long)) / 8;
>
> -       do {
> +       FORCE_VECTORIZE do {
>                 p1[0] ^= p2[0] ^ p3[0] ^ p4[0];
>                 p1[1] ^= p2[1] ^ p3[1] ^ p4[1];
>                 p1[2] ^= p2[2] ^ p3[2] ^ p4[2];
> @@ -75,7 +84,7 @@ xor_8regs_5(unsigned long bytes, unsigned long *p1,
> unsigned long *p2,
>  {
>         long lines = bytes / (sizeof (long)) / 8;
>
> -       do {
> +       FORCE_VECTORIZE do {
>                 p1[0] ^= p2[0] ^ p3[0] ^ p4[0] ^ p5[0];
>                 p1[1] ^= p2[1] ^ p3[1] ^ p4[1] ^ p5[1];
>                 p1[2] ^= p2[2] ^ p3[2] ^ p4[2] ^ p5[2];
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkoKEve-SAFgnAGyRCCHWACdFRYJpuhsCTyrsk47EG9zQ%40mail.gmail.com.
