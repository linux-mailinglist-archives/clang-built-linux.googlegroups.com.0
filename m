Return-Path: <clang-built-linux+bncBDYJPJO25UGBBE5NROEAMGQELNDQDJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id B972F3DA8F0
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 18:25:56 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id x33-20020a0565121321b02903ac51262781sf2842950lfu.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 09:25:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627575956; cv=pass;
        d=google.com; s=arc-20160816;
        b=tDTb5mD/AKk0vjF6dxuxtf+oRSk1+RMbWRw34CNCFeue8I7ky39u/YyR4S1bkaVzvX
         ji0pfYCBfM2D5ZtM9LVKGUlqvaXibYGGTjZFF4ZBl2pY27+5GEL4PnZY0QqVPsa+mjf9
         /nhBjzbtzUnRFc181B5MtXkRXaMxsKLp5enNRN1vff13xnp+0BB9B+HRxpJaxyL6apRJ
         BWr1VRd5/l+p/xivj4XGvpOdU0fTtKjQiRE2/dFuJUofbioVsqw7YZw0vpC2mUb7RXHh
         jaqsMW8J43ogWMZu7I2JWK0X6TB1EqV6ClRsA2/vNtyBHBpWmq/eKASf0zxPYUOL99Wp
         ZAJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pyvXiL66Nvhe1bQxIrnFuZ32pDAk+D++kGpmelz1UNQ=;
        b=sCi6zP0N6cl6wKN5CfCWFxj+Kgy4mPjYkZzXvGQTWh+pVyveSOF50ml1SM7QlajF5n
         /kuGMxG0pfmUxlt6YZDQtuDFWs00mMOxQ/UAQ05B36zEJl9crDlJcvHe1DrilBJS2ePs
         0izF5mwpGEKSkaSNm9sFkwbglaVeshMEz6et3Djk4iqMQNYhQBsUgAg0hm9+qKbDLo3c
         tNhBskcB4Hz8mM/YFN3MRIuaeE9UMlEihO777afeHNJBHVa+YtIgv0hCh8i98iq4GdDq
         NxQ77LPBNlVLO6jKqPpXECHTVfeieHpolukXi5E9louRyMGRccXcGug2hGfIF21V5beo
         nZag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dbq2eZUD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pyvXiL66Nvhe1bQxIrnFuZ32pDAk+D++kGpmelz1UNQ=;
        b=pxTEtzB1KY4Cl/8pyufEq2Jy6ejhg8n5K4zYZTxCwWbQp4J/mQL+QRgRFgNDfoEJDp
         w+00gAVhRr3VD0dyh/f+R4aCNgO4+U3OfZmclsNzkaGgnlSlyaegTHNUwKHFiPPEC5Js
         i3JK7dxze2bTyO7Kiu4bcEoWwszkRuO7L4OvEAmcnXyMoP7eWz9r3U4Gd3/d3V8qK81m
         9P/9bbu4cRHYKXRz8e8+fb9G1pS0DOZHnFkV80OWHcxvyX+7SgGVm52kdRoHZGl2YqcO
         m/ZHT5dStvAqNoBWniBNSclYeWZtU9NTXbG3zC2tKlwVNdg9cZTxWsAi9ebCRben/4ot
         29CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pyvXiL66Nvhe1bQxIrnFuZ32pDAk+D++kGpmelz1UNQ=;
        b=bYQLn/MtkCNBHEDsUi6563yEjd93gPsXRa968LIC/mrA8X5ASaMUyPJIovFCx89TeR
         0EGI9RYxccWcbx5CLRuy0LZyz/a8lnOTZKEvgy397ZzOQHAD7qeRSex3gAh5E3qp8q7f
         U5vqLWxpltNjK2oRdWjnCdrs3QxvrQ9ItckvUPdgGTdD1OS3HZqOUYysVaRxqB2c8t0L
         Q91ze9CmKDXUtpI0wI/Q7ptuDE7lp3erfD7ajO5dRGlEXaf8qHHbFkWwhyXElREJQP33
         wVpngn3a7K6nS0RSDvtYKJdjnr9/NyuRJqUT0h1UxnmV0kTcTRx55bYmA9UtFs7LVqBa
         x4gQ==
