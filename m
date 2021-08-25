Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUP5TKEQMGQEJJ5B5MQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 51FDD3F7E16
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 00:06:12 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id w22-20020a2e9596000000b001ba46d9e54csf296401ljh.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 15:06:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629929170; cv=pass;
        d=google.com; s=arc-20160816;
        b=aGleTcnl7z6QBqb7xdXKcFCdNpL6br/k2S9F4Zj26HtWsYgM9XGImk7jaIVGPVLJ8O
         OM2+VBlmel6cfRarO/OTvoAMozTxYsP/suPQfuXsANHwZdb2Dq/MEnSGQszleBb7+2r8
         LPU4i3BQuVhS9xO/7CUSNOrCe3aYxcszqpOZv1H0kfMjqkHQ5JMlRYkb4hBsVOYSHhLV
         C9oHzRA4DK0VlXRZZWzU0IohO4tBRkX2lXL6uJAUJUTup9f79PmNY56DOzeDr0MPrFac
         FdlGcirdx+OkiZ5P2jNOdhB5zFhithfTmQuGePKf0BZImx3lm70zBBWfBsh2IN5bizn5
         67GQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xCjdnR9B2ylgXFMe5r+8FURki+myIyWtWicj8BJdXiw=;
        b=qj2CdFBJUhFnN2nNVtbm62OTMDPQoYGN+1txJ9jb0EyD1y2aBF0ZUTAtxzfKcSFbOO
         k6Pn+WPMoWQlulp8K8lEYkZuWGq76typnUvNZ83CDZ7Xab6XfvgehxSbigkUINkD80Z5
         16iCXJcj6EM91snCjOFCVrSKhsdXqoZcwRHBZ4Id8NKlcBF/H4akxUUONCJTBd7pZEUL
         vEHmDvMUq1AxtagebXw/QJjQzSdI4QKiu79w6P0kXEVIHVFXj/JeLELgN5BxRyotgYx+
         kOTPZBrz0Yu9VHvRovpjC1YhtkLZzkJgo37J5LyPK5BUZWYZmL2vI7RdO5AoY25GT+4+
         dZgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="IQRg/zOd";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xCjdnR9B2ylgXFMe5r+8FURki+myIyWtWicj8BJdXiw=;
        b=J8spI1XUEEpM0MJ4u+tiOB9dIkdzqZzoKqRnJaXlBTngHFkNPkmNtC/GjjVOA/rcOF
         D7Gpb9igcsDPPHWjjZiHt5GbfmIMMvQZGX/x9mM9adhu9I3Nfv0nP56C2JeVBVO6GphP
         U658Kp7te8Wl3Luwdp/0KFrc4IonEGI/teYsUpEKKQ0pFkqx5aWA/ZvOoTTcRZDSitel
         pVRBYxInNVXqKC1PkZl6U1EP5lSikPI1kOwC08LYyYk5xa2vJhFO/wSrl25OQKg5nFEQ
         Sqq82qUFufmrnJ+0LhogpgtG/iqs2GcnJel9vKE1pJUeHIq2ZhUJb206JtJ2YLDY1xdp
         3UyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xCjdnR9B2ylgXFMe5r+8FURki+myIyWtWicj8BJdXiw=;
        b=pCAILdmCmMoK4Tu9s03ZfYieR9lJc9excJigdqp5sT0gLYXSrBdkpajq0c880f/oJt
         5Rq61BK3cZ8tnBRQ3goyL2pf5dXRoF9RT+OzSZDDFo+Te1e4hOXqKNn9ieWQlRKH52+1
         hnKKOYaKieG88rEUzep3OO7T60XPjNRfuNsDHs9R/OQJuOjgu7G0v+7G7HkjtryVdBo0
         Fd/ydneKsQd/UBdvHWaBHmzSJ0FHImeKKif59sX1qed3RtOHkDC8OdczinP1WkG+WgOK
         E2fhituUBLyIQcsI+A08J0K7SJ2Pj1DFpXYSCYf3jhprxcBKUtVawB031r3QV2E3LJ2h
         heKg==
X-Gm-Message-State: AOAM533/HW0e72eYhZSdUJMVgBkzBFON8bqZ48VOqc5QwJRFMRFxspBM
	Jm4eVTA6nRjuoiItthgGMDc=
X-Google-Smtp-Source: ABdhPJzKTzXLWveuXj+7+0U47jzhIJxyLLjjV4m0nTTJFic1G23V1kBVZYoA4CVkvd1rRSkUVFHdzA==
X-Received: by 2002:a05:651c:985:: with SMTP id b5mr355573ljq.78.1629929170167;
        Wed, 25 Aug 2021 15:06:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4146:: with SMTP id c6ls2554059lfi.2.gmail; Wed, 25 Aug
 2021 15:06:09 -0700 (PDT)
