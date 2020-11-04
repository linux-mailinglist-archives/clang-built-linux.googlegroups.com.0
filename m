Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6UCRD6QKGQE5NPO3CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id A94A82A5BB8
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 02:18:51 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id s9sf7960352oom.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 17:18:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604452730; cv=pass;
        d=google.com; s=arc-20160816;
        b=BhFdc3IOg1ZaCcmtOda7wraSnKXmwMccm7gfGHOvxIkeSPM4pN8JojKE34HCF8Vh32
         a06ZaFPUF3x/wAAY2HxvMhg3Zufe6iyZxwIJgSvOzCdMzQ6XVv7oNBAYfk5uiU8L9IKZ
         6UpadgnsbpMkWfQ9p9jyWgZLMhptyeNb29z7D2HPcUFeSTR3CbzU7o7Hyxywqs2IFO4M
         GCviQzQNAQKS4k2od+Kg6T2Nl3jIM5Xks3KCWPQyZczG8rXPaOOUVLz05ieD4y2BDbiX
         VZVki0biZmTjiPTpqH8CdAGQ6QFFv3AAui2w0XkFJWSE/e70XeuuS0MlTa5IqX6rmwHD
         H0jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8tTCLYA5dFvAzb9YjtRRbxvKXXHNtJoobEBfeeZr43o=;
        b=xDml+l/A5i4TJ4NvxGsmRx88uT/5Va7OVhF4eJcK7+x3U6BiQSRXOPJqrkakmVRNyR
         I/o2/ZVnuAgU/tULgWjKufGtyMaL76qcKj0n72qC0iypcG6L3B7x7HomFywgqJQ7palo
         XBZVEJtezt1gbohmnqX52eZaIHi6BShYcoxcg2Q5aasi6RxdCvnunVjFpBxIeZ9vcQ/J
         TNj6HCqbhIILqxdlHnIE2zSRORFOtWQuS43hQlwEwlYfiPtb+4pTzSLkLPFybYDzk340
         4P+6bORxGCvtihEhRsPO9f6Da9f/ftbSfJ86oZzC9yIDQqh+J70wEHzjvrbLiX8Ms48S
         TSag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Jm2Pw6FF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=8tTCLYA5dFvAzb9YjtRRbxvKXXHNtJoobEBfeeZr43o=;
        b=YqHZIpPGB55oWgusonyI+kUiallzjvl9H25IBvSE57PeRh0g3tZQPIbhFidUoxFC1i
         LakwGKn4bw/vg1QI3sjxL4B44rrdI3hQSBf1s0bdRAvWcLZXcnRG+R9cEaKrP+b3WlfI
         ZMJzpzSGYi/tNugc6x73x2gF8mCVkwy6qcUyMs6r9F0igAHxMhD5Mh2HhoDymEEJaXwB
         FRIPFeedHlYR11eRNs+p9QGlCUf0qSZ1XzfcTzIwssWTr9ND2hp6IEZgL5wAK/ngEFgz
         tZO1Pnqyu1+8Yi+7MFoWQqG/Qd3hHAUNCV+FuXotJ84tRzRypXsI4k6QuyLU7yGDXKYW
         z6OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8tTCLYA5dFvAzb9YjtRRbxvKXXHNtJoobEBfeeZr43o=;
        b=emvytuXqVKX6kocZovToiJk9Ycr54lhduVeDRM6L5qFQ32daEN7QR5+6gR0ce2wfDM
         TQSfsAoay6xp/n2i0iPzX2JA8lY5pnih5teVd+7y/70DH8gjGZhtLGmpAOyDEd7dw8kN
         7oqD0ySkdWQLF0tPAj3s5ZAAyye7AycQ4U6y4MvMjVkBuPFK618+Yv58OVzeA8Si4Kxz
         Iw69ShEd14ZNdaV+55SRTAFa7Hl78sUtLc0EzeIXGe4MAy23oAObKKuYzqWraTLH0f1B
         qAFVbJMLl8jbm1DDnjmnlwEeXxQOKhCu5wWFiZPdnVofPYRHQ2LCZRJOvd1d/htR/uEa
         4gdA==
