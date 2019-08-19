Return-Path: <clang-built-linux+bncBDTI55WH24IRB7P65HVAKGQEVD7EMQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id D71EC921AF
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 12:52:46 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id s17sf2400138ybg.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 03:52:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566211966; cv=pass;
        d=google.com; s=arc-20160816;
        b=DUAFRJTnOthOB7J4BV8ti3IbzjH0iu9SjlJUV/Ne48jPR5XI1jl0PQjEWA67hTZiNE
         Xsg6B0gzvQcMeVO+Rz3jxiX1CnWEAusvgok81yCu8R/Ops+DYYLoQd8/V4VcGdt8YNFr
         hVowtIM0gz4XHpZIrbKAP1DUlVWPu8vvgMXPj1tK6K4FYyacsopLUULkAZW7kG4ja2su
         ma9b4b0WLdQWGO1HzPLGwlFbb05DkY2MvCCreGqkxPv6Rh1i1EWZ/h6i1mlDhKgb41oD
         lnertFS6Z7NURNrGKD43EcmTT0C794qT9POU0FPqAqtJKRlsKRzbtb2jH4EIYVc293lq
         vfjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=zhw7LtYRsUrgDNaEnqu7jQd+Zc1arc+o1ZA9VkVuHKY=;
        b=ur4VjrUbacVCJuvMy5kNOQKt3rLEPCKH08XeOCn46s8XpNkY6Sc6SnviWF7hu1pu/l
         vASbUaeRvWnwnLOKt7Xlw63lokZqPhl1mRT0u5WF0AP1dV5oFKmL1Hc4el7baQHMpaU7
         Tfu06C4xVqE+rrSiCMxskN29FyhMx4fxqQIFl6K8dEvnbdBiZGyidIrD9sWI/0chy30r
         PxmWi6jYfVZ7C4BnLKxOWhpB90mmMHT4UPL0TNqMdpXTGkUB6/QCUuBe7Gp2sZc9zk/H
         zb3zkLjXA5mopxHuGm/wcTi79Mqrq6WHSdIC/XpiOUSc3DQsJqgCy1jDqbecJ0V1o/36
         rLQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="ff7Ixy/f";
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.75 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zhw7LtYRsUrgDNaEnqu7jQd+Zc1arc+o1ZA9VkVuHKY=;
        b=noY3noN1iIhL0CGsRQU3ZH3T/aGbMUhj8XIP5Fe0/JEPAqXTslkPjHtSKh2XVJJPgK
         C9K8HVtChVqHE/WOUjaBZ5vdWbaFyBmFm9804iM0oyEmS5Kk46iolvNg0n9RBi2Gke9T
         earzemlAF6PH9vsqaNq2zMGW3d6guwvYNSb0Sd8YNkb071XdiXZFv5pIhLU+xoox3kic
         n433pwoaRJBdIwkYVaPpKp7MXh/BYE6H3saEQNIh0wl2wikjxxwXrxYxrHpHfieMXOZE
         EWlz9IGKr3tZyHEuxG1l54ggysmikyugS4aGWOWljN5YKPkko88FGaYIG7iQLB9g1Pja
         bM2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zhw7LtYRsUrgDNaEnqu7jQd+Zc1arc+o1ZA9VkVuHKY=;
        b=OS/4mNUfE8Em+AQcjvLKG5MpebPgcXLormoegERd6fN5s/vLGrULZAO5W4FjeveXGZ
         e98BnToPuqaH3B/7lFMvfa8F+BIhuhYXcXvxjvSpwjKdSPif4UukRxn9crwMFY0SzECe
         bHwZtxuvbTvkdMAxhFyuxwppWj8swE1AP2ehA2+oX8WEoglNUFC4yNMeNXANBNBACUq9
         pI7NW+igu92thn/LJ7g35gemlkpOIYbjQPJ2pcIpaOOYUjTtN9piWFwpli37houkgl2v
         F+ANyMCG7WDjv4TJ148wbbKeHX+Msv0Uj5bw4Qvm1nz19cx2EfDvnqAqRRN2bNmFr7FR
         wW4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU/4pryol97TqJQNLB0PZySjV1o+m5aRzYVQ8JdW3e1D1paw3py
	2+kYpCEFGj3SfauJolqPbKI=
X-Google-Smtp-Source: APXvYqxA9ZcJGe8c6fXcvLfWaRhxhCvvEEG3VK8aJ4uRfVXnMQ/1TP+2QYBEUYUWxOm7m4gjooEXlA==
X-Received: by 2002:a0d:dbcc:: with SMTP id d195mr16402151ywe.68.1566211965913;
        Mon, 19 Aug 2019 03:52:45 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:a109:: with SMTP id y9ls2400773ywg.5.gmail; Mon, 19 Aug
 2019 03:52:45 -0700 (PDT)
