Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHPD3GCQMGQEX66D54I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 65904397962
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 19:42:54 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id u5-20020adf9e050000b029010df603f280sf5169917wre.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 10:42:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622569374; cv=pass;
        d=google.com; s=arc-20160816;
        b=G2xi+kncsgqR+KsSLAJcIM+kOHZKnaIi4yGHHc1ZXHPJ76CFV++z3atGZAeVGGeF5i
         qwETkMXTDpaMg0JsbEOS0CfVxrfiXouu4/vqsVs1Z26mFobDnPudmGOvuJC0MbRZORYK
         +xMSFU8aap8zR51/PseoDUvfhK2DiIYBwr3WsYpHKBe9MoWdceGikwM99kO4dxusQBE/
         WXLx/TnWE0BVtiCfaeG/HFvZXhpjmpUIG8df+ZV9xiuDEqAxhk+fpvqbSzEuNaxY68o7
         LWQYpDa8TQa4JkFLCwCY5UZzmZYSYVqdAKnPm6Cbag/EgUw+iSXZDPHO2V5NW1vcP5XD
         tv+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=GHkdv862lcIeqsF7SV4wyhJGHlTZaL0EnHaO98Na9BM=;
        b=nC1H85YoA02A5HoUw/f0yOyqoh0iiaMK4JmW1FYBiQu6/SN+W0wC5IydO/dA2mP/RM
         7GtCjP+fxm3pWB+w4R6f+Yk2rpNoTcPF2GKH8k4MxbsxXWGYdQaHe6KARoJR/e5aJnYe
         TYg/V5cHfH5p+1uQvNhP9/XW2iZU2D+NK4Ee6hjxVg3uz2zplh069rpYMq8o7NtbWm4E
         mvv44JgdVNL4TKfcjYwB7wk1+gFgBZ8KnpDP585RvYsnTmOuN4Y4ocFoXmI/HxfO/xTK
         gBWHaNTAx33U7Zls4Nud3wvsuV0Qi2jq9LOp9nzLywkuABXqKW+NDOl5fkTY1ac8EGdF
         uLjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dwDHvH0o;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GHkdv862lcIeqsF7SV4wyhJGHlTZaL0EnHaO98Na9BM=;
        b=hKKLPCIzrsblK+5V1lebq45TRCmWvOj/7F4foAiB9KOBacwT+TNUBVk2kjdNxN0Wpm
         4Gfg0cz3jFr9e9tFnaTJLuWqI5fdOGIaLwdJPB9+9q0yU5xAZCSTcJjgr8/Yj66jHFJ4
         lZ2QbpMO6BYEhjkszqbg9lz2gNOF49bJRD+Edc74DONffXeid2Wnpdy+Kg3tKAGq912H
         vTs2elUM6ZfmDbQ2h1209GxNIuJDEM0WDqYNkDM/zxZDqg+DvtKUzLSZccCyqteH+avU
         +D4M6xafThrsK1XEC4hK2LdfTtmgyv21sh66OZzNNyVTXQ026i/eEptxVHdwrBuY9juf
         i3Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GHkdv862lcIeqsF7SV4wyhJGHlTZaL0EnHaO98Na9BM=;
        b=m75WlCxyNxInCkeWMYHnVClIxESo2o/VDtVhbLVP+/vquF8XXEwMW14MmDsLn6hCED
         QKUD5V7TycirV8Y7zlZ8yQ7y7DH2fv2O0ScfdzGTb+fElmu5Chi4ojzUUaTMebq5O4fA
         zpNSSfI/HNNB5lTLqlJVTflstVlS8/2Qq7hjV3Gfd8DJeyDhnMh3Q7Gk4DbxKQR8hD0+
         Jv0lSTbVK4Nk3fzBhervlMkMeUf+Cpizs7fZ4p/IAL1B3PT0NJQbIbwl67KQUcpnPbs+
         6jpvCN3fq2ehx42s9XCM/h553AaNB3VMRFkKYbhhiclNyQrV1k/BdkZx+Pin3z2TOfya
         5xww==
