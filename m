Return-Path: <clang-built-linux+bncBC7OBJGL2MHBB3PVWSCQMGQECK2NHLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 41645390835
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 19:59:11 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id 31-20020a1709020022b02900eeddd708c8sf15140934pla.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 10:59:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621965550; cv=pass;
        d=google.com; s=arc-20160816;
        b=RI+i/Ir2ROUH/Zv0YyD2Xzm7ICPTSRekfeu10ryxg59LJvheQSZh7iCe8iK3XMQYdZ
         0mpMorQlzRZdxZImF9P0tx3ovxeoUqDKJhvS5b+EzuYlUpvqbFHh31Ow/vLltKI36C4C
         3W/s5Lfc2nWvAety5t77/PkAPiox981rkjZxyej7Vd4+JwaN/LDvBZXli5DWe4thS6Aa
         /8m3K4mfw+5hzLFX+K1AjN28fu6O/z3nLlJjA0jdAGJ2B6d+kYvbA4dBuuAVYV8BRl5z
         MP9tK1swYsBtTrf7qewuftkT3jcwqy8V7Zvs/Hv01tm3IJcnOzBeGZuNa3SpX4XPF9sx
         YZDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=JgDzIWNlJgiViq0Q8DTLanaoMnhGJb+8wpN2DoZ/uY0=;
        b=NuQ94VsQED3PBQnBxpe9bGr/ewjM3I0IBM/9Z/en+G/b3PoZqZJkQzHGlp/pio8UPb
         tFq5it5e9CYZ7xKiWjbzUdFKvpJXytiKNp5ZIcW4m+bMMSeeqM5+IhRVC5DXEJLCeENV
         XUVm6hmk+BXg2Z5S9a/nrrMT1JmZKcpPeedyRDWWJdRfmUoDkPGZV0JHyhJNuc15UYzI
         kBEUB66QSRM0TnLhzCzAIPoNWUIN9KJ8Ol0UjsGTwmhQtyT/8KUHAyzVMmDXUfrEQdmW
         3Inr2jTn45MdCTunrUdNzubS2ysUPIT2e3RqsTzKAiUr4jJZjRMYe4f1VOmCuzjijv+D
         fgOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TNKdPm5L;
       spf=pass (google.com: domain of 37dqtyaukesmdkudqfnnfkd.bnlbk9mf-athks-khmtwfnnfkdfqntor.bnl@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=37DqtYAUKESMDKUDQFNNFKD.BNLBK9MF-ATHKS-KHMTWFNNFKDFQNTOR.BNL@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=JgDzIWNlJgiViq0Q8DTLanaoMnhGJb+8wpN2DoZ/uY0=;
        b=VyQY9SvzVK4lmllopVvE2S2zvl7Y5s4SPsrZCPuHXC9tEhbic2wdiRDq4j47VLTTRS
         YY0OjV0IHdm21+kIbjIO6I12t+VKHvPQ5Ph5gwLWDph9YnqDTpYob2YT9h2DTVo1N9vB
         /t/ww8WS+L1fUYXpRokbiDp/ljPnjTXrRx/6RCcuyN4+KgJT3q3b2wGwzvlOpyvwcTA5
         ms0FWp2YVjGDUW63tXrJaURa8tef+oSJ6FiVcI07mfo9o6bARwqSQagxmYD0wUifnSMA
         Zew+QOmkkC1LpCmA9mTAyuZ5nL+AeP6AHKMAuA0wQpAxV5/sZXZ6V2dtKtM6YSICaBBB
         +2bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JgDzIWNlJgiViq0Q8DTLanaoMnhGJb+8wpN2DoZ/uY0=;
        b=PL+LkJpgHTQtMVwrrl2pSR96aJlMLK8nkN5ppKhQWUrS2T/2aUL9K9nWmUeo+Ku53m
         W11ZHvVvC4LC1rzTL3ih94x+eQRCqGuhKrXVpVeItFzS0AiNZLBKL4TOyeY5N5cMcR35
         XxvWakLHjN+AG3wjDZplFomi35bbDXpzy6tw8UW2s8x/RhLCeiYTwJ3113aS40nTne1f
         hKvjWOEO3HvGErznJWxZwsrnLsaNhoZ0GvFOlR3mYOW+cBu1kABF3vVz0iuU/QBxCXye
         9j9ROksiyLzpsnYxqR1tawZ50namB7NkD7eigYoHnIvR6aWRRChLUQFx9P54HJX1rQGj
         NLGg==
X-Gm-Message-State: AOAM5309rABaBsP/G/fUp5kDl7DKFC5suFxZOzk6qu/VGnTtmge6uG05
	S3cCHnE/8TfCm8mQW5AlsI0=
X-Google-Smtp-Source: ABdhPJwEVwDR73u8ERL3FfMVcF4W9UwoLFQssDGYz5e8mAMObWe0+yi3Zmn3Dfx9YC+5iF6XpY+2IQ==
X-Received: by 2002:a17:902:c112:b029:f0:d571:8fb0 with SMTP id 18-20020a170902c112b02900f0d5718fb0mr31927058pli.11.1621965549946;
        Tue, 25 May 2021 10:59:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:3051:: with SMTP id u17ls10794333pla.9.gmail; Tue,
 25 May 2021 10:59:09 -0700 (PDT)
X-Received: by 2002:a17:90a:1a0f:: with SMTP id 15mr5913238pjk.45.1621965549246;
        Tue, 25 May 2021 10:59:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621965549; cv=none;
        d=google.com; s=arc-20160816;
        b=AJ8ozqbNcSk1lYGERgT5ZvYR6X5gH6smxBW6WtrXfYtLaWgNMClaaX2VKwlNLIna5/
         /8aue+2mKfAcDvV3VHOO2uYQ3ZxyPaes2n73gDjBN5KOeE7YqhQQRh97R4vz8ipS3jxU
         LjyHGyFPEdVvuDgyXpvfKi0/e5/Yj+ycC6X9/DcJQ35OAt8dRkIUxRSoqSgXsf0J7n52
         eVKv/2CRFu7got7KWI6uYBiti94DlnTyykMvXno5XmtzELnCjZcvi9/3om2VpGUCMcAQ
         sVliE5SP/f+DSfl6VcLZoCadMecBx4VqoK1CML/eWErXySd4j8xXw7Y29LL7gZyLFmYw
         cHFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=O+kNZR25+vDl6MdOvHlxMTavYKFo24nOs+bV5Xh/gL4=;
        b=0cnBFLFPjpvyAwODdl4s/+fgmcr5v24YrP+HDpYdk+nISozRfzZTMIFocpIYKULaH2
         gwLJFu01IQAG+IdkR0lZ8TFKTBn1UJ2uwWM1+0KVOpPGe1j7vDrvuz+8Z9fmlcSoAIJG
         IVT5DwiJoaw1OGtoh7hTUtLYz7bCzQPqfekawUxiLEdTbgdeMGJ61g9sPDFLj9KQ5yox
         mHXxq4NZBitrOVAPZAQ2sWow+dd8RepuSRZzJXmuT7GcZ2i6S8IoWhYGsQny0GBGTgcX
         LDTAL8UvYLgKqpTfCSfdHOVr/gXMV6mbRyE3QHRFrerlG4Xbom2KdrwUvtWOGLeX0zsy
         Npcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TNKdPm5L;
       spf=pass (google.com: domain of 37dqtyaukesmdkudqfnnfkd.bnlbk9mf-athks-khmtwfnnfkdfqntor.bnl@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=37DqtYAUKESMDKUDQFNNFKD.BNLBK9MF-ATHKS-KHMTWFNNFKDFQNTOR.BNL@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id i3si316803pjk.1.2021.05.25.10.59.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 May 2021 10:59:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of 37dqtyaukesmdkudqfnnfkd.bnlbk9mf-athks-khmtwfnnfkdfqntor.bnl@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id k125-20020a3788830000b02903a65618d46cso8538606qkd.3
        for <clang-built-linux@googlegroups.com>; Tue, 25 May 2021 10:59:09 -0700 (PDT)
X-Received: from elver.muc.corp.google.com ([2a00:79e0:15:13:b328:d556:de65:97a2])
 (user=elver job=sendgmr) by 2002:ad4:4e67:: with SMTP id ec7mr38673270qvb.58.1621965548449;
 Tue, 25 May 2021 10:59:08 -0700 (PDT)
Date: Tue, 25 May 2021 19:58:19 +0200
Message-Id: <20210525175819.699786-1-elver@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.1.818.g46aad6cb9e-goog
Subject: [PATCH] kcov: add __no_sanitize_coverage to fix noinstr for all architectures
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: linux-kernel@vger.kernel.org, nathan@kernel.org, ndesaulniers@google.com, 
	ojeda@kernel.org, keescook@chromium.org, akpm@linux-foundation.org, 
	will@kernel.org, ardb@kernel.org, luc.vanoostenryck@gmail.com, 
	nivedita@alum.mit.edu, masahiroy@kernel.org, peterz@infradead.org, 
	samitolvanen@google.com, arnd@arndb.de, clang-built-linux@googlegroups.com, 
	Dmitry Vyukov <dvyukov@google.com>, Mark Rutland <mark.rutland@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TNKdPm5L;       spf=pass
 (google.com: domain of 37dqtyaukesmdkudqfnnfkd.bnlbk9mf-athks-khmtwfnnfkdfqntor.bnl@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=37DqtYAUKESMDKUDQFNNFKD.BNLBK9MF-ATHKS-KHMTWFNNFKDFQNTOR.BNL@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

Until now no compiler supported an attribute to disable coverage
instrumentation as used by KCOV.

To work around this limitation on x86, noinstr functions have their
coverage instrumentation turned into nops by objtool. However, this
solution doesn't scale automatically to other architectures, such as
arm64, which are migrating to use the generic entry code.

Clang [1] and GCC [2] have added support for the attribute recently.
[1] https://github.com/llvm/llvm-project/commit/280333021e9550d80f5c1152a34e33e81df1e178
[2] https://gcc.gnu.org/git/?p=gcc.git;a=commit;h=cec4d4a6782c9bd8d071839c50a239c49caca689

Add __no_sanitize_coverage for both compilers, and add it to noinstr.

Signed-off-by: Marco Elver <elver@google.com>
---
 include/linux/compiler-clang.h | 6 ++++++
 include/linux/compiler-gcc.h   | 6 ++++++
 include/linux/compiler_types.h | 2 +-
 3 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index adbe76b203e2..370565f4cfde 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -45,6 +45,12 @@
 #define __no_sanitize_undefined
 #endif
 
+#if defined(CONFIG_KCOV) && CONFIG_CLANG_VERSION >= 130000
+#define __no_sanitize_coverage __attribute__((no_sanitize("coverage")))
+#else
+#define __no_sanitize_coverage
+#endif
+
 /*
  * Not all versions of clang implement the type-generic versions
  * of the builtin overflow checkers. Fortunately, clang implements
diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index 5d97ef738a57..cb9217fc60af 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -122,6 +122,12 @@
 #define __no_sanitize_undefined
 #endif
 
+#if defined(CONFIG_KCOV) && __has_attribute(__no_sanitize_coverage__)
+#define __no_sanitize_coverage __attribute__((no_sanitize_coverage))
+#else
+#define __no_sanitize_coverage
+#endif
+
 #if GCC_VERSION >= 50100
 #define COMPILER_HAS_GENERIC_BUILTIN_OVERFLOW 1
 #endif
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index d29bda7f6ebd..cc2bee7f0977 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -210,7 +210,7 @@ struct ftrace_likely_data {
 /* Section for code which can't be instrumented at all */
 #define noinstr								\
 	noinline notrace __attribute((__section__(".noinstr.text")))	\
-	__no_kcsan __no_sanitize_address
+	__no_kcsan __no_sanitize_address __no_sanitize_coverage
 
 #endif /* __KERNEL__ */
 
-- 
2.31.1.818.g46aad6cb9e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210525175819.699786-1-elver%40google.com.
