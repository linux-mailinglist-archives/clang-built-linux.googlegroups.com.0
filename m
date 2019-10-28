Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7FG3TWQKGQEWQ5P4TQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E38E75E1
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 17:12:44 +0100 (CET)
Received: by mail-wm1-x33c.google.com with SMTP id g67sf3323007wmg.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 09:12:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572279164; cv=pass;
        d=google.com; s=arc-20160816;
        b=L91tgxdEwD4YV8jdbajIr7jF3vjtonpuleaHh1YTDj/irUiINnnc5NRpE1G7omezm8
         xIOYXB+pg5dOpSDYbW0mDQrz2hg/ABxgKJaPSIYxK9NkfIfR5uankPcqgHsqfJ/SunFE
         Fhg57a5wKIoMtGTC8wIh21gBqdwnOHiimfDwCcsabG6QSYbu58U3LGKgDcJc/8xQGymN
         vNVWquo6UtF3qkHGxM7UJwdDcgdRRK7SY2WbpxwvCEvpezdmkZ9f/v9ryKnOfKf1MBbE
         tI7hY/sj/egIjFd0/iJs8a1Qfvp60bDauHDNJMwIQO6P9WPEG2fI3a+CWgnYMRy3IpWC
         Cq4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=hhOw0w38TJcuX5vEnkoqLPd2Qi8oMlxG83LDdQDyi6M=;
        b=BFBp4ItDmsWs4oIjoEvaCDZHrd359ZGoscWc1W0ETq0s9v4aPrw7xr10y2DCZO+sM2
         C0iakgW+EHf/rgMePhW4WqTKNXlDb9RXnlCMNjM1jywV44wZcDOgPODTN+Ydlq9zM2C2
         jo6NbeFd7zTFVemMf6TspVNPlA4OpRdpHDO53DWBW2lghjIRbx+kOIYURnvp5L9eUMaI
         ij2VccyFP/N3YgPqGV31NHVBb3crISW414PEp3s8icaPyC4c315Sh7Cc3yoai5BiljMB
         ihnqZvDd2VI8TwULwfWsbYeODi9X21MP5yD1beqJNEspHmdfPhyhS65lmrnzjx8xc8I1
         aIDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YYg5GFM1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hhOw0w38TJcuX5vEnkoqLPd2Qi8oMlxG83LDdQDyi6M=;
        b=VnZS4a11t1+YkNRCzpi3DTnkFG9RBJ2aD8gRb27tcfRpz14Q6rcD0zJVHsT0+mMjNS
         QHdOumiEzfWlhtBAy8aYoOaH5X0SHySSt4mTiLyec/1STVXJSKVp7iBUI2qnVi1xt6mM
         qVv0J3LJh3w1oPnx3cvbyyvoQBorByr0L0JuHGpXS6B4jd3odd+4BPNofoQ9rziGg5L8
         HV9mYdE7Tv0Q3v7gvm9RX3O4xk7+WGXMx2yx/esN0YymDP732TDCP8sLuWuCZGfFXCbX
         9VGDZJltEJvyuChuuGEKCFjHniExlv393t29Xt5ygaCbkywkNJohmukUqu3bkswvchGY
         xn6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hhOw0w38TJcuX5vEnkoqLPd2Qi8oMlxG83LDdQDyi6M=;
        b=m9aynak5xnpyGe1CIvZ8KRadxdzf+joRF4ZrRFJpfLBbyamuCo0+T08CRsuf0jKvNE
         j2LKWfzcpdxp3/RAmtET0PdgAyBIiQMpbV7795dB9sNp4khJil1R3ilToAqA2k5c9bNt
         LGwia8SDU1MCoXqsTaqgkgjLdaRoqj/e48Pr2us4yLMmYE0RFhly+JWoSxEB72x/4j0d
         J+UfKNJKRtXm42UG8wWZLXnI7+3TMqJTFQp/lvvez64tPbH5786csnIjzYnkrdQ+Oxnv
         O2aaRjkhtx8hm4g9tuPdRx2HABN3PFjTOuu7RVUqS2JVWLlCMs7ka5mJ5zdeBS+Z5YLn
         RBFw==
X-Gm-Message-State: APjAAAXNtlw5kGrgBLHZmecUnfVeqC8hdcahBQ3qHnWSLCiRgMmIfBun
	iSoF5Yb3tYbDrtpwN8yS72c=
X-Google-Smtp-Source: APXvYqzQg0c5fuqqUm895Yv7kyhnL/qups3P3Tz5LX3BZz40/HQ+IZIpcbKSi6mioZmMzQBppLgNLQ==
X-Received: by 2002:adf:9481:: with SMTP id 1mr11778618wrr.77.1572279164371;
        Mon, 28 Oct 2019 09:12:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fc85:: with SMTP id g5ls12340568wrr.4.gmail; Mon, 28 Oct
 2019 09:12:43 -0700 (PDT)