X-Gm-Message-State: AOAM533UwFyhEk2H/MoSMHLLm3yNUqug3rF/rJMXkEcRedzSvRLnwxtT
	9EnrLNhYHjeED9Wj0BC5+Ao=
X-Google-Smtp-Source: ABdhPJwAUt2qRx1T2KzjoD8ZWGbZBB2u3n0Tl/iz2k7CXPdbNk8AZWQJr7nozxFxQywLSgf4wv9V5g==
X-Received: by 2002:a2e:a815:: with SMTP id l21mr3295126ljq.400.1627575956199;
        Thu, 29 Jul 2021 09:25:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4146:: with SMTP id c6ls4961542lfi.2.gmail; Thu, 29 Jul
 2021 09:25:55 -0700 (PDT)
X-Received: by 2002:a05:6512:2215:: with SMTP id h21mr4234250lfu.419.1627575955132;
        Thu, 29 Jul 2021 09:25:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627575955; cv=none;
        d=google.com; s=arc-20160816;
        b=aHBEccVkmWPdv/iZOO3mUwAIJ+A2lCv4WV/zLVIyn7AX1fxJrKXmiPvN1Z/sI5KMbe
         /+3zFRc5DhLQzsftvZ9IXGUNssIO4dU4bIbPGWhx9kwZpaJpGeIAzn6ym5NA27VRfnht
         XKS14LoXGpbmeyUB8njv6XkbJ7pIJeh5Yo0ElHbwulu8s8JzRhCzLQbCiLK+0FVNTBHs
         KjRNSgsFVh4RDP/48PeBrjRAoa6b4b90927JQi7O1Z0Uvi9vs7RZQxC2Z7/FJBerPtHo
         Tb+MDpl7DvGHmfv/bu+YmOoM3ta1tnZcZgfGapGBLQs9yA8BSzn6qtLno5bDSNCSFojN
         ddyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KFarLUaerwhqXhNfSAvou1NQn1eTDfFAb53Mz+JzFuk=;
        b=U0Z/CxNvf2nwqe4Fx5fXmKYwXQGdfkCXAV8Z3ekvt88i8j0lTA39VUo5IMQnWBJCED
         QI34P0R3mZveWG376jh8wqt1EEft0rjfqpNO6wJX1dprE/vVcp7PU8H/Tjci1A/5rm4D
         RwaRWTMyxzsC/wyhWqRGYTw8652BOWdAG10OZk0P/sJfMHboJW8vXvFf/qbXVHZ8bGlh
         bOA2i3jR3PJdSBQLc6CVX8rUPwafEZV8Rm3B5u6jUwvOwM6GybpCx6oMLNE+oPMOZhVn
         eI2g1+mmWuQN5Xb9evOmpzdiBjmm47bXlDE70XJIYceN/49udgkMyxd+JH0E7PGy2dZU
         XVjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dbq2eZUD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id q4si144652lji.2.2021.07.29.09.25.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 09:25:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id u3so12066400lff.9
        for <clang-built-linux@googlegroups.com>; Thu, 29 Jul 2021 09:25:55 -0700 (PDT)
X-Received: by 2002:ac2:59db:: with SMTP id x27mr4307446lfn.547.1627575954486;
 Thu, 29 Jul 2021 09:25:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210729131244.2595519-1-mpe@ellerman.id.au> <392b3b47-1878-d27a-9656-4596fdc7c343@molgen.mpg.de>
In-Reply-To: <392b3b47-1878-d27a-9656-4596fdc7c343@molgen.mpg.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Jul 2021 09:25:43 -0700
Message-ID: <CAKwvOdmR9nB3T-PLNSGea3=9qbZuOoLs5D22UPRBbvw_+aOO7A@mail.gmail.com>
Subject: Re: [PATCH] powerpc/vdso: Don't use r30 to avoid breaking Go lang
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Michael Ellerman <mpe@ellerman.id.au>, linuxppc-dev@lists.ozlabs.org, 
	Nathan Chancellor <nathan@kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dbq2eZUD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d
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