X-Gm-Message-State: AOAM531v+f8Lfeu93K/9MzmnkeYy54oD0Kge6wh9x/unS/RMGENwm4p0
	/f0eL44mjVJq29qnwAwVGdY=
X-Google-Smtp-Source: ABdhPJzitnvX/M+VciitnulOfbgpA3sOIiz/A1f1XJg/kAQ/jhNWwh2c+k1HPmWT2PjWdIZ8WE5kPQ==
X-Received: by 2002:a4a:be92:: with SMTP id o18mr17344706oop.22.1604452730364;
        Tue, 03 Nov 2020 17:18:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:1a84:: with SMTP id 126ls23735oof.11.gmail; Tue, 03 Nov
 2020 17:18:50 -0800 (PST)
X-Received: by 2002:a4a:dfb9:: with SMTP id k25mr17315787ook.34.1604452729996;
        Tue, 03 Nov 2020 17:18:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604452729; cv=none;
        d=google.com; s=arc-20160816;
        b=UfdovLMnfrUSUPIv//Xl7zL3pFASCok9WugzW5JM9GRgeCYmsJLast+brVEQ/d8yL2
         vC6ExVgyoWdPKonRvnKtRiCBosNrhNyXjIuJoa1wdJXuKdbMKiQz+aVexjdaVnNaT6k3
         OJLKPT4ol4XG7ybSC8fi9hp/ainyHYAQl8cCjnUuGctzCW/fMK47bMDvHClBHPZMnjmC
         skou/9tD06eVLmvfuDKHG0/RsSZYt/C1Xp7WhXlfNNaQXvoSWdOlebSWAWHKCeBvrOie
         dKNJykxghxfU4OEUd9gDnowa4cTvCaJnZTvg0h2jmuKBg6ah4dRrGry4l2yxOP1v1Oi7
         fKIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=AAtQa0oG++/s5LnuUSFxmi9+u0mej5RnNrUSF/ToGgQ=;
        b=ipMTZ0iMDeUjvG2nmGuAAazeFQIzyEVkLjYhdQDrCcn4Ljays2vSFhu7jpX6QfC41f
         Lio1SwtxzfwXk0meBNnrKhqg1UNb9niiCelX1rhr2Se4+H9yJrWcV4hFolcUueO4RnUf
         MR9NsEuMUW3KMYpCMZCx6/CmwRxuwKMvSDeN94RXfZ7F5LQIQR3nYJQengq3dAYlde7J
         SMAfrBa/RdjuOuOwkKDjNPTQSj1BUEsNYggN/p0gGsYJF4kQfYFmVn+KLGX2mVRGI4nn
         hWIr8XzANaU7KhjZkk410o4gVGwaqJ45Xb1PZbGoRGAHFxZK38cP223/ftDXtuTos82b
         F9iQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Jm2Pw6FF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id i23si50672otk.5.2020.11.03.17.18.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 17:18:49 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id z3so9535254pfz.6
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 17:18:49 -0800 (PST)
X-Received: by 2002:a65:4b81:: with SMTP id t1mr3097057pgq.263.1604452729161;
 Tue, 03 Nov 2020 17:18:49 -0800 (PST)
MIME-Version: 1.0
References: <20200902225911.209899-1-ndesaulniers@google.com>
 <20200902225911.209899-2-ndesaulniers@google.com> <20201103045521.GA58906@kernel.org>
 <CAKwvOdk-bMx3Jt6=oN=PHqRv_tx5cF=9cVmumazb4vMNHdj5Ag@mail.gmail.com> <20201104003826.GB19460@kernel.org>
