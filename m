Return-Path: <clang-built-linux+bncBD63HSEZTUIBB2H6USAAMGQETQI5TPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id F19CE2FE550
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 09:46:33 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id 188sf1091884qkh.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 00:46:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611218793; cv=pass;
        d=google.com; s=arc-20160816;
        b=LsAlr5AF01HPzz44qTRpwW5CzFXpNPIyk+h+1gppYECsaPKC7UeWr5R4sg4oC0ah/I
         yRY2d9M10oJq6/k0O69JcBTe4LapX/hot7YT+oEYbRmftzXPMyverDWfc8ohZFsCQ3C0
         maVfyjSPI5p8N4cn29XawQ+Twl9C6Y83DhoB3NqB6IPG1JNGXx9MpT3MDyRhW/amju3J
         /FWDGpNMK4mC7mRFD7XX+o2aacdo7J80ZsznEm5FaWIi5RTrb6CY31JG57NQG0UEBrHr
         7/ymJE1xgOw5cQWmQmD64lNaRPFlsq50i79+y8KN7RxypPs0LLL6cKVjg2ZS9Gtl17WF
         Le4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=OxKg0ktbtFZTPXieZ/GZnAI6sl8UH9Be+N3f1hj15Yk=;
        b=gfOGG6nDKgYH4b/V/fpgXySW3r0JiduJtIf6OOX2YQqVl6WNkt/HUSRbycAokc6Jo1
         msXRB/iHZmSUe80ZgSXnW0BlG+x0nLUxUmfv9UV5ZCZwtquGzOj+6Rv84k33xpRRC8rB
         66XyzCR46Bp8nf05hdswHkJmLwQ5hwCiBqgaFhv8Kuv73b4GuTcClBE19qGl2NoAXyqn
         OIy/UBoEqneJ4kWN58Q+4bWx4PcF1+XhS2mR7vwlw5Q1D/nddYeLlj3iKSbc0tuRXi+p
         lif1MQ0rhlA26YPiYXFvadeKnlX3uc0MH9Wk2qG2f4TSIxCuAkodFXd/43n3J6azXBgE
         tKjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dpmeUZ58;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OxKg0ktbtFZTPXieZ/GZnAI6sl8UH9Be+N3f1hj15Yk=;
        b=hWJh6VvWVWmEc6K2uBX1cQoCZwD230yGai+zgXKoRISNfmcLTY0tDZuKimjMwQsjcn
         X4SDxL+nGygqMEm0v8sxZBNPVN/qU/DWNnGsas2Qc56LVTUnWTETWJji97aGrUKKxzIU
         tdCXwrBeThmq+fewa6s0JFGp+0lHDrzTDrWVMDbF/HPJJOzMLXc4ulFNEAcSBGc940sP
         J3dIzn4oj3sik91wZmoffPx8bxfN5uJTIx4fS2FlBjOhtOO3ygeihOg5cXhPxlTh1ISo
         vG7M0kCK41vKRPvpM8HMIuf4kkmQBqvRhZcuMJ6dPynewyX8atl7vNS7Gjsp2QzIxR23
         deHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OxKg0ktbtFZTPXieZ/GZnAI6sl8UH9Be+N3f1hj15Yk=;
        b=kpl4i/nFjW4Vv+4qQpc+/3lpAzjH4vmXXfQ7Oh6kbimpP+ATIcgYeU55odDh3lFVjO
         QAC5hIiMHnxjPXFTySMinO3WfdkvSGeBYe1v5eC1awXcwXYRBc2kij40KjDsPb2xd3xM
         f6PK3Pb/5DFc+uSg6/zQfIEo0UQMMLQypfo7k9ngyyVJdUdKohrNvc1iMucnlxs+r/dN
         hA7ECjgBfpmneYNCy0wMAoeW6I0oGgCGyc4vetTZvQyo55P+Ac/HPLTzocOIzTUiL5f1
         ox2nICOnDm74qZRGlCKg6dh9a7KfrR/qAgFX5cqsmQ4rniFiwjE+7bf0y5uol1/EJplV
         cLVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319ndbAzdKoRM5s+JBSvhzef+WqWC+eXYqq2sSUc1GCXkzP+jXA
	5rTnKLCSqSpXsJ/rcssxHng=
X-Google-Smtp-Source: ABdhPJzhEFgxywr4I5VfwO/fGLfnH6e89zl3OSCW0lVYiqi0OtDNOav3EDwXSyDhtnYo0StaVh9F5A==
X-Received: by 2002:a0c:9d9a:: with SMTP id s26mr13769718qvd.9.1611218792953;
        Thu, 21 Jan 2021 00:46:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1c91:: with SMTP id f17ls604308qtl.9.gmail; Thu, 21 Jan
 2021 00:46:32 -0800 (PST)
