Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5G53GCQMGQE5ZWDL2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 788F5397920
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 19:31:33 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id v20-20020a05600c2154b029019a6368bfe4sf55242wml.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 10:31:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622568693; cv=pass;
        d=google.com; s=arc-20160816;
        b=BRO6mPOsKlb+d1E2GmsaKicjjf62AK76oepiVbq64eGD7GsbVkoc1LyDR/rP6mn8YP
         FnvYrW5nTcKiRIvObcEkqwRmWtP44nL4+GU0SdqX6BS65D6yL99gbSzhIKuKPKtBpg/y
         k/vpCtUxDQwxIJ2F8MBJ2KI+9fU2a5RR5QdV6cW6AfUq85eTKl3kxCyPLWZT13oYYngd
         xf2nA1YavAMEq+cUrW3BRD4wo3DsO+Lfeu8fz5Ja4ibTj0o7lSvwgQFjwzSvSHHp4hZX
         D7Oj8QkPpDR2qQ0T2Y32dCbP3IZ4lwHA5/WmHlj/WeXt0OmTl8feRunaTLF8pjg7kqtg
         iDMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=rPKv84FD6DF3usRLSmHjFpTHNUw6G7zzZW6sJHaSu+4=;
        b=kaZLjgBvOezCZtSCqqhmpGg93BLP9HIo4htxsGBJfFXb5hz4GixSM3j9y28xcljyG3
         EfU2BGoD24B93FJDyJruIub7TpiFXpB507px4Wji/ey6qRn43EPxW5RKRbxvm1WVgaIb
         UsH+v7theh2eQ4J5BGyMrhSrafq+VJaPZswA4bm0fugaBu8y1qgBPzHlz6g1mDO3y2Ip
         2vK4/6Xv7mtW+emvG6hKaXuJm1Ps3MNbuJj9FFaRoJiTDFZzzhrJCsEbr6TyhM3DG/sY
         RtG+JIFTjs3Q4y2o+xp9jdT1OtJvzWF598B07LD7I5rrC+De6LADz8WUpBNapAD05deV
         lEEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dG+qpI2+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rPKv84FD6DF3usRLSmHjFpTHNUw6G7zzZW6sJHaSu+4=;
        b=bvKmkn2B+QMnuMeQyRR+aLCME5WqEi1F7IKQ5tJxue1y3a93eGZF6OfO1Sov3OaYaK
         fjukXCX5T/jXlCmQrDkFaZhBsvJx5LSbFmCfE+NaqBXUPyQM63xKAOz+5FoHu/Zig+Xa
         rv8Pqjc9rSSU4942Rv7C8f5Wzj/LTKd46jCIddSuOqiyQ7TlNEhVb2l09n2PQK0JRh+K
         iW7/mAyu1s20xDanlxwj2y4/XK2ANh0fjr8sEUXfUc5GlijexwXZuB1MvTLe0MQ0hYNv
         7Q9jbcy4LPu1/H6v5PbvKT1fO4rN39FValidyU0GHnaPD2Gx6BRZygJ6AucWbE5lXzdh
         6neg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rPKv84FD6DF3usRLSmHjFpTHNUw6G7zzZW6sJHaSu+4=;
        b=dkrMdFvZGj/xoqGXRSZ7fu/A249+cvXZNXiuIRa9GDkIMayLO8XSMiMY+QiEPTZr1u
         4V1PjugLdr7f0JHbnxSYRWuZp/JpbumYYHC0zV+emkosWF/24zHSUCpQiI/IRlbsmYPd
         1HmQtcw4QhjszSGqgPlZa/RPo1afpd/wKGYIJvBnue68CCb/vDXVPu6JiELFbEHXz3mO
         l8kU8QEozYEUe7WnvfuCOfA7nVogcjxBk4x4tgJcQMj4Vw+9x9tRku8HUcRu6+S3udwb
         3sRPagvPlMwUz3NQ7HB5gbiSZgUuFFx7uNoQakVLNtMzF4imanO1UoCVgfQFGqHUUQVP
         EtNw==
X-Gm-Message-State: AOAM533uGwhzUn54he51o8vCpZgZ/XmCoXVZKdQxKrRps04nmsnpHAd1
	F8t8WwCaLGTAPR+2Ev5EXQQ=
