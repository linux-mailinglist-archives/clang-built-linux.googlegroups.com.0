Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXOVUD7AKGQEZC6JKPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id 540222CCACC
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 01:01:34 +0100 (CET)
Received: by mail-ua1-x939.google.com with SMTP id k3sf96175uad.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 16:01:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606953693; cv=pass;
        d=google.com; s=arc-20160816;
        b=E7BtqJwGWORlgHZOF5nq8Gvf8snHbbYu+QQZS65BalAx9v6SiSStGbDLzV8zKoo/WZ
         Ftgk+G4G4DVPHcvB9Zdc4gkOD4jz9SfrSuaOCzxtiRXfHEbMGuypwmyHg+nYaaBdNUDH
         rRej9Mxqs+mHUTgUwbXWyDCrKS6U7N4tZhyuxw/xVveWE6r3fw1/on0R6uy6RN3Jv/52
         v65R9wMxE2SO8uzwYUMqCBNUmqioLu1rt6I+KltENhoGElbTT1SDDmbFJR5AUJwwj17W
         IlBjYiFppjQdhTI7pF08XeDtdqW2XO2i3l1LIhXRE7jmXw4mdRO5n/RBsLyjXFhHW21f
         oe9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ozU28OZyuC74xwGfGM2OH5Z3Z0rjtwn7pqNbKwH4e1g=;
        b=sSGlyQ15ehBxsqIRlyEI3u60SYkUV38bZuNmaM/qlP6DoAaEq5n4mBmewyovBqN7Wx
         +I+DDTHCtwgjDql4N3gPvzhpaX061bTJvLgUwWrpRUWVIfXOTssgxfW+jUjuRXHoez83
         dUZrGzQ1zH5vY356esO4z58PzbM7/OKy4rAlmr0OGW3OQamswEtjp+6YHc1+JS9FXexS
         WZUg5AsGzgKQfFTIRJiKNdASqlFcLknpaZsTk1vy/xv1qywJIwr73d492oD/i3EA96Qw
         fBbn+rxz0bLvwODgqPonDqL73GBrep1T4fL7H1r+p4MQVjQvmskret2avVGCHHTo1HyU
         ox6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aKU+Elxn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ozU28OZyuC74xwGfGM2OH5Z3Z0rjtwn7pqNbKwH4e1g=;
        b=iGJ1x9e++NXuaIM0HzPEUqIimTGUyttL/2qO6yGkO0MGM279uNnARhJWBxD2B5eYiR
         NgkkTrGVZqSen/dTSZHAwrAlZu6OrLwPPV1r1wnQcMjV98UaauQBKobe2nw/Nt+t5yFL
         AtK+Qr+4/qzByaf3C2U9hAIs1qHeDrCg+kAoJQJHww0AFSAM2YRVGJ0e4jHc7kdWCFa1
         y83n/U7dfO9z7dhnaHz+FsFD+MIjl/Bpuj0AIjl3UxQXjWJwSaYnIQHPOMBZYRWQp0jG
         KPPLGb+zLq8znFA3Cc7xTpsCcnhlup8hyCQy22cjYOIZEy5y/8ZWXEAJ1LoUBqkqoKoa
         1Pgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ozU28OZyuC74xwGfGM2OH5Z3Z0rjtwn7pqNbKwH4e1g=;
        b=Rao05w49cRe7UljPm4SJp+UMRVqvSiMDdHAjcsGrCZRIhHzpK2nwFGdERWnNWTVWUy
         v8d6QermL0bLNuiCX9KGwTdQA6T0qaMddlN/FnowrsdkSdLd/RBEyOX2uuHY1uE20zp8
         AG3JzF8GPhLfWtvGXS5TCd99iHPQm8T3jr4gVeU4U8nSXJIUHDoWfrwHk1jKGKd9Bsyh
         5Lz19WOfUfzkWP7Xn5w1p3cDzqKdB2iWDfqjG4reyRHhagDRX5KZW4yCMgWyMbUEZxMo
         ZzeXN0tZBy3fsQUOxlvbg45NK3L3ib3eojK99bB6erFInJEsxMkT1LNjwjvf7ZmXaRWz
         39Aw==
X-Gm-Message-State: AOAM530+nkz1axyL7it4FqRGGsszDbEuyU8TKHzwPqnxnDZeiqqRFbEe
	Y+QaPUuKCYHWAbFeMIvXUDo=
X-Google-Smtp-Source: ABdhPJyeIAdWHbamnQhYUMX7GrTqKalAyTnNuLjvmcgWz/JytRnEup+dMaWps6Exo06yYrKYf1K08w==
X-Received: by 2002:ab0:2859:: with SMTP id c25mr593189uaq.82.1606953693263;
        Wed, 02 Dec 2020 16:01:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:2206:: with SMTP id 6ls301727uad.5.gmail; Wed, 02 Dec
 2020 16:01:32 -0800 (PST)
