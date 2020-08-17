Return-Path: <clang-built-linux+bncBC2ORX645YPRBEHW5L4QKGQEGJM2ULI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF49246DCF
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 19:14:56 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id r29sf7313413wrr.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 10:14:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597684496; cv=pass;
        d=google.com; s=arc-20160816;
        b=axlhL4k/QlYOcFbyWM8a49ijl66AQ8xFdWNBSV6t84MXD+7CxEb2UQ3oOmoUc81HoQ
         g/9hHZtA6JOzriiv6s469lLJZkFSiemvyygbxNaTPb54fnfDffGnSlNcg2prIpu+bsqe
         8JQZ/R0x7i5a7mCxbhY1qqbZ50EDtPtUFvI0xMos3pc/RmVZL1DXPwphIjABdyhhhShT
         uAxT+OCWC9pvODp9Gi3St9O0HboG+v4Lij9w8HOdY6bAjhNJu0Equw5Bdlp7QLaroK9M
         Ba2anFZ0vAvAoWlYkIiihdq2+2S3uS1RLyBB98C+clqTKmfcmqzMfqSsE2coRkbR9sQq
         srSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+guzGhS9V4yXXsHDQhQ+hBZyE7aNVYSz+VWZKgTI0+s=;
        b=gLg48J4CBxX9Byt0z8ouVy51BVMv6swxXVnqCh4uFN9fM3qCGg5fs5Z5SHwT8lHM6w
         T4j/PFZZe9ajwubz6LEQYhx+OOPAa3NWTMpZp9XtC74SJvW4Iq78m5p3FQemGE76i0KO
         g9CCmCFRq0xl3hoVL+Gqit73E5jGC+e/5K4beSKqyyJxjxFffXgLBmLseDsOWrLelulw
         TGNSJlQ6XcxYGSMsbvfykkyPxNrosH2T+4QDRmO3MDWIZAu0Qybz18zfil13DW8/bdrj
         Eyx/7M0YA6ljeGZnD7BAonRASiswD3cwHzsH5rfaQD76rrGwiu5xDfBScAS0oesCqyhk
         n9eA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dqDBE4cR;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+guzGhS9V4yXXsHDQhQ+hBZyE7aNVYSz+VWZKgTI0+s=;
        b=mlTcQfWek5T45I8bRKXs9f01RErMDtioxAZxbwcCcRoeX6aFhI9OPU9IRoLyxtEUkR
         PnZpL/v2Is7u0FcjgeDrfK9ScGdH+iIy52aRU2+GnOKmzWKYgHpyakgSBFUaqVYrI6Se
         Xe3hXmzzbRtOAw/th02Q2pzc77ANqIEjvRw4AM6BBYf+g+vjdiatAL7r1X+1JvXhLFHE
         FYHB04/ldlwgHgmX2ZAN3dYbYDloUrUU4Rr0VMBBAL2Us9c3eLvC+HZ9GodxgCFvh5Lj
         xrUOB98CzB3YK+vmH+pnMcA7AecKnXxScAsWO0WqU3aU24a5V2ZscXL4cnksTv0IxNnR
         OgEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+guzGhS9V4yXXsHDQhQ+hBZyE7aNVYSz+VWZKgTI0+s=;
        b=E3Gnt4S3AmZ3NiZHcChpuVmXCYnpH1YvvaIR+eGeB4RKVkoiGfH2nSgjTpn5D0i0oJ
         qUUdc4yslU+2xUsgHhAceJWKEOwI0dDEAXkRHhYAN67G8ul2TuTKy4L/jVA53reuV5Zo
         +ivO5DCnF78k++f76MIMU1zNghEEOcrPUdkqQkcScpVYW22fJybtexxU2p0jj07ZZlPi
         mJUhjamXo3tONV9V445EinBLEPXdQDx1LlybtT4JKertx/mhoe0PGGds2us79+20EEoI
         YjBtQHX6eIiGiKy12Olkf5xoD8HzpAGknMjbmUUAEmyfXSukS4WWisXev5GMcPKK1oci
         jaIw==
X-Gm-Message-State: AOAM532xQY4nK/JrNnUi2MW5ofBjd+FIuqdzup0S2blmXrLn3q+iAogJ
	/ZvA+XoOXdgczOkGvNQnTio=
X-Google-Smtp-Source: ABdhPJw6ztas973ttwnWKJvQCFv1WsvZZbLcx0NapSKah0QV8lHP/ctPtPMQNG7AjHYpCShUoi0MsA==
X-Received: by 2002:adf:fe50:: with SMTP id m16mr17010617wrs.27.1597684496321;
        Mon, 17 Aug 2020 10:14:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a50e:: with SMTP id o14ls7862158wme.3.gmail; Mon, 17 Aug
 2020 10:14:55 -0700 (PDT)
