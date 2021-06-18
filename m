Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIOZWSDAMGQEX7BGH7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 356AE3AD5E6
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 01:30:42 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id 80-20020ab004560000b0290278962332aesf2472191uav.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 16:30:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624059041; cv=pass;
        d=google.com; s=arc-20160816;
        b=t5vGpQMdgvoppF/zAMpym4ZocSbnm/76iwm5zsfN2L7gAI2MJPyb7zMtHmt1mnP6we
         DXJPdjEVziuSBobdy/WW45Ylboewm198B2vt0djZ74CoU8iVPMJ1RukYESS5YhYl7yP8
         QS2XJMKPY3qAMIyY6v+xZg5FXyDy+JJhShj7AeufwE/gNhEvhIdsHXpC6e8bSGNBVswU
         OpFCfvWmPBqIgXghQDBRbQqs3wMCglhrFxUZv7ec9GT25azAYGyBxI3NnSXNlKsekHCc
         SeJtyefVttWyeeqx4GWw4JP3Gl/umnYBBCqQUOyrpofoedXoJAOBllDfpJOAL3LG2YEy
         O6/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=Iw4ayPJYV3xNA2jSu7V5CxZohMWuvKrgQFWEmo52vuQ=;
        b=G5l2Ae9Sh6NIOqkIvZ5/fPoSOhO25qjMu54cqWgyc3QeD3WqsUcdqpcxYXLzqaeOR8
         DT48eBmIXQQpYGeozciV0NQjW1RSW1bJAJW3mS0GeybuGzIDlm6NuIf+kN3f9Af2eIWK
         qygmaky0w2K+LLe68CsJfzLC2ngbuSyizvmjMNuVZL/2u3IDmWAIljKS1phlxWzAhJxc
         GwJPca/+6ZBrTCwR50ZnVqD43VhhrHvRCZ80daEOZXLXERADgzwIvIHAW4aeMQ/eRJY0
         EYJqAD7JCKcc+PHP/ZGrTxxF8qYBqttjiW/bBsJ/aqO7D2+pQmm9ZMtF/AcxnR23Zicq
         aOaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SW5N62h7;
       spf=pass (google.com: domain of 3ocznyawkadskabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3oCzNYAwKADskabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Iw4ayPJYV3xNA2jSu7V5CxZohMWuvKrgQFWEmo52vuQ=;
        b=Op4VkTQYz9oK+0rwQt2aZWi0nkFAX35yMWyzWcbR6x3r+07s0+tJcYMLJp0jAr0Eno
         WW8mhZW60fkQWnZ8/mXJtVNDKUJ1IFSNu+zCI0+i91T+PXK2W5lWorqpq8DyHhRdj8Cl
         CapuXNFC6qSuNrHvJfiUHLRE/QZ8xBhyvxZC5o9T5vwfhN2OyT7sum6ot+xl0Ohb6eju
         c92V1MR6lCS4fOgBDn+EAiLId/vU6KAS4gZKphBuyTLkhvsdDBXlQ9zefEcPE2MVJOuG
         hzBPfXUYKcLg795ib7IyfN4sr8RQ4Zb6I9Xj0sm+x5tIaWsZ57sZe03VaLHr76wcv4Wg
         2bbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Iw4ayPJYV3xNA2jSu7V5CxZohMWuvKrgQFWEmo52vuQ=;
        b=YVbdkbP68cuZvb+Zr6saFgQyNj64vTM+hEjQNqb0ZZ2WV69K3k0RKf59dm2G2b6NJz
         3ehApet0XJqVJ3pTvBXNykQDNqJIqFvOlhC5n09tT8/c2IO9B8GYwiSZl9ZeBfhGXiKM
         Dr6aKkdMbQiq1uxjqpaOTgztA2hzze4vZDJHMwYlJcauerH6M6JZgK5nx0V0ekuQHBzq
         sxWW319gTsCNAx6MQKSkSrHssTNBxXSjILkoMMi9tI5NXVylZdowMPrcBQ5fTWWgxeRn
         X3i7tSSsKFfh8UvBefydnOARdJAeAnyy0h4euxhnhj//XTS5NwjAM2pUvUTdkkICjZay
         7O/Q==
X-Gm-Message-State: AOAM532gyGx9Vk8DHeavF5+0SPYh7X3u0fz7xf3ZP9YppNaplvtC2bMB
	p/jMaLWkCbV6L3k2GBJsZ4Q=
X-Google-Smtp-Source: ABdhPJyst9HBWNZHorqf3EqRxvbc6RQAMlPfom+qKat0AeRAOcydzHBP5MRAOPeUyiOcY4YQ11ki6g==
X-Received: by 2002:ab0:138e:: with SMTP id m14mr11393718uae.130.1624059041211;
        Fri, 18 Jun 2021 16:30:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:40a2:: with SMTP id i31ls2176575uad.2.gmail; Fri, 18 Jun
 2021 16:30:40 -0700 (PDT)
X-Received: by 2002:ab0:b09:: with SMTP id b9mr14937807uak.58.1624059040769;
        Fri, 18 Jun 2021 16:30:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624059040; cv=none;
        d=google.com; s=arc-20160816;
        b=SLr2rRFgDQqdHyAENB9Skpp7hfJUwa8si7Iec4rkXkEaRajyeP+HUlfoCr1Mf4KmW6
         Ocl9kQrRnJ82pQsDqc9qUJJJG290hYysabe53LKXHjUC2p7Gq9zhmCQSKWntwJOFTIZn
         CF1DfwkaJKBXUmn7jOWGAjiQ+HQ2rvd+e2dpILuY0gLtuTTntjmeuaeTNuWKmJFnW2sU
         n9b6zY/nB8x/dkQUtjdmPg2lNM8wK8r211Xn5ca2IYNas/rb4PEwcN3Db6AG0O+l3NjJ
         5/2dXg4hbhcuhRoH9Bqxv6jAsuaKh6gx2ImzghGK5q2QnRJlmoNpIwQxYSCqoxm5MbO8
         cR3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=y0FcYdQ4+KG5bqQnhMUoT4g521uUABU2kMM30IGFQqQ=;
        b=fxItwr9yvISax+JhdQmpbXTrj+0rTDeamcZy+2aBEH6Bwyobtg0NPsF7jvBvzKzMmF
         i5B358YWpDnbEKp9O6IGbT9jn2o4psPufmHEl2gKV1TGXavawv1S25h0zltLbyKYTOVX
         ozuUlmTsJPb8cxLW3yObqU5sTUL2UYgjQfCDondW/+9QBd26MJZLTC6OipEePuiNcKCA
         iLZbDwkOicML+RiB3knm1ItbDqZEt1zSUSi1KXmZec0DeR5H6BKyBX+9IvwWvnT0UnOS
         3ZwDiNOQ0DaI24GBCmLd7wkPNt4ruGWcLSJLu29r1sbatQ+VKf6BVTcejdqNhTGYB8ZP
         3maA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SW5N62h7;
       spf=pass (google.com: domain of 3ocznyawkadskabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3oCzNYAwKADskabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id ba24si723771vkb.1.2021.06.18.16.30.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 16:30:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ocznyawkadskabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id z5-20020ac86c450000b029024e9a87714dso8683686qtu.2
        for <clang-built-linux@googlegroups.com>; Fri, 18 Jun 2021 16:30:40 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:7c41:e84c:8fcb:6664])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:f0d:: with SMTP id
 gw13mr8354593qvb.34.1624059040385; Fri, 18 Jun 2021 16:30:40 -0700 (PDT)