X-Received: by 2002:a5d:4a03:: with SMTP id m3mr16203608wrq.359.1572279163879;
        Mon, 28 Oct 2019 09:12:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572279163; cv=none;
        d=google.com; s=arc-20160816;
        b=arWYk4pRMhNjS1me+DFS2zAlSie/aH0DDkVJRnTqeT1EmgYBQdWCiXrN+cYTJoBodV
         4hB3xT6FjjBhnnhEhD5HSydRzekAhneAAdNfoAQYUmZtwJG/JTBWC1MaJWSN6ya9IMq7
         CyPVbs029wIY7mHKqKdKiyuMqETfILNRvcRR+hbn3Dr6mHuMyFjWsW7acL6SK1whMAQi
         t6M5/c4gPs9b0pYZJrSstPFSl1LT08A7JVP/hi3/P43XDIo7F91kbQ0cQg1h/nzCe7Qu
         71oXJgT8jmd+f1cABdytmgcFKfo6LKzsd726V0p0xmh4JL+SzzfzdSf6tpun+suFltR3
         5J/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=er/3bfy8IhrY9qdlrH4iVA2P4YvVI+kEvjcxpJ5t3Tk=;
        b=RSJL8x8D9RUmgnXP7iLdoKAC1q6IvK7kUl8SswIcYwRBA9N/AADifGtV+VmhgBo5n+
         JGkSU5B8eVdKg6oGz035A49oSdSCzoIZDmt2u/8OQOSYyPgfWKS+Kn24yBopFrCous5i
         V7/dSujjfPS9QbVa+rIW+/j0Di3FkOsMbX6ttn6Wo7+tvQC9eZNNNSytW5vC7Oaq6Eg9
         FmJFzvb9xPNH3UK1AheQPkEdhJUfLvdvC2HZ3uJRIg4iwOfhPwX00xfEwSA44Q4nifVq
         odtAx6mcCYLaJ9TBy1pQlRWfoHlWaibtydcj/I87x5AKC/QiJ6luG8Iy7ojM4I5jtQlH
         yYlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YYg5GFM1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id w2si12680wrn.4.2019.10.28.09.12.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 09:12:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id u9so2460532pfn.4
        for <clang-built-linux@googlegroups.com>; Mon, 28 Oct 2019 09:12:43 -0700 (PDT)
X-Received: by 2002:aa7:980c:: with SMTP id e12mr21491291pfl.165.1572279161877;
 Mon, 28 Oct 2019 09:12:41 -0700 (PDT)
MIME-Version: 1.0
References: <7a15bc8ad7437dc3a044a4f9cd283500bd0b5f36.camel@perches.com>
In-Reply-To: <7a15bc8ad7437dc3a044a4f9cd283500bd0b5f36.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 28 Oct 2019 09:12:30 -0700
Message-ID: <CAKwvOdmE+i_3yrRvNHNVrt-jteDOtp7mEx1ZpvyXdNhOPkBg_A@mail.gmail.com>
Subject: Re: [PATCH] compiler*.h: Add '__' prefix and suffix to all
 __attribute__ #defines
To: Joe Perches <joe@perches.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YYg5GFM1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Sun, Oct 27, 2019 at 3:03 PM Joe Perches <joe@perches.com> wrote:
>
> To avoid macro name collisions and improve portability use a
> double underscore prefix and suffix on all __attribute__ #defines.
>
> Before this patch, 33 of 56 #defines used a form like:
>
>         '#define __<type> __attribute__((__<attribute_name>__))'
>
> Now all __attribute__ #defines use that form.
>
> Signed-off-by: Joe Perches <joe@perches.com>

