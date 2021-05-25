Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBRUYWWCQMGQEYBETM5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BAD6390978
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 21:13:11 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id b24-20020a67d3980000b029022a610fc6f2sf13401062vsj.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 12:13:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621969990; cv=pass;
        d=google.com; s=arc-20160816;
        b=DKlDbaGzRURGSDZMFtmalSZ4LqsHPOiMx/oI89vGFdv/LAwcP2G1w1vTupEzXfkNrC
         O3yje0qfJwSjPsF4ZMQxVsUIkb5oHAGxd5p7JsWzvJamm4s3Pa3BLXA0witEk3z3NrYU
         nUF4U4SuKUWM6H3GM+YQ7mtfxCLToAv9NPGkQ81jtxqfBF7JRjL1VQvRoQWYRi4rhS5B
         UFPhINCFCxJQBk8UrptodjAF9ME5PytsfgLuHOa5+RjaGYVCju1+mKjVQsqpjjfYAHdx
         KdElMT42+XNAj+uM89rrixl8W60sLmqHn7FoVq3mqsS130ya/K0pHRaXkiaq1qpqABwF
         h7OA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1J6zlsBGj3Tbczt8B+QrqCk/HNfpiE4rhkcAOsww9Ew=;
        b=wqh4bIVvQQ84o6uZRfOXmZkPE/gF7+gWp5fzI8A0utffQnIsoWqdCFH+GObbOelfet
         FHsarynnYscK+AzAw7yO8iW5UYrJ5dSA0NNDEDsZOVDg0Kk1stITOALyaYcJd1Y63pwa
         U493CJ56DV6EvVNIcJMTII9ZikIzQ7gvuOVO1odGHqnm3GNGzMCD1xd97pXsjDNtleCQ
         LHZx/tEsPGZO6Lxv+0R3BnzttglLarTYXnnas7MZZNKmweINIBkfmoP2rsfSFCMWYpL0
         7+pBNc2k2BzYAfZKLN2rTjmcOCt137f6g0n2zKzPp5Uzif3nW06pcByU0E/gwyjXOzLD
         M3Uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OmSqMRSO;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1J6zlsBGj3Tbczt8B+QrqCk/HNfpiE4rhkcAOsww9Ew=;
        b=QIm/Lpi5Hd6SKaebP/jVH/K0uVXsADWjK9VsDIANorzrP+ERxUHa+viYb8URrQ63+u
         u77q0ZzvHmK4XqY0ju9TS7UaI7vwkTcHPCwLbXbjooyQIzXhrcubTNXlvi9/H3myYveG
         Z5XCzRlgsMZHPQs1edhuCPVF19H/UlqwI1HMBPplCGs/J0uCRYDB+D6reIdV0locjOCE
         kqD0fJ7aPYQdQof9OAVFLEqD+/GozK5/98Q1KdAmCa6l5vMiVXh3mir0ohaWKxUYWt8F
         cANHR4o+Uc49NGymN0RnzpWVGDwEZcifwnUQnoqWVLleqCYWiReBkuFS6BmTZJF5SsAB
         D0ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1J6zlsBGj3Tbczt8B+QrqCk/HNfpiE4rhkcAOsww9Ew=;
        b=Dssk2ZauCv9uXGkdMj+NhZ7XJXPJ+DnICKGyMqbSH6QSnyLKBjhNRNTxOa9YbRLqN2
         tOsAOBPVfJbpFeNFQGiUx0ig87UJ62ng+8ActXe7EB/WclzI0+t9oCts2umbTkCSJ7+M
         91fAkPZvzKW7kvurk5LUQ4+Y+k2oQJwI8ZGUHGoYRj6dX/KKvxT9dAkanKfUEzNnY0AU
         x7CSagDOF+xUHq8aSTqQBSl5/yBYz0ZNIyPCpjfOQULYEF7TXIAruleLI9bQxhnbUYEe
         iXvRTPOLxjy0ZD3b5igbo/+aGZ9MLMdUeW3N1PFIpvPTg1Xq4xEF/qr+MvEaafMmmzKN
         qj4Q==
X-Gm-Message-State: AOAM5307Ikpqe9myj6asBvG22MuSSNYtnkQxWAK68vzebKMVKJp+P6op
	uC2FcLw7D02lVEcpZErb3UQ=
X-Google-Smtp-Source: ABdhPJz+pTeZIQd+p8mOPAMOR80wjq43grlRkw+oa/oWcFBD8VF93+2lxCTVTu6+rLTJdlzWkFzdoQ==
X-Received: by 2002:a05:6102:124d:: with SMTP id p13mr28032659vsg.58.1621969990701;
        Tue, 25 May 2021 12:13:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:22c5:: with SMTP id z5ls2162241uam.6.gmail; Tue, 25 May
 2021 12:13:10 -0700 (PDT)