X-Received: by 2002:a05:6512:3767:: with SMTP id z7mr235745lft.128.1629929169312;
        Wed, 25 Aug 2021 15:06:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629929169; cv=none;
        d=google.com; s=arc-20160816;
        b=Oe3NWQTVlgOHIlqXGMC189w79quvho/ooOdJl0PNLy0SqNs+y1y5OKGFg6qxiHeW9Z
         m6ESQAB8fthNNJKSe9dhwlUY4DRjAPDn4ksFzLXzANvUTzqScANzsbr5AhOs0U1CDFBD
         iTJLRQX20VC1htKExe5qlNlLyaUFOkooXZ6d6nwGSpgDsIrPpyPqbKP2cZi41YQEzZem
         ULYR/9bKUlTWCu2Y5+zW1lcEO+JX8GBhJrxdrAkokmY7c8VS54bW4mn4BGPz3HE5g3Eu
         kLRl8cMpxmTofA3CUksfeI0b7b989k9JCTfWEv+bvrLc/Y6tjFye93ehZ71SLO0FruRQ
         2fDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ccea3fIlNm7FUfA3rNUTcHdFf0+pm8m4+EKLNy1tSUI=;
        b=EqzaMAd8yy/mje151EZvWXNyhyMEuy53sX8VuScVx0Xo3Qy7e4n8F6gD2E5JZKiChw
         N5jKn2hMReF2KNPbE+QRT3yvVeACjndPgB2HejAilQM+WK3QcAHYnaMUZdqAisetgx8r
         C1lSZ+IMJZF3xEe/1YDWP+Ct0t4QzoplxWj1Cc0ZVzUOnePDk1RNRQjw9ny6sIJ6Jwrk
         3MvmOibkyyUquXhstBp01xA9gVSniLKelRYtHowG5iPBHzqOaGDlSXygEGSL6NBKk2dD
         kNFsAj/hoOF7JsxXGh9F9+qimokXZKFxumACyMnlQQZQ7ke357bP3dNyYmKJVXDP4O0f
         S3vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="IQRg/zOd";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com. [2a00:1450:4864:20::135])
        by gmr-mx.google.com with ESMTPS id g5si41241lfj.3.2021.08.25.15.06.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 15:06:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) client-ip=2a00:1450:4864:20::135;
Received: by mail-lf1-x135.google.com with SMTP id i9so1983840lfg.10
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 15:06:09 -0700 (PDT)
X-Received: by 2002:a05:6512:3991:: with SMTP id j17mr229922lfu.374.1629929168689;
 Wed, 25 Aug 2021 15:06:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210822075122.864511-1-keescook@chromium.org> <20210822075122.864511-20-keescook@chromium.org>
In-Reply-To: <20210822075122.864511-20-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Aug 2021 15:05:56 -0700
Message-ID: <CAKwvOdnrO+oagJEiBMmoHrhTJKSRwzb0DK=R_QdVjhiNzb34dg@mail.gmail.com>
Subject: Re: [PATCH for-next 19/25] fortify: Allow strlen() and strnlen() to
 pass compile-time known lengths
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	Daniel Micay <danielmicay@gmail.com>, Francis Laniel <laniel_francis@privacyrequired.com>, 
	Bart Van Assche <bvanassche@acm.org>, David Gow <davidgow@google.com>, linux-mm@kvack.org, 
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="IQRg/zOd";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135
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

On Sun, Aug 22, 2021 at 12:57 AM Kees Cook <keescook@chromium.org> wrote:
>
> Under CONFIG_FORTIFY_SOURCE, it is possible for the compiler to perform
> strlen() and strnlen() at compile-time when the string size is known.
> This is required to support compile-time overflow checking in strlcpy().
>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  include/linux/fortify-string.h | 47 ++++++++++++++++++++++++++--------
>  1 file changed, 36 insertions(+), 11 deletions(-)
>
> diff --git a/include/linux/fortify-string.h b/include/linux/fortify-string.h
> index a3cb1d9aacce..e232a63fd826 100644
> --- a/include/linux/fortify-string.h
> +++ b/include/linux/fortify-string.h
> @@ -10,6 +10,18 @@ void __read_overflow(void) __compiletime_error("detected read beyond size of obj
>  void __read_overflow2(void) __compiletime_error("detected read beyond size of object (2nd parameter)");
>  void __write_overflow(void) __compiletime_error("detected write beyond size of object (1st parameter)");
>
> +#define __compiletime_strlen(p)        ({              \
> +       size_t ret = (size_t)-1;                        \
> +       size_t p_size = __builtin_object_size(p, 1);    \
> +       if (p_size != (size_t)-1) {                     \
> +               size_t p_len = p_size - 1;              \
> +               if (__builtin_constant_p(p[p_len]) &&   \
> +                   p[p_len] == '\0')                   \
> +                       ret = __builtin_strlen(p);      \
> +       }                                               \
> +       ret;                                            \
> +})