X-Received: by 2002:a1c:2e07:: with SMTP id u7mr16336836wmu.52.1597684495067;
        Mon, 17 Aug 2020 10:14:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597684495; cv=none;
        d=google.com; s=arc-20160816;
        b=T5kYlG+laRjNOSCAcjMDHdhnkgm2Ei7VcviC4j9RrqCKLHH0jQWmInSIIm0CkC5wxZ
         oBivVxDs81XBTCZlaDeMY9BTLiAN4/5npzm5EJbR2j2k1sJPYqc+u+ES+V7ghfZNdWjF
         SJy/JmZxWE64qXwdCK4TNsTn+7q1e1VrB6V681jPto9y/uDhVhAdPNww8YRLHdwrrsjx
         XvqvIYUK6aQi9Uh31GVqca1kqjcS2r7DqyTDRlqEitnjBczgl4pnav7IYeLbj6E2aCI6
         /yvLkDdUg9YZ4hXKHAEwcRo+bXMR9lk2FvWj76Tmln7SxRm4hC6wDp0gCfcGHGC184UR
         1WUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3HRH4wla07jht+Skbj8wFO6vqCAFqpa7H6BM6x87yVg=;
        b=U9O5Fku25SmSbvwAbXXflUdvMuF3wKZanLw+hZ91tBhfa+kJrnFuFkxnLLTg2UzWTG
         rC6tRwvGVJnmJpmWBlpEPwQO1JHk0slaXnILfSrodfJsp3QNS5dJxCgt/AxA4WeEYalZ
         SGMO8A49rg4+IZtLHKI7UbY90fGKrGiTKgXnOB9rfgLOmAKoBo5UldThTevTBJhIVVmX
         soytCYo3kh3WM4ZiwUZLCK5n0blVj4txWlR+rAy3XORuCRy1oYHhr0NPWIj272TkmM/M
         4hCGcb/rOJNIIoFjEV9VbrfGxtSvmJw+gaVOht9gO/N2i66uGblanV0GpgigFAJSVx2p
         b8DQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dqDBE4cR;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com. [2a00:1450:4864:20::642])
        by gmr-mx.google.com with ESMTPS id n129si730028wma.2.2020.08.17.10.14.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 10:14:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::642 as permitted sender) client-ip=2a00:1450:4864:20::642;
Received: by mail-ej1-x642.google.com with SMTP id t10so18619527ejs.8
        for <clang-built-linux@googlegroups.com>; Mon, 17 Aug 2020 10:14:55 -0700 (PDT)
X-Received: by 2002:a17:906:2356:: with SMTP id m22mr15726038eja.124.1597684494511;
 Mon, 17 Aug 2020 10:14:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200815014006.GB99152@rani.riverdale.lan> <20200815020946.1538085-1-ndesaulniers@google.com>
 <202008150921.B70721A359@keescook> <CAKwvOdnyHfx6ayqEoOr3pb_ibKBAG9vj31LuKE+f712W=7LFKA@mail.gmail.com>
 <457a91183581509abfa00575d0392be543acbe07.camel@perches.com>
 <CAKwvOdk4PRi45MXCtg4kmeN6c1AK5w9EJ1XFBJ5GyUjwEtRj1g@mail.gmail.com>
 <ccacb2a860151fdd6ce95371f1e0cd7658a308d1.camel@perches.com>
 <CAKwvOd=QkpmdWHAvWVFtogsDom2z_fA4XmDF6aLqz1czjSgZbQ@mail.gmail.com>
 <20200816001917.4krsnrik7hxxfqfm@google.com> <CA+icZUW=rQ-e=mmYWsgVns8jDoQ=FJ7kdem1fWnW_i5jx-6JzQ@mail.gmail.com>
 <20200816150217.GA1306483@rani.riverdale.lan>
In-Reply-To: <20200816150217.GA1306483@rani.riverdale.lan>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 17 Aug 2020 10:14:43 -0700
Message-ID: <CABCJKucsXufD6rmv7qQZ=9kLC7XrngCJkKA_WzGOAn-KfcObeA@mail.gmail.com>
Subject: Re: [PATCH v2] lib/string.c: implement stpcpy
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Fangrui Song <maskray@google.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Joe Perches <joe@perches.com>, 
	Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, 
	=?UTF-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>, 
	Eli Friedman <efriedma@quicinc.com>, "# 3.4.x" <stable@vger.kernel.org>, 
	Vishal Verma <vishal.l.verma@intel.com>, Dan Williams <dan.j.williams@intel.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, Daniel Axtens <dja@axtens.net>, Ingo Molnar <mingo@kernel.org>, 
	Yury Norov <yury.norov@gmail.com>, Alexandru Ardelean <alexandru.ardelean@analog.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dqDBE4cR;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::642
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Sun, Aug 16, 2020 at 8:02 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Sun, Aug 16, 2020 at 07:22:35AM +0200, Sedat Dilek wrote:
> > On Sun, Aug 16, 2020 at 2:19 AM 'Fangrui Song' via Clang Built Linux
> > <clang-built-linux@googlegroups.com> wrote:
> > >
> > > Adding a definition without a declaration for stpcpy looks good.
> > > Clang LTO will work.
> > >
> > > (If the kernel does not want to provide these routines,
> > > is http://git.kernel.org/linus/6edfba1b33c701108717f4e036320fc39abe1912
> > > probably wrong? (why remove -ffreestanding from the main Makefile) )
> > >
> >
> > We had some many issues in arch/x86 where *FLAGS were removed or used
> > differently and had to re-add them :-(.
> >
> > So if -ffreestanding is used in arch/x86 and was! used in top-level
> > Makefile - it makes sense to re-add it back?
> > ( I cannot speak for archs other than x86. )
> >
> > - Sedat -
>
> -ffreestanding disables _all_ builtins and libcall optimizations, which
> is probably not desirable. If we added it back, we'd need to also go
> back to #define various string functions to the __builtin versions.
>
> Though I don't understand the original issue, with -ffreestanding,
> sprintf shouldn't have been turned into strcpy in the first place.
>
> 32-bit still has -ffreestanding -- I wonder if that's actually necessary
> any more?
>
> Why does -fno-builtin-stpcpy not work with clang LTO? Isn't that a
> compiler bug?

I just confirmed that adding -fno-builtin-stpcpy to KBUILD_CFLAGS does
work with LTO as well.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucsXufD6rmv7qQZ%3D9kLC7XrngCJkKA_WzGOAn-KfcObeA%40mail.gmail.com.
