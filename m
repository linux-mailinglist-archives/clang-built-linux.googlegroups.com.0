Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBLUX4T3AKGQEWE5FXII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id C60FC1EE710
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 16:56:47 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id f15sf365700vsh.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 07:56:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591282607; cv=pass;
        d=google.com; s=arc-20160816;
        b=tvpC1qQmCwSMrnjuJIv7SEmS5xFKlY+vvep37/9ymH4IWV4/CeVUuuOMlZ4U12sTp3
         A5XEChpaJ3G9Trlzn0puxQgJP/J2/gZGahhJDqRp3Q85XDlsqjj8X92B0tgXfw/f2kgU
         a0UlSgrjqZCSdXSMDLhndVL1W8amv1+klLc3i3jpUc6wD0+5Pfd5TEqNjKt39GdgPC0K
         7wAPxjwtXVJRj8bj8+Mk8fF+G1Vr+dEfXRqTWS9b16yXKqvXkHCCygVC6EhP5j8ytZRR
         Q1LmWpvWiK2IWn4eWKIVifHaI5ErMT3cM+tvcHCyStIH3jUWepCp1X5+73nW7np22bex
         F6eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=B3kHRgYcUv9zEQAKdEaGwftk5+Po4M7QXaztzay0vXE=;
        b=0yj+0KTlZcTy9SgWcFqWMQTxf4Bo3ZjoLaI5OawvOaBHTZUCRVGH9JMy60KaWqzGWN
         r7Atrje/o1TGXQTfjS3/4oWnkQPoqXdsHWmyOQpCJ05yo4wx1QW3frkpI1Ii5qgM8Pq2
         9mn7Bqk5og9Yj+AkqCR3EO8JxeRRSlXpY67wZ9unhpBFY2vU0OnWQfMMOv5KKHuVyOxn
         jmChWMb8Fd80YKqKBhiRksx0WeaEKLZNJD0jHVtQdXaefOdSEbe5NpZvOJGe96Fh+hzY
         mpVYN2vuqHBMAf1YdfWLcQLqhFZ4x/z/CFPELtQ+FjosWgOEKovsZ6iKlEEzAezV/4EI
         q7UA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WdAR16zY;
       spf=pass (google.com: domain of 3rqvzxgukesygnxgtiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3rQvZXgUKESYGNXGTIQQING.EQOENCPI-DWKNV-NKPWZIQQINGITQWRU.EQO@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=B3kHRgYcUv9zEQAKdEaGwftk5+Po4M7QXaztzay0vXE=;
        b=k894MJuyO7WFxNkpk99y3v+rr4/5nnFpb1lt/5Nqe3VIaRgmU2NX34K6MvM0zqBtW3
         WrXQPjzookOEavsSZPgWKO5e8wQjquUg3bjdPm86HPY4mYBYrPSVrYB3+b68K3OvCbF6
         izRrtwloyK3FJzAyyI7Mb3vtlcT1xSkWlkb8lSpBxx2wshoUGWkGbzvjWKqmSUgnzB9E
         7tYXa7HM+qHRgO+2Cry77YBfv7FKrqtdO/AfjqxrDTsnx8hUkDNQWiAN0lcHEQDd16s1
         NiNoMf0Za/WSSk9X35RNvRanebVTv3ci6kepOvwVTFougUCN4zeHQRrEuclc3YEoYLR+
         AaSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B3kHRgYcUv9zEQAKdEaGwftk5+Po4M7QXaztzay0vXE=;
        b=kYNSmD5x+4+R16B2gjGhChir1t6B1D8E40ewSkfgaVVlJHNtJ7jjT7yskd+j7waJWc
         SgisA5WNksf9LQWDfpTG03mdBzAVuf09uf1R54eIRai62m/fOfKITpp/LM83rc4IFBM7
         eT4NtClXhU2JAUBfi7GduZCCWzquZRhdAFdRwE4WYiYgly5L2s0j58QOI5FFQITPfiW8
         W5g54ecXFsdKeasiyT9pn/eFPzsoCEQJsDwuQhk9FDBb4ILQk4ndzToVy419m9bb8Yrw
         gL65m66Y6Tk1hhvXfbsW7atW060hsixPrguSZCEKMjL7D2Q23ieN1OoyQ1e/x1Ucbgi8
         kn9w==
X-Gm-Message-State: AOAM531vrkWg9mEEAmUOfjKpdxDvBp9fsncW6guNIF+g7WbU3Br+iVIq
	DJe0isqBHreLXU2C8Yj6Vas=
X-Google-Smtp-Source: ABdhPJzkrRUfRN4RsdD5fH/XJswm4v1JbFh8YigrnsV0msTcEVVOJ32yPWZ2Yih4bKIqi9Yiqs/WJA==
X-Received: by 2002:a67:c489:: with SMTP id d9mr464229vsk.133.1591282606826;
        Thu, 04 Jun 2020 07:56:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c9af:: with SMTP id f15ls307539vkm.0.gmail; Thu, 04 Jun
 2020 07:56:46 -0700 (PDT)
X-Received: by 2002:a1f:910e:: with SMTP id t14mr3795400vkd.58.1591282606405;
        Thu, 04 Jun 2020 07:56:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591282606; cv=none;
        d=google.com; s=arc-20160816;
        b=wBDY+ApyPc0ThszJGBg9p3PSii1R1V+ZV6kixC1S3CrrYMb0q8zhE+D60biamXqJWc
         IAF2W8R3CHrSZ3TFDDjcOXmWLr2pRglzZKWSKoGBKHNEf5tsUF1Dm6FdZ2//JMzpE5Mf
         SVOY4mB538CmKi1KtMMWe1yW7yTSMkUYrp7MeWYDn6PvUfq08IOx6kanAV2lCAFV0tbO
         sEbXVZGm8hKZoll2nJU97FEI3u3vpRPhgTI2j6mjLMLYP60cUi/J0maXZZYBsy+GNuUZ
         Yux7T3+0/HLV3EK2hE3y43UUQmSd4pmhEK0mlVjNm4mDQrO+Aq0myMklmH3K2t728Roc
         DJgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=I7c54UO+jBDB8Mu0xGlRZFnGkQOtoIXkr80oIo5a6yg=;
        b=MEJ3rVktTe3iA18IQf42jHFpHINj7l3r3MAvFtermtzij/v4JAKvVBgTbTOLPEgQ0k
         R/2BLnGkD8yB+wBL4jRdvj42hYJKI8pqkwHf/C3NJlTwHuBh7Q5zinHZjRvsL6lcMEwe
         5XXLKaDa4ORIzCxsHFXOzrEHF31W972iPStgMdXFDFRw6Jtb4q4wgVeKlBISRgY+sN5+
         CJ7B36H4oMSmWFvWaVDl5ZzRmeztC+whz86retYpN2RhDFmS2bFpwMcv/fN5J2Y5MSkf
         Ahr8dFLgySFUZi3bjYjIbCIz+DXSjctcN5AYi8kJeN7Ih1ZsCLPJ8koqdIq8JIx2RAcp
         NQ7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WdAR16zY;
       spf=pass (google.com: domain of 3rqvzxgukesygnxgtiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3rQvZXgUKESYGNXGTIQQING.EQOENCPI-DWKNV-NKPWZIQQINGITQWRU.EQO@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id t24si328770uaq.0.2020.06.04.07.56.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 07:56:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3rqvzxgukesygnxgtiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id y25so5260854qtb.6
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 07:56:46 -0700 (PDT)
X-Received: by 2002:ad4:556b:: with SMTP id w11mr5001166qvy.171.1591282605967;
 Thu, 04 Jun 2020 07:56:45 -0700 (PDT)
Date: Thu,  4 Jun 2020 16:56:34 +0200
Message-Id: <20200604145635.21565-1-elver@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.rc2.251.g90737beb825-goog
Subject: [PATCH v2 1/2] kcov, objtool: Make runtime functions noinstr-compatible
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: peterz@infradead.org, bp@alien8.de, tglx@linutronix.de, mingo@kernel.org, 
	clang-built-linux@googlegroups.com, paulmck@kernel.org, dvyukov@google.com, 
	glider@google.com, andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WdAR16zY;       spf=pass
 (google.com: domain of 3rqvzxgukesygnxgtiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3rQvZXgUKESYGNXGTIQQING.EQOENCPI-DWKNV-NKPWZIQQINGITQWRU.EQO@flex--elver.bounces.google.com;
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

While we lack a compiler attribute to add to noinstr that would disable
KCOV, make the KCOV runtime functions return if the caller is in a
noinstr section. We then whitelist __sanitizer_cov_*() functions in
objtool. __sanitizer_cov_*() cannot safely become safe noinstr functions
as-is, as they may fault due to accesses to vmalloc's memory.

Declare write_comp_data() as __always_inline to ensure it is inlined,
and reduce stack usage and remove one extra call from the fast-path.

In future, our compilers may provide an attribute to implement
__no_sanitize_coverage, which can then be added to noinstr, and the
checks added in this patch can be guarded by an #ifdef checking if the
compiler has such an attribute or not.

Signed-off-by: Marco Elver <elver@google.com>
---
Apply after:
https://lkml.kernel.org/r/20200604102241.466509982@infradead.org

v2:
* Rewrite based on Peter's and Andrey's feedback -- v1 worked because we
  got lucky. Let's not rely on luck, as it will be difficult to ensure the
  same conditions remain true in future.

v1: https://lkml.kernel.org/r/20200604095057.259452-1-elver@google.com

Note: There are a set of KCOV patches from Andrey in -next:
https://lkml.kernel.org/r/cover.1585233617.git.andreyknvl@google.com --
Git cleanly merges this patch with those patches, and no merge conflict
is expected.
---
 kernel/kcov.c         | 19 +++++++++++++++++--
 tools/objtool/check.c |  7 +++++++
 2 files changed, 24 insertions(+), 2 deletions(-)

diff --git a/kernel/kcov.c b/kernel/kcov.c
index 8accc9722a81..3329a0fdb868 100644
--- a/kernel/kcov.c
+++ b/kernel/kcov.c
@@ -24,6 +24,7 @@
 #include <linux/refcount.h>
 #include <linux/log2.h>
 #include <asm/setup.h>
+#include <asm/sections.h>
 
 #define kcov_debug(fmt, ...) pr_debug("%s: " fmt, __func__, ##__VA_ARGS__)
 
@@ -172,6 +173,12 @@ static notrace unsigned long canonicalize_ip(unsigned long ip)
 	return ip;
 }
 
+static __always_inline bool in_noinstr_section(unsigned long ip)
+{
+	return (unsigned long)__noinstr_text_start <= ip &&
+	       ip < (unsigned long)__noinstr_text_end;
+}
+
 /*
  * Entry point from instrumented code.
  * This is called once per basic-block/edge.
@@ -180,13 +187,18 @@ void notrace __sanitizer_cov_trace_pc(void)
 {
 	struct task_struct *t;
 	unsigned long *area;
-	unsigned long ip = canonicalize_ip(_RET_IP_);
+	unsigned long ip;
 	unsigned long pos;
 
+	if (unlikely(in_noinstr_section(_RET_IP_)))
+		return;
+
 	t = current;
 	if (!check_kcov_mode(KCOV_MODE_TRACE_PC, t))
 		return;
 
+	ip = canonicalize_ip(_RET_IP_);
+
 	area = t->kcov_area;
 	/* The first 64-bit word is the number of subsequent PCs. */
 	pos = READ_ONCE(area[0]) + 1;
@@ -198,12 +210,15 @@ void notrace __sanitizer_cov_trace_pc(void)
 EXPORT_SYMBOL(__sanitizer_cov_trace_pc);
 
 #ifdef CONFIG_KCOV_ENABLE_COMPARISONS
-static void notrace write_comp_data(u64 type, u64 arg1, u64 arg2, u64 ip)
+static __always_inline void write_comp_data(u64 type, u64 arg1, u64 arg2, u64 ip)
 {
 	struct task_struct *t;
 	u64 *area;
 	u64 count, start_index, end_pos, max_pos;
 
+	if (unlikely(in_noinstr_section(ip)))
+		return;
+
 	t = current;
 	if (!check_kcov_mode(KCOV_MODE_TRACE_CMP, t))
 		return;
diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 3e214f879ada..cb208959f560 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -2213,6 +2213,13 @@ static inline bool noinstr_call_dest(struct symbol *func)
 	if (!strncmp(func->name, "__ubsan_handle_", 15))
 		return true;
 
+	/*
+	 * The __sanitizer_cov_*() calls include a check if the caller is in the
+	 * noinstr section, and simply return if that is the case.
+	 */
+	if (!strncmp(func->name, "__sanitizer_cov_", 16))
+		return true;
+
 	return false;
 }
 
-- 
2.27.0.rc2.251.g90737beb825-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200604145635.21565-1-elver%40google.com.
