Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBAHRYP5AKGQEIY3WF4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C83125C22A
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 16:06:57 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id r1sf2998113ybg.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 07:06:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599142016; cv=pass;
        d=google.com; s=arc-20160816;
        b=X2JYcmyxkZM3ARTmujZd+4mvAjvdO6MwaTBFDYwS4Am3Bu/voJBRx98SMFyNRZ/hNt
         CF33EqgqDQKyk2kuaXHJF8sdboRfA8eM67QGr6JyTaQIpaIDdHInnenhHf6VGxwYb84D
         cwJBmnWpX19flZ4Gg5whBN661hfNCMl1B4cIXRP6wgElvCrVRPZweMdGWGGuYFeMwUF9
         m0B5qG2rlNF/CG44/qo+G2YEPT9Hye8EvF9w3sjs+8LKvPyTeQJuRWfv1ua+8eAuxmpv
         uNkpCVHGFrGoX050GNftWOFQizX2pATrAlE6lGvw2KPNzrlCqmDQsJQLDsP97hICRnPT
         tb9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=/w9woNqYzPFCXpL8LYBzn9X8t9NXqAb2ZmUcQYOkP68=;
        b=RWtLim+AR3SLyN8AOVMyGFf7+x61V0NtWGYTKGqcQ2tJt45Bj0Zta7ZXxnojNX+5hE
         I+gSXwn4RRvj7pl3xOESR4NOBGlzpudhG0H+NbAKji4h+xvGKwPQgs+5T7Yh0B+mKCTd
         IHv3jSZpeQAx0RNoNl8Jt4lKp+RbV8mpAZKeYIeLp8saaThCS4R1v9mZ5hgtbrceJ1yi
         wH8cTR7YB17X9y1gxO26yao1WnMsvMFvxQwRrVwAyi4vyAEUY3cbKWBDmWbL+Zx1PGrh
         LzYov4/hNbjuCYLNKBrWlj/zb/zmGuq9yiQPjM0tsTTSBwGQd4aebIeN0MO66fDbsF9v
         JdgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mnlOmX22;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/w9woNqYzPFCXpL8LYBzn9X8t9NXqAb2ZmUcQYOkP68=;
        b=XiAxB9fQYk2gg1ogCIZbkzK8nP5R2laINebO0BQSN+gt/+3ojveX2QYSsQiQuv/yk+
         w0Sri/a45TPMvDWYmTmJNpJsNeQp4hc/PDWCIZLu7GeOCMRgxQdzCnVxzYu+O1MgCV73
         kYNz/15SWiyrxiqS7DoPMTCx0lv785gmhRau702OFRo2X+Rhd8E69w4wikBKcI8hhybf
         jQ5VXijisBYDznrUE629VCvRekotjIy1tFHZ57QHkxU5x6Heg+11RQ+iLMdwHimH1kig
         FSWtb0Mxa4fcWKnZUsOIYcVGPNcjyG+f+E5KRdEvbNJDlqbgD9+HPZ+ZyPYuxsINOhx2
         vYVw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/w9woNqYzPFCXpL8LYBzn9X8t9NXqAb2ZmUcQYOkP68=;
        b=YCwjpqHgjpMeHlaQCJYa5YsByhZl5ti0PyJPVMXNidyhPcHpkxWbvLxK17nmmoZrxd
         wyuU6oFFSHAn6d6S4QmnJEwtrdBYXegmFRhME7fbtF8uAJ8b3vOSFZgaZleHuQP2My9g
         PHj4DBj9uRanoVhHKor+X2mhcrSgCekyEV5n9jxwF5/IjEguc9j8cvovEmWUqQ3jQ2ya
         +2YKHRlbw5nrarQU4P2B1jS1+aJY9N2epa3x0uB5WSPZ80D1ASOLLFAO+r9kYcSMHcg3
         qbxgc3kaUbJLYPyP9Tjxb7B+8DNWzCd5elss92fWdmKaIcjVxp0urcZWeK8f7OhU6IXz
         ReRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/w9woNqYzPFCXpL8LYBzn9X8t9NXqAb2ZmUcQYOkP68=;
        b=eECtqmpPj+EvEqchZYwJyLe72M29PTgEXfbR4RKBMGij1xlost9R50oPAB+dInb33Z
         fMUlQ88HyBtX0QuHG2d4iQclXw2+E1QAfn7kwzMTC2zXXY2Zme3szQxU2ggmNe/7AkIV
         sO8HR8H1YrYsgq0hsbKjrYMygvset52UgYQesyIbfNN5IaKxmUgh7FuJjU45eXqn3mxi
         RsbvNdin6F7dQteHpCBvA6TdsyZDRfAqya9ymSYMc6MydgB+zthRVjAUw7swixIod8wo
         eG6u6WJRWjcqjdNNi/uehH162VNHdKEUkidQv+Qt3gK4MdX3CED9rcjGtCJLiz5RZYee
         LuaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325NdC1oBfEq1ev6XndsdaiLGPFRs3nUo3UZjCsA+Q3gGItRLmj
	s6AR+hsyNie9mv1pL/Z3KN4=