X-Received: by 2002:ab0:5a2d:: with SMTP id l42mr513638uad.93.1606953692881;
        Wed, 02 Dec 2020 16:01:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606953692; cv=none;
        d=google.com; s=arc-20160816;
        b=FD2EysW2fUwQcIN5kTTKgH7jDVL9C/zHTLc/JN5Oa7srfxNJQucqXKhXY1KFMKmqWk
         b5MeDp85sA7a867noIvlftqOGKluKW26KyeqBhHbKpYEoBPWHp+R04+HUVmt8l/Ql6r0
         v7bzMulGrf13ezvFFM+gQBUAwn9f6AMvXa2hG8aEewARiXSb5CwKF7hwAiABajlLpthG
         Nvc/HJN/IFojZaeKCbh/T5xrGoMTmml7gHV0PBf2jUADV4qU/by9lFFncgdAV2Yo27+J
         RMq9xtcunxSKOtJVpYluOX4sSdTeKUi4i7Ick1jZTY4/IgTOEwdPpXdJ/DWB5OFWBS7E
         Sh3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TfjgZXZpIq5fZzABqVm3ochfUst+vG1roSThKbX3esM=;
        b=AbvdTTKRv8M1fFoBVAIR9yRnwBZrvXfwSKEnLogFKToVprj+hL5r4n9rVdgP56ou4J
         0YSVyTQQHZsvv0ryNuIAAFYuAxxz2B808PI9hd45//UbEWCnO4dUY726rLHNYZL9Ryp2
         ECbchnJdtCwXJisBGhtK+7jiHdUeFx+266XNBbhTCqBPwaAofXglGYcL44ymOWZ2L/Ok
         5B4r2tqVpo28MFjKDuTAODEwBFajYi9C8onICicxTTtbYUbg40v865uZkuxdQKzUaDAI
         AFCVKOSzK/DB9fetRbypYx3/XfBULwkPT8PReI14ul40lmpoZw2dehyvQs9SpftaUaiS
         hH+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aKU+Elxn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id f26si22004uao.0.2020.12.02.16.01.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 16:01:32 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id g18so294547pgk.1
        for <clang-built-linux@googlegroups.com>; Wed, 02 Dec 2020 16:01:32 -0800 (PST)
X-Received: by 2002:a62:7905:0:b029:197:f300:5a2a with SMTP id
 u5-20020a6279050000b0290197f3005a2amr614586pfc.30.1606953691833; Wed, 02 Dec
 2020 16:01:31 -0800 (PST)
MIME-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
In-Reply-To: <20201201213707.541432-1-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 2 Dec 2020 16:01:20 -0800
Message-ID: <CAKwvOdnJvGR9L8n+w3E6idCXkGyykkycqbjiPQNNQSoCHrabLg@mail.gmail.com>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	PCI <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aKU+Elxn;       spf=pass
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

On Tue, Dec 1, 2020 at 1:37 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> This patch series adds support for building the kernel with Clang's
> Link Time Optimization (LTO). In addition to performance, the primary
> motivation for LTO is to allow Clang's Control-Flow Integrity (CFI)
> to be used in the kernel. Google has shipped millions of Pixel
> devices running three major kernel versions with LTO+CFI since 2018.
>
> Most of the patches are build system changes for handling LLVM
> bitcode, which Clang produces with LTO instead of ELF object files,
> postponing ELF processing until a later stage, and ensuring initcall
> ordering.
>
> Note that arm64 support depends on Will's memory ordering patches
> [1]. I will post x86_64 patches separately after we have fixed the
> remaining objtool warnings [2][3].
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/lto
> [2] https://lore.kernel.org/lkml/20201120040424.a3wctajzft4ufoiw@treble/
> [3] https://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git/log/?h=objtool-vmlinux
>
> You can also pull this series from
>
>   https://github.com/samitolvanen/linux.git lto-v8
>
> ---
> Changes in v8:
>
>   - Cleaned up the LTO Kconfig options based on suggestions from
>     Nick and Kees.

Thanks Sami, for the series:

Tested-by: Nick Desaulniers <ndesaulniers@google.com>

(build and boot tested under emulation with
https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/lto
additionally rebased on top).

As with v7, if the series changes drastically for v9, please consider
dropping my tested by tag for the individual patches that change and I
will help re-test them.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnJvGR9L8n%2Bw3E6idCXkGyykkycqbjiPQNNQSoCHrabLg%40mail.gmail.com.