X-Received: by 2002:a81:c204:: with SMTP id z4mr15665178ywc.89.1566211965669;
        Mon, 19 Aug 2019 03:52:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566211965; cv=none;
        d=google.com; s=arc-20160816;
        b=HZWm+LLykTLqYvCxB0dVVb83tSu8LuSwSNDvIsS55fPRZjN8/mKOMDdoP3M01H+usK
         N2MTHERwqcyU8k79f76+/fd/W0VJZLOEvB73ADtXO69jciOf0a/lvILcBfJslvJjeHoW
         CISDTP/oIN9xjBE+TZCAwptFH8gxSGDJOGrymZaRHCisgiDgaCMDAYdmd00fUAW0ShFA
         8bPNL2ze4tGTDkj5FE9o8bEausOQFgPrWglnYVUlExSy80xwDZ9XfROehoO539yki75d
         HVE8tEsrB6noUtzu9SzUPuzz+AWVGOXWXy+cyTUE1wvlpA+PmDx8ow0SOIVVisWA1KDY
         sKvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=uAr7g3dUlNXQ7fN/nZvH1d8U2EQBEBFwzuJnQ8Wz3oU=;
        b=Vjs6pzxzZdxxJPetcfKLWzj6Ta1mdZj5o9D7ucE6YEKTCYzwd9LWwh7Hr7r9YWKyB3
         Eu3iXqQSwb8pK0xObGrn48yIKz4HKMxlhgb4qCcteW3h7fh3KRyZmZniNHf+g5QoX2qe
         pjjzGKA4OQkJZBhmtYvgNMgqwIyagrA03KmmAuzaj5liyE6ofRgQCIktqczG0MDSIWAW
         gSZmLeqGqRQKLejcwdamfYPvhDDOXbYFHjpPjrE1ALHouCVM6JX9A5P0HKR/y6fdFwAI
         u3Z2BZiXXcYz/kClIeKl1Y8uZaYQca7H1de6pW2A2bQvy6n06ac9WND0A0jnL+Uk0O1U
         72HQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="ff7Ixy/f";
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.75 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conuserg-08.nifty.com (conuserg-08.nifty.com. [210.131.2.75])
        by gmr-mx.google.com with ESMTPS id o3si414020yba.5.2019.08.19.03.52.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Aug 2019 03:52:45 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.75 as permitted sender) client-ip=210.131.2.75;
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-08.nifty.com with ESMTP id x7JAps3U023174;
	Mon, 19 Aug 2019 19:51:54 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com x7JAps3U023174
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Borislav Petkov <bp@suse.de>, Kees Cook <keescook@chromium.org>,
        Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Paul Burton <paul.burton@mips.com>,
        Xiaozhou Liu <liuxiaozhou@bytedance.com>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH] kbuild: enable unused-function warnings for W= build with Clang
Date: Mon, 19 Aug 2019 19:51:38 +0900
Message-Id: <20190819105138.5053-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="ff7Ixy/f";
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com
 does not designate 210.131.2.75 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Content-Type: text/plain; charset="UTF-8"
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

GCC and Clang have different policy for -Wunused-function; GCC does
not report unused-function warnings at all for the functions marked
as 'static inline'. Clang does report unused-function warnings if they
are defined in source files instead of headers.

We could use Clang for detecting unused functions, but it has been
suppressed since commit abb2ea7dfd82 ("compiler, clang: suppress
warning for unused static inline functions").

So, we never notice left-over code if functions in .c files are
marked as inline.

Let's remove __maybe_unused from the inline macro. As always, it is
not a good idea to sprinkle warnings for the normal build. So, these
warnings will be shown for the W= build.

If you contribute to code clean-up, please run "make CC=clang W=1"
and check -Wunused-function warnings. You will find lots of unused
functions.

Some of them are false-positives because the call-sites are disabled
by #ifdef. I do not like to abuse the inline keyword for suppressing
unused-function warnings because it might affect the compiler's
optimization. When I need to fix unused-functions warnings, I prefer
adding #ifdef or __maybe_unused to function definitions.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 include/linux/compiler_types.h | 10 ++--------
 scripts/Makefile.extrawarn     |  1 +
 2 files changed, 3 insertions(+), 8 deletions(-)

diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 599c27b56c29..14de8d0162fb 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -130,10 +130,6 @@ struct ftrace_likely_data {
 
 /*
  * Force always-inline if the user requests it so via the .config.
- * GCC does not warn about unused static inline functions for
- * -Wunused-function.  This turns out to avoid the need for complex #ifdef
- * directives.  Suppress the warning in clang as well by using "unused"
- * function attribute, which is redundant but not harmful for gcc.
  * Prefer gnu_inline, so that extern inline functions do not emit an
  * externally visible function. This makes extern inline behave as per gnu89
  * semantics rather than c99. This prevents multiple symbol definition errors
@@ -143,11 +139,9 @@ struct ftrace_likely_data {
  * (which would break users of __always_inline).
  */
 #if !defined(CONFIG_OPTIMIZE_INLINING)
-#define inline inline __attribute__((__always_inline__)) __gnu_inline \
-	__maybe_unused notrace
+#define inline inline __attribute__((__always_inline__)) __gnu_inline notrace
 #else
-#define inline inline                                    __gnu_inline \
-	__maybe_unused notrace
+#define inline inline                                    __gnu_inline notrace
 #endif
 
 #define __inline__ inline
diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
index a74ce2e3c33e..92f542797e03 100644
--- a/scripts/Makefile.extrawarn
+++ b/scripts/Makefile.extrawarn
@@ -70,5 +70,6 @@ KBUILD_CFLAGS += -Wno-initializer-overrides
 KBUILD_CFLAGS += -Wno-format
 KBUILD_CFLAGS += -Wno-sign-compare
 KBUILD_CFLAGS += -Wno-format-zero-length
+KBUILD_CFLAGS += -Wno-unused-function
 endif
 endif
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190819105138.5053-1-yamada.masahiro%40socionext.com.
