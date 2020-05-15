Return-Path: <clang-built-linux+bncBC7OBJGL2MHBB2G67L2QKGQEYD6BINQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 923111D52FD
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 17:04:09 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id 12sf2012879pgu.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 08:04:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589555048; cv=pass;
        d=google.com; s=arc-20160816;
        b=vInCgJq3mqwvX7o/H/o94isJEHnYg8QShVqUZEIkRlVzg9ppmU3whNys8UsoHzPAKu
         3/f5oaT5pjUr20NCjLmKuBSa26cAdPQtoPUJxXtdZgOnilHzK5jAetzEw2DfEfQrijLK
         v7IFaUMx/p8hX3v9+sGbeUKUZz/hOMFXCkVotk8/Pc7TN10YGzsVGq6O4jg7SpW6qoPs
         FgTQq38CDgYQKPuW2PhcsKxTccAcRUmliCvXfLixzofHKxmvcnwUZFs5nzfm4wcfpRSl
         yUvFMf6oYmzwe4s5vQHRx+EM744FZTgxTEJTG1MWCJSWiHDFWpvstiSZ87a3v6oS6nX1
         eoNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Uf+D5DfUv0jx4WLz0pw/a8ZOVGQnESm+TB48KObXra8=;
        b=A+TZoSEaS4GmCsk9o+OZDMs2X/iHlhBTYBAf+Icah3EMK4y05xlQLomuZ5Dg91jXsV
         M75ameOrCGl1/h49r6h3zR9bOrQAW9EoLUDUsxSj1ozduV05BlmL4Ar0VeOjGebxTX4H
         dS84fh0OLg4L3WOKgIOaaH0B2f0G5pD+B+w63jASLQez62fsUWyz6hkuBt3/1wddEqPo
         4eR5Jgc+LJH0IIRlwHcF8kuJ6wDypdf4miisije0cg+7wAr32TCXQmGHBaIcMBMBUfC1
         DSi5MJW+yr9qJIAJf8u4vN4FA656jJPonZslEMi0a0AUdRUePMOguSPHQ87SeCRK8jf3
         duIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MBA9I9Ds;
       spf=pass (google.com: domain of 3z6--xgukebwgnxgtiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3Z6--XgUKEbwgnxgtiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Uf+D5DfUv0jx4WLz0pw/a8ZOVGQnESm+TB48KObXra8=;
        b=MaR92kcR4bm6lW47lcLRh+eNBSfr2M4svO/+un7OICo2fOnvVzuMtxkyeeNa27Ynkm
         jGLfcOMQoeteFjixInPQHZCOPcW5QVGohSnpdwvXl8bZTIjTpCzxNUHuSCwX6d5Q5wU2
         1BCz4UY9Tv8oCjLC+zRmiBFf/skD3kuJ4Rjh6lF8WtDCCs2tfbpCAiSzHRBR7qZ4vr6r
         oyAgKlDk8Vix//5AwfZFg9DnY4lmTDxsOWsbYROt3pVagZxeGuVcKdzWJFQbmyI8VV0C
         tthlVXF34vtoCbheAznZ9no1/NWyOFk9JKfXhTPTGnEyiuYaAvyI3jQGe9VsOj6mb8/e
         5FBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Uf+D5DfUv0jx4WLz0pw/a8ZOVGQnESm+TB48KObXra8=;
        b=QaM9suDzv60inKNMIzXbxEQXKN2cjOilF26t6sTg/eTmb0JQtNLVu2ZAppqbmjNJKg
         4nrgs4A1XdR+QUDwrIae57vf0JAXTOme6haasLG8ClgMTbChMoXshO9P8C+aRMAtG4rp
         5lqYdxsI8kzyILGKddjKbvyC+Dj/dEce1WrL9ViRpexakbs7erc5Ch6CWmWlPH3bgDpU
         2y7/CCtgW7PPYsy8fF1gR3vFbM2YaaTx4dWYMJHI5S3SxRk38iZi0mPgMq2vPuHu2kv+
         VLI/ycu07wygyWmISuWziZODsrcYP5OyTBKJWFaeV/Y1sFuTy9G3Q/Gclt/PjmFx0Nls
         iJlg==
X-Gm-Message-State: AOAM53186A25QuBvq7MybQsqcVoS8vZuny3pAOtSkF9q0/5uDp1xjcL0
	dXhcZq3Opc52/+VY9K6PhBc=
X-Google-Smtp-Source: ABdhPJyJBPcZsYrUodiDaUKuo+tVAenDnuUCMcfUBF2Dt31Dy8d9A249kEd/6gyTdl5cqVFXANZ03A==
X-Received: by 2002:a17:90a:154e:: with SMTP id y14mr4131852pja.180.1589555048173;
        Fri, 15 May 2020 08:04:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9117:: with SMTP id 23ls931300pfh.0.gmail; Fri, 15 May
 2020 08:04:07 -0700 (PDT)
X-Received: by 2002:a63:ed50:: with SMTP id m16mr3724329pgk.271.1589555047653;
        Fri, 15 May 2020 08:04:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589555047; cv=none;
        d=google.com; s=arc-20160816;
        b=u0VZmTTmvyWTs0eoYq21avp3yZMFp+0Fev+pO6hVfv/aP2oO/DJcDJp1c+UJmacAGn
         8c4np3Lglnj7/UlhgXQBcqcSObwtDoV71UXcD4OFRU7I+Igb0eQvItyGMiZ3/cXjiP+h
         wbePZ8nCRzZ9Z4Jo2ppjzCBDRN8EOSHHwOlbSVkS3dw4BPaJPsPXygNcYyfALSdCkLCK
         HpHfLge6La18eS5rgz5amXQbZIZGlgkrPk5dDnbWxBhBt+7wt1wsch6vFUlIN6T/XiWT
         fRGx+NF/cimCsDek089jVnOGyHEBM62HawjAGrZKcOI9sM3Sp6gLzB29qw1BwBGKVuPm
         1pnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=B+kcPzRw4VpBcmlaWaCawRXGVLL4Q9ilUa578zhnNe4=;
        b=XAkKTDVyhezK/yJAr9kWMpju5WfkOBL8sU2HLLWohdky0LS4KQzPKxQ2NBkJAOMZma
         IfgjUv4TUV39SMnbcz/SnnOaIjVU39HHentn9HIRRt4fmA/BzclSNmkpJCrZoWvffKe+
         V8YI2bKVSJFPA9S1ZQ6qifLKK15N4vZQHqYaNB+svPfZNqQ0eHdbr7SBDP9341Tmy5E1
         DcPL3AiLZiuyvL86SAk9seKfjKl4knznBls8rxEdLm3fFWFqfcERUwHklqdtXAkfI347
         9Dp2xsBOm9d6Jthr03RH3Utu6nCN5GRGgv22xP1SoAvkfnFzBJgXA8YUbk1XNN3lfBvN
         RYRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MBA9I9Ds;
       spf=pass (google.com: domain of 3z6--xgukebwgnxgtiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3Z6--XgUKEbwgnxgtiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id t6si1074742pjl.0.2020.05.15.08.04.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 May 2020 08:04:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3z6--xgukebwgnxgtiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id h15so2893179qvk.0
        for <clang-built-linux@googlegroups.com>; Fri, 15 May 2020 08:04:07 -0700 (PDT)
X-Received: by 2002:a05:6214:164:: with SMTP id y4mr3698355qvs.249.1589555047207;
 Fri, 15 May 2020 08:04:07 -0700 (PDT)
Date: Fri, 15 May 2020 17:03:37 +0200
In-Reply-To: <20200515150338.190344-1-elver@google.com>
Message-Id: <20200515150338.190344-10-elver@google.com>
Mime-Version: 1.0
References: <20200515150338.190344-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip 09/10] compiler.h: Move function attributes to compiler_types.h
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com, 
	andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org, 
	peterz@infradead.org, will@kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MBA9I9Ds;       spf=pass
 (google.com: domain of 3z6--xgukebwgnxgtiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3Z6--XgUKEbwgnxgtiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--elver.bounces.google.com;
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

Cleanup and move the KASAN and KCSAN related function attributes to
compiler_types.h, where the rest of the same kind live.

No functional change intended.

Signed-off-by: Marco Elver <elver@google.com>
---
 include/linux/compiler.h       | 29 -----------------------------
 include/linux/compiler_types.h | 29 +++++++++++++++++++++++++++++
 2 files changed, 29 insertions(+), 29 deletions(-)

diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index fce56402c082..a7b01e750dd3 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -259,35 +259,6 @@ do {									\
 	__WRITE_ONCE_SCALAR(x, val);					\
 } while (0)
 
-#ifdef CONFIG_KASAN
-/*
- * We can't declare function 'inline' because __no_sanitize_address conflicts
- * with inlining. Attempt to inline it may cause a build failure.
- *     https://gcc.gnu.org/bugzilla/show_bug.cgi?id=67368
- * '__maybe_unused' allows us to avoid defined-but-not-used warnings.
- */
-# define __no_kasan_or_inline __no_sanitize_address notrace __maybe_unused
-# define __no_sanitize_or_inline __no_kasan_or_inline
-#else
-# define __no_kasan_or_inline __always_inline
-#endif
-
-#define __no_kcsan __no_sanitize_thread
-#ifdef __SANITIZE_THREAD__
-/*
- * Rely on __SANITIZE_THREAD__ instead of CONFIG_KCSAN, to avoid not inlining in
- * compilation units where instrumentation is disabled.
- */
-# define __no_kcsan_or_inline __no_kcsan notrace __maybe_unused
-# define __no_sanitize_or_inline __no_kcsan_or_inline
-#else
-# define __no_kcsan_or_inline __always_inline
-#endif
-
-#ifndef __no_sanitize_or_inline
-#define __no_sanitize_or_inline __always_inline
-#endif
-
 static __no_sanitize_or_inline
 unsigned long __read_once_word_nocheck(const void *addr)
 {
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 6ed0612bc143..b190a12e7089 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -167,6 +167,35 @@ struct ftrace_likely_data {
  */
 #define noinline_for_stack noinline
 
+#ifdef CONFIG_KASAN
+/*
+ * We can't declare function 'inline' because __no_sanitize_address conflicts
+ * with inlining. Attempt to inline it may cause a build failure.
+ *     https://gcc.gnu.org/bugzilla/show_bug.cgi?id=67368
+ * '__maybe_unused' allows us to avoid defined-but-not-used warnings.
+ */
+# define __no_kasan_or_inline __no_sanitize_address notrace __maybe_unused
+# define __no_sanitize_or_inline __no_kasan_or_inline
+#else
+# define __no_kasan_or_inline __always_inline
+#endif
+
+#define __no_kcsan __no_sanitize_thread
+#ifdef __SANITIZE_THREAD__
+/*
+ * Rely on __SANITIZE_THREAD__ instead of CONFIG_KCSAN, to avoid not inlining in
+ * compilation units where instrumentation is disabled.
+ */
+# define __no_kcsan_or_inline __no_kcsan notrace __maybe_unused
+# define __no_sanitize_or_inline __no_kcsan_or_inline
+#else
+# define __no_kcsan_or_inline __always_inline
+#endif
+
+#ifndef __no_sanitize_or_inline
+#define __no_sanitize_or_inline __always_inline
+#endif
+
 #endif /* __KERNEL__ */
 
 #endif /* __ASSEMBLY__ */
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200515150338.190344-10-elver%40google.com.
