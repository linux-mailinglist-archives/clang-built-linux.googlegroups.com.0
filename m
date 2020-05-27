Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBDU5XH3AKGQEXYSCIQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A17F1E3FFA
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 13:27:10 +0200 (CEST)
Received: by mail-ej1-x637.google.com with SMTP id ci7sf6689756ejb.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 04:27:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590578830; cv=pass;
        d=google.com; s=arc-20160816;
        b=p+6n+u6SYHyj+c648bomnuIEi0RzgVZSQvQdLSJjbYUyFQh+hB2jLXfpzsILh0165q
         +qC3/s2DSYnI8yKj4s9aIgrBCtCOXmSqOUaic8ZWmkAbeu9H0/9rUGRz0M3JKnWZuPw2
         e/j++QMKUQk86kRrZaOqHxwh01nNeOwb6EifRbXIUcuSXvKH9Dm8feuWaU9GJeUThI6R
         QbdVHZ5+2Rf6cXwtyATnjN8CIWQJqX39bJ7nfU4CZ3egCJV89WZcP6kdd/4xZUNK7ww0
         bTYp9rdURG+rlY3FCxl7fKwXbtZhXCydL0/zth9dNMr5MFb+NR8hLuI6NAXVpRTN9Jpl
         n1Qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=eeEAF5Xz1BN+v+8KtO0OXB0mrjTD2+renbLjzI0X6Ic=;
        b=y+qJQC2/C5LcILRPmDreboB6WjZjiFbTYhxLFAl0s685HQAHfLuE5JXqRXWyN42UxH
         ZBq04/R/nzQJxtFR3zvIUObNnId0CMdgqU+qvHGbqwx96jhq8JhMBMZlrHPUQlQ86AQI
         5YrcAoIOaMnYXP/dS5YQDGE4k5sgxeLEeEBz1mVKsVqYQv3jaQYXGvPYAsGs6RbmjC4z
         zZOaP4RU1B90AN6na5F+HVd5mtkLwG1VL+eikJqnzbtPKC4f083YG0ViVEWUdzOSM0r/
         zFehXtoZH5CaaqLEikwQjJ1yxrZuNrgxEc7aHyHrAFbm4MRRDT0/wVnslQemdJghraZc
         KQDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eeEAF5Xz1BN+v+8KtO0OXB0mrjTD2+renbLjzI0X6Ic=;
        b=OuUKpl97TJ3BdplmG936Yd4cJ0O8AIFaUkUnMOjdT28vCGhhK0CZaRG7uTMMVZur0i
         ACkgb6CUIoSaWuoRh/cZHNcWwT8RdtF//Ohv4MjH0NxVGltdcLUMTokM/rWPgjNznTlw
         CZXoI/JN6IWZfzGdJZLjKDvRO7XFTTna76/16vxWfsoe0rN4jzJylQhUqHrGnruvD8B+
         dgUDS4WsyXQf4uiLw1zbyzVfzgw+/vTGQ+HFQIMbsybddGJC80hDOiKR6NSlvQq9T/Gh
         +ujFko1D0N7CqqDIG3Yjx01vr0c148JEZfG09tWJS0aimhvdEn3kB8NruecKa0PVeQP2
         ppzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eeEAF5Xz1BN+v+8KtO0OXB0mrjTD2+renbLjzI0X6Ic=;
        b=e1I4fg/jTgpGnP1vD6weVle8Kv1FNTYCwaUbLBdWehsSMH3EH1tqIfEXFdAy20nImW
         emTzsS9rdqBTjtZDUL9h0bWHEtwzHkIqW+4YwvLFw6UwXm4wnBI6cYGtAcv7auu+pAKx
         zkA7tqjHKkkygo/xRLGofWegEFDLJXNXwhj58yNYf4SCyw4N5+xJiY4WjBkAdbWN/+HW
         fiIMrYH4nrDgNXYxPNsHJiFfLi9R+L20gkEjh3rhI11nDs//ljz17NPr1GsWzXJ1dl/F
         YfmKuGpboqoVXtnnqapiKmICq4/qGWC4R7YkVMOiGR/kO1gOW7Bg4aBhTmO3IPIDYnLG
         MFDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533UQJkZLn6H4HGpD16MRzK1hmbk9DLKYFsuAm6wL6fWF53bF/Y1
	+2WTeXFbNmPNRdT6FlYiAak=