X-Received: by 2002:ac8:3a25:: with SMTP id w34mr12505095qte.285.1611218792515;
        Thu, 21 Jan 2021 00:46:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611218792; cv=none;
        d=google.com; s=arc-20160816;
        b=NCLl9xLw+1JOcSZJ4i3/0N9B9ijfEV2gQGgPrtaKvBECY/nWGgVyFddNALMvJd0NeT
         uaomqrzYolR2mftgH3fzwLQFcI2hAUTnDFKU1HWHBVetHGVXZuoFMmapBSKit7KPmI5w
         0/MiZN5lN7hucv5YcRpKZWt8/eWmVUsY+0tv6JiRSLE6xxaVLJoFUTQhX+jjOg46BBk2
         oyViXSLOMtvX0ca/nlQDAUGaJPC3aBpIJzWqXWxTJFT+KH3Z7xdjOeMpKksQFt4eU+nT
         RhLYlD4LvVsQ/0Y+Nudk0mvkgRBBWSS7UT05MhHBtAFNMUYMfEW1zVOiHdiBY/4U2fYD
         knvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CldY/6iWoD+rjZ1u59yX5+1uBpONWw/+jC6ajKv/rGY=;
        b=09U7+jtLljWbs57MWIv0QWwTL33cA8wH/iJt2D3cCLXQHjJCqSKBhnLULjRjCGab40
         8tg/gGey7t0Dg4Xomxmu04xRl5RXfcH0V51tl9HZqiY0d66XzPesNhiijB0wR4MPy7P+
         oNur1jJ0kf6q5/+ZM5985X+H4s5uyYK/kbGtwdW38TyYStBtCSUmy7SQTgvoA8OpZ+RQ
         Jbn4DFM/7If5ljXVP/mGkKiqwe6VrWO4DzbQtQv/OkmBtBEgh/le2/tsJo47zOJErrmx
         SgopXWIjbXtj3aoQ/mJiarvnXbERs4uBgJ3uFBM9BKPhF8Yq/B8YQhKN5A1M0duTF5gz
         +B7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dpmeUZ58;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p23si53131qtu.3.2021.01.21.00.46.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 00:46:32 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BFFD4239D1
	for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 08:46:30 +0000 (UTC)
Received: by mail-lj1-f177.google.com with SMTP id f4so682229ljo.11
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 00:46:30 -0800 (PST)
X-Received: by 2002:a2e:6a04:: with SMTP id f4mr6390528ljc.255.1611218788873;
 Thu, 21 Jan 2021 00:46:28 -0800 (PST)
MIME-Version: 1.0
References: <20210119131724.308884-1-adrian.ratiu@collabora.com>
 <20210119131724.308884-2-adrian.ratiu@collabora.com> <CAKwvOdkNZ09kkzi+A8diaxViqSufxrHizuBu-7quG6an3Z8iDA@mail.gmail.com>
 <CAK8P3a0XWVu-oG3YaGppZDedRL=SA37Gr8YM4cojVap5Bwk2TA@mail.gmail.com>
 <CAKwvOdnVwkxQTQ-LkdZi4pFWTMg6d0Lddddp=j4pCEh-JT-34Q@mail.gmail.com> <YAj/VBzbRaBy7zLv@rani.riverdale.lan>
In-Reply-To: <YAj/VBzbRaBy7zLv@rani.riverdale.lan>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 21 Jan 2021 09:46:17 +0100
X-Gmail-Original-Message-ID: <CAMj1kXHysorzm2uRzvOBXaP2s61jN7nyAD3pju_rhzGF2UH7uw@mail.gmail.com>
Message-ID: <CAMj1kXHysorzm2uRzvOBXaP2s61jN7nyAD3pju_rhzGF2UH7uw@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6 warning
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@kernel.org>, 
	Adrian Ratiu <adrian.ratiu@collabora.com>, Arnd Bergmann <arnd@arndb.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Collabora Kernel ML <kernel@collabora.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=dpmeUZ58;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, 21 Jan 2021 at 05:13, Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Wed, Jan 20, 2021 at 03:09:53PM -0800, Nick Desaulniers wrote:
> > On Tue, Jan 19, 2021 at 1:35 PM Arnd Bergmann <arnd@kernel.org> wrote:
> > >
> > > On Tue, Jan 19, 2021 at 10:18 PM 'Nick Desaulniers' via Clang Built
> > > Linux <clang-built-linux@googlegroups.com> wrote:
> > > >
> > > > On Tue, Jan 19, 2021 at 5:17 AM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
> > > > > diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> > > > > index b99dd8e1c93f..f9f3601cc2d1 100644
> > > > > --- a/arch/arm/lib/xor-neon.c
> > > > > +++ b/arch/arm/lib/xor-neon.c
> > > > > @@ -14,20 +14,22 @@ MODULE_LICENSE("GPL");
> > > > >  #error You should compile this file with '-march=armv7-a -mfloat-abi=softfp -mfpu=neon'
> > > > >  #endif
> > > > >
> > > > > +/*
> > > > > + * TODO: Even though -ftree-vectorize is enabled by default in Clang, the
> > > > > + * compiler does not produce vectorized code due to its cost model.
> > > > > + * See: https://github.com/ClangBuiltLinux/linux/issues/503
> > > > > + */
> > > > > +#ifdef CONFIG_CC_IS_CLANG
> > > > > +#warning Clang does not vectorize code in this file.
> > > > > +#endif
> > > >
> > > > Arnd, remind me again why it's a bug that the compiler's cost model
> > > > says it's faster to not produce a vectorized version of these loops?
> > > > I stand by my previous comment: https://bugs.llvm.org/show_bug.cgi?id=40976#c8
> > >
> > > The point is that without vectorizing the code, there is no point in building
> > > both the default xor code and a "neon" version that has to save/restore
> > > the neon registers but doesn't actually use them.
> >
> > Doesn't that already happen today with GCC when the pointer arguments
> > are overlapping?  The loop is "versioned" and may not actually use the
> > NEON registers at all at runtime for such arguments.
> > https://godbolt.org/z/q48q8v  See also:
> > https://bugs.llvm.org/show_bug.cgi?id=40976#c11.  Or am I missing
> > something?
>
> The gcc version is at least useful when the arguments _don't_ overlap,
> which is presumably most/all the time.
>

