Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBJ4F4P4QKGQEMBZYVPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 28AD0245613
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 Aug 2020 07:22:49 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id n6sf4247871vkm.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 22:22:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597555368; cv=pass;
        d=google.com; s=arc-20160816;
        b=H3uPubJigoFLK4tR9HNaq0pBxYw7Zd3vw86Vih2RMNThO1rZQm4es/Z0T5NweNxxCY
         aX246v9kq5QF36wSzRLZ5VJOgyiVDBzgtZajdyfiUvxpTlUfId1osQoK6fskyTB+X05b
         Xcl+dBukoyAv+YlTmer8F0Rfq335tN/0l50fKO/VsZlCgaIaul/xX4phZvy1matjUrZC
         lUfgvXceoCpMoQoy080Fbi8w9V8h727n4AJoF5LLIOU0HM5vutapIiLQrDKiywGP5cA4
         Ux6GB41HB5Kxcke8Q8GTq27jmADDfY6x7a7S+42ZxxPL6yP2DzwQxm2n2hABfabSbSLD
         PKiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=fHIykm3liCtZjZqAM3QNID9vz8HHFZyM1ZljI/J+cx8=;
        b=Vpl/+RakIFzf4yHy1UpSeS1K2QRkpmI38RECgSc3ogxRrBBRc2rCyMkCJJBUVDn6+I
         nQWyEr/Y9QGoZgGlXclXjEHS35bOKdbnvbm+bJ6FD9CLL58tXfI+N+f++8kbeQr6zKZp
         2fnYOHWQR08t31tK4FBgcILIDmEJxwDw8zPE3NbdbKUwwFlcn+5/Av5s47HZslnl/b+n
         IrltkeZL1eHTZhqPKFgulEULPfq/HJuJOHq1qPTQUY0wPNPW4fqORzhSfJbUVMxZe/zA
         S6EO2fN+jd7fab5yrAlbNnbIXYVoHJ4UGmjp+CcmQ59qrjjJNubCslia3ZFue15DEjSH
         wiEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pO7oKfEA;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fHIykm3liCtZjZqAM3QNID9vz8HHFZyM1ZljI/J+cx8=;
        b=cLllUE70xzQ5PBvGvEBludQqzDrWPhl2t6K7EeBjx74Eidl6Apk0up+Me9YfJfu0SH
         zNFG5K9MuWsFZ54iKmbsnE9BaXw6Y1E0qkU3nRoH/Sb20FnwBNRXRuVVpdyTnTAy7Wxz
         B5wYHOhOAte6H92Q2CO2ApuGSSrk2az50j9raQT1T5aSIBMgPZDdGSFxP940eC/RSqhw
         HwH8uRMkgskpfG5GV7dkkBi7JuCvAqgeXX7IDYexK573uaS+/5keDotjjz+rmmINMMls
         ac8tmusDvIsdlUSiHjzjxTeaYt2Q6SKYZhVhn+P3YAqcIKSJ/E3RGSDeEMTn0FDfcKbq
         rFaQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fHIykm3liCtZjZqAM3QNID9vz8HHFZyM1ZljI/J+cx8=;
        b=fZo0gP127OCgpB/31xBD28Ne5cuNJXM+j9po4YmGcSal98yuARI8oZHwLjVQzpvakb
         tOvQ2ZzdU1Xgttk0z8OO6r0ScJYRTT1ixWoSh3NWnvSoRaqr42nc+M2T7Sfs2on4AvAy
         nEnod60+s9+dOZVHrGbY3r4cHlJuryVJTfiPMfaLiLGOa2qGUDYFOr9poLpc+F1PAvPK
         qggjxwFdo9KiZhgZI9BYK8fGrnUXhwDzbNrfnjbyGkAuCw/DVfzOF4XnAF2fJOPdlK3F
         AQqcPegC/kQFL5H1Mbhq64UCtGZjoQR1OW99O5zAWa5YQPq4ClVGrvaw2rKcuiPenEEF
         ISsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fHIykm3liCtZjZqAM3QNID9vz8HHFZyM1ZljI/J+cx8=;
        b=g8tfaTw+a5Q2GRqhtCkTKLDu1JlDKm95WejbjdBVjhpWD8cP9WayWI3pl2F2KWTfgO
         ALMPCnk0Bn1LlzYsUiOUHv1nkzZo09jgA+/4LTZy+HAn99whJqIwNUCT43FOPOznmPav
         QYcjaumnZPokU5dKxvchmCnwjs0TdjwMs9Jx9b40Cy+w8eEYvnxpMeiiwXRrVhI0/p2G
         hunFgw7xFDTC7ol7ag7QbbK4dw4DXR7V5egjctrzZgrqMXi4GESqbBUBpy231Rlqgy+g
         CgEYg9XyP1AbCl2Xz6qQ+UN7O6Ne7y+jZoUB+qFHIuaMfJX4yFsUreavH6RnvTwyn2IM
         UirQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533CyFDtCpjRdO+eIPC1Eq8vwNl2ngbET49bGrEubo64jDFtG6BE
	uwCz4Qvu0qub0d3e3g5FIDM=