Date: Fri, 18 Jun 2021 16:30:21 -0700
Message-Id: <20210618233023.1360185-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.288.g62a8d224e6-goog
Subject: [PATCH 0/2] no_profile fn attr and Kconfig for GCOV+PGO
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Bill Wendling <wcw@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Peter Oberparleiter <oberpar@linux.ibm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <nathan@kernel.org>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	x86@kernel.org, Borislav Petkov <bp@alien8.de>, Martin Liska <mliska@suse.cz>, 
	Marco Elver <elver@google.com>, Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>, 
	linux-doc@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	Dmitry Vyukov <dvyukov@google.com>, johannes.berg@intel.com, 
	linux-toolchains@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SW5N62h7;       spf=pass
 (google.com: domain of 3ocznyawkadskabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3oCzNYAwKADskabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

When we say noinstr, we mean noinstr.  GCOV and PGO can both instrument
functions. Add a new function annotation __no_profile that expands to
__attribute__((__no_profile__)) and Kconfig value
CC_HAS_NO_PROFILE_FN_ATTR.

Base is
https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=for-next/clang/pgo.

Nick Desaulniers (2):
  compiler_attributes.h: define __no_profile, add to noinstr
  Kconfig: CC_HAS_NO_PROFILE_FN_ATTR, depend on for GCOV and PGO

 include/linux/compiler_attributes.h | 12 ++++++++++++
 include/linux/compiler_types.h      |  2 +-
 init/Kconfig                        |  3 +++
 kernel/gcov/Kconfig                 |  1 +
 kernel/pgo/Kconfig                  |  3 ++-
 5 files changed, 19 insertions(+), 2 deletions(-)


base-commit: 4356bc4c0425c81e204f561acf4dd0095544a6cb
-- 
2.32.0.288.g62a8d224e6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210618233023.1360185-1-ndesaulniers%40google.com.