Indeed

> There's no point to building this file if it's not going to produce a
> vectorized version at all. The warning seems unnecessary, and it's not
> really a compiler bug either -- until we agree on a way to get clang to
> produce a vectorized version, the best thing would be for the neon
> version to not be built at all with clang. Is that too messy to achieve?
>

+1

> >
> > So I'm thinking if we extend out this pattern to the rest of the
> > functions, we can actually avoid calls to
> > kernel_neon_begin()/kernel_neon_end() for cases in which pointers
> > would be too close to use the vectorized loop version; meaning for GCC
> > this would be an optimization (don't save neon registers when you're
> > not going to use them).  I would probably consider moving
> > include/asm-generic/xor.h somewhere under arch/arm/
> > perhaps...err...something for the other users of <asm-generic/xor.h>.
>
> We can't directly do the patch below since there are other users of the
> asm-generic/xor.h implementations than just the neon file.  If it's too
> much work to check and add __restrict everywhere, I think we'd either
> need to copy the code into the xor-neon file, or maybe do some ifdeffery
> so __restrict is only used for the neon version.
>

Don't mess with the code, please. It's really not worth it.

The current implementation works fine with overlapping inputs, but
works better when they don't. I don't see why we would change that.

If Clang cannot be forced to vectorize this code, then just disable it
for Clang - it's not the end of the world, who runs xor_blocks() on a
hot path on 32-bit ARM anyway?



> >
> > diff --git a/arch/arm/include/asm/xor.h b/arch/arm/include/asm/xor.h
> > index aefddec79286..abd748d317e8 100644
> > --- a/arch/arm/include/asm/xor.h
> > +++ b/arch/arm/include/asm/xor.h
> > @@ -148,12 +148,12 @@ extern struct xor_block_template const
> > xor_block_neon_inner;
> >  static void
> >  xor_neon_2(unsigned long bytes, unsigned long *p1, unsigned long *p2)
> >  {
> > -       if (in_interrupt()) {
> > -               xor_arm4regs_2(bytes, p1, p2);
> > -       } else {
> > +       if (!in_interrupt() && abs((uintptr_t)p1, (uintptr_t)p2) >= 8) {
> >                 kernel_neon_begin();
> >                 xor_block_neon_inner.do_2(bytes, p1, p2);
> >                 kernel_neon_end();
> > +       } else {
> > +               xor_arm4regs_2(bytes, p1, p2);
> >         }
> >  }
> > diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> > index b99dd8e1c93f..0e8e474c0523 100644
> > --- a/arch/arm/lib/xor-neon.c
> > +++ b/arch/arm/lib/xor-neon.c
> > @@ -14,22 +14,6 @@ MODULE_LICENSE("GPL");
> >  #error You should compile this file with '-march=armv7-a
> > -mfloat-abi=softfp -mfpu=neon'
> >  #endif
> >
> > -/*
> > - * Pull in the reference implementations while instructing GCC (through
> > - * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
> > - * NEON instructions.
> > - */
> > -#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
> > -#pragma GCC optimize "tree-vectorize"
> > -#else
> > -/*
> > - * While older versions of GCC do not generate incorrect code, they fail to
> > - * recognize the parallel nature of these functions, and emit plain ARM code,
> > - * which is known to be slower than the optimized ARM code in asm-arm/xor.h.
> > - */
> > -#warning This code requires at least version 4.6 of GCC
> > -#endif
> > -
> >  #pragma GCC diagnostic ignored "-Wunused-variable"
> >  #include <asm-generic/xor.h>
> > diff --git a/include/asm-generic/xor.h b/include/asm-generic/xor.h
> > index b62a2a56a4d4..69df62095c33 100644
> > --- a/include/asm-generic/xor.h
> > +++ b/include/asm-generic/xor.h
> > @@ -8,7 +8,7 @@
> >  #include <linux/prefetch.h>
> >
> >  static void
> > -xor_8regs_2(unsigned long bytes, unsigned long *p1, unsigned long *p2)
> > +xor_8regs_2(unsigned long bytes, unsigned long * __restrict p1,
> > unsigned long * __restrict p2)
> >  {
> >         long lines = bytes / (sizeof (long)) / 8;
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXHysorzm2uRzvOBXaP2s61jN7nyAD3pju_rhzGF2UH7uw%40mail.gmail.com.
