Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGVH4H4QKGQEKAFTTSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id C543A2451E5
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 23:28:59 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id k20sf7643204iog.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 14:28:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597526938; cv=pass;
        d=google.com; s=arc-20160816;
        b=wzdrtDdhXuPctmJcqw6FNSN4IaHOelSEg1i+fHBOmJjAsP6m0LiQBc9802UaruBh0h
         /HQQ3UKsh37BgU9DoCK6bDIfNZuTLSi3w9QaYiAiKo2oeSZIvn6zmz9Bf2bZ23sJcQRQ
         IA5CeMQwxkFSyWNNXG6HJAKNqTR5l/kL7KtCY6wkoZPoOtsGtOpwDu9gHWdiDuEJYGEM
         pWzBbW8X2mXKAjvkQeiz1La4AeMrB16lkRn/16QiakXbBDg/YHm89m9qo/MtT3PZSf0H
         5v4wUHmyiZofLj3nI+L/tWmGUPDbdbVtuWitkfKJt+/9d7iSVE9JD1SpauP3L2FMM+Qq
         3K+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4teRNnAihYigL7vnvNbRxKtrxz/+I7o1VZvQIR4DzY8=;
        b=UT1mBKRFrHpVPw5hvHI3zq1a5qn8ZBrW7VjmfoxTviFT/EksldltZcjmGJTkTpPITx
         3pt6cO71LVve1vGzFy5jlm8pXeDBiOX0lnPxuJVwjOJiuW7tNS3psOEVzKBoZ/kaPCma
         0v+1lAiha8QpXR7suAzU8Gj5cFoq1lE1cX2RJqiZjgmSoqzW4HLvVBmWSWMQFUMQ3x3F
         6fj3KJwH5iQRaXty8lAcKzSYlMxDS5POJmaAkf1IONkaHuw2jUJEZjjvj5pMKKNgKIwZ
         pgPYGbtXgFtsO7ahD0waBT0h1gB5S/GmuOTZyujQbPdh/uZBeJLCbLILHr1CU1OucyB2
         /Ojw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LMUYZSyi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4teRNnAihYigL7vnvNbRxKtrxz/+I7o1VZvQIR4DzY8=;
        b=rL80XSBWPXuaRp3ZvchQI5xHGDO+MKCuvaLo4nhsEkRbRCOugENP9tFVbUC9/mRBK9
         Q+gIBtxfzXVZKWRs69sqWl+iU2erNAFdDF/3fQWmSekXpvvVxr6Rpne/25r+m9On5Rt6
         E72zUNST96VAOgp3GmTP4nuRjgMqIN96qZMu/JZXybU+qNlsDW/SQ19ESgr6iNffSPin
         t2POnA9TRsBAkzJQLijflfIUnmOKuuDTp3pLjcltHE+XMV7gYnOc9UQhkxw/Oqj/gVh3
         MnVxD3cswuqjkMnGp/bHrgpDW9WPs7oUYYmtJSOJMiJkBrEyrwIuHwJzQ+v4lvbYJfKJ
         8luA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4teRNnAihYigL7vnvNbRxKtrxz/+I7o1VZvQIR4DzY8=;
        b=c8tagqk+lkuoPYxN+ME8CqIkoWFO11RMGXlIfMRk52HJEo0VpWxM9IDcghUKy3EDRf
         s31yBwqcftjkMyj4mdbVnJxEsG8iIN+XorDmwTwtYMwT5JGuqFzOjEj3b9cG0nLphXoM
         /80lAqpM6RqHEV7YcEwiou8zvTLVRNCRIp3YEPoJbWvRybGRx8lIQV0LdFPPhqi4bfFd
         NWXxXjRGGrj7uv9bQy8r9ky3PfqZKOrPSFmbYcpw9DIbqs+2dR6g1WaaEFClJz2fmUtM
         D4uaeL1xUB4joBcremn50U9M7GxwPuFMaDCTu6ZZA+s58OqhUuBoXvCxExRE5wvBkjnT
         pXYA==