On Thu, Jul 29, 2021 at 6:42 AM Paul Menzel <pmenzel@molgen.mpg.de> wrote:
>
> Dear Michael,
>
>
> Am 29.07.21 um 15:12 schrieb Michael Ellerman:
> > The Go runtime uses r30 for some special value called 'g'. It assumes
> > that value will remain unchanged even when calling VDSO functions.
> > Although r30 is non-volatile across function calls, the callee is free
> > to use it, as long as the callee saves the value and restores it before
> > returning.
> >
> > It used to be true by accident that the VDSO didn't use r30, because the
> > VDSO was hand-written asm. When we switched to building the VDSO from C
> > the compiler started using r30, at least in some builds, leading to
> > crashes in Go. eg:
> >
> >    ~/go/src$ ./all.bash
> >    Building Go cmd/dist using /usr/lib/go-1.16. (go1.16.2 linux/ppc64le)
> >    Building Go toolchain1 using /usr/lib/go-1.16.
> >    go build os/exec: /usr/lib/go-1.16/pkg/tool/linux_ppc64le/compile: signal: segmentation fault
> >    go build reflect: /usr/lib/go-1.16/pkg/tool/linux_ppc64le/compile: signal: segmentation fault
> >    go tool dist: FAILED: /usr/lib/go-1.16/bin/go install -gcflags=-l -tags=math_big_pure_go compiler_bootstrap bootstrap/cmd/...: exit status 1
> >
> > There are patches in flight to fix Go[1], but until they are released
> > and widely deployed we can workaround it in the VDSO by avoiding use of
>
> Nit: work around is spelled with a space.
>
> > r30.
> >
> > Note this only works with GCC, clang does not support -ffixed-rN.
>
> Maybe the clang/LLVM build support folks (in CC) have an idea.

Right, we've had issues with these in the past.  Generally, we need to
teach clang about which registers are valid for `N` so that it can
diagnose invalid values ASAP.  This has to be done on a per arch basis
in LLVM to steal the register from the register allocator.  For
example, this was used previously for aarch64 (but removed from use in
the kernel) and IIRC is used for m68k (which we're working to get
builds online for).

I've filed https://bugs.llvm.org/show_bug.cgi?id=51272. Thanks for the report.

>
> > 1: https://go-review.googlesource.com/c/go/+/328110
> >
> > Fixes: ab037dd87a2f ("powerpc/vdso: Switch VDSO to generic C implementation.")
> > Cc: stable@vger.kernel.org # v5.11+
> > Reported-by: Paul Menzel <pmenzel@molgen.mpg.de>
> > Tested-by: Paul Menzel <pmenzel@molgen.mpg.de>
> > Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
> > ---
> >   arch/powerpc/kernel/vdso64/Makefile | 7 +++++++
> >   1 file changed, 7 insertions(+)
> >
> > diff --git a/arch/powerpc/kernel/vdso64/Makefile b/arch/powerpc/kernel/vdso64/Makefile
> > index 2813e3f98db6..3c5baaa6f1e7 100644
> > --- a/arch/powerpc/kernel/vdso64/Makefile
> > +++ b/arch/powerpc/kernel/vdso64/Makefile
> > @@ -27,6 +27,13 @@ KASAN_SANITIZE := n
> >
> >   ccflags-y := -shared -fno-common -fno-builtin -nostdlib \
> >       -Wl,-soname=linux-vdso64.so.1 -Wl,--hash-style=both
> > +
> > +# Go prior to 1.16.x assumes r30 is not clobbered by any VDSO code. That used to be true
> > +# by accident when the VDSO was hand-written asm code, but may not be now that the VDSO is
> > +# compiler generated. To avoid breaking Go tell GCC not to use r30. Impact on code
> > +# generation is minimal, it will just use r29 instead.
> > +ccflags-y += $(call cc-option, -ffixed-r30)
> > +
> >   asflags-y := -D__VDSO64__ -s
> >
> >   targets += vdso64.lds
> >
>
> The rest looks good.
>
>
> Kind regards,
>
> Paul



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmR9nB3T-PLNSGea3%3D9qbZuOoLs5D22UPRBbvw_%2BaOO7A%40mail.gmail.com.
