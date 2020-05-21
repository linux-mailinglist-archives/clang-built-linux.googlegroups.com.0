Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQ6FTP3AKGQEDIVH7EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 511D11DD829
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 22:21:24 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id u190sf3400777vke.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 13:21:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590092483; cv=pass;
        d=google.com; s=arc-20160816;
        b=mY2XMbQsYgd1Ce8zNvKXrc7pEsY5/kDX1N5aB3W9HXJrvuMgZ0uSHhTHZvO5HOoI9y
         /I+S61Rrq4RP+SC6oF9+ScfXAGcWi6MiFvSN9G5Ls1LZePqBNo+KuVzB6tlayCUMCi/K
         rOu3xTjiihhTEhPAZvxOuyOgtov+bNyKGddbmZk2WIUauuQ0cymLmOzMMfqlZVEI4HmW
         osmOOjNth2sKdHMJBESV3RMTI6EPUJQWhJxnYjQbRo9lAIJ7efw7dCkFLNa0bp+a1Osk
         m9a9Mav6Rz14XoxJn68OQ+zGTqvv2Y07jC+1xg31StoeRir0o9FRDjK1KZr+nrywIwWk
         UfJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8U7OLkq0VlCMLMvFWkB/KQLYOlACQYW81olOK/e3YVM=;
        b=sUF4inoHF2D2MeyINYxajFqVN7cyWrjYbeVntkE3qG7A6PtJsxSJ0rUeLECa3hKxL+
         fbZyjbVj+BKjFDl0k4EO5Vh7g7fYeAXDes0WH1DpKHhpcwAJTy9dDD8uNhREcIWX1tri
         eYC0Zr0zQA/5FTZaFNy+EUWzQ8uFyY1CAhiVRzO2Vt0Jcm9N9sBkKrQhvKGgkr3y8efh
         fD63EWyqEHdSBwxQQ3wIVS+JK4Ya5t8h/aRDyA7E7EocgggNW2bt3CN8ME5PJg9tDuVA
         GknPIANx6dOR9gUDOoz/GnaMoQp/3f1qN/uDkl/W1OIkf+X+d9qJvnpgJ8tkPAyhPEza
         zeKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e0O+txBU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8U7OLkq0VlCMLMvFWkB/KQLYOlACQYW81olOK/e3YVM=;
        b=my9LalU2BnZwgQLJSQKvgxt0+T900eoy6KYsF77QJjPxA/0cA1jpOwy7UDxMWzWncx
         NKLlp91X9YRGQrB+Qo/B3smzkdVRdQjKvk88yUV+IxqKCzUjSVVXlQ96254xpLGkgpOR
         vgKUlIfjlPEhaxgVf3cb6/ANOT1n5MS0hAl8kVtjXZ9ZMMmHT+wvO8wzOmB5uvcr2ynq
         IBlgHVa476eUw167nitMwy2FpshHD3dzdUUtG62PqhgjRdzjBSDgYcJA4kBTwPHhSCK+
         sR6Stc6OseRBKPSm7jBInivUBFdNmwE26yKnLWd7OD0mGKbWk3vcygzNX7TsKQ8zKMEg
         GMHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8U7OLkq0VlCMLMvFWkB/KQLYOlACQYW81olOK/e3YVM=;
        b=g5J02VNjZAuzomNAMFpixceUcF+ZlxWZvGFbWtB2QFFYIuhIpYUTzU3ao+cHuartRU
         ZMT0JIByD2QDWMUTs0c3kyIhgXE7njoC8zRfOvzM1gQL0SvE7CmSV6anJwEJOYw6HT+k
         QBhqpCwp+0iDXkIdeTpHGbfVuws2gix2Y4AdY38G1Y1V6H7IXw/H2gW1fUDWFkqgZDUY
         7EyL/qLk82fbf1BPfeJjAseuaDAZDMCQVc3dfWIt5gc36Q9SbmgPqEEkVN3pnbEBq/sh
         3nK+LuC/eChzBis7bkr5XVv6g07QgXcQmHp3BKpEySGirQX2l90bDc1msuGiaclq3H5l
         2H4A==
X-Gm-Message-State: AOAM533iwmcuYzY47HQvZ6I/du/P+iwvHJ0yrABj3ooSLQzqm1ajImf2
	XtZDaOM/iySRoZnzKiy2JzQ=
X-Google-Smtp-Source: ABdhPJwy++r/Mnc3Q2juN5LZPhl7/ejFjFRYX7Y/8Tp9bpEq0N6ks9Pa+lv3MYUAkWr+wn13D/Akdw==
X-Received: by 2002:a1f:ea06:: with SMTP id i6mr7532110vkh.36.1590092483167;
        Thu, 21 May 2020 13:21:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:9c1:: with SMTP id g1ls405763vsi.0.gmail; Thu, 21
 May 2020 13:21:22 -0700 (PDT)
