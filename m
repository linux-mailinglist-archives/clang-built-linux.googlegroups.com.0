Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBEUL473QKGQE56LQCIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 333CC20CDF8
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 12:42:27 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id x20sf13946262edr.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 03:42:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593427347; cv=pass;
        d=google.com; s=arc-20160816;
        b=fbVhIuj1J+Rems4Uhvmb9fEEX0Sxfi1ItT+q5UcdZbne0z/zG42RCcu+fhtOuuxRj8
         YGYE7RcWUhtwsDZjspUyc8uz+RQ7WLOK1rLDv6tVG/NrHTVAPmaizmKY8980ZAi5529V
         HLbTsNb/KWCOJJCSlqc9zg2glLG5RnWpXBm7b8HXdY9WFYhihSBoJ0IxewSMgbxryYDa
         J7qmltJE2Gn579i8plkmxW7tVt7gBdU7PdHYixCDG5e36llxQyrv69YhLem1o/CAYxh3
         0IX0IHp3UWEXPuU7yZkevM/8vKQhpSLrEnpNJ0zjw9uRhNASN8XwCOoAAaGndXIP3uiz
         C66A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=jIt+s4AfB8DktUNXfD6JkMG06urnP4+09W8vCfFFqaY=;
        b=V0raokJxia3/iSF+l53O0POvlinUS/wO4Zx3A2CV1fIqbHWsu/7YCM835b+5wF7Xu+
         7zt/1STC9db5RNhlCihl3CgJjU0+Y4QSBkTiMa6oeDOK7eiW4kcCaFk2GOi+5pHe056A
         zHvpaWGvSOojzU6mvM6MSUjNjWKw6FZ23N2f5fNSMLhxupBD+73ETlUDq4Ca/debVh60
         PyzToC4Q/mEhESz0jx8ntUVpjTwv58kgNWY/Lo47viqwNy6lRkdm8l8cSp/6RwfB2Jcl
         chk3YSsM4rLodBwlgde+1mQjNXoq7XDAM/p0oNErnCuTraosIoHbz9CFn07F3FxZ5xxA
         VEag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nAWQ987y;
       spf=pass (google.com: domain of 3ksx5xgukeqmhoyhujrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--elver.bounces.google.com designates 2a00:1450:4864:20::44a as permitted sender) smtp.mailfrom=3ksX5XgUKEQMhoyhujrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jIt+s4AfB8DktUNXfD6JkMG06urnP4+09W8vCfFFqaY=;
        b=oKng3wsD78ngK+wreYsoxY44jEjMoRPPr9q2KGlxcJyoJ8YozV9VxYdAMgIdlTHSnR
         T8vQVth7awwOHEFEKkouTkvk1SLPOfQSxpSRt+He7wnUh7I79JJvYwiwhg/mjQ5wpC5S
         KoHFWoEdzCn+K1dPdc0pDLDJ1n0m+z8VZ5z0snw/F4KHkB6DPEiIugeqXwSlPOkhqkfk
         R0HaRlYboJM3TDnOUd9iGL626M+WpWXp+GLwvHkR5JxmyxH34uTLKX0mY6skcs8Hzojr
         cIcGLFa034IHIhZuSEWR6bAscydvnbp/tQveieV5unWyewexiuARnz+onLr/NcqZ6mcV
         o2LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jIt+s4AfB8DktUNXfD6JkMG06urnP4+09W8vCfFFqaY=;
        b=dyl2J0ju/HCZM1CHYhIr5JU8I0TBcZ7IRUvfh+80K9JaUtaFFOFwQzkoR2awf2ejLO
         HeacK8CxzdZ6e09d5G/XcB+9lqEwdfxxRbT5Km7K4VjrLdYxC9kmImMob2d66TYAkFnc
         eRSf6wwtuA2XtGDXokQUyc+1DQ5xH/yJnGCdCZZgWT/GZ8gfUWFMY5fNBtYfp8VbY7+/
         UK9jP9QFQ8aCXWWoJDnY2P8hBW+fZsG6GQfAhmUGcvxUlsjfESBDCNcnIb1gDMdT6G4Z
         EoIApSwtRp6U9xSFQzvza+W+RA7XRd9+4MjnTTMoBxdBL0InO3cadJ5diqLbIJaitT+A
         adyQ==
X-Gm-Message-State: AOAM53347OGUHBBriUeKnsWTITmN1OcZbkgTUFIabx+JqHcyyZGgiAis
	GThCr5grfZ+9HgLj+W4bdoQ=