X-Google-Smtp-Source: ABdhPJy5sdrS0yz4IELmDGGzLUaZ8BPfUSmeiwy/GwyfXYJerzefPazdZLrNCPmmQzGkc7uWAUK/oA==
X-Received: by 2002:ab0:630a:: with SMTP id a10mr4853998uap.20.1597555367991;
        Sat, 15 Aug 2020 22:22:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:cf4a:: with SMTP id f10ls1510054vsm.3.gmail; Sat, 15 Aug
 2020 22:22:47 -0700 (PDT)
X-Received: by 2002:a67:e9d4:: with SMTP id q20mr5239178vso.176.1597555367650;
        Sat, 15 Aug 2020 22:22:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597555367; cv=none;
        d=google.com; s=arc-20160816;
        b=PEmS+RD4GL0EBO4nguHtjgGIWdbWofesueTLMBZzyl81ajvHMamCH8n+7vQTTHZ1lp
         Xzhd4poAQYbEv2vilveWPna4lHqGQEyERqglSTRLMtd2wZ+IYkgqyAzYv8nlua9p4cSa
         c36AsZCMjnOskix59hvUBGr6jyw7LIlKRPqwD/0rkLkXGH4uwZqbZmEUf9Wpi1/cMwIU
         i2aF2s6KS2p1Avt5CXTuktZxea94AIpFYHncsQUW4MdU92tmVI7otBgQcVhR+oHyLBuG
         thEE5iVsr0OFMsvwAQ1aqZDrAaFrOmGIiGZeROlrxP7QLdsLXRQvb7ek4VhyfZ+NSw6U
         gJ4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PAteESxJKccFpDFj8kKtK40KfGMPkFYwzSmBJNjdRqM=;
        b=cruWnclwNambc7TRkiP0xOoH3InWY4oZTfw8BykcvdnuGt22+RnNauQDWelwZ3mZQt
         6is+0iPlgLowoIDY+/pS/JjYzQjo6TqxtYTznXqoxTHd02KGzVxUYd01ht63IlFnTgTk
         ngKchUkc/Q6HYz3ePrwpz73rHpWD7jrV+26eruBg7dT4hfhOagSgZr6LkfJmxNGg3L2V
         lu4rUOkfWQCVbvg7nk9p0mZAJTUaaSzutEdnY1X65hP+TweSNuw5UIjE1ok4Z+tcpLaP
         6uLABBwmGhjGHSCTUFinQeS+llKtITTCF/JQL7Cv1MUlwWALV7oCGNvvr2G1YcrYVBXd
         ha1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pO7oKfEA;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oo1-xc42.google.com (mail-oo1-xc42.google.com. [2607:f8b0:4864:20::c42])
        by gmr-mx.google.com with ESMTPS id k201si728360vka.4.2020.08.15.22.22.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Aug 2020 22:22:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) client-ip=2607:f8b0:4864:20::c42;
Received: by mail-oo1-xc42.google.com with SMTP id r6so2764027oon.13
        for <clang-built-linux@googlegroups.com>; Sat, 15 Aug 2020 22:22:47 -0700 (PDT)
X-Received: by 2002:a4a:7b4b:: with SMTP id l72mr7081937ooc.74.1597555366947;
 Sat, 15 Aug 2020 22:22:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200815014006.GB99152@rani.riverdale.lan> <20200815020946.1538085-1-ndesaulniers@google.com>
 <202008150921.B70721A359@keescook> <CAKwvOdnyHfx6ayqEoOr3pb_ibKBAG9vj31LuKE+f712W=7LFKA@mail.gmail.com>
 <457a91183581509abfa00575d0392be543acbe07.camel@perches.com>
 <CAKwvOdk4PRi45MXCtg4kmeN6c1AK5w9EJ1XFBJ5GyUjwEtRj1g@mail.gmail.com>
 <ccacb2a860151fdd6ce95371f1e0cd7658a308d1.camel@perches.com>
 <CAKwvOd=QkpmdWHAvWVFtogsDom2z_fA4XmDF6aLqz1czjSgZbQ@mail.gmail.com> <20200816001917.4krsnrik7hxxfqfm@google.com>
