Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBCWDTH3AKGQEQKBHNEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA011DCBB9
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 13:10:03 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id d30sf4438165ioe.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 04:10:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590059402; cv=pass;
        d=google.com; s=arc-20160816;
        b=yWD749RXiALTxTfOdRREzhV/SzthtPso6tFc4yyRQJ8czqvaArF9LiUCi/nLP16qiK
         U5c5tSJSfMkyB9FE97ncGWbTnpdh2KDDDjqjNxlJiAznazKPdd834VrAO/t6PBv0PqJZ
         vRzSfJQub/z4GET5nalAZsxMVOqC4YIjL1oS1W+KSAppE63/7in+KaMxyhZU5HqYJL95
         QyKeHF6QMo6vnehvLgZbNimbt+QSx+KXxKjGtSPOLgiGlFm+dkvMQP0m1EsDxEQd9Tf2
         JvK7GDxHHHycUzw0GnFc892toNAhogpmd67LR7jGWGtgDy34rdjUPkniZNKwoqSXM8V9
         QDug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=u7TvVQIdtCcqeLJy7rk+ppbfPfbgzKGVb9W/ooo2bnQ=;
        b=i9FEzK9mllTyU1eZVzu3+p3keSRLggIqnpPLRx6mc7yUSGqkGsW5hktB04I4diB3zZ
         67SmESX/ZaXedWZw0pGbJRNwyZBz7c0TVHC14JvlZDywB1gHd/Ed8srYfdq7CAQVed5r
         jFeKKTe/ynQDxdLnR5p/CUgtXwlLHSt9YGA2ZKejxxYeiSKIOn4UkjS8Ck+uhmQFD2Vl
         hmHK0mM1VyaDXR8/D2bn0AMkiFZHIbjM7JiyjLBh7z87RAyFZaSwAsXjNplQvhLspXSv
         bUKdIfYzjBZbOKXkNwIYOqbAAHKkhJkMkhCWuF13lNxHxSeYpO+JzYpZfBBGjE9t+SbF
         oi1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="VtJ/Urbf";
       spf=pass (google.com: domain of 3iwhgxgukewielvergoogle.comclang-built-linuxgooglegroups.com@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3iWHGXgUKEWIELVERGOOGLE.COMCLANG-BUILT-LINUXGOOGLEGROUPS.COM@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u7TvVQIdtCcqeLJy7rk+ppbfPfbgzKGVb9W/ooo2bnQ=;
        b=ggBLJ2UdeC/F2BMeeG0eXPgPy9dq2nDs7fWvKZon7CnYhIQ2k7zEJdLVI7OTfQWTwg
         CziePcDZeFkXAPu/l7L2GNSAKzLl0WI7VgE7oHiLXZmw7/n9MFWIbITUfV7K6ag1iiuM
         brIzLGcXKvXLxBA+vaLdUlaiCESmtcSvFZg5NhE/fhmkKG9382gJmHFZQKLbx8rqSTfo
         gC4MC9dnxFXsFoQHcicLJRXmKYXA2d7JdDqM7VJvfsDSO884LCCakEQ5KAO0n3XM+ETG
         Gf1dhqJN97x+MBhkujL4bO+RVFW3IN5SKK2+7YRbtOSWVZ+WsHyVTkxCreZluJ9BSt+b
         MGTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u7TvVQIdtCcqeLJy7rk+ppbfPfbgzKGVb9W/ooo2bnQ=;
        b=S9hgYEuWAbiC+nuynEsXQFyJ3LgYrbwVHpwQ1TqrDJvQGZZnA46IpubmTAc5D4KNcc
         7PpGAyoiVmjO2Y4VSoHQleC+4vepGoLybM/O/XxXz9vDNg2y7jKuLTPM9IkmFhBwJ3mm
         5i0uUe2gZEWFJ2I0c432cHL+Sz0ez9FncEV6Y7zzG55PHfoqrtKS1WF97BJSlgZfYhU1
         T0va6lE5FItC9Z0WEwzlYzKgdx/ZyecSG5amCDgveuyVIUXxu7kCP+jvueLb0K2jPjDZ
         DmjxOzL9lqarI0dwMBPCLtFxgWAyyUBRcoRujO1295wDFRx0ne7HUQcoCF1Dwxlm0nee
         736A==
X-Gm-Message-State: AOAM533UnsUCZKrdoVRLMWCYGcCSb+WpqsKU60S5JWPNySoCrNn+evDz
	4LgLNd2MCV09RygK99xL8vY=
X-Google-Smtp-Source: ABdhPJyoP1b7/sqxN99hPwgayfgGlyikn3kzyoHOCNC06ZG51R1x4m2PfEnJRHVq4apQZFaL11VVTQ==
X-Received: by 2002:a02:cb59:: with SMTP id k25mr3055973jap.41.1590059402637;
        Thu, 21 May 2020 04:10:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c514:: with SMTP id r20ls527253ilg.7.gmail; Thu, 21 May
 2020 04:10:02 -0700 (PDT)
X-Received: by 2002:a92:ba14:: with SMTP id o20mr8139966ili.23.1590059402261;
        Thu, 21 May 2020 04:10:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590059402; cv=none;
        d=google.com; s=arc-20160816;
        b=Id5nOQUPkw+8TrwV0yg8a0EjJUOclq8tHNZ1wA8tEo0/Xu1Fo6c7rGoHTioVesLDQB
         fBJoC3aagXH5buKMqGPz7YR6Lws2J6EqJwIrHXLVkUdbkPiaGhk/K9Nrk0sqCia7G1rX
         qCLSDlyAi7VIadh5f+RsRdtEOLTtChgfWFw6dyJ9YjRP4tw8RuO+ndkbrQh4Iyj6Ng5m
         L5KBeG3HObTAC1X4JZpzusAjnF1R6eqgMkvyCalV72k6Uh2Kt7E2py4eUnBOmSgWUQIs
         dlLv3u734HDBHEHB021xsJanX72Kin/CP1GXtLophRLR4x20EEqp3jBit/iqcvwIVgWV
         gDFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=O66Rrrp+JcFi/5yju5R8rYLztnbdicYxc/HcFiSiC0Y=;
        b=sQfkgkPlYJDHOXdvm7Q4MLiOcjYP3ttThjqkKHG3S7ZRnbHgDSyh/lKCQf3uIEG5OX
         Rblszm0am3ZzBkOY/lmbQDrtAkI8c0R2Iv6V2gTuGOn8aJgOs6wwGdqulJ2syJYA8A7n
         caviY6YDrSSLAjIWumpp67ckKz2k32Q76TQyWjVIoRvzAgiZZV/Q7npD4Vq87dg6lmmt
         7dRBm1b7YwbzLS8CUOBDOvCocJ72csxOQfX99nlw4314q7DJN1qQ0jlsIObuDuATtmIM
         VsN4Kt/It4F8Bm7VZOp3/aw1h4g6V6g2k+QfD/vDUDMNpTPGSWGQduLylyTm3YWXW933
         h0QA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="VtJ/Urbf";
       spf=pass (google.com: domain of 3iwhgxgukewielvergoogle.comclang-built-linuxgooglegroups.com@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3iWHGXgUKEWIELVERGOOGLE.COMCLANG-BUILT-LINUXGOOGLEGROUPS.COM@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id h14si437886iol.1.2020.05.21.04.10.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 04:10:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3iwhgxgukewielvergoogle.comclang-built-linuxgooglegroups.com@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id v6so7038991qkh.7
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 04:10:02 -0700 (PDT)
X-Received: by 2002:a0c:90e7:: with SMTP id p94mr9692288qvp.219.1590059401676;
 Thu, 21 May 2020 04:10:01 -0700 (PDT)
Date: Thu, 21 May 2020 13:08:48 +0200
In-Reply-To: <20200521110854.114437-1-elver@google.com>
Message-Id: <20200521110854.114437-6-elver@google.com>
Mime-Version: 1.0
References: <20200521110854.114437-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip v2 05/11] kcsan: Remove 'noinline' from __no_kcsan_or_inline
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com, 
	andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org, 
	peterz@infradead.org, will@kernel.org, clang-built-linux@googlegroups.com, 
	bp@alien8.de
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="VtJ/Urbf";       spf=pass
 (google.com: domain of 3iwhgxgukewielvergoogle.comclang-built-linuxgooglegroups.com@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3iWHGXgUKEWIELVERGOOGLE.COMCLANG-BUILT-LINUXGOOGLEGROUPS.COM@flex--elver.bounces.google.com;
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

Some compilers incorrectly inline small __no_kcsan functions, which then
results in instrumenting the accesses. For this reason, the 'noinline'
attribute was added to __no_kcsan_or_inline. All known versions of GCC
are affected by this. Supported version of Clang are unaffected, and
never inlines a no_sanitize function.

However, the attribute 'noinline' in __no_kcsan_or_inline causes
unexpected code generation in functions that are __no_kcsan and call a
__no_kcsan_or_inline function.

In certain situations it is expected that the __no_kcsan_or_inline
function is actually inlined by the __no_kcsan function, and *no* calls
are emitted. By removing the 'noinline' attribute we give the compiler
the ability to inline and generate the expected code in __no_kcsan
functions.

Link: https://lkml.kernel.org/r/CANpmjNNOpJk0tprXKB_deiNAv_UmmORf1-2uajLhnLWQQ1hvoA@mail.gmail.com
Signed-off-by: Marco Elver <elver@google.com>
---
 include/linux/compiler.h | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index e24cc3a2bc3e..17c98b215572 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -276,11 +276,9 @@ do {									\
 #ifdef __SANITIZE_THREAD__
 /*
  * Rely on __SANITIZE_THREAD__ instead of CONFIG_KCSAN, to avoid not inlining in
- * compilation units where instrumentation is disabled. The attribute 'noinline'
- * is required for older compilers, where implicit inlining of very small
- * functions renders __no_sanitize_thread ineffective.
+ * compilation units where instrumentation is disabled.
  */
-# define __no_kcsan_or_inline __no_kcsan noinline notrace __maybe_unused
+# define __no_kcsan_or_inline __no_kcsan notrace __maybe_unused
 # define __no_sanitize_or_inline __no_kcsan_or_inline
 #else
 # define __no_kcsan_or_inline __always_inline
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521110854.114437-6-elver%40google.com.
