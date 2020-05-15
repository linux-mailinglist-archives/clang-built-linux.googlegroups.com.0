Return-Path: <clang-built-linux+bncBC7OBJGL2MHBB2W67L2QKGQEKRJD7ZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id DC36F1D52FF
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 17:04:11 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id r5sf2069271pfh.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 08:04:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589555050; cv=pass;
        d=google.com; s=arc-20160816;
        b=oQqbX4o2snANjoeDS1Q7IPzPbyYkV+toOJzCrsLMejgF3gR0WqOprolzU/PiHt+0+y
         koveRe+i/Y2MXtwEs1F93+mLwjJYw6zBayfbW4JQ1WSADkg8vxIIxX8k35kdEK1DGSGB
         H9i1yOy8AZZ4PyoqzL9wkGUshgcrdomz49MkDyKzhg4T348snPU6ixyoIxX0XPbTU/wO
         L4WNVIl770wGGvr9qyxFhirGiwJMMtAiI4A2BU/+vtbSJnzLEuT6vIwekgctpBj4pHot
         XMkUh3RB63D8UmtS84zxIUv7uo63czUfWxVZAIFKzhviyu3MgOzw0aWCYTE1TIwlhHlb
         f95g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=VdhFjqj/X5duZTyqx9zJD2CSRn8oqkLxP4en6WeQNKc=;
        b=y7u6mDyYEhvoIcUPOOhhMaZ+IW7fhbDU9HtexAOwn1jgwtJhkChBxDBX5+Z3hcT5N+
         2ToDTjxxvuJiyKymQQ1GrKdD7A39GWOf4pOkeGlwzpODfN81lFE0BXRy+QhI3OyASUt1
         02uUFm3ttD/BBeMxFqLF9IC0IbS9h2zIZe4dzVDCTDMHTD4CCOGNSRnUGxhvbtAtiXfo
         4Qv9MU43pwwVVaSoMMOIfrZEvyE7m+HvY/s4w93R6ZRkM7XAgd36OebLHoPj1Kg2cI1d
         G0O3aPxnw0QGkW93DnJY53wcdqty/2KhZO2mAxHsAc/Cq6rg5nd1yRObIqTfxxcgdem3
         y4Ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e24SsoWQ;
       spf=pass (google.com: domain of 3aa--xgukeb4ipzivksskpi.gsqgperk-fympx-pmry1ksskpikvsytw.gsq@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3aa--XgUKEb4ipzivksskpi.gsqgperk-fympx-pmry1ksskpikvsytw.gsq@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VdhFjqj/X5duZTyqx9zJD2CSRn8oqkLxP4en6WeQNKc=;
        b=j/R7YzC3QfPPtB6dzt8JZnFkuFySde2HjUroLq43nPAU6bVuMFvK1ORdaloKtoCXUF
         hhYQLaa9/DwIQDpxFhno8TR2PolkPMKpd4kYmyQtlt8FsR66/C+cnHWfMAuRql9X274g
         FheSp586oI3IYcL4ENxJmFo2bxImygrf0P+WmF0bH+3XHMz+01pz5NlYwqiwIZGwkDVr
         XbiFiNkrNDzLMgvfflRNUiugnfnUY06mqJ89KQLJjP5evOYvtCoRCSAqrx80G4nUa1pQ
         ZNAIq0NxO21kWR/qieIVd9xPnvQO/2x77hS+rE9AOd5SFcuedewlr1J3QN8J149JlxyD
         fuZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VdhFjqj/X5duZTyqx9zJD2CSRn8oqkLxP4en6WeQNKc=;
        b=K+cUlqQyQ6D0q5APDWIrAy8cPdnr1bcpnlcu/l+XoFcEd8vnqPFDJsc7SmIBxVYYhO
         4I6ZW+EQqpK5hu6CtiFAZY7We6ZViXr/bQbbTf65Ix8m91YMHLN/iWsvOxy0RHXOVgWJ
         KftkWf1bE35xBqWjFo/3gNNemUvUHWg8CsOJfiB1FIipkCpMcfU86VIBJlIv9PkIEumd
         bR1ku6qsrx9ddb+AWNWmP65G62aQ3ocqHwmAzXZdYRF6WqkzwrjA8mSm/yQNqhF88Wxc
         UgoaYc1EH+I3UIEDVm1SCpWbcs2akienubdLS82/AGQXylLs39w5bUMuzMaKzOhajMZC
         KV6A==
X-Gm-Message-State: AOAM531b6V3pR+A6oypPdlg1SvN6Z8HoDzCPbe6JnbiTceqaCg/WWdzU
	Qr7we5n8KH2VqTwUtaVMbmY=
X-Google-Smtp-Source: ABdhPJzBdWn9CeTQHEbmjNRGriTX81/qNpyEioUCaLSoQtD7YLQVOw1yCIDsXBhAu1VpIDtTC5fD/g==
X-Received: by 2002:a63:ed02:: with SMTP id d2mr3593378pgi.119.1589555050526;
        Fri, 15 May 2020 08:04:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:384c:: with SMTP id nl12ls1321492pjb.2.canary-gmail;
 Fri, 15 May 2020 08:04:10 -0700 (PDT)
X-Received: by 2002:a17:90a:9c6:: with SMTP id 64mr1791024pjo.83.1589555050051;
        Fri, 15 May 2020 08:04:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589555050; cv=none;
        d=google.com; s=arc-20160816;
        b=CeVGXkV2Va71T0jG84cGYdkYXetxNPyczeva3V6tN7gsAjGy694YevD6UB7zggYXIs
         bP8ONtE7XBS5IRqM2JkM+2JtmM4clsKAazRciXLQPac8tJeSS3pZlK6GzhgExcMfl4lt
         uLIbckdCU6ByXhkLsOr3AfTyfFHMOT0RLDYZZ+kf6pkRrF3Jb5C4rQvKgG7BFygYOsx3
         Y4m8ZRHi8zJpb7trMGcRf2Ig2iwbyAdIbZWNGyRNAYXDC4u7MUZZwLAPoenMZr+o/5Cl
         rp+u3Pn9gEN8duQAhdZqa5j9ECbk0KHJamlF/TuHacafk6oZWwz97m3o8JYGOXLwhqHq
         JRCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Mg9xxMrsMAxLq6dAWJl0xfMkvPwKVEQaVFcZauCDO10=;
        b=aSq8mf3ezrq4iAFiW4ewW0g2DqrPLE1XUCp/hOo/dPGOfO0zpVtChpfOYGtaWn5IwX
         SS0wGDE/zvSv3g/0ggfvlLhnkxozhLhoe/P6Qi4pxCfvYZtInCiWIgKf5lYHy3BRqRZa
         pzk++i3McK7JAj3CpHgl2h+QE6YERj22bgEypJDRbIg63I1uQXOqCFWZf8EGxr5hpOoK
         msTdxKp9lQGhrpUqcMPDQg/dQytzRNRZQpxCioEF+3FyOiE+trR4UUivpMSTuUPrLMIc
         TGFBmcEzujKQS2DBQ+eHVJWBU7VS/V2AaIjTEZrF95WAjNgyNGWfIs2fuYEOB4AxnL52
         00xA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e24SsoWQ;
       spf=pass (google.com: domain of 3aa--xgukeb4ipzivksskpi.gsqgperk-fympx-pmry1ksskpikvsytw.gsq@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3aa--XgUKEb4ipzivksskpi.gsqgperk-fympx-pmry1ksskpikvsytw.gsq@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id t141si192020pfc.5.2020.05.15.08.04.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 May 2020 08:04:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3aa--xgukeb4ipzivksskpi.gsqgperk-fympx-pmry1ksskpikvsytw.gsq@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id h1so2734133qtu.13
        for <clang-built-linux@googlegroups.com>; Fri, 15 May 2020 08:04:10 -0700 (PDT)
X-Received: by 2002:a05:6214:8e1:: with SMTP id dr1mr3588892qvb.193.1589555049514;
 Fri, 15 May 2020 08:04:09 -0700 (PDT)
Date: Fri, 15 May 2020 17:03:38 +0200
In-Reply-To: <20200515150338.190344-1-elver@google.com>
Message-Id: <20200515150338.190344-11-elver@google.com>
Mime-Version: 1.0
References: <20200515150338.190344-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip 10/10] compiler_types.h, kasan: Use __SANITIZE_ADDRESS__
 instead of CONFIG_KASAN to decide inlining
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com, 
	andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org, 
	peterz@infradead.org, will@kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=e24SsoWQ;       spf=pass
 (google.com: domain of 3aa--xgukeb4ipzivksskpi.gsqgperk-fympx-pmry1ksskpikvsytw.gsq@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3aa--XgUKEb4ipzivksskpi.gsqgperk-fympx-pmry1ksskpikvsytw.gsq@flex--elver.bounces.google.com;
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

Like is done for KCSAN, for KASAN we should also use __always_inline in
compilation units that have instrumentation disabled
(KASAN_SANITIZE_foo.o := n). Adds common documentation for KASAN and
KCSAN explaining the attribute.

Signed-off-by: Marco Elver <elver@google.com>
---
 include/linux/compiler_types.h | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index b190a12e7089..5faf68eae204 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -167,7 +167,14 @@ struct ftrace_likely_data {
  */
 #define noinline_for_stack noinline
 
-#ifdef CONFIG_KASAN
+/*
+ * Sanitizer helper attributes: Because using __always_inline and
+ * __no_sanitize_* conflict, provide helper attributes that will either expand
+ * to __no_sanitize_* in compilation units where instrumentation is enabled
+ * (__SANITIZE_*__), or __always_inline in compilation units without
+ * instrumentation (__SANITIZE_*__ undefined).
+ */
+#ifdef __SANITIZE_ADDRESS__
 /*
  * We can't declare function 'inline' because __no_sanitize_address conflicts
  * with inlining. Attempt to inline it may cause a build failure.
@@ -182,10 +189,6 @@ struct ftrace_likely_data {
 
 #define __no_kcsan __no_sanitize_thread
 #ifdef __SANITIZE_THREAD__
-/*
- * Rely on __SANITIZE_THREAD__ instead of CONFIG_KCSAN, to avoid not inlining in
- * compilation units where instrumentation is disabled.
- */
 # define __no_kcsan_or_inline __no_kcsan notrace __maybe_unused
 # define __no_sanitize_or_inline __no_kcsan_or_inline
 #else
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200515150338.190344-11-elver%40google.com.