X-Received: by 2002:ab0:c07:: with SMTP id a7mr15188553uak.120.1621969990206;
        Tue, 25 May 2021 12:13:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621969990; cv=none;
        d=google.com; s=arc-20160816;
        b=1DZIKWgVJdjQuatiz7g9IT0z2X+NrlIKQNkme3KcOH16i1SVTSlpQMa/efnsy67dkm
         gm1RRXNt7jC2Cr5fFRxDMy2Ksuh4AaEE2j1v3mhaWYvkt4FkeYZsNbdgXFCCy4Sdd//l
         NSGEPrXaEzfjwDkjVKdSytoQivFbTDOQVG9GAoXIooP7l1fM7wWTrHgzho9EwB+swNtq
         j2TXJBNg1tKfjBKOOHRAV0gTYFAjX/n68oya1rP0Km/IvsyzYwnR5Z+lVR5TKgs39Vr7
         A2J7pqv026UJO0Ybe4+wcWCi68Ibjaen9ZMOTLuIvFJmHj2Dq8ahsDCKFe60xNxFRr9D
         2Leg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dm5fSZr4HIoAbN3HoCp75swHXTm6YycskIMZ+K2xM+s=;
        b=KUx2d5h6U6wGLqeC2QEQ0mydgOkVNiUz0I18D7tkg8zYR5eIrzUxnq5WgTiNJEk/HT
         /OxCtaIouzZedMmemYAdWfO44JqyhIQG+g0l+sV518wKERUNhnMBLd2LDQAetNCq0TM9
         I5etBzk4zCLO0zTkrj0Ygyl6M+HhoBDHey10i6im7ccrYNy96MzrVdUzFRv/SSmc/FLI
         kyaYrMbps9WA10LZm+nendxIDrKUL+rwmW6gu32+CbE1GrcpTxiihhTfNxE9cQBLvg1R
         AM9vJzzA+WvYjkP+sx4m7AfTwBmW/BPUq/mSOHI+iH3VCyiAt6ZaDGEk0qsBjUtzy5zg
         WEwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OmSqMRSO;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com. [2607:f8b0:4864:20::334])
        by gmr-mx.google.com with ESMTPS id f5si1127911vsg.0.2021.05.25.12.13.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 May 2021 12:13:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::334 as permitted sender) client-ip=2607:f8b0:4864:20::334;
Received: by mail-ot1-x334.google.com with SMTP id 69-20020a9d0a4b0000b02902ed42f141e1so29638211otg.2
        for <clang-built-linux@googlegroups.com>; Tue, 25 May 2021 12:13:10 -0700 (PDT)
X-Received: by 2002:a05:6830:349b:: with SMTP id c27mr25296301otu.251.1621969989456;
 Tue, 25 May 2021 12:13:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210525175819.699786-1-elver@google.com> <CANiq72krX9PU14wFsQyW_CJEjTS-TT8wyhBVZZbC132Gz5XO-Q@mail.gmail.com>
In-Reply-To: <CANiq72krX9PU14wFsQyW_CJEjTS-TT8wyhBVZZbC132Gz5XO-Q@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 25 May 2021 21:12:57 +0200
Message-ID: <CANpmjNPGUAv-d3yEusyF11ip0zEdht7eMGi4pSoQsRYns-MvJA@mail.gmail.com>
Subject: Re: [PATCH] kcov: add __no_sanitize_coverage to fix noinstr for all architectures
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: linux-kernel <linux-kernel@vger.kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Masahiro Yamada <masahiroy@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Dmitry Vyukov <dvyukov@google.com>, 
	Mark Rutland <mark.rutland@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OmSqMRSO;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::334 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Tue, 25 May 2021 at 20:25, Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
> On Tue, May 25, 2021 at 7:59 PM Marco Elver <elver@google.com> wrote:
> >
> > +#if defined(CONFIG_KCOV) && CONFIG_CLANG_VERSION >= 130000
>
> Is there any reason why Clang does not implement
> `__has_attribute(__no_sanitize_coverage__)` like GCC? That way we can
> merge both (perhaps even in `compiler_attributes.h`).

It's complicated. Clang implements all no_sanitize options via
no_sanitize(<string_literal>), except for 3 which are there for
backwards-compatibility reasons (no_sanitize_{address,memory,thread}).
But otherwise, no_sanitize_sanitizer is deprecated in Clang in favor
of no_sanitize("sanitizer") per comment at
https://github.com/llvm/llvm-project/blob/main/clang/include/clang/Basic/Attr.td#L2907.
(That being said, there's already inconsistency due to coverage
instrumentation requiring "-fsanitize-coverage=..." and not
"-fsanitize=coverage-...". The implementation vs other no_sanitize is
also a bit special, see LLVM commit.)

This means we only have __has_attribute(no_sanitize). Which is also
the reason why the other __no_sanitize_* defines in compiler-clang.h
first check the feature, as feature existence implies attribute
existence. But, sadly, this is not the case for coverage
instrumentation (where in fact, __has_feature(coverage_sanitizer)
doesn't work either...)

From a UX perspective, having Clang only give us no_sanitize("...")
without the corresponding __has_attribute() support is not great, but
passable due to __has_feature() working for other sanitizers. From
Clang's perspective, it kept things simpler because we've gotten quite
a number of sanitizers recently. The big ones are manageable [1], but
UBSan is just too much [2].
[1] https://clang.llvm.org/docs/UsersManual.html#controlling-code-generation
[2] https://clang.llvm.org/docs/UndefinedBehaviorSanitizer.html#ubsan-checks

This is probably a longer answer to your question, but is a summary of
the frustrations I encountered as I looked deeper into Clang's
no_sanitize attribute.

Long story short: this is not fixable without more Clang changes. The
only way to do it without a version check would be to introduce
no_sanitize_coverage attr to Clang, which we probably shouldn't do,
and I didn't want to fight it. ;-)

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNPGUAv-d3yEusyF11ip0zEdht7eMGi4pSoQsRYns-MvJA%40mail.gmail.com.