Can this be a `static inline` function that accepts a `const char *`
and returns a `size_t` rather than a statement expression?

> +
>  #if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KASAN_SW_TAGS)
>  extern void *__underlying_memchr(const void *p, int c, __kernel_size_t size) __RENAME(memchr);
>  extern int __underlying_memcmp(const void *p, const void *q, __kernel_size_t size) __RENAME(memcmp);
> @@ -60,21 +72,31 @@ extern __kernel_size_t __real_strnlen(const char *, __kernel_size_t) __RENAME(st
>  __FORTIFY_INLINE __kernel_size_t strnlen(const char *p, __kernel_size_t maxlen)
>  {
>         size_t p_size = __builtin_object_size(p, 1);
> -       __kernel_size_t ret = __real_strnlen(p, maxlen < p_size ? maxlen : p_size);
> +       size_t p_len = __compiletime_strlen(p);
> +       size_t ret;
> +
> +       /* We can take compile-time actions when maxlen is const. */
> +       if (__builtin_constant_p(maxlen) && p_len != (size_t)-1) {
> +               /* If p is const, we can use its compile-time-known len. */
> +               if (maxlen >= p_size)
> +                       return p_len;
> +       }
>
> +       /* Do no check characters beyond the end of p. */

s/no/not/

> +       ret = __real_strnlen(p, maxlen < p_size ? maxlen : p_size);
>         if (p_size <= ret && maxlen != ret)
>                 fortify_panic(__func__);
>         return ret;
>  }
>
> +/* defined after fortified strnlen to reuse it. */
>  __FORTIFY_INLINE __kernel_size_t strlen(const char *p)
>  {
>         __kernel_size_t ret;
>         size_t p_size = __builtin_object_size(p, 1);
>
> -       /* Work around gcc excess stack consumption issue */
> -       if (p_size == (size_t)-1 ||
> -               (__builtin_constant_p(p[p_size - 1]) && p[p_size - 1] == '\0'))
> +       /* Give up if we don't know how large p is. */
> +       if (p_size == (size_t)-1)
>                 return __underlying_strlen(p);
>         ret = strnlen(p, p_size);
>         if (p_size <= ret)
> @@ -86,24 +108,27 @@ __FORTIFY_INLINE __kernel_size_t strlen(const char *p)
>  extern size_t __real_strlcpy(char *, const char *, size_t) __RENAME(strlcpy);
>  __FORTIFY_INLINE size_t strlcpy(char *p, const char *q, size_t size)
>  {
> -       size_t ret;
>         size_t p_size = __builtin_object_size(p, 1);
>         size_t q_size = __builtin_object_size(q, 1);
> +       size_t q_len;   /* Full count of source string length. */
> +       size_t len;     /* Count of characters going into destination. */
>
>         if (p_size == (size_t)-1 && q_size == (size_t)-1)
>                 return __real_strlcpy(p, q, size);
> -       ret = strlen(q);
> -       if (size) {
> -               size_t len = (ret >= size) ? size - 1 : ret;
> -
> -               if (__builtin_constant_p(len) && len >= p_size)
> +       q_len = strlen(q);
> +       len = (q_len >= size) ? size - 1 : q_len;
> +       if (__builtin_constant_p(size) && __builtin_constant_p(q_len) && size) {
> +               /* Write size is always larger than destintation. */

s/destintation/destination/

> +               if (len >= p_size)
>                         __write_overflow();
> +       }
> +       if (size) {
>                 if (len >= p_size)
>                         fortify_panic(__func__);
>                 __underlying_memcpy(p, q, len);
>                 p[len] = '\0';
>         }
> -       return ret;
> +       return q_len;
>  }
>
>  /* defined after fortified strnlen to reuse it */
> --
> 2.30.2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-20-keescook%40chromium.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnrO%2BoagJEiBMmoHrhTJKSRwzb0DK%3DR_QdVjhiNzb34dg%40mail.gmail.com.