X-Gm-Message-State: AOAM5332WAP5oA79tsnRs5lDYpSDgwvzbbDyVql2e71pBXeCCiu4Kus1
	rRwSbbjV7Co5UQumPaVYBPc=
X-Google-Smtp-Source: ABdhPJxp554Ch8MEXGxauoaqIqiKzLng88jgMM6UQ67AM+qZM30Kk4Liqt81PuRGMzxg612Hx8a3DQ==
X-Received: by 2002:a92:9f97:: with SMTP id z23mr7605423ilk.152.1597526938734;
        Sat, 15 Aug 2020 14:28:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:100a:: with SMTP id n10ls3126081ilj.11.gmail; Sat,
 15 Aug 2020 14:28:58 -0700 (PDT)
X-Received: by 2002:a92:4989:: with SMTP id k9mr8212309ilg.177.1597526938467;
        Sat, 15 Aug 2020 14:28:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597526938; cv=none;
        d=google.com; s=arc-20160816;
        b=RREhidl5q4hLsiJvqx37xEe/sx8jdpPbHP3nqAsHFNEjyMFOF+jmZ6/9Q/D2r99i6N
         8m+8HIY7sECw/N1HoMhdlJO/CIoADgJszSWkv/VZcaPCu5xo31+arR8svn4UB40DVsvQ
         KXG/jzDXHsg4YvGNVJhA8hpjSCvNl9nHEF8LSHtyRA6Nh5HPuubIkOR//uySQy7xLTfJ
         YHM77skcyZwRzX+2rjTO2WkdR4nwIKHFy2iWoIwdWUXPffJWXX7UG0EGzOdEFjN+wlKx
         wqZrQ2EF1IHSXHnvejn27OJbswkyf36Bx6KI2hJdIdGuKqondM+BXFFjY68WBuRpR3J+
         yKIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yDB2cu8uvw5o4FJBQyga65heRe+0KnSxhoCkr4blEbk=;
        b=HQP6X/p0QMWdNsLK0MDDi2n+Y6DdxQWq6mEbEgMMP/10EPbfOl1PVhgE51XG0j1ZsU
         Qpy3l9yS28zOP9TeHlZFgInKfIIrsUVuUsnv99eilwh8Een8YadcoEI35XtIsINEbFo5
         eRICTmoHs1ddU5rEvYUI9lJfHklI6OIUcq+mFZ3Vw9g4rn7A0cUyXXo9+m+6O9zg3v7/
         pmN5HCFeFhyX9GNAfiJLstz2ZuiCkWe6Wr8prfdBJUROhycnJEBcGGXy6x6T3nWotiNA
         CRkb21LpSaxNGl/kly8/DRMufF1ouYn0KMHLL9FPN3nynJccqsittnoP3iRsn2JtWTy8
         6MzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LMUYZSyi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id y21si797980ior.2.2020.08.15.14.28.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Aug 2020 14:28:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id j21so6170395pgi.9
        for <clang-built-linux@googlegroups.com>; Sat, 15 Aug 2020 14:28:58 -0700 (PDT)
X-Received: by 2002:a63:7d8:: with SMTP id 207mr5780004pgh.263.1597526937591;
 Sat, 15 Aug 2020 14:28:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200815014006.GB99152@rani.riverdale.lan> <20200815020946.1538085-1-ndesaulniers@google.com>
 <202008150921.B70721A359@keescook> <CAKwvOdnyHfx6ayqEoOr3pb_ibKBAG9vj31LuKE+f712W=7LFKA@mail.gmail.com>
 <457a91183581509abfa00575d0392be543acbe07.camel@perches.com>