X-Google-Smtp-Source: ABdhPJwqNWcEbVMTYKeW/E252nK9ifwCwSW+S+qhQxVW1RiVB6ft/Y/GFKIJ0dGDUorPeBs2OwVr6Q==
X-Received: by 2002:a17:907:1059:: with SMTP id oy25mr14281387ejb.90.1593427346893;
        Mon, 29 Jun 2020 03:42:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1d37:: with SMTP id dh23ls2908050edb.1.gmail; Mon,
 29 Jun 2020 03:42:26 -0700 (PDT)
X-Received: by 2002:a50:8186:: with SMTP id 6mr17153341ede.45.1593427346330;
        Mon, 29 Jun 2020 03:42:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593427346; cv=none;
        d=google.com; s=arc-20160816;
        b=pkahxwtPng77QMquMpcgHE9k/HbyoNG88KlNTxDCpenpK0BvG+yEm0VJVMh9OfCgb+
         N52NDntNQCW6OcLxvuGkCu/tvRE3rEPVde67uXGAakjhq2cBrLzq0qokfhUQtoDNRZp8
         auPH6dd3mj2UTKSDMyFgllptgc06SMlax9+KI+Ro+QnX3h20xFYu9tb2qMnTJL7fi3HS
         ynqAIcSfGrPIhhwUVQHNwSi0jAQs93QU68kSFbFPuskHXblaLQByPLI2c2o6CRA23V1B
         W3eWyp9uMMXA5VpV8tcJ+dlv+eE0troODVreGekKdvmuMqbwpBOkRZhzGI8+cVGw/HEY
         YRPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=YyMZU7GxNPbypFBfmDC57uoWU5tN/2mz7Tk7sznQPgo=;
        b=gVJ4EZiET/xMF6WxVpT+a1TH6Gfbla4V+WFoaaR8nW5PnmvqtAuTgg7rmjlXazwHr5
         8P/9PwI6ad2OEvCQ58zxAlWmSxvCtWqljGnoCfZi5LTKd2e/QSM86eJcDeowXsWk6x7w
         j+vLsanfYsszOPOmxhxMwlMcEcn+TwN8qn9AdmYxz78/kPyaim8ORSDO3cq0XTGGaAJg
         TO/ant5gBtoDLeAZJ2OE6qzta98IxFMsu69EXyGkPf64m3xZ9ffPI4+WONuNst1m6dwY
         sGbvqpAdngQQ9rW34quvNKetAQO7Upefj76GQhZ4JTy1rXsrjLSeo5nC9nZXXp+lcrZQ
         Tl+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nAWQ987y;
       spf=pass (google.com: domain of 3ksx5xgukeqmhoyhujrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--elver.bounces.google.com designates 2a00:1450:4864:20::44a as permitted sender) smtp.mailfrom=3ksX5XgUKEQMhoyhujrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x44a.google.com (mail-wr1-x44a.google.com. [2a00:1450:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id a23si1979236edn.0.2020.06.29.03.42.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 03:42:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ksx5xgukeqmhoyhujrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--elver.bounces.google.com designates 2a00:1450:4864:20::44a as permitted sender) client-ip=2a00:1450:4864:20::44a;
Received: by mail-wr1-x44a.google.com with SMTP id 59so9783323wrp.4
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 03:42:26 -0700 (PDT)
X-Received: by 2002:a1c:1b90:: with SMTP id b138mr15963963wmb.21.1593427346060;
 Mon, 29 Jun 2020 03:42:26 -0700 (PDT)
Date: Mon, 29 Jun 2020 12:41:57 +0200
In-Reply-To: <20200629104157.3242503-1-elver@google.com>
Message-Id: <20200629104157.3242503-2-elver@google.com>
Mime-Version: 1.0
References: <20200629104157.3242503-1-elver@google.com>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 2/2] kasan: Update required compiler versions in documentation
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com, akpm@linux-foundation.org
Cc: dvyukov@google.com, glider@google.com, andreyknvl@google.com, 
	linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com, 
	aryabinin@virtuozzo.com, ndesaulniers@google.com, walter-zh.wu@mediatek.com, 
	arnd@arndb.de, dja@axtens.net, linux-doc@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nAWQ987y;       spf=pass
 (google.com: domain of 3ksx5xgukeqmhoyhujrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--elver.bounces.google.com
 designates 2a00:1450:4864:20::44a as permitted sender) smtp.mailfrom=3ksX5XgUKEQMhoyhujrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--elver.bounces.google.com;
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

Updates the recently changed compiler requirements for KASAN. In
particular, we require GCC >= 8.3.0, and add a note that Clang 11
supports OOB detection of globals.