Thanks for the cleanup.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  include/linux/compiler-clang.h |  2 +-
>  include/linux/compiler-gcc.h   | 10 +++++-----
>  include/linux/compiler_types.h | 34 +++++++++++++++++-----------------
>  3 files changed, 23 insertions(+), 23 deletions(-)
>
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index 333a66..26d655f 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -19,7 +19,7 @@
>  /* emulate gcc's __SANITIZE_ADDRESS__ flag */
>  #define __SANITIZE_ADDRESS__
>  #define __no_sanitize_address \
> -               __attribute__((no_sanitize("address", "hwaddress")))
> +               __attribute__((__no_sanitize__("address", "hwaddress")))
>  #else
>  #define __no_sanitize_address
>  #endif
> diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
> index d7ee4c..7a2dee 100644
> --- a/include/linux/compiler-gcc.h
> +++ b/include/linux/compiler-gcc.h
> @@ -76,7 +76,7 @@
>  #define __compiletime_error(message) __attribute__((__error__(message)))
>
>  #if defined(LATENT_ENTROPY_PLUGIN) && !defined(__CHECKER__)
> -#define __latent_entropy __attribute__((latent_entropy))
> +#define __latent_entropy __attribute__((__latent_entropy__))
>  #endif
>
>  /*
> @@ -101,8 +101,8 @@
>         } while (0)
>
>  #if defined(RANDSTRUCT_PLUGIN) && !defined(__CHECKER__)
> -#define __randomize_layout __attribute__((randomize_layout))
> -#define __no_randomize_layout __attribute__((no_randomize_layout))
> +#define __randomize_layout __attribute__((__randomize_layout__))
> +#define __no_randomize_layout __attribute__((__no_randomize_layout__))
>  /* This anon struct can add padding, so only enable it under randstruct. */
>  #define randomized_struct_fields_start struct {
>  #define randomized_struct_fields_end   } __randomize_layout;
> @@ -140,7 +140,7 @@
>  #endif
>
>  #if __has_attribute(__no_sanitize_address__)
> -#define __no_sanitize_address __attribute__((no_sanitize_address))
> +#define __no_sanitize_address __attribute__((__no_sanitize_address__))
>  #else
>  #define __no_sanitize_address
>  #endif
> @@ -171,4 +171,4 @@
>  #define __diag_GCC_8(s)
>  #endif
>
> -#define __no_fgcse __attribute__((optimize("-fno-gcse")))
> +#define __no_fgcse __attribute__((__optimize__("-fno-gcse")))
> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index 72393a..b8c2145 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -5,27 +5,27 @@
>  #ifndef __ASSEMBLY__
>
>  #ifdef __CHECKER__
> -# define __user                __attribute__((noderef, address_space(1)))
> -# define __kernel      __attribute__((address_space(0)))
> -# define __safe                __attribute__((safe))
> -# define __force       __attribute__((force))
> -# define __nocast      __attribute__((nocast))
> -# define __iomem       __attribute__((noderef, address_space(2)))
> -# define __must_hold(x)        __attribute__((context(x,1,1)))
> -# define __acquires(x) __attribute__((context(x,0,1)))
> -# define __releases(x) __attribute__((context(x,1,0)))
> -# define __acquire(x)  __context__(x,1)
> -# define __release(x)  __context__(x,-1)
> +# define __user                __attribute__((__noderef__, __address_space__(1)))
> +# define __kernel      __attribute__((__address_space__(0)))
> +# define __safe                __attribute__((__safe__))
> +# define __force       __attribute__((__force__))
> +# define __nocast      __attribute__((__nocast__))
> +# define __iomem       __attribute__((__noderef__, __address_space__(2)))
> +# define __must_hold(x)        __attribute__((__context__(x, 1, 1)))
> +# define __acquires(x) __attribute__((__context__(x, 0, 1)))
> +# define __releases(x) __attribute__((__context__(x, 1, 0)))
> +# define __acquire(x)  __context__(x, 1)
> +# define __release(x)  __context__(x, -1)
>  # define __cond_lock(x,c)      ((c) ? ({ __acquire(x); 1; }) : 0)
> -# define __percpu      __attribute__((noderef, address_space(3)))
> -# define __rcu         __attribute__((noderef, address_space(4)))
> -# define __private     __attribute__((noderef))
> +# define __percpu      __attribute__((__noderef__, __address_space__(3)))
> +# define __rcu         __attribute__((__noderef__, __address_space__(4)))
> +# define __private     __attribute__((__noderef__))
>  extern void __chk_user_ptr(const volatile void __user *);
>  extern void __chk_io_ptr(const volatile void __iomem *);
>  # define ACCESS_PRIVATE(p, member) (*((typeof((p)->member) __force *) &(p)->member))
>  #else /* __CHECKER__ */
>  # ifdef STRUCTLEAK_PLUGIN
> -#  define __user __attribute__((user))
> +#  define __user __attribute__((__user__))
>  # else
>  #  define __user
>  # endif
> @@ -111,9 +111,9 @@ struct ftrace_likely_data {
>  #endif
>
>  #if defined(CC_USING_HOTPATCH)
> -#define notrace                        __attribute__((hotpatch(0, 0)))
> +#define notrace                        __attribute__((__hotpatch__(0, 0)))
>  #elif defined(CC_USING_PATCHABLE_FUNCTION_ENTRY)
> -#define notrace                        __attribute__((patchable_function_entry(0, 0)))
> +#define notrace                        __attribute__((__patchable_function_entry__(0, 0)))
>  #else
>  #define notrace                        __attribute__((__no_instrument_function__))
>  #endif
>
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7a15bc8ad7437dc3a044a4f9cd283500bd0b5f36.camel%40perches.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmE%2Bi_3yrRvNHNVrt-jteDOtp7mEx1ZpvyXdNhOPkBg_A%40mail.gmail.com.