In-Reply-To: <457a91183581509abfa00575d0392be543acbe07.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 15 Aug 2020 14:28:46 -0700
Message-ID: <CAKwvOdk4PRi45MXCtg4kmeN6c1AK5w9EJ1XFBJ5GyUjwEtRj1g@mail.gmail.com>
Subject: Re: [PATCH v2] lib/string.c: implement stpcpy
To: Joe Perches <joe@perches.com>
Cc: Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, 
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
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LMUYZSyi;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Sat, Aug 15, 2020 at 2:24 PM Joe Perches <joe@perches.com> wrote:
>
> On Sat, 2020-08-15 at 13:47 -0700, Nick Desaulniers wrote:
> > On Sat, Aug 15, 2020 at 9:34 AM Kees Cook <keescook@chromium.org> wrote:
> > > On Fri, Aug 14, 2020 at 07:09:44PM -0700, Nick Desaulniers wrote:
> > > > LLVM implemented a recent "libcall optimization" that lowers calls to
> > > > `sprintf(dest, "%s", str)` where the return value is used to
> > > > `stpcpy(dest, str) - dest`. This generally avoids the machinery involved
> > > > in parsing format strings.  Calling `sprintf` with overlapping arguments
> > > > was clarified in ISO C99 and POSIX.1-2001 to be undefined behavior.
> > > >
> > > > `stpcpy` is just like `strcpy` except it returns the pointer to the new
> > > > tail of `dest`. This allows you to chain multiple calls to `stpcpy` in
> > > > one statement.
> > >
> > > O_O What?
> > >
> > > No; this is a _terrible_ API: there is no bounds checking, there are no
> > > buffer sizes. Anything using the example sprintf() pattern is _already_
> > > wrong and must be removed from the kernel. (Yes, I realize that the
> > > kernel is *filled* with this bad assumption that "I'll never write more
> > > than PAGE_SIZE bytes to this buffer", but that's both theoretically
> > > wrong ("640k is enough for anybody") and has been known to be wrong in
> > > practice too (e.g. when suddenly your writing routine is reachable by
> > > splice(2) and you may not have a PAGE_SIZE buffer).
> > >
> > > But we cannot _add_ another dangerous string API. We're already in a
> > > terrible mess trying to remove strcpy[1], strlcpy[2], and strncpy[3]. This
> > > needs to be addressed up by removing the unbounded sprintf() uses. (And
> > > to do so without introducing bugs related to using snprintf() when
> > > scnprintf() is expected[4].)
> >
> > Well, everything (-next, mainline, stable) is broken right now (with
> > ToT Clang) without providing this symbol.  I'm not going to go clean
> > the entire kernel's use of sprintf to get our CI back to being green.
>
> Maybe this should get place in compiler-clang.h so it isn't
> generic and public.

https://bugs.llvm.org/show_bug.cgi?id=47162#c7 and
https://bugs.llvm.org/show_bug.cgi?id=47144
Seem to imply that Clang is not the only compiler that can lower a
sequence of libcalls to stpcpy.  Do we want to wait until we have a
fire drill w/ GCC to move such an implementation from
include/linux/compiler-clang.h back in to lib/string.c?

>
> Something like:
>
> ---
>  include/linux/compiler-clang.h | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
>
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index cee0c728d39a..6279f1904e39 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -61,3 +61,30 @@
>  #if __has_feature(shadow_call_stack)
>  # define __noscs       __attribute__((__no_sanitize__("shadow-call-stack")))
>  #endif
> +
> +#ifndef __HAVE_ARCH_STPCPY
> +/**
> + * stpcpy - copy a string from src to dest returning a pointer to the new end
> + *          of dest, including src's NULL terminator. May overrun dest.
> + * @dest: pointer to buffer being copied into.
> + *        Must be large enough to receive copy.
> + * @src: pointer to the beginning of string being copied from.
> + *       Must not overlap dest.
> + *
> + * This function exists _only_ to support clang's possible conversion of
> + * sprintf calls to stpcpy.
> + *
> + * stpcpy differs from strcpy in two key ways:
> + * 1. inputs must not overlap.
> + * 2. return value is dest's NUL termination character after copy.
> + *    (for strcpy, the return value is a pointer to src)
> + */
> +
> +static inline char *stpcpy(char __restrict *dest, const char __restrict *src)
> +{
> +       while ((*dest++ = *src++) != '\0') {
> +               ;       /* nothing */
> +       }
> +       return --dest;
> +}
> +#endif
>
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk4PRi45MXCtg4kmeN6c1AK5w9EJ1XFBJ5GyUjwEtRj1g%40mail.gmail.com.
