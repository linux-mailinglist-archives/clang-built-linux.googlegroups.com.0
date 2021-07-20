Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHXR3SDQMGQERCGKDHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 885843D036C
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 22:57:03 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id e9-20020a2e98490000b029018c799ba37bsf62095ljj.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 13:57:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626814623; cv=pass;
        d=google.com; s=arc-20160816;
        b=HPGpdFbTwnMBky5QgUU5kVf6LcMoxHH7X2zGgLTG902Kn9utL3SzRH9yhwQyBWlkES
         a9PqMYFSk3i9Q6mGN8h6m2c5pS+tVLMvAjkkrv1WQZ2J1qPGjL/zoElVj97spggC2E2M
         H5EdX4IIjGf54nEVgwwEJ39HCDGIlklgzbyx2hqOip5o5eATQVDsIA8ZqqEG539MJMMa
         U/1Ua78QorimGESQ5YSTYkKebki/3tKOh2dTGSChxSpvQs3zzI9KwjrUaIa4AKoC33sV
         oCcbU6b6Fg/3eymjG6oEx6QjgjQZ7xP6ngAIeU8zvyVuYXddAG4PH+4txpPLz0w8mFaY
         /iqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=HTBUvN26Id3NZO9MPEhNgnhpdx/kKDB3grzeA2jPBuY=;
        b=BATBG8fXDxkl3bT0JaW0SsmRpuB1LuVVrAw1fJR6wEUdznE0g1cUJ6cshnpwst9UdK
         +ZdpfxYNDY6Ecv8KHovpq+RA/uTx0JyVuRfy0EdLlcZWwFhDdq8cD3kJ3iQyYjc5PHWJ
         jykOH7cZ6RznUYM4x9V075Vc8aj47h4uOBxsKJLM0MOqxpfNlzvWxXZBxaKWT7eoeCNL
         ctQVQHSIgW4v44QiMPEwr2x9p7Ud8XMbAGLQJcyB/JJh9MOE2VnTvMfD/m9SLR+uESXW
         g2QsS2Jf+Fb8CcOHj4FdqZymZbrWKUAsD0OACJyqRidhcf0QEqtO4O9BmNJbseisgLof
         wRmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A5CJjufG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HTBUvN26Id3NZO9MPEhNgnhpdx/kKDB3grzeA2jPBuY=;
        b=fJTyhq4APU5AAOnB3uVGG9v4hBSN+Q42adA5aX9J2P7bhiwgntU6FRewnmyu2aR3OC
         eUci1rd/6fYUtl+UI5u+hO+Qjaid3QzJYnvjf7q2DuF2NJPXqnW/dRd0SzT6gpptlm7a
         3X03D7iTYQMfa6Jf3yJ641MLLa95bdXWdvrtkLTA4C5HerQ6e/v8E6zIUvj9Gw/s+TRO
         6HFXjWMH6HV9Wvx7NAcwrcJvrGoCdK2XS6U68S0/jEIz8JIlecsKPIKfhtQPnP8Eg215
         ayC1rSXno14Nr1pOkugXy8IPddHweRrKhPHv2KxEf1FvUjBTLcEld6KCQ6ksqHIWk356
         PVUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HTBUvN26Id3NZO9MPEhNgnhpdx/kKDB3grzeA2jPBuY=;
        b=iT1e3d2zIyk1we/5UW3XrgI4yMW4QSQAwH2XTsMtm21NsyPP/NGetQ92m4P9Q8SpOq
         tK1sP0LrtOZQ2Up+xIfbkrgtqS4GTJXd3zv+Q5AW7kOohccbKVrgJGGRWybqzkmu5tDU
         im5mI9gZ7rtAMQGFobNnwrB4+PeccfPmfHizUui7oIfnCrq1cfqNcujjyL3uAWxEioWi
         /e9qhYO5iZ2ySbj+iX+IAMPdAeNxDOpvT/DMmHwFi9C/JT6maMGuG5gNiFZINHN07GII
         Gx+HuPcrXNj2UVEASy4spFpK+Jaq/3xOsAQxLJDJL+pMekkUJH//9XutEmdS9C9gIysC
         l32Q==
X-Gm-Message-State: AOAM530G2Asx4YHbLtZhW62oLLHrS0VqmHOeMsuEeA5QVd/CbXB/AHLQ
	Ea24p7MvPcdqK9VgnRAqvsA=
