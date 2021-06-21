Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXN4YSDAMGQE3YUBUKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8B33AF918
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 01:18:54 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id s5-20020aa78d450000b02902ace63a7e93sf5694561pfe.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 16:18:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624317533; cv=pass;
        d=google.com; s=arc-20160816;
        b=T7+7ADdKTtYVDFA0yYIgN99fBHtGNm0ZFaxj/1hNfjgq4fJOIfXsF4w+bpQsyayxYD
         CiW+PXrMxrIRtmDmvxoXXfvGxUzBvoA88jIqkaP2lWSfRG8CvlF32mXv3GcgeFQQJJMx
         P1u06kv+TH35gLsY8cn4KoNQMQzfecRk9dq3+yeEEpt2lI/Yjc2paYHdne1O3dotul/d
         UpLETtQl6DIMu6uM8CmLwutFfeTgFLCL/dyH823lJpXwL5E/e/Ay1aoJXOyqfAP/QYdO
         1FtY2C3hdyukLD3B4BdkfCQPJ8smCc6J9bz1eE01x2chHf52Uqy/Tvmu7bw9Tggl5U1V
         0BBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=hA4w1F9FWcwa0MSclOWMgczz34U/pJCqus/aciL9o9g=;
        b=eiXgEbCLabiKuL9VOEzE+w/+I247b6Oz0o9WmqydOYv6el1qOZpimkN47YOteJVInc
         nh7Q2dwr/+JPDEJBmU/x0VYIUIjqKjRZw5RKVZ0BPagNM/GlBd5Jq+J/0KxR4fxKpbMy
         l3zXIPkyd85IrtSObm3vH7YniUDKUYJX5r3KbrT4SZmPNJlnuSDAQWQWL0WOHYynZ5ie
         olpcC0WxxHfgPHyFI0n2jRcnhIROplFqIyAyIQQ8pPs11d1l/b1Z0w0srMH6S2d1CvyE
         H08tAf6t3FlQsH5j207TZ+fVyTzfEtAkrSX+LXG+9rl+23ZPuxUW6t9Uje/WnzkGyOYb
         5I7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Rl2f+IVF;
       spf=pass (google.com: domain of 3wx7ryawkaogxnockevxsobcqyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3Wx7RYAwKAOgXNOcKeVXSObcQYYQVO.MYW@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=hA4w1F9FWcwa0MSclOWMgczz34U/pJCqus/aciL9o9g=;
        b=qIJ5UgkrSw6OP3FdjI1i5qexKo4JRcyY70Hvq0VeWHHeYSB+/ro1/XyCLpRqx3qf+3
         RcYIwErzvCbA75o6YJ8qzs/nIfqMF9dBVF8HULfmg2fwwfebBSK2QACcXpx2SSI5HoXK
         YwDcxpjrtRPHsawyu85MFSnQ1GgNAkPurC3zCIMkgxZ4WXQ+qTC9WVw3jSAfVZP4Av4x
         xZQlLkm+kq+ce78tA0cbtZr6MsZg9A08xxwv7fmn8iOVpwYCco0p4yKLmMahWQcG5acg
         H+IoUWRuCaE0/6Nxpm/p16C3Vbz1ZLgIS2LaB1EHDhU7rVP9w4sMr+AQ6Uy/jvl/GasG
         sClA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hA4w1F9FWcwa0MSclOWMgczz34U/pJCqus/aciL9o9g=;
        b=YRkLYWEm5L72e+bRXQb2zpZ1eurCjA5nNVbE3HgSvg6GJJ84tzge/EgmNgnNwc3KjS
         zT8HtHESXiaRTLO/2eOdnI8uQsnQnU3h0Erbur1jXtYH0Kza1U0yAaJd0gaHI6GmO8PW
         oEhDf/c5dh8UbSg4ISWNshDqyL9c+sAEWkOHB4m8JagJkOUYikRflWlNrg3+WWX6GRPu
         q2CqP2k0IxikD/b0bbMK6Dhwhn3YGr/MBNu9F9z8xegLRHUkLjI9yg/2rcfCXZB5LlEX
         cMa3l2DHMiQONHfmx7WxOeMfHsWns/hVRtgIC1RE4h90y+YUKz7LRcmTzB34AQQQqFBM
         BrXg==
X-Gm-Message-State: AOAM531duena/JBvZsGREna1VBhgnu9ZKjpKgMtSE3aDxuJcaxsplKs0
	OOIGg8lcI9uu5hCs4fSOTZc=
X-Google-Smtp-Source: ABdhPJyV9qSwZ+x8e3NK4ZuTVnZCVSUd8AskpkFVam3rQnGFetDpg2qlTyfCc7/1CEf0zVWQK+PvZQ==
X-Received: by 2002:a05:6a00:180c:b029:304:922b:f8f1 with SMTP id y12-20020a056a00180cb0290304922bf8f1mr578174pfa.47.1624317533280;
        Mon, 21 Jun 2021 16:18:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ea4f:: with SMTP id l15ls3384751pgk.11.gmail; Mon, 21
 Jun 2021 16:18:52 -0700 (PDT)
X-Received: by 2002:a65:4985:: with SMTP id r5mr843803pgs.122.1624317532707;
        Mon, 21 Jun 2021 16:18:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624317532; cv=none;
        d=google.com; s=arc-20160816;
        b=1CM3uskcb5FoFvS6j71Dc7VEffLEicPhQ7KkPKP/nsfNVVmBuLM1fe8UDasZnfNy7g
         TK1j9Ugnqhji5i8PaVS695Cj772GiLVC8b8g6Y7CqBHj0MNANf/AmVd8pgL5V0xOqA0d
         NCVnVr/tUuVHNzXFGjDmeWdoQM11gKRUksMLQoNZk8a1ht2f7fqw950c818+siSsa3bP
         eEYZp3O+EYW8xMf/Id/OirXl9qCqPNWpv4R20VBI3v3sGaw5e54eA/T8KiZ3xuXRAWLh
         ySX2VHIykd4OFuBYrQZV5XWDYd/kLlQjwfmgMQpZGi7hVLfp7h9YgT8myEoczglRYclq
         wKUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=EuIcmSw5KPdPoDKod6astx8c5RujtZWXcqBmQqWg68Y=;
        b=IaipOAzBVlyZ9ib8AnLHhdhGpvwvcVp9cTnqotYzXSfjKSvEhuBmwfRCxFFAiG1I8s
         4mJFJ1DkvsgidLVPZcK0pDr8cdJWib90SqoZfh2agP7K2lA3aSRBKvtRq7m+5JM2aag6
         l6jJ9FTuHuYcyHwS5ZQKMY0omdsgZC4Bz+BHwKXSEBUMm97pphj+P9czw5DPtBSwGqgY
         KhV6MC2m4/QYeUkh8RMpLJ6/gu22Y9Y10vLZecyLOMPLCmtlyYoIrUe8JkFQjhIMXvkF
         0lCfYkUlsyErRwv0yKLgssOmkyXYloRfvYynKiHUa/6TZMABsvVWhxzgVMdVBwKff3PQ
         vPBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Rl2f+IVF;
       spf=pass (google.com: domain of 3wx7ryawkaogxnockevxsobcqyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3Wx7RYAwKAOgXNOcKeVXSObcQYYQVO.MYW@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id r7si25033pjp.0.2021.06.21.16.18.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jun 2021 16:18:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wx7ryawkaogxnockevxsobcqyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id p5-20020a0ccb850000b029025849db65e9so16055872qvk.23
        for <clang-built-linux@googlegroups.com>; Mon, 21 Jun 2021 16:18:52 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:dfd:ebf9:4ec7:1783])
 (user=ndesaulniers job=sendgmr) by 2002:a25:3749:: with SMTP id
 e70mr789717yba.53.1624317531803; Mon, 21 Jun 2021 16:18:51 -0700 (PDT)