In-Reply-To: <20201104003826.GB19460@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 3 Nov 2020 17:18:38 -0800
Message-ID: <CAKwvOdnZSLP_YF3iFDLTHFE=ORxsrCR06s-B2Hk7khSxdC0+5A@mail.gmail.com>
Subject: Re: [PATCH v3 1/7] compiler-clang: add build check for clang 10.0.1
To: Jarkko Sakkinen <jarkko@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Marco Elver <elver@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Daniel Borkmann <daniel@iogearbox.net>, 
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Jm2Pw6FF;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Tue, Nov 3, 2020 at 4:38 PM Jarkko Sakkinen <jarkko@kernel.org> wrote:
>
> On Tue, Nov 03, 2020 at 10:48:27AM -0800, Nick Desaulniers wrote:
> > On Mon, Nov 2, 2020 at 8:55 PM Jarkko Sakkinen <jarkko@kernel.org> wrot=
e:
> > >
> > > On Wed, Sep 02, 2020 at 03:59:05PM -0700, Nick Desaulniers wrote:
> > > > +#define CLANG_VERSION (__clang_major__ * 10000       \
> > > > +                  + __clang_minor__ * 100    \
> > > > +                  + __clang_patchlevel__)
> > > > +
> > > > +#if CLANG_VERSION < 100001
> > > > +# error Sorry, your version of Clang is too old - please use 10.0.=
1 or newer.
> > > > +#endif
> > >
> > >
> > > I'm trying to compile a BPF enabled test kernel for a live system and=
 I
> > > get this error even though I have much newer clang:
> > >
> > > =E2=9E=9C  ~ (master) =E2=9C=94 clang --version
> > > Ubuntu clang version 11.0.0-2
> > > Target: x86_64-pc-linux-gnu
> > > Thread model: posix
> > > InstalledDir: /usr/bin
> > >
> > > Tried to Google for troubleshooter tips but this patch is basically t=
he
> > > only hit I get :-)
> >
> > To check the values of the above preprocessor defines, please run:
> > $ clang -dM -E - < /dev/null | grep -e __clang_m -e __clang_p
> >
> > If you have multiple versions of clang installed, you might not be
> > running the version you think you are.  Particularly, if you're using
> > bcc, idk if it includes a copy of clang?  If that's the case, we may
> > have to work out how we can support older versions of clang for the
> > express purposes of bpf.
>
> =E2=9E=9C  ~ (master) =E2=9C=94 clang -dM -E - < /dev/null | grep -e __cl=
ang_m -e __clang_p
> #define __clang_major__ 11
> #define __clang_minor__ 0
> #define __clang_patchlevel__ 0
>
> I'm compiling the kernel itself with GCC.
>
> Here's an example BPF script that fails on me:
>
> struct sgx_enclave_add_pages {
>         unsigned long src;
>         unsigned long offset;
>         unsigned long length;
>         unsigned long secinfo;
>         unsigned long flags;
>         unsigned long count;
> };
>
> kprobe:sgx_ioctl
> {
>         if (arg1 =3D=3D 0xc030a401) {
>                 printf("sgx_ioctl: %d, %lu\n", pid, ((struct sgx_enclave_=
add_pages *)(arg2))->offset);
>         }
>
> }
> Note that it relies on code not yet in the mainline.
>
> If I don't declare structs, things work just fine. E.g. the following
> works:
>
> kprobe:sgx_encl_get_backing
> {
>         printf("%s\n", func)
> }
>
> BTW, I don't really understand how scripts/clang-version.sh is even
> supposed to work, if you compile the kernel itself with GCC. In that
> case there would be no output, right? And thus version gets set to
> zero...

That script is only used by KBUILD.  include/linux/compiler-clang.h is
what's included into include/linux/compiler_types.h and causes the
error.  The eBFP tools must be including kernel headers and defining
`__clang__`.  Forgive my complete ignorance of eBPF, but how do you
build that script?  I assume the tool is using Clang, since eBPF
relies on the LLVM backend (not sure if the GCC eBPF backend is good
to go quite yet), and that version of clang is older.

I wonder if we should guard the version check with __BPF_TRACING__
similar to arch/x86/include/asm/cpufeature.h? Care to test:
```
diff --git a/include/linux/compiler-clang.h
b/include/linux/compiler-clang.h
index dd7233c48bf3..98cff1b4b088 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -8,8 +8,10 @@
                     + __clang_patchlevel__)

 #if CLANG_VERSION < 100001
+#ifndef __BPF_TRACING__
 # error Sorry, your version of Clang is too old - please use 10.0.1 or new=
er.
 #endif
+#endif

 /* Compiler specific definitions for Clang compiler */
```
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdnZSLP_YF3iFDLTHFE%3DORxsrCR06s-B2Hk7khSxdC0%2B5A%4=
0mail.gmail.com.