X-Gm-Message-State: AOAM532wBiKDX3d+RCs230+u+QU2fULpnuvD0HuuqExvI5CkJEXe2Kde
	0Hqxq+YExIln1bsFWi/+OEw=
X-Google-Smtp-Source: ABdhPJyijZJZyz2C6yWRnEtw47fUTaNzwECwOePlgGQ3H6QQnkL9GwGbw6HOH7adPMmH1Bm9fIWeeQ==
X-Received: by 2002:a05:600c:4f0c:: with SMTP id l12mr4907566wmq.71.1622569374134;
        Tue, 01 Jun 2021 10:42:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:f603:: with SMTP id w3ls1895590wmc.2.canary-gmail; Tue,
 01 Jun 2021 10:42:53 -0700 (PDT)
X-Received: by 2002:a7b:c114:: with SMTP id w20mr1059828wmi.45.1622569373226;
        Tue, 01 Jun 2021 10:42:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622569373; cv=none;
        d=google.com; s=arc-20160816;
        b=oW1jyyGP9X2NDCXPzw1tH6KCv2T5R8PNxpV5fGw/1q+R+wnKe7hZUIWCpNSTp6McT/
         ueVktTkcwWoJfY8mwwiroy2yt5bziWF/Ae7NfZgRejnH4Vuvc12oJihO8y2fxs4blM6k
         Vt2bg89whp2YCgNeTEyeE/NuI68ogSathHGQy+mmAwJ8DQ5ZHb4MMb9eY/fiU/xSzeKk
         W/OkZYUhHewUIJlp+tkW92uqUxiABzN0aNwXnCwyxxCzeVxb1eQF6fR9PhpqGQdQK8cP
         C9O2EKSe/OKy5+1MO408RCY11364eVqQEGVAGTK7RXH7ZsMPC1PVpBTL2zIDIFPWLrPL
         jKDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yD/RqJ6Lx/pv1RbRPxCIzqHlKJgJbvGhxmkXtiq11v4=;
        b=NDpwcFdCxnxVFhozqzaPMzF+DIqfQ7VSj49F5klEHa8JHYy0iZ+YGepgtcNZRa7yZL
         4rbEguqK0vatBc36Q/55FSlyxHjmPnUtqQPo2sWeoEHp893R6e7pYAkHrJg4mq9cBYpc
         bSnC0OLTAgw27XAf7FwHSxWWyCDc3tOSZ5HnRpu5QCbNwDAT8tHA0A4vWrOttdD2XK4C
         /PiUEdjGOfTBuIs+EpwWqqQTq5Ut9LnwrK13LYod/0cCIEjW7vMpAEHqRosgMoevuHYv
         WADXSD0yoZbFZQl72Muq2WtIxPxmo3nG8IQanfrDaDuENOyZ7c6VQMUjtuuYymSpsuRO
         wUtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dwDHvH0o;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com. [2a00:1450:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id 11si156274wrb.2.2021.06.01.10.42.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 10:42:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) client-ip=2a00:1450:4864:20::22f;
Received: by mail-lj1-x22f.google.com with SMTP id a4so20395093ljd.5
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 10:42:53 -0700 (PDT)
X-Received: by 2002:a05:651c:b1f:: with SMTP id b31mr22349478ljr.0.1622569372725;
 Tue, 01 Jun 2021 10:42:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210527162655.3246381-1-elver@google.com>
In-Reply-To: <20210527162655.3246381-1-elver@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Jun 2021 10:42:41 -0700
Message-ID: <CAKwvOdmgZXJB2dV7iG67qHgbDgVTJaH7b3dkpgZyea4ULgQjgA@mail.gmail.com>
Subject: Re: [PATCH v2] kcov: add __no_sanitize_coverage to fix noinstr for
 all architectures
To: Marco Elver <elver@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Kees Cook <keescook@chromium.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Will Deacon <will@kernel.org>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Borislav Petkov <bp@suse.de>, Sami Tolvanen <samitolvanen@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Dmitry Vyukov <dvyukov@google.com>, 
	Mark Rutland <mark.rutland@arm.com>, kasan-dev <kasan-dev@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dwDHvH0o;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f
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