Date: Mon, 21 Jun 2021 16:18:19 -0700
Message-Id: <20210621231822.2848305-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.288.g62a8d224e6-goog
Subject: [PATCH v2 0/3] no_profile fn attr and Kconfig for GCOV+PGO
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
	linux-toolchains@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>, 
	Vasily Gorbik <gor@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>, linux-s390@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	Catalin Marinas <catalin.marinas@arm.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Rl2f+IVF;       spf=pass
 (google.com: domain of 3wx7ryawkaogxnockevxsobcqyyqvo.myw@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3Wx7RYAwKAOgXNOcKeVXSObcQYYQVO.MYW@flex--ndesaulniers.bounces.google.com;
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

The kernel has been using noinstr for correctness to politely request
that the compiler avoid adding various forms of instrumentation to
certain functions.

GCOV and PGO can both instrument functions, yet the function attribute
to disable such instrumentation (no_profile_instrument_function) was not
being used to suppress such implementation. Also, clang only just
recently gained support for no_profile_instrument_function. GCC has
supported that since 7.1+.

Add a new function annotation __no_profile that expands to
__attribute__((__no_profile_instrument_function__)) and Kconfig values
CC_HAS_NO_PROFILE_FN_ATTR and ARCH_WANTS_NO_INSTR. Make GCOV and PGO
depend on either !ARCH_WANTS_NO_INSTR or CC_HAS_NO_PROFILE_FN_ATTR.

Changes V1 -> V2:
* s/no_profile/no_profile_instrument_function/
* fix trailing double underscore on GCC 4 define, as per Fangrui+Miguel.
* Pick up Fangrui + Miguel's reviewed-by tag.
* Add link to GCC's doc.
* Fix clang's doc format; will appear once clang-13 is released.
* New cleanup patch 2/3. Orthogonal to the series, but while I'm here...

Base is
https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=for-next/clang/pgo.

Nick Desaulniers (3):
  compiler_attributes.h: define __no_profile, add to noinstr
  compiler_attributes.h: cleanups for GCC 4.9+
  Kconfig: add ARCH_WANTS_NO_INSTR+CC_HAS_NO_PROFILE_FN_ATTR, depend on
    for GCOV and PGO

 arch/Kconfig                        |  7 +++++++
 arch/arm64/Kconfig                  |  1 +
 arch/s390/Kconfig                   |  1 +
 arch/x86/Kconfig                    |  1 +
 include/linux/compiler_attributes.h | 19 ++++++++++++++++---
 include/linux/compiler_types.h      |  2 +-
 init/Kconfig                        |  3 +++
 kernel/gcov/Kconfig                 |  1 +
 kernel/pgo/Kconfig                  |  3 ++-
 9 files changed, 33 insertions(+), 5 deletions(-)


base-commit: 4356bc4c0425c81e204f561acf4dd0095544a6cb
-- 
2.32.0.288.g62a8d224e6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210621231822.2848305-1-ndesaulniers%40google.com.