Fixes: 7b861a53e46b ("kasan: Bump required compiler version")
Fixes: acf7b0bf7dcf ("kasan: Fix required compiler version")
Signed-off-by: Marco Elver <elver@google.com>
---
 Documentation/dev-tools/kasan.rst |  7 ++-----
 lib/Kconfig.kasan                 | 24 +++++++++++++++---------
 2 files changed, 17 insertions(+), 14 deletions(-)

diff --git a/Documentation/dev-tools/kasan.rst b/Documentation/dev-tools/kasan.rst
index c652d740735d..15a2a53e77b0 100644
--- a/Documentation/dev-tools/kasan.rst
+++ b/Documentation/dev-tools/kasan.rst
@@ -13,11 +13,8 @@ KASAN uses compile-time instrumentation to insert validity checks before every
 memory access, and therefore requires a compiler version that supports that.
 
 Generic KASAN is supported in both GCC and Clang. With GCC it requires version
-4.9.2 or later for basic support and version 5.0 or later for detection of
-out-of-bounds accesses for stack and global variables and for inline
-instrumentation mode (see the Usage section). With Clang it requires version
-7.0.0 or later and it doesn't support detection of out-of-bounds accesses for
-global variables yet.
+8.3.0 or later. With Clang it requires version 7.0.0 or later, but detection of
+out-of-bounds accesses for global variables is only supported since Clang 11.
 
 Tag-based KASAN is only supported in Clang and requires version 7.0.0 or later.
 
diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
index 89053defc0d9..047b53dbfd58 100644
--- a/lib/Kconfig.kasan
+++ b/lib/Kconfig.kasan
@@ -40,6 +40,7 @@ choice
 	  software tag-based KASAN (a version based on software memory
 	  tagging, arm64 only, similar to userspace HWASan, enabled with
 	  CONFIG_KASAN_SW_TAGS).
+
 	  Both generic and tag-based KASAN are strictly debugging features.
 
 config KASAN_GENERIC
@@ -51,16 +52,18 @@ config KASAN_GENERIC
 	select STACKDEPOT
 	help
 	  Enables generic KASAN mode.
-	  Supported in both GCC and Clang. With GCC it requires version 4.9.2
-	  or later for basic support and version 5.0 or later for detection of
-	  out-of-bounds accesses for stack and global variables and for inline
-	  instrumentation mode (CONFIG_KASAN_INLINE). With Clang it requires
-	  version 3.7.0 or later and it doesn't support detection of
-	  out-of-bounds accesses for global variables yet.
+
+	  This mode is supported in both GCC and Clang. With GCC it requires
+	  version 8.3.0 or later. With Clang it requires version 7.0.0 or
+	  later, but detection of out-of-bounds accesses for global variables
+	  is supported only since Clang 11.
+
 	  This mode consumes about 1/8th of available memory at kernel start
 	  and introduces an overhead of ~x1.5 for the rest of the allocations.
 	  The performance slowdown is ~x3.
+
 	  For better error detection enable CONFIG_STACKTRACE.
+
 	  Currently CONFIG_KASAN_GENERIC doesn't work with CONFIG_DEBUG_SLAB
 	  (the resulting kernel does not boot).
 
@@ -73,15 +76,19 @@ config KASAN_SW_TAGS
 	select STACKDEPOT
 	help
 	  Enables software tag-based KASAN mode.
+
 	  This mode requires Top Byte Ignore support by the CPU and therefore
-	  is only supported for arm64.
-	  This mode requires Clang version 7.0.0 or later.
+	  is only supported for arm64. This mode requires Clang version 7.0.0
+	  or later.
+
 	  This mode consumes about 1/16th of available memory at kernel start
 	  and introduces an overhead of ~20% for the rest of the allocations.
 	  This mode may potentially introduce problems relating to pointer
 	  casting and comparison, as it embeds tags into the top byte of each
 	  pointer.
+
 	  For better error detection enable CONFIG_STACKTRACE.
+
 	  Currently CONFIG_KASAN_SW_TAGS doesn't work with CONFIG_DEBUG_SLAB
 	  (the resulting kernel does not boot).
 
@@ -107,7 +114,6 @@ config KASAN_INLINE
 	  memory accesses. This is faster than outline (in some workloads
 	  it gives about x2 boost over outline instrumentation), but
 	  make kernel's .text size much bigger.
-	  For CONFIG_KASAN_GENERIC this requires GCC 5.0 or later.
 
 endchoice
 
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629104157.3242503-2-elver%40google.com.