In-Reply-To: <20200816001917.4krsnrik7hxxfqfm@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sun, 16 Aug 2020 07:22:35 +0200
Message-ID: <CA+icZUW=rQ-e=mmYWsgVns8jDoQ=FJ7kdem1fWnW_i5jx-6JzQ@mail.gmail.com>
Subject: Re: [PATCH v2] lib/string.c: implement stpcpy
To: Fangrui Song <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Joe Perches <joe@perches.com>, 
	Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, 
	=?UTF-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>, 
	Eli Friedman <efriedma@quicinc.com>, "# 3.4.x" <stable@vger.kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Sami Tolvanen <samitolvanen@google.com>, 
	Vishal Verma <vishal.l.verma@intel.com>, Dan Williams <dan.j.williams@intel.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, Daniel Axtens <dja@axtens.net>, Ingo Molnar <mingo@kernel.org>, 
	Yury Norov <yury.norov@gmail.com>, Alexandru Ardelean <alexandru.ardelean@analog.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pO7oKfEA;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::c42
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, Aug 16, 2020 at 2:19 AM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On 2020-08-15, 'Nick Desaulniers' via Clang Built Linux wrote:
> >On Sat, Aug 15, 2020 at 2:31 PM Joe Perches <joe@perches.com> wrote:
> >>
> >> On Sat, 2020-08-15 at 14:28 -0700, Nick Desaulniers wrote:
> >> > On Sat, Aug 15, 2020 at 2:24 PM Joe Perches <joe@perches.com> wrote:
> >> > > On Sat, 2020-08-15 at 13:47 -0700, Nick Desaulniers wrote:
> >> > > > On Sat, Aug 15, 2020 at 9:34 AM Kees Cook <keescook@chromium.org> wrote:
> >> > > > > On Fri, Aug 14, 2020 at 07:09:44PM -0700, Nick Desaulniers wrote:
> >> > > > > > LLVM implemented a recent "libcall optimization" that lowers calls to
> >> > > > > > `sprintf(dest, "%s", str)` where the return value is used to
> >> > > > > > `stpcpy(dest, str) - dest`. This generally avoids the machinery involved
> >> > > > > > in parsing format strings.  Calling `sprintf` with overlapping arguments
> >> > > > > > was clarified in ISO C99 and POSIX.1-2001 to be undefined behavior.
> >> > > > > >
> >> > > > > > `stpcpy` is just like `strcpy` except it returns the pointer to the new
> >> > > > > > tail of `dest`. This allows you to chain multiple calls to `stpcpy` in
> >> > > > > > one statement.
> >> > > > >
> >> > > > > O_O What?
> >> > > > >
> >> > > > > No; this is a _terrible_ API: there is no bounds checking, there are no
> >> > > > > buffer sizes. Anything using the example sprintf() pattern is _already_
> >> > > > > wrong and must be removed from the kernel. (Yes, I realize that the
> >> > > > > kernel is *filled* with this bad assumption that "I'll never write more
> >> > > > > than PAGE_SIZE bytes to this buffer", but that's both theoretically
> >> > > > > wrong ("640k is enough for anybody") and has been known to be wrong in
> >> > > > > practice too (e.g. when suddenly your writing routine is reachable by
> >> > > > > splice(2) and you may not have a PAGE_SIZE buffer).
> >> > > > >
> >> > > > > But we cannot _add_ another dangerous string API. We're already in a
> >> > > > > terrible mess trying to remove strcpy[1], strlcpy[2], and strncpy[3]. This
> >> > > > > needs to be addressed up by removing the unbounded sprintf() uses. (And
> >> > > > > to do so without introducing bugs related to using snprintf() when
> >> > > > > scnprintf() is expected[4].)
> >> > > >
> >> > > > Well, everything (-next, mainline, stable) is broken right now (with
> >> > > > ToT Clang) without providing this symbol.  I'm not going to go clean
> >> > > > the entire kernel's use of sprintf to get our CI back to being green.
> >> > >
> >> > > Maybe this should get place in compiler-clang.h so it isn't
> >> > > generic and public.
> >> >
> >> > https://bugs.llvm.org/show_bug.cgi?id=47162#c7 and
> >> > https://bugs.llvm.org/show_bug.cgi?id=47144
> >> > Seem to imply that Clang is not the only compiler that can lower a
> >> > sequence of libcalls to stpcpy.  Do we want to wait until we have a
> >> > fire drill w/ GCC to move such an implementation from
> >> > include/linux/compiler-clang.h back in to lib/string.c?
> >>
> >> My guess is yes, wait until gcc, if ever, needs it.
> >
> >The suggestion to use static inline doesn't even make sense. The
> >compiler is lowering calls to other library routines; `stpcpy` isn't
> >being explicitly called.  Even if it was, not sure we want it being
> >inlined.  No symbol definition will be emitted; problem not solved.
> >And I refuse to add any more code using `extern inline`.  Putting the
> >definition in lib/string.c is the most straightforward and avoids
> >revisiting this issue in the future for other toolchains.  I'll limit
> >access by removing the declaration, and adding a comment to avoid its
> >use.  But if you're going to use a gnu target triple without using
> >-ffreestanding because you *want* libcall optimizations, then you have
> >to provide symbols for all possible library routines!
>
> Adding a definition without a declaration for stpcpy looks good.
> Clang LTO will work.
>
> (If the kernel does not want to provide these routines,
> is http://git.kernel.org/linus/6edfba1b33c701108717f4e036320fc39abe1912
> probably wrong? (why remove -ffreestanding from the main Makefile) )
>

We had some many issues in arch/x86 where *FLAGS were removed or used
differently and had to re-add them :-(.

So if -ffreestanding is used in arch/x86 and was! used in top-level
Makefile - it makes sense to re-add it back?
( I cannot speak for archs other than x86. )

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUW%3DrQ-e%3DmmYWsgVns8jDoQ%3DFJ7kdem1fWnW_i5jx-6JzQ%40mail.gmail.com.