X-Received: by 2002:a67:ee46:: with SMTP id g6mr9015775vsp.23.1590092482785;
        Thu, 21 May 2020 13:21:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590092482; cv=none;
        d=google.com; s=arc-20160816;
        b=sHfnPwbcA5sGs5oomxyuqa4e+LQAsdD5wcsPoWNKlxdIOizq3OSVTqNCsreXhtj7Ix
         hnHSrs4LHZ5tFlDhfYTE9pH7lCLciZCZLEMVMat0VZn8okgIFEivcU91wI0hPE0GWpox
         e+lKOS8PztP6VmxwdyuQ6oZT3VexnVWzAIvLjgz1feJ9p0dMmm7xJXw1IQ7lR2a6+16x
         izsfGb4rxkXNIT1Du2RrVSjrjzuh3AIfsuD8naQqJVztWkEpsmWc+VWkHviy3ni8eLTe
         oxdkIxy6uryIekv2gWwogCaYmZl9JiCDL/XOy2hWg0zj36xxGIb2sUrk7h8YbEKCMslM
         2l0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Y0yJ3RFZMM+B9sO1n4irEzcjxiMNA5r+ntERLJo+fSQ=;
        b=ckUQCXMyz24yaZn3FqcpKWiIlzEiEXYdOkd6cxD+yv3Szwo3+zPspUmEEd1PJu5H7M
         QXq9z1A2pbdeB1HX6kJJ7RneL68ElwCdkUu9Xt6cksrIQmeKhwraQYQocPVUqr4Gxtmb
         9Z9/aE0pt4S/i9TTfwhMfqTHB8bYoA8g/eN/ng5/ZCw4qkqpCZqSAFWG4abY0XSCKDDz
         0L9y5ys4xKg75ZkXvd8KEERY0WyAojwZ7eowtF8GsOvulm0lasCd/8cCY/N8UyVM8aDm
         ufEVUZF4y/oYtsfCA1Bh+TivYvLonr0brfR4y6KWfnvGv4yNPKmom8Vwlz5O2Nk6P/31
         DSsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e0O+txBU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id a126si276365vsd.2.2020.05.21.13.21.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 13:21:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id 145so3954258pfw.13
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 13:21:22 -0700 (PDT)
X-Received: by 2002:a63:d010:: with SMTP id z16mr10089185pgf.381.1590092481542;
 Thu, 21 May 2020 13:21:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200521142047.169334-1-elver@google.com> <20200521142047.169334-10-elver@google.com>
In-Reply-To: <20200521142047.169334-10-elver@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 21 May 2020 13:21:09 -0700
Message-ID: <CAKwvOdnR7BXw_jYS5PFTuUamcwprEnZ358qhOxSu6wSSSJhxOA@mail.gmail.com>
Subject: Re: [PATCH -tip v3 09/11] data_race: Avoid nested statement expression
To: Marco Elver <elver@google.com>
Cc: "Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Will Deacon <will@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@alien8.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=e0O+txBU;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Thu, May 21, 2020 at 7:22 AM 'Marco Elver' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> It appears that compilers have trouble with nested statement
> expressions. Therefore remove one level of statement expression nesting
> from the data_race() macro. This will help us avoid potential problems
> in future as its usage increases.
>
> Link: https://lkml.kernel.org/r/20200520221712.GA21166@zn.tnic
> Acked-by: Will Deacon <will@kernel.org>
> Signed-off-by: Marco Elver <elver@google.com>

Thanks Marco, I can confirm this series fixes the significant build
time regressions.

Tested-by: Nick Desaulniers <ndesaulniers@google.com>

More measurements in: https://github.com/ClangBuiltLinux/linux/issues/1032

Might want:
Reported-by: Borislav Petkov <bp@suse.de>
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
too.

> ---
> v3:
> * Fix for 'const' non-scalar expressions.
> v2:
> * Add patch to series in response to above linked discussion.
> ---
>  include/linux/compiler.h | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> index 7444f026eead..379a5077e9c6 100644
> --- a/include/linux/compiler.h
> +++ b/include/linux/compiler.h
> @@ -211,12 +211,12 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
>   */
>  #define data_race(expr)                                                        \
>  ({                                                                     \
> -       __kcsan_disable_current();                                      \
> -       ({                                                              \
> -               __unqual_scalar_typeof(({ expr; })) __v = ({ expr; });  \
> -               __kcsan_enable_current();                               \
> -               __v;                                                    \
> +       __unqual_scalar_typeof(({ expr; })) __v = ({                    \
> +               __kcsan_disable_current();                              \
> +               expr;                                                   \
>         });                                                             \
> +       __kcsan_enable_current();                                       \
> +       __v;                                                            \
>  })
>
>  /*
> --
> 2.26.2.761.g0e0b3e54be-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521142047.169334-10-elver%40google.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnR7BXw_jYS5PFTuUamcwprEnZ358qhOxSu6wSSSJhxOA%40mail.gmail.com.
