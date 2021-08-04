Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZFDVOEAMGQEVRDSOGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id D21813E06E3
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 19:44:04 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id a14-20020a05651c030eb0290191f8d27e33sf610843ljp.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Aug 2021 10:44:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628099044; cv=pass;
        d=google.com; s=arc-20160816;
        b=BzlapNKxsintJVln/DDKfzsZ3ufvbDnH008hkh+S8L80YghPl++AwVeSKM7/troge1
         w2bxJMWlLMrsRsz3+DpWrJM0lb+JJHNhLs4lzqEXCi+4GK+TnJ1FHxL5Y/1fh4vjLsPh
         1i4nq0JcO83jLTsM0esMolV8Sl9MUxicvCKMceBeg3zVinubyuxtU2dGBTPQWDyJB5Zg
         80rfBpe135zmTBtT0sji3P/RPe1btljzfJRkTAVKyFwH2M/Lt8V9C9/eegjLbxr55xYr
         ZyU29bVj7qVXi2jkBuqUWcLCRVpzSbmuwBGwwVhL+RTqT/LaOEDolCnl0fQUyBFAZcoN
         Ku0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=lXXjGU03gI14SErNL2TXxe9beyxzGF4d5sgvNBw5nm4=;
        b=sPun/e36mXISGkvADIps04rm/YGdxu40yO1Q5eJ60clGaEQS6nosc/ESFaMqezJxyu
         n27TAiEeNVGkBrOdJYU2FrgY+EyKPYcGJ2TwLyiWvW1mYUwtfJixgst9ICkjpYVhAQtl
         ZicJnhfsKEZJsEz27V8ie3j9/WGaisyZRDbMpm0MbzJu/Zj+H/ASP4ajTFrfTqbYMPgZ
         wjqyVF4gg6SCy2f91Bm3U8vUI9d6jDhWctJ8RO0q/ZYAhYpGIA0hY1hqIeC8HtTnurxo
         EaLq5Qux+DGpHqGlruQ/FQpNejLt+Kzv/EPN2nvebe3OhsInLSxHkwDx0tLA66CVTwnv
         IDeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lH1AfSZl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lXXjGU03gI14SErNL2TXxe9beyxzGF4d5sgvNBw5nm4=;
        b=Orqhz+oZ52SsGkO9REPn64mhZUKAZcKVWXJ0G17jZA1PwsygXHJEPV+QXT8OQBnezt
         O4x74JDmVJkj+obx4qN6HPe/zbo78u2VW+8Qe/xh1pSvF3qC7aIY2nnoIFXH3o0GcCYV
         OjuClRmLzo9WHq/tDQS8Kfw8lQ64cyn/baLozZeXfSUoNW19vXUCbZ07XnwjYnmnwAvk
         UBDOhqRcGDvXD2C6FJVsWWYOVsyTJWS1OHc4m/2M7i7lok00dMCAWJMluhwy5q2WbfuI
         NpTkVw0HgDVyu5Nz/6+1G/3prynKSSRGvpmkZMkpsnPX5mCQMCYRIPy9I6m/2CITl2dv
         CFyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lXXjGU03gI14SErNL2TXxe9beyxzGF4d5sgvNBw5nm4=;
        b=RaBsnmEdbVWEuL1CCAnL/dm3jXa/8ykodMW2ZQ9ZrB3Wp9yWTHpxY2bHVTDuXyZrgX
         K6Ry5qbL4phd3HwSr09atRIwTczXVFYKQ7ozc2Nswj/lRq2PvhjBVMxX9uHnWNQYg+wz
         omQxPv9GYKqEiijeVLGOBDJ4YlS8+pVwUZtIt54EoGxGBqNkLZAl8EyyE/BXVpgInhxz
         f5td0tYRej2DhRRdR+T1C6ZFTfOGs1wAcqziH5rGG2GHzQwvyabyfNmxLW6Ld3XPqzbF
         WgMCvx1AAHAxzx+BFU7UzRxDdAomyawpRgZEMUTgPvDbbQPNywxSTsRj0m4KfboUfhAt
         veVw==
X-Gm-Message-State: AOAM532fB4mZjQBSHdScXwK6LyjpQi+xKgQPbDAi8BejsBXUceSvDrSb
	zWRR16vOanFaqSKWtROeN+s=
X-Google-Smtp-Source: ABdhPJycMDoJ1vkID/sh4ZEE7b2odygo3cKOKZFqiupJQiqcHWiVbI6YpD05SBqLhV0ndinXoWjM1g==
X-Received: by 2002:a2e:868c:: with SMTP id l12mr392822lji.134.1628099044403;
        Wed, 04 Aug 2021 10:44:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8612:: with SMTP id a18ls483892lji.2.gmail; Wed, 04 Aug
 2021 10:44:03 -0700 (PDT)