X-Google-Smtp-Source: ABdhPJyWeaALI6B0E/mIm50zTWH3eg0xyGVqKYNJD4MMfa+UUXyX8Wg8Haz/VGteh7vPBCXrSXoQwQ==
X-Received: by 2002:a19:d609:: with SMTP id n9mr23328309lfg.198.1626814623129;
        Tue, 20 Jul 2021 13:57:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b171:: with SMTP id a17ls2096132ljm.4.gmail; Tue, 20 Jul
 2021 13:57:02 -0700 (PDT)
X-Received: by 2002:a2e:9a09:: with SMTP id o9mr28605528lji.473.1626814621967;
        Tue, 20 Jul 2021 13:57:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626814621; cv=none;
        d=google.com; s=arc-20160816;
        b=ak5Y5s5zZWvPHK6W7EB85DBiM54cWbo1R0lo02p/aICz/FbReIONDfGXSj9NyMqIZI
         2I7WkLqus3sdDWkEO1wlD+yE5h6VMx9jDK2QYMoxqmdbxB+Cd/epDibZ4Lz7SC/3Ewil
         g088fx6Xo+Ml2mOXS97Skb9ZcOChEfzodeNsLWq2z+q8IxOG1PQ8qmHCV2WdWDJMf4us
         9UorPzQBQEjewG4OB3lIRNbrFvajPr548TZMkrlkAm+FEPUTA0BDdWDp1XcZ2JKz7MWE
         Xo7y7DXTTbsOt9xLaZ3n2wTpzeh1qd2QPjcnIfTWFtTw0drk4i0NsczaThwlKLtT1yha
         Hlkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lGJYYazS743AEBk88eE6aQ56aSrR7u08nsjaB6UbOnw=;
        b=IRfGUrxj34JWohMBPOOgGzPUMJmuivpy2ub6+FdwmlWNOBWyhzS4OtwlzVdJRiUXcZ
         XD213rsUjO3mopOhYDpd63m5QTxzsBz7mU1kjPY+BWZpc2/7E7xlHdu1dxWFkNt8J5q6
         a/ZezMI4avxtsrbxxTMyVLbbjFRXTeosmw7QfkUa/7PbcDdzJlfIrZ1C5QVZCZ9wvnQa
         SbtpOTuNX8yL5jti3iRC1Lyf0Ayy68JgmPSxnnqdL7njv2V9NyHMueV/0pdWq+ZJp7P7
         YTCiEy+yE3OtbkW9HBo367HNprmin0t1uMWSNaAJpGSCM77gNAm0AFBNowYv0T9tG4bh
         1XCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A5CJjufG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com. [2a00:1450:4864:20::230])
        by gmr-mx.google.com with ESMTPS id v1si875622lfg.13.2021.07.20.13.57.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 13:57:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) client-ip=2a00:1450:4864:20::230;
Received: by mail-lj1-x230.google.com with SMTP id h4so158965ljo.6
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 13:57:01 -0700 (PDT)
X-Received: by 2002:a2e:a784:: with SMTP id c4mr3189657ljf.479.1626814621392;
 Tue, 20 Jul 2021 13:57:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210720180441.2893919-1-ndesaulniers@google.com> <7c7d1639-7997-265e-aa77-ebe3d2fa05e6@kernel.org>
In-Reply-To: <7c7d1639-7997-265e-aa77-ebe3d2fa05e6@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Jul 2021 13:56:51 -0700
Message-ID: <CAKwvOd=Lh4mLjcNKLn_-s2249zpuEY_ijC6sijRY9QaWSNVvYA@mail.gmail.com>
Subject: Re: [PATCH] compiler_attributes.h: move __compiletime_{error|warning}
To: Nathan Chancellor <nathan@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Kees Cook <keescook@chromium.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Marco Elver <elver@google.com>, Will Deacon <will@kernel.org>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Sami Tolvanen <samitolvanen@google.com>, Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=A5CJjufG;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230
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