X-Google-Smtp-Source: ABdhPJzh1G51XCirS+ROMv1ShAsoLsvOybScHuJbS08X8HCsHq6WaWuCYBKDZJS9+6FHrdc3rGVuVA==
X-Received: by 2002:a50:8d07:: with SMTP id s7mr20560991eds.371.1590578830231;
        Wed, 27 May 2020 04:27:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:d4dd:: with SMTP id e29ls14761885edj.2.gmail; Wed, 27
 May 2020 04:27:09 -0700 (PDT)
X-Received: by 2002:a05:6402:1847:: with SMTP id v7mr15719819edy.73.1590578829584;
        Wed, 27 May 2020 04:27:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590578829; cv=none;
        d=google.com; s=arc-20160816;
        b=CoApHMOWQD99dUBcBwtFnVFSxktrTncIlVibjWKcISsy1R5R5fNZDD5oRiS3dUoEHT
         ZOFuGrZZT71vKE1votjp895TrAMwUA8zRGc/+X2mNpBJSSqubONVzCnOkfKl+QfbNxNo
         f5orZVdr/w1cUypF5AjUsM8ZgauK5jGJEv4H8F5326U9+kVYP8i3OKY0K0jB0Mr5vifM
         eA01dqX/Wr7It58yUjlCrFZackd0DEbzWGa8KWJxh7wVIu1wofP4nmK6s0t7oBHMrPIF
         QNZ/1myPB2T+OjFVdcGD9cEwRFqwC1ZXbk9acKV9+13n8mRaF+wWMJ3QmbfJ37VBRIHQ
         vVpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=uawALYrHZFhHKBQzwvHiRgX4LtFZuMYOk/gpUBYfqmA=;
        b=X9eYF8m7Iz2HB1HvYWdTxbKEZtSVJoD26a17RBDXE3wzs9U7gmwRmqmyReHhQv1zY0
         rctwnJzmvrBi2JK69FHJIvCLdWIWwqj3rAs7oMNR4CbdvEI8goPmjUyuJRskIOxrOQ1F
         +nmT46t/IoKR/b8NOhZRbIX3eXfd6n48QsP2hzuLZdTa3gFoSLNhpxCYFufdlHuG2WeV
         Q7EN/cXnVFV85G51+/2WB201/J8uAOgEAinkHak+I9/4hX60ZWxEY3a/9inaT6njgxId
         Mk/XwvS49d9hYANuIcgl7u3plDPH+YTo4DSFIX7Yy4fdW4gj1Bj1+DoRC1P8doSDOple
         SNJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.75])
        by gmr-mx.google.com with ESMTPS id m17si24153eda.1.2020.05.27.04.27.09
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 May 2020 04:27:09 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.75;
Received: from mail-qk1-f178.google.com ([209.85.222.178]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Md6ZB-1j4ZKR3aKp-00aCuR; Wed, 27 May 2020 13:27:09 +0200
Received: by mail-qk1-f178.google.com with SMTP id v79so13841800qkb.10;
        Wed, 27 May 2020 04:27:08 -0700 (PDT)
X-Received: by 2002:a37:434b:: with SMTP id q72mr3711430qka.352.1590578827661;
 Wed, 27 May 2020 04:27:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200527103236.148700-1-elver@google.com>
In-Reply-To: <20200527103236.148700-1-elver@google.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 27 May 2020 13:26:51 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1MFgRxm6=+9WZKNzN+Nc5fhrDso6orSNQaaa-0yqygYA@mail.gmail.com>
Message-ID: <CAK8P3a1MFgRxm6=+9WZKNzN+Nc5fhrDso6orSNQaaa-0yqygYA@mail.gmail.com>
Subject: Re: [PATCH -tip] compiler_types.h: Optimize __unqual_scalar_typeof
 compilation time
To: Marco Elver <elver@google.com>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:iq8ozJw+B/1XbYH6bu5K61HPoysgi5JTChHl+L/Oxf3r331WJxL
 aMmXps3ul4zpiYdfMKTPYMotNNgvIwFSV/KNQWLRgnVWlgbf/NJVkqmFbk++wke4JGQClJW
 wAoW3kihiD7pOBWc9Kr7I5HwRKpwOWDpFqdPpVyigKbHhLhpM4mKcR1ssJF6Ar7Sw0oQnt/
 Eowsxy3ZbmGKs6HcHop5Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/Ewnb2SGfC0=:gZCi+xKkLsA2mNW1gkE6pU
 Rm22CJoTvmSVJJi7jqBplUFRehKCz3Hxyyad1sIpI/R9tQsQMhx3rC0SX98gXKnJFG+85MQfk
 Y//9nwz5ZRpVJg3x6xiE1JkWl90aps0Q1EPzr0HrBcf2eFIv/mJH7mMPY6TKE8Oro9oRq83jJ
 jli8VkoFi3Ja9kp+Te2TgX0GGZW6LnarT50TEt9ZI9sjP5Xvjm+cLuaIc1VAo8WRsDAGWtXvt
 5H59HeStCbyWIN0aNQpKJ7uzdTbCo0DC5Ac8nA+XR95nnb23Wa9225DGbgewZmgNpeXZb69PE
 WLbSFBTTomrSmRP2H593eSvW9shFgR69gznXOCjyakEOtKmMxDLNXSc2qp5Mvu4gPzpQA0oc9
 p3Fc/70XMbmbP4Oetl7r05vFcsNPG+xJT0vonA39y9F/8N6INAqmZIoZohoXo721rV4GA63nI
 vaOAFqQdLS9m+jIj4hLspUpUZkhfQBfKB67ShZGDe4j9FVJQfBQQOfxRy59TXcxVtu3eTLQM3
 UkmN7GFydUAbgLk2cy8gAMNng/WQKNXVwlEhc+NZWFCQ35iSw7M+Sdym8/J0X2moP59+puTZ8
 HI4MDGn/PFFfOhXhNeLiIyImmupo3cyAm4iIKFwBTTaBSyh2m+ZV64jTX/mIfRv2OSGmR6Bba
 lUF7bgtCSieibe1VMXhVyGEyJIsNHReXXi+UtOLgT9h9m/GFM+BAymeFVu+M6ezYf2+EVYsP6
 s8rX6sX/y7MXZO9hapKxuQSQZxPFIWHbtzyFfCWuIpVRcElQ6QRjPrJtGzfI5k+w5D39/O3G3
 CD/flpbLNqCYyHT96vUAEGsKXGG8FgKdtMH9SaYv0Qu+c33pX8=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.75 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Wed, May 27, 2020 at 12:33 PM Marco Elver <elver@google.com> wrote:
>
> If the compiler supports C11's _Generic, use it to speed up compilation
> times of __unqual_scalar_typeof(). GCC version 4.9 or later and
> all supported versions of Clang support the feature (the oldest
> supported compiler that doesn't support _Generic is GCC 4.8, for which
> we use the slower alternative).
>
> The non-_Generic variant relies on multiple expansions of
> __pick_integer_type -> __pick_scalar_type -> __builtin_choose_expr,
> which increases pre-processed code size, and can cause compile times to
> increase in files with numerous expansions of READ_ONCE(), or other
> users of __unqual_scalar_typeof().
>
> Summary of compile-time benchmarking done by Arnd Bergmann [1]:
>
>         <baseline normalized time>  clang-11   gcc-9
>         this patch                      0.78    0.91
>         ideal                           0.76    0.86
>
> [1] https://lkml.kernel.org/r/CAK8P3a3UYQeXhiufUevz=rwe09WM_vSTCd9W+KvJHJcOeQyWVA@mail.gmail.com
>
> Further compile-testing done with:
>         gcc 4.8, 4.9, 5.5, 6.4, 7.5, 8.4;
>         clang 9, 10.
>
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Marco Elver <elver@google.com>

This gives us back 80% of the performance drop on clang, and 50%
of the drop I saw with gcc, compared to current mainline.

Tested-by: Arnd Bergmann <arnd@arndb.de>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1MFgRxm6%3D%2B9WZKNzN%2BNc5fhrDso6orSNQaaa-0yqygYA%40mail.gmail.com.