X-Received: by 2002:a2e:b81b:: with SMTP id u27mr360309ljo.345.1628099043295;
        Wed, 04 Aug 2021 10:44:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628099043; cv=none;
        d=google.com; s=arc-20160816;
        b=ubciRdTrNv9m8/GoBNXaQugzI4frZ2XQcz2urJAAM0znWYh/q+/Ceb8TSVg7QeSH76
         xeTnr6vHN3EVhsHt8+BBPwqqun+LVygIogfDyN+z6RAyQdM0j+yo5ZmgvFqqjKlQpa3Y
         bBjU/3LIxvwwspspEX5JoZB5DD1dFBcEbv7TV00z2qUKImxkn6nH88CKWRPaguZhIYuQ
         S3tJy5U4odOLuc0f44Ehhc+JzvJOFUhjfDjidTkxTzrwB7kP/2EkMG6TwSUivHG4MLD0
         ov5NjNJB02sHQSBPcrjZ8qBGLMpV9QHJ7wR2f/zMZS59HYOnShMrbXA4EeqjWKnXVGta
         gNmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZUstlCoh+2aM8Zpt2rSiAfcrFKDdb2fKerSE3mu7PMQ=;
        b=mlKOUqp92Ov+WZXdOE9Q/GlCjc8z5nip+bsDjjhDiQBCDr4zzLlHHasIwAmmQQHFXK
         o8ZB+FOnID2memW6Ils2e5BiWPlP2pGIBivxdnyOmuVfz6D2AuBy3TE3YaYPSyTqeqIu
         OI8jRM+3yu8cGz0GYNbkbDFooLtxaEgB5n2r0+MkuZK29dyUOLWXu1pC/Slq0tIDwK4j
         cOVPTZQURwJMbuSKNiQTPxTz6ZvUe1Z7kBLqqLijSkf1U20Kk8MxB8P2wf480FtD8Pir
         UNd1KkeqHfKtY1ogcbLdFfGmcLqMVQdbZ7h6K07GCUpFRDwhaWlPWNOWOh44bR9EABC/
         tv5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lH1AfSZl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com. [2a00:1450:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id i5si206824lfl.2.2021.08.04.10.44.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Aug 2021 10:44:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) client-ip=2a00:1450:4864:20::22c;
Received: by mail-lj1-x22c.google.com with SMTP id n6so3478426ljp.9
        for <clang-built-linux@googlegroups.com>; Wed, 04 Aug 2021 10:44:03 -0700 (PDT)
X-Received: by 2002:a05:651c:329:: with SMTP id b9mr399147ljp.116.1628099042748;
 Wed, 04 Aug 2021 10:44:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210802202326.1817503-1-ndesaulniers@google.com> <1847b77a-093a-ce59-5c3b-1a21d3bb66c7@kernel.org>
In-Reply-To: <1847b77a-093a-ce59-5c3b-1a21d3bb66c7@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 4 Aug 2021 10:43:51 -0700
Message-ID: <CAKwvOd=F_OexmHctcW6x7d6up8+zOb5-iLWU9-Ji1dv9-S3F+A@mail.gmail.com>
Subject: Re: [PATCH v2] compiler_attributes.h: move __compiletime_{error|warning}
To: Nathan Chancellor <nathan@kernel.org>, Miguel Ojeda <ojeda@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	Marco Elver <elver@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Will Deacon <will@kernel.org>, Sami Tolvanen <samitolvanen@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	Ard Biesheuvel <ardb@kernel.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Tom Stellard <tstellar@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lH1AfSZl;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c
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

On Mon, Aug 2, 2021 at 1:29 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On 8/2/2021 1:23 PM, 'Nick Desaulniers' via Clang Built Linux wrote:
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
>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
>
> One comment below, please carry my tag forward in further revisions
> unless they are significant.
>
> > ---
> > Changes v1 -> v2:
> > * Use __warning__ rather than warning in __has_attribute check, as per
> >    Nathan.
> > * Don't sort existing __GCC4_has_attribute_* defines.
> >
> >   include/linux/compiler-gcc.h        |  3 ---
> >   include/linux/compiler_attributes.h | 24 ++++++++++++++++++++++++
> >   include/linux/compiler_types.h      |  6 ------
> >   3 files changed, 24 insertions(+), 9 deletions(-)
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
> > index 67c5667f8042..fb08b843ab47 100644
> > --- a/include/linux/compiler_attributes.h
> > +++ b/include/linux/compiler_attributes.h
> > @@ -30,6 +30,7 @@
> >   # define __GCC4_has_attribute___assume_aligned__      1
> >   # define __GCC4_has_attribute___copy__                0
> >   # define __GCC4_has_attribute___designated_init__     0
> > +# define __GCC4_has_attribute___error__               1
> >   # define __GCC4_has_attribute___externally_visible__  1
> >   # define __GCC4_has_attribute___no_caller_saved_registers__ 0
> >   # define __GCC4_has_attribute___noclone__             1
> > @@ -39,6 +40,7 @@
> >   # define __GCC4_has_attribute___no_sanitize_undefined__ 1
> >   # define __GCC4_has_attribute___no_sanitize_coverage__ 0
> >   # define __GCC4_has_attribute___fallthrough__         0
> > +# define __GCC4_has_attribute___warning__             1
> >   #endif
> >
> >   /*
> > @@ -138,6 +140,17 @@
> >   # define __designated_init
> >   #endif
> >
> > +/*
> > + * Optional: only supported since clang >= 13.0
>
> Are you planning on petitioning for D106030 to be applied to
> release/13.x when it is merged into main? If not, this should be updated
> to 14.0.0 since that is main's current version.

Ah, I forgot the release/13.x branch was cut before I sent this.  I'd
rather this feature "ride the trains" so that it gets more soak time.

Miguel, would you like a v3 updating the comment above (and the
comment below) to s/13.0/14.0/g, or can you simply fold that change
into this one when applying it?

>
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
> > @@ -299,6 +312,17 @@
> >    */
> >   #define __must_check                    __attribute__((__warn_unused_result__))
> >
> > +/*
> > + * Optional: only supported since clang >= 13.0
> > + *
> > + *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-warning-function-attribute
> > + */
> > +#if __has_attribute(__warning__)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DF_OexmHctcW6x7d6up8%2BzOb5-iLWU9-Ji1dv9-S3F%2BA%40mail.gmail.com.