X-Google-Smtp-Source: ABdhPJwCfeiQ0g8+y71PW2MF/Yw8vhCGoEDN8bYgETRRnQqhboVgYugqDaWUok+ItqpxzZcSoB/RAw==
X-Received: by 2002:a25:e0d5:: with SMTP id x204mr3136304ybg.57.1599142016480;
        Thu, 03 Sep 2020 07:06:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ef05:: with SMTP id g5ls1309878ybd.0.gmail; Thu, 03 Sep
 2020 07:06:56 -0700 (PDT)
X-Received: by 2002:a25:cdc4:: with SMTP id d187mr2951402ybf.521.1599142016163;
        Thu, 03 Sep 2020 07:06:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599142016; cv=none;
        d=google.com; s=arc-20160816;
        b=Gkwt8OUGpFmUMqPQTLXJFDl12FdH38/lqccXxwkBpeKGP/TJkcD4ecGQKkTFZp5+8t
         wWWzPUt+W6maaGwnWyNAefqieHlSbP2+C2vt1IDI8VTWVEjdAtDhJ1b0q2mJR7qEdSwf
         n/RIoIg3G8eMBK69E6fLt3Omewp9GIkAZg+gsGiiwVDTguy2ZM67alJBSvxc4GE83peX
         2ngsEPpZlUXRI7u68ZBJkCFIo5VrUT4mih9jwF8ndinp5r31zT56oXN0vOPWMYMFmfWH
         3M1qjZXw0Hde17YfRcZhwKoRra5kLIKcpKfAyGIXTNlPbwvVqUSNXKzbxISzwPtLFKGU
         +wNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5ObVubezy/CF71fQSZkxZrEK4lO9ry8fuSW6qb1uHYU=;
        b=E07ZKdRZdezQA7eWmBZ19c7p46OBqxiLjVd/enxm20RWjXS9o5Un7KgSOb++/HHNP0
         zFhFGfYMAdHj2gVUVpYdBF2Djz6j0ZpEurWHIIQ45vYqZEV7vA0YRV0aUYUPPPEzj4QT
         5X14ExCFW+FHJ/ha6e/UcgITILLCQASOqe+s/E4dZzbyTodztv2f/s8X5fF3In3bJxIh
         CbxHS73VweXuv9vNEekXdcUDXPGIth//7a9D5zCFUCLQQdPfr3ATGqx1QKy93+3s684+
         m2bVU/z0Rdp36G/TVnX+KgGvLM2NUppOab/pV4ZLQLmgzkeT4VI09p2iRJ9piyt3kwYF
         GcOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mnlOmX22;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id p14si334798ybl.4.2020.09.03.07.06.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 07:06:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id a65so2794648otc.8
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 07:06:56 -0700 (PDT)
X-Received: by 2002:a9d:7656:: with SMTP id o22mr1649411otl.109.1599142015719;
 Thu, 03 Sep 2020 07:06:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200902225911.209899-1-ndesaulniers@google.com>
In-Reply-To: <20200902225911.209899-1-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 3 Sep 2020 16:06:43 +0200
Message-ID: <CA+icZUXCLyGmYCnHSBJ+8s5QdbPRr+fsfpW43M7pYFEDFOOdJA@mail.gmail.com>
Subject: Re: [PATCH v3 0/7] set clang minimum version to 10.0.1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Marco Elver <elver@google.com>, 
	Andrey Konovalov <andreyknvl@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Daniel Borkmann <daniel@iogearbox.net>, 
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mnlOmX22;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::343
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Sep 3, 2020 at 12:59 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Adds a compile time #error to compiler-clang.h setting the effective
> minimum supported version to clang 10.0.1. A separate patch has already
> been picked up into the Documentation/ tree also confirming the version.
>
> Next are a series of reverts. One for 32b arm is a partial revert.
>
> Then Marco suggested fixes to KASAN docs.
>
> Finally, improve the warning for GCC too as per Kees.
>
> Patches after 001 are new for v2.
>
> v3 just collects tags and fixes typos in a few commit messages.
>

Through which Git tree is this patch-series going through?
Do the new LLVM/Clang maintainers already have their own Git tree @
git.kernel.org?

Is this patch-series material for Linux v5.9 or v5.10?

- Sedat -

> Marco Elver (1):
>   kasan: Remove mentions of unsupported Clang versions
>
> Nick Desaulniers (6):
>   compiler-clang: add build check for clang 10.0.1
>   Revert "kbuild: disable clang's default use of -fmerge-all-constants"
>   Revert "arm64: bti: Require clang >= 10.0.1 for in-kernel BTI support"
>   Revert "arm64: vdso: Fix compilation with clang older than 8"
>   Partially revert "ARM: 8905/1: Emit __gnu_mcount_nc when using Clang
>     10.0.0 or newer"
>   compiler-gcc: improve version error
>
>  Documentation/dev-tools/kasan.rst | 4 ++--
>  Makefile                          | 9 ---------
>  arch/arm/Kconfig                  | 2 +-
>  arch/arm64/Kconfig                | 2 --
>  arch/arm64/kernel/vdso/Makefile   | 7 -------
>  include/linux/compiler-clang.h    | 8 ++++++++
>  include/linux/compiler-gcc.h      | 2 +-
>  lib/Kconfig.kasan                 | 9 ++++-----
>  8 files changed, 16 insertions(+), 27 deletions(-)
>
> --
> 2.28.0.402.g5ffc5be6b7-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXCLyGmYCnHSBJ%2B8s5QdbPRr%2BfsfpW43M7pYFEDFOOdJA%40mail.gmail.com.
