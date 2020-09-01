Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVVGW35AKGQEWBVLCJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCCA2584B4
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 02:18:31 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id k74sf6334803ybf.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 17:18:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598919510; cv=pass;
        d=google.com; s=arc-20160816;
        b=nsY904L4Z+5JoL7DvLTa8oTYzh/jDROFYi3mDC8Huh7RBabawRhHQrPIqLX16qG7h6
         9eqN8y5ImWFMxVSURcrG6TkyvsWP6L0OS6D2YKY0PsP6VNJa4LElv4GSLNNs4g5vdsbs
         ifo0hyYEAtJ4UAismma5ZbmlrCuJV7q3aZ+NAzQZ34/QIjbGIQp4NVM1cbhCj/gXC2DY
         Nb2VhcTjECQVqr9bHgg7rLRjcrMnk1853MMcAiND3KBbv5THphVmGo5hq51hdaQCD5Em
         Bpvq5IE3xFcDypfSQh9ctKuq01wD9ZCNoI+Ecqo+SbqArvZAbmCkKS7Fi6Nt7xU5yxgj
         a4aA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=JGmnXuheChrYIXHovwauHK5PZHhBo4V34ZPBo7a9cAo=;
        b=d/s/qbdm4H7mdaxpDjCdx6aK2LjBRGEHLuNJuWkvtf7SNhzXP61L9fBV4+hH/9JZ24
         BQNvNR+8Gz8XbRnQlWM5MwfJOLpn8WXL8PnmxQc6Xtwz2S7/9X8iYDIbjVqEAGNaWT2r
         W7VrE7D4goEDb4u56UkichCIcwnAhYnqXDGFnLSgjp537eKzz8Z2fbJyLh0CJaJtev4D
         yC+eSI+qIM7A4ZfY5Oo+6dPfGTyMXXrhIcQ67Enmz5xYEZp/QZos+Lcqd5WcRa4Ur5g5
         zNNMKGYba0dLhAx+MCdxXIElfQ68aDbjT3d8mIgCR32ENZpfODhVM29+WgWV37VNhF5W
         QSSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="R7Gtd1/P";
       spf=pass (google.com: domain of 3vznnxwwkalifvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3VZNNXwwKALIfVWkSmdfaWjkYggYdW.Uge@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JGmnXuheChrYIXHovwauHK5PZHhBo4V34ZPBo7a9cAo=;
        b=h+8JS39d0Itqw5UgXFUwKRFCZue8aOwbfJDil9Qx4us3hp3tb0RnnU3CMNLLAG09JP
         QHYebv9ZjEEQxyML/GiMHXQIFWjZb/AttGn1mpvrWxgO33mavgopBXqzOhGssgUVSGfF
         7/oublrJ2vI3Ai1Uixg9HInTRCAKr+ELvbXZUO5PaGNTIRzlpQRfTqRMYKmzg0nZBo/4
         yNPsQ5RZiWyR4p7BsIQ2nf62tzusyN12GZdUrab/EJcAyYodC65o2fL53owBF8H3ADwo
         G69kcKROkDg1Nzi5gLJPH8hcIp5Sea6OX1vEzw//M2YlS9GL1bK4AqJlPboCbcH/rOOV
         cKzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JGmnXuheChrYIXHovwauHK5PZHhBo4V34ZPBo7a9cAo=;
        b=A4FQS8SJhNMr1VKAvyLQ3FhwwqXkHdBpRrLyiUG1ivQRnYQLado/l4YEGBjTH+i45b
         g+Xbg3QQbL9UpYJ1ze15/IBP94fO7XZGh7SzOCXwGea2CASGzXCXiSBvncRdgeQjjK5X
         eXsD50YkVfbgGw00kXgQQeEz0nyXp1bzu47Rng1Gv+COQg/204v1EDvqptT7ofeFc5hb
         iAeak6uBmuzAgK1r1nr9bUJ9yTWHE7nKfVICHc7mGYsAfR8A6bIFhK9flDcne66HAgj1
         EVDqh1KGUL4DcviJtrrES81jBq9vvDriZlkTrP2X4wdKs7Hs6yXAWpbUEuPUFTE7qtQa
         0Idw==
X-Gm-Message-State: AOAM530Ln5zd7CW2nfhMeg+aQsmNWNahzAMd0nWNq/UNBw3maRUeNQs4
	Hvj9siQDoxo62oxH1SYWV5I=
X-Google-Smtp-Source: ABdhPJx4coJEAOYVLj6lqE3jNIfCSOvbIg5cLDqKLLuLwKqrk++lrnNsR+ES5wKjuUmojOxG1xyh1A==
X-Received: by 2002:a25:ca57:: with SMTP id a84mr6325706ybg.313.1598919510241;
        Mon, 31 Aug 2020 17:18:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5755:: with SMTP id l82ls3973206ybb.5.gmail; Mon, 31 Aug
 2020 17:18:29 -0700 (PDT)
X-Received: by 2002:a25:d290:: with SMTP id j138mr6030211ybg.146.1598919509849;
        Mon, 31 Aug 2020 17:18:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598919509; cv=none;
        d=google.com; s=arc-20160816;
        b=OoGxONjoi0SKaW1hFnszLuEZ8n5fH1fxpgLKEUvgSb3myAZGeuj4uxBWE/QPx9EHVO
         FCXB9gF7QaVfKemca02aifhAH+bzY4EnN/YtpmR+HcdPglJfyrOZjERRy7Cx9k448CI6
         oZU1pRfodZbqJp9g+yet3pwx8U8hpAKppj//JhIPVcWQcoLnBkrTdSh0BABQfhCdZ1u/
         l6XqUEJ50GowhoGBNcVJH9dI15FY6gnSlJemEnQ5NB2FhRTYybOtMHluzGTRroIwDCTm
         tYjpOG/DRvd1zcdzAkHeIL1aVJ64Qhu+1OGPIXtYKQjDEmxtEs4ReAqKKRT5aBJ1xNZe
         CR1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=NEi5SY5avnbdRDKWM6EkMbB9CYf2qgLLnorTM1MWHus=;
        b=wUnU16x5gAZgO2SuJWlc/K/0NEb3M713QxR4FKtIz/YYdaxjrWh0GCN0L6X8P7aM/m
         PdX1PjFXkXlhfkWpeTT58GiIiQwVQaSbuLlGGJ0KlboCnShuRqRdxzx08IKojXYAv1YW
         ubHD7OfTdwtOp4ylBS01caXyT6wp2Lk1RntmVNjQIWksm9lcSI9nujpjWT9hV00VOW8V
         4YhrW8nAAzTFEo+mHw1iGlUKeak/YteQBxfS18PnuZj4kxOjDIc1v4i/0EghCkpwRAe+
         iXkhPcMwWn4jKu/FSv0cHcKyGjRhaQ4F5WiC4P7QxfXktKcYLxFLbwe1SgzxXdJWxlQe
         mFqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="R7Gtd1/P";
       spf=pass (google.com: domain of 3vznnxwwkalifvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3VZNNXwwKALIfVWkSmdfaWjkYggYdW.Uge@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id 7si366901ybc.0.2020.08.31.17.18.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 17:18:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3vznnxwwkalifvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id k11so11130932ybp.1
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 17:18:29 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:aba5:: with SMTP id
 v34mr5941910ybi.337.1598919509455; Mon, 31 Aug 2020 17:18:29 -0700 (PDT)
Date: Mon, 31 Aug 2020 17:18:14 -0700
Message-Id: <20200901001821.1126189-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH v2 0/7] set clang minimum version to 10.0.1
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Marco Elver <elver@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com, 
	Daniel Borkmann <daniel@iogearbox.net>, Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="R7Gtd1/P";       spf=pass
 (google.com: domain of 3vznnxwwkalifvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3VZNNXwwKALIfVWkSmdfaWjkYggYdW.Uge@flex--ndesaulniers.bounces.google.com;
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

Adds a compile time #error to compiler-clang.h setting the effective
minimum supported version to clang 10.0.1. A separate patch has already
been picked up into the Documentation/ tree also confirming the version.

Next are a series of reverts. One for 32b arm is a partial revert.

Then Marco suggested fixes to KASAN docs.

Finally, improve the warning for GCC too as per Kees.

Patches after 001 are new for v2.

Marco Elver (1):
  kasan: Remove mentions of unsupported Clang versions

Nick Desaulniers (6):
  compiler-clang: add build check for clang 10.0.1
  Revert "kbuild: disable clang's default use of -fmerge-all-constants"
  Revert "arm64: bti: Require clang >= 10.0.1 for in-kernel BTI support"
  Revert "arm64: vdso: Fix compilation with clang older than 8"
  Partial revert "ARM: 8905/1: Emit __gnu_mcount_nc when using Clang
    10.0.0 or newer"
  compiler-gcc: improve version warning

 Documentation/dev-tools/kasan.rst | 4 ++--
 Makefile                          | 9 ---------
 arch/arm/Kconfig                  | 2 +-
 arch/arm64/Kconfig                | 2 --
 arch/arm64/kernel/vdso/Makefile   | 7 -------
 include/linux/compiler-clang.h    | 8 ++++++++
 include/linux/compiler-gcc.h      | 2 +-
 lib/Kconfig.kasan                 | 9 ++++-----
 8 files changed, 16 insertions(+), 27 deletions(-)

-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901001821.1126189-1-ndesaulniers%40google.com.