On Tue, Jul 20, 2021 at 12:07 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On 7/20/2021 11:04 AM, Nick Desaulniers wrote:
> > I'm working on adding support for __attribute__((__error__(""))) and
> > __attribute__((__warning__(""))) to Clang. To make use of these in
> > __compiletime_error and __compiletime_warning (as used by BUILD_BUG and
> > friends) for newer clang and detect/fallback for older versions of
> > clang, move these to compiler_attributes.h and guard them with
> > __has_attribute preprocessor guards.
> >
> > Link: https://reviews.llvm.org/D106030
> > Link: https://bugs.llvm.org/show_bug.cgi?id=16428
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1173
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> > Note that this feature hasn't landed yet in clang! I expect it to land
> > in clang-13 though soon. We can still move this in anticipation of the
> > feature landing, though perhaps the versions might not be precise if it
> > slips to clang-14 (though I don't anticipate that).
> >
> >   include/linux/compiler-gcc.h        |  3 ---
> >   include/linux/compiler_attributes.h | 30 ++++++++++++++++++++++++++---
> >   include/linux/compiler_types.h      |  6 ------
> >   3 files changed, 27 insertions(+), 12 deletions(-)
> >
> > diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
> > index cb9217fc60af..21c36b69eb06 100644
> > --- a/include/linux/compiler-gcc.h
> > +++ b/include/linux/compiler-gcc.h
> > @@ -43,9 +43,6 @@
> >
> >   #define __compiletime_object_size(obj) __builtin_object_size(obj, 0)
> >
> > -#define __compiletime_warning(message) __attribute__((__warning__(message)))
> > -#define __compiletime_error(message) __attribute__((__error__(message)))
> > -
> >   #if defined(LATENT_ENTROPY_PLUGIN) && !defined(__CHECKER__)
> >   #define __latent_entropy __attribute__((latent_entropy))
> >   #endif
> > diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
> > index 2487be0e7199..5f474b593425 100644
> > --- a/include/linux/compiler_attributes.h
> > +++ b/include/linux/compiler_attributes.h
> > @@ -30,14 +30,16 @@
> >   # define __GCC4_has_attribute___assume_aligned__      1
> >   # define __GCC4_has_attribute___copy__                0
> >   # define __GCC4_has_attribute___designated_init__     0
> > +# define __GCC4_has_attribute___error__               1
> >   # define __GCC4_has_attribute___externally_visible__  1
> > +# define __GCC4_has_attribute___fallthrough__         0
> >   # define __GCC4_has_attribute___no_caller_saved_registers__ 0
> > -# define __GCC4_has_attribute___noclone__             1
> >   # define __GCC4_has_attribute___no_profile_instrument_function__ 0
> > -# define __GCC4_has_attribute___nonstring__           0
> >   # define __GCC4_has_attribute___no_sanitize_address__ 1
> >   # define __GCC4_has_attribute___no_sanitize_undefined__ 1
> > -# define __GCC4_has_attribute___fallthrough__         0
> > +# define __GCC4_has_attribute___noclone__             1
> > +# define __GCC4_has_attribute___nonstring__           0
> > +# define __GCC4_has_attribute___warning__             1
> >   #endif
> >
> >   /*
> > @@ -137,6 +139,17 @@
> >   # define __designated_init
> >   #endif
> >
> > +/*
> > + * Optional: only supported since clang >= 13.0
> > + *
> > + *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-error-function-attribute
> > + */
> > +#if __has_attribute(__error__)
> > +# define __compiletime_error(msg)       __attribute__((__error__(msg)))
> > +#else
> > +# define __compiletime_error(msg)
> > +#endif
> > +
> >   /*
> >    * Optional: not supported by clang
> >    *
> > @@ -298,6 +311,17 @@
> >    */
> >   #define __must_check                    __attribute__((__warn_unused_result__))
> >
> > +/*
> > + * Optional: only supported since clang >= 13.0
> > + *
> > + *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-warning-function-attribute
> > + */
> > +#if __has_attribute(warning)
>
> Should this be
>
> #if __has_attribute(__warning__)
>
> ?

Yes. :-X

>
> > +# define __compiletime_warning(msg)     __attribute__((__warning__(msg)))
> > +#else
> > +# define __compiletime_warning(msg)
> > +#endif
> > +
> >   /*
> >    *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-weak-function-attribute
> >    *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Variable-Attributes.html#index-weak-variable-attribute
> > diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> > index e4ea86fc584d..b6ff83a714ca 100644
> > --- a/include/linux/compiler_types.h
> > +++ b/include/linux/compiler_types.h
> > @@ -294,12 +294,6 @@ struct ftrace_likely_data {
> >   #ifndef __compiletime_object_size
> >   # define __compiletime_object_size(obj) -1
> >   #endif
> > -#ifndef __compiletime_warning
> > -# define __compiletime_warning(message)
> > -#endif
> > -#ifndef __compiletime_error
> > -# define __compiletime_error(message)
> > -#endif
> >
> >   #ifdef __OPTIMIZE__
> >   # define __compiletime_assert(condition, msg, prefix, suffix)               \
> >



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DLh4mLjcNKLn_-s2249zpuEY_ijC6sijRY9QaWSNVvYA%40mail.gmail.com.