On Thu, May 27, 2021 at 9:27 AM Marco Elver <elver@google.com> wrote:
>
> Until now no compiler supported an attribute to disable coverage
> instrumentation as used by KCOV.
>
> To work around this limitation on x86, noinstr functions have their
> coverage instrumentation turned into nops by objtool. However, this
> solution doesn't scale automatically to other architectures, such as
> arm64, which are migrating to use the generic entry code.
>
> Clang [1] and GCC [2] have added support for the attribute recently.
> [1] https://github.com/llvm/llvm-project/commit/280333021e9550d80f5c1152a34e33e81df1e178
> [2] https://gcc.gnu.org/git/?p=gcc.git;a=commit;h=cec4d4a6782c9bd8d071839c50a239c49caca689
> The changes will appear in Clang 13 and GCC 12.
>
> Add __no_sanitize_coverage for both compilers, and add it to noinstr.
>
> Note: In the Clang case, __has_feature(coverage_sanitizer) is only true
> if the feature is enabled, and therefore we do not require an additional
> defined(CONFIG_KCOV) (like in the GCC case where __has_attribute(..) is
> always true) to avoid adding redundant attributes to functions if KCOV
> is off. That being said, compilers that support the attribute will not
> generate errors/warnings if the attribute is redundantly used; however,
> where possible let's avoid it as it reduces preprocessed code size and
> associated compile-time overheads.
>
> Signed-off-by: Marco Elver <elver@google.com>
> Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
> ---
> v2:
> * Implement __has_feature(coverage_sanitizer) in Clang
>   (https://reviews.llvm.org/D103159) and use instead of version check.
> * Add Peter's Ack.
> ---
>  include/linux/compiler-clang.h | 11 +++++++++++
>  include/linux/compiler-gcc.h   |  6 ++++++
>  include/linux/compiler_types.h |  2 +-
>  3 files changed, 18 insertions(+), 1 deletion(-)
>
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index adbe76b203e2..e15eebfa8e5d 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -45,6 +45,17 @@
>  #define __no_sanitize_undefined
>  #endif
>
> +/*
> + * Support for __has_feature(coverage_sanitizer) was added in Clang 13 together
> + * with no_sanitize("coverage"). Prior versions of Clang support coverage
> + * instrumentation, but cannot be queried for support by the preprocessor.

I'm not against a version check for supporting older releases (in
addition to the cleaner feature check, since the feature check was
non-existent); we can clean it up someday when clang-13 is the
minimally supported version.  Would having an additional version check
help support existing/older releases here?

> + */
> +#if __has_feature(coverage_sanitizer)
> +#define __no_sanitize_coverage __attribute__((no_sanitize("coverage")))
> +#else
> +#define __no_sanitize_coverage
> +#endif
> +
>  /*
>   * Not all versions of clang implement the type-generic versions
>   * of the builtin overflow checkers. Fortunately, clang implements
> diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
> index 5d97ef738a57..cb9217fc60af 100644
> --- a/include/linux/compiler-gcc.h
> +++ b/include/linux/compiler-gcc.h
> @@ -122,6 +122,12 @@
>  #define __no_sanitize_undefined
>  #endif
>
> +#if defined(CONFIG_KCOV) && __has_attribute(__no_sanitize_coverage__)
> +#define __no_sanitize_coverage __attribute__((no_sanitize_coverage))
> +#else
> +#define __no_sanitize_coverage
> +#endif
> +
>  #if GCC_VERSION >= 50100
>  #define COMPILER_HAS_GENERIC_BUILTIN_OVERFLOW 1
>  #endif
> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index d29bda7f6ebd..cc2bee7f0977 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -210,7 +210,7 @@ struct ftrace_likely_data {
>  /* Section for code which can't be instrumented at all */
>  #define noinstr                                                                \
>         noinline notrace __attribute((__section__(".noinstr.text")))    \
> -       __no_kcsan __no_sanitize_address
> +       __no_kcsan __no_sanitize_address __no_sanitize_coverage
>
>  #endif /* __KERNEL__ */
>
> --
> 2.31.1.818.g46aad6cb9e-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmgZXJB2dV7iG67qHgbDgVTJaH7b3dkpgZyea4ULgQjgA%40mail.gmail.com.