X-Google-Smtp-Source: ABdhPJwd6+cFw06ni0YrM9BVpJfA+biwog0m1xE/wTBpC3H/itb1jg50vNQlkt2kDFtGfmM6sIDhLA==
X-Received: by 2002:a5d:4f8f:: with SMTP id d15mr19159482wru.85.1622568693184;
        Tue, 01 Jun 2021 10:31:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:4f52:: with SMTP id m18ls1885821wmq.0.canary-gmail;
 Tue, 01 Jun 2021 10:31:32 -0700 (PDT)
X-Received: by 2002:a7b:c761:: with SMTP id x1mr1016757wmk.118.1622568692297;
        Tue, 01 Jun 2021 10:31:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622568692; cv=none;
        d=google.com; s=arc-20160816;
        b=ankeJCT3JvQLYqH1o0rCCICBDgPbNyb9ipjLd82Np5cxZmbyMAo2MHkvHbPAxS/tUw
         11L9FYrWqVjhtyv6jxi7H8BkAZ9BFitmu+qfP6ewmm3K+NSoBk4kH3xVEY0A3t4HBTmm
         KlghCLUp8ScIskIDgp8wSOx/XekVPbKq51U4uBeGFgY3LxEs1dr7XpLJjt1LqrbbX5CH
         XADFyBxd0G+AbuFRIeCtx97cLwAeMRMSHs5pp0garkTzX5XBwW4oLkVEeQLsh14K6wt8
         Ld4Xut1xo5yQbXCAsrjGhayAZWqgmQfaPLEPE+cFdz4l+k2Z+U5KGPveAMPGctejtZup
         0ARQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4zgCVIyculkg6vmD5i7vJioJPtV1qABy2b5RHzq/zCI=;
        b=pgqStgOMOFfA7Pt89AB959K/+SQohJHQBf4KtEO+9sxYpDgLwNpHXmxtdvZfAa8hul
         TWPQaLno11gJkpkH8+NNO/DbOViuX/iTlqDD77D/xOw20B/n05g6GI2kGWmC42skxBPE
         PW4DD0mNI7IlcIB5TtpGdjtrB7eMRQe3NyOEVa6YTfKshr9r8xhqTNu3h9z3T+rMMTKO
         zHC6YinnS3kALhjzSHdF6ieIGKJk+47009yAFaAPsUvz+zoDnsux5G7aWSO/OWRm59l2
         XTP9HwxAYzH/mPgxGYrmsbForsuYzCHdVAeU5zON/73DOMryoJci2/mHlK0AhsWCjPMw
         Vvyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dG+qpI2+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id s9si13303wmh.1.2021.06.01.10.31.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 10:31:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Received: by mail-lf1-x133.google.com with SMTP id j10so23011790lfb.12
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 10:31:32 -0700 (PDT)
X-Received: by 2002:a19:f706:: with SMTP id z6mr5376947lfe.122.1622568691591;
 Tue, 01 Jun 2021 10:31:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <20210407211704.367039-1-morbo@google.com>
 <202105191422.2E6748C4E0@keescook> <YLVRTilQ5k5n+Vmz@archlinux-ax161>
In-Reply-To: <YLVRTilQ5k5n+Vmz@archlinux-ax161>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Jun 2021 10:31:20 -0700
Message-ID: <CAKwvOdkbCmfraMwf684J2m4Q929UO+7ZOW9xP41pwjUR_Y5G2w@mail.gmail.com>
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization infrastructure
To: Nathan Chancellor <nathan@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Bill Wendling <morbo@google.com>, 
	Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dG+qpI2+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133
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

On Mon, May 31, 2021 at 2:12 PM Nathan Chancellor <nathan@kernel.org> wrote:
> Would this be appropriate to send?
>
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index c45613c30803..0d03f6ccdb70 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14378,9 +14378,13 @@ F:     include/uapi/linux/personality.h
>  PGO BASED KERNEL PROFILING
>  M:     Sami Tolvanen <samitolvanen@google.com>
>  M:     Bill Wendling <wcw@google.com>
> +M:     Kees Cook <keescook@chromium.org>
>  R:     Nathan Chancellor <nathan@kernel.org>
>  R:     Nick Desaulniers <ndesaulniers@google.com>
> +L:     clang-built-linux@googlegroups.com
>  S:     Supported
> +B:     https://github.com/ClangBuiltLinux/linux/issues
> +T:     git git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git for-next/clang/pgo
>  F:     Documentation/dev-tools/pgo.rst
>  F:     kernel/pgo/
>

I think so.
Acked-by: Nick Desaulniers <ndesaulniers@google.com>
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkbCmfraMwf684J2m4Q929UO%2B7ZOW9xP41pwjUR_Y5G2w%40mail.gmail.com.
