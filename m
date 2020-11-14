Return-Path: <clang-built-linux+bncBDPPFIEASMFBBZ57XT6QKGQE5NI7PAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DAD2B297D
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 01:08:09 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id u8sf3521718ior.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 16:08:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605312488; cv=pass;
        d=google.com; s=arc-20160816;
        b=JyBhAiSECDHjXMaXlaQDYtR+JkNnTYWU9BSX8bHmcA+rdSZakbzPM4drYzZOUjrZc5
         CGlTaVm6cAWLkAneHFq9mEmOMWOTt4v3IShUbIG2wFMLoUhjEXHnXFB0dAiDmTIjGIFJ
         l2nzzRhnuyBiwqg08Gcg3025WG63uf6uu7m78/zatFvTg2XRnQMbll10lf6cFL+rVovP
         T5TBUDmx/e1c2ImrFcA0dLCTSSms0yRWcA4qYNKHAfTKuF3nYAOh7IyzJltqGq1GZaqR
         ZgNttR5AFgu5AP/KHNRspUFtNLytmC3Esygrt0DTZRS+RFZ6qgWCNTcMy08zuxIFPKxZ
         8MTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=vagnZ3DzEhgMgWQ+mbdygEnydF8+cbaWdQF++wdSksk=;
        b=yN55ex1d+ByeVFVKQG97/ohUujDh0H0MkWdY+65f7emJkDbsuTZZ+9tVxNqEKpU9Vc
         oi1t2zAikMk+ZC5L+r4LWFtiVQgt7lqTTxaV7JFfmV490WCgv5dPfANlrVK9TP9LpwvB
         GI/7RaS4ubpCOBeD50qD1mtxFi7swNxMDBNNsyDCztluSaQ8qDHh//fb2MS+QajdMhkD
         0axwvWplM+ki+A+6u6pvyYKEWk+J7gDL10DMPOAHF347WabFVRwqZJDpWsWK5XX5FKgx
         poqK3iQoThiPBC4yCSRAuzxU+GqaukqShANFLxtgk640oj2ydDfw+oBXNuS5keLC85JH
         GF/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ohksk+KB;
       spf=pass (google.com: domain of 35x-vxwckeeyqzwomzaowwotm.kwuktivo-jcqtb-tqvcfowwotmozwcxa.kwu@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=35x-vXwcKEeYQZWOMZaOWWOTM.KWUKTIVO-JcQTb-TQVcfOWWOTMOZWcXa.KWU@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vagnZ3DzEhgMgWQ+mbdygEnydF8+cbaWdQF++wdSksk=;
        b=l+mQXGxITKDwzepIMZBxui4V+GdVgQSn2qZq3hAz9obVli/g5W09pmFLykT0F8VIAw
         LNZBPioOrG4XnX36POYbXbSQ+kq8K0jywS17WeMDAMltkWRYlUH9Mblq/lFGCSZtggSV
         SiBaBlhxp8sQrfqcdTUyRACRVwzxdKYvqGTBqGytJ6VBUsq1gsQ/Gu3MDlrvzTyYFieN
         +hBd3M9hF6mUAcrMJuHa95QdEO4Pogq2CEf5My59QJXrSMbpKDiMP0nKe67l3/U1ZbkT
         6zXRpLj23F97eCSGNz9EqzJdtxCpiM/PEuL96zZVLuK3M9HTqYJOYmWpE71imEuOp4sD
         4+vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vagnZ3DzEhgMgWQ+mbdygEnydF8+cbaWdQF++wdSksk=;
        b=Y/MjwUZxnGuGc4c5oXPMEpJwycq/GRlxNb77WwNGKwk4VLc8+79xLEaiJThSCLbflI
         D5b+2+vc2Ly8mw1sDlP1gNV2wB9XVyUgBYelyh3WLBngRNLzB89bzLT1xM+J9jQJ4X61
         Gwg9epX05f1XBLMj2laW7F5r4G0ND1a3oFfpKEtgPDL78GD+IqqdeWpvdP2oimE1ugve
         4dWI6Yi2rosv7yPaFWDcBecmIQZfodDRM3BXprhy05ozIhYL66BXqTH+uV2Mlm1rywc8
         FKUTtK21g/UFsgvvYvW2rmXh7qRC/gIoIfkw7ZVv9N9LzhDTbjHlp2lqovfztyN209e8
         XNMA==
X-Gm-Message-State: AOAM5321YtENFt8GO715pzNgSOktJ0rNCupMA58fEJemj5Rr5Oj09osj
	pY8l+eymuBD63LBdaXolULs=
X-Google-Smtp-Source: ABdhPJwhQ+fuiFjn/HbjLoEM6UnhMyiVJtMDqqCY7ReVZlB/jGnFGIXOQRz6yXds5KFV/q/jf4yTQw==
X-Received: by 2002:a92:d11:: with SMTP id 17mr1818706iln.84.1605312488094;
        Fri, 13 Nov 2020 16:08:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:740c:: with SMTP id p12ls1920125ilc.2.gmail; Fri, 13 Nov
 2020 16:08:07 -0800 (PST)
X-Received: by 2002:a92:d4d1:: with SMTP id o17mr1716845ilm.36.1605312487641;
        Fri, 13 Nov 2020 16:08:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605312487; cv=none;
        d=google.com; s=arc-20160816;
        b=Jogi0hkhVtMYaCholpvDCXmEKsXBk3KQC0er22rlbhcLCP+snb3U6egJVcArouZuOi
         tT1dAgPIfyvSPrHJxvoGl1uU5fyeMxwfwwNkaeSLTb9vYws9uxUgVtY/6+J5zc2BfFpg
         qV5pm/0RquZR4s/yqbyzmXslMWGzplo63asr9Vr8jSGdB2V4zVxkjvtfEKoJ7lSgHAeo
         8LNvt5ciMGy/n4qtF9QbhJXAO2sdDL6/KwOOiCRIBL4k/cPEaRYfVjCqEESKdAl/YE9H
         N8MdVeaL5VQ/Et4KZYyMDjyjMGbC/NtaXrbvqsOByxKjlZ+pMALuF4M84gLoOvUlLmmA
         Gocw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=eTdjv2rngDcsaDWT4WQKH1RsSRvVouhbrVuptq5s48Y=;
        b=TrVzsgmYxuwh0aZ9ymT4AEQ0QfMkCgJqZ4qMNUABybW7DykSRkJOSmEREz0ywtdHMd
         4Qpnn+YgGYzimJtKTodVGu4O9v4opyrngXcNgSzvgKuljXzOqSA3f6AiSd36QTYQcy2m
         41xfDiJ/hMaq7ZBDnO9/6WkgNED8keIZVU0Damwf0hih7Ald5c91/Ej/f60/WKSgFYPu
         wtzIGDrf0Um1FQavn+bAIZRl1ik7JBpGW0DxtZnV0U1JlnrwBQh09Q9rHvND7I9SrcaC
         9zSEjl9jd0WpIJtFVrg+i9B0MDoFEzwFx/kSDGxyeV+i6wFBIf0vATOV31NOgm1PG3Ej
         juzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ohksk+KB;
       spf=pass (google.com: domain of 35x-vxwckeeyqzwomzaowwotm.kwuktivo-jcqtb-tqvcfowwotmozwcxa.kwu@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=35x-vXwcKEeYQZWOMZaOWWOTM.KWUKTIVO-JcQTb-TQVcfOWWOTMOZWcXa.KWU@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id u4si376849ilk.5.2020.11.13.16.08.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 16:08:07 -0800 (PST)
Received-SPF: pass (google.com: domain of 35x-vxwckeeyqzwomzaowwotm.kwuktivo-jcqtb-tqvcfowwotmozwcxa.kwu@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id c9so12744128ybs.8
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 16:08:07 -0800 (PST)
Sender: "irogers via sendgmr" <irogers@irogers.svl.corp.google.com>
X-Received: from irogers.svl.corp.google.com ([2620:15c:2cd:2:f693:9fff:fef4:4583])
 (user=irogers job=sendgmr) by 2002:a25:fc1c:: with SMTP id
 v28mr4954437ybd.356.1605312487133; Fri, 13 Nov 2020 16:08:07 -0800 (PST)
Date: Fri, 13 Nov 2020 16:08:03 -0800
Message-Id: <20201114000803.909530-1-irogers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.299.gdc1121823c-goog
Subject: [PATCH] perf test: Fix dwarf unwind for optimized builds.
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Ard Biesheuvel <ardb@kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ohksk+KB;       spf=pass
 (google.com: domain of 35x-vxwckeeyqzwomzaowwotm.kwuktivo-jcqtb-tqvcfowwotmozwcxa.kwu@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=35x-vXwcKEeYQZWOMZaOWWOTM.KWUKTIVO-JcQTb-TQVcfOWWOTMOZWcXa.KWU@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ian Rogers <irogers@google.com>
Reply-To: Ian Rogers <irogers@google.com>
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

To ensure the stack frames are on the stack tail calls optimizations
need to be inhibited. If your compiler supports an attribute use it,
otherwise use an asm volatile barrier.

The barrier fix was suggested here:
https://lore.kernel.org/lkml/20201028081123.GT2628@hirez.programming.kicks-ass.net/

Fixes: 9ae1e990f1ab ("perf tools: Remove broken __no_tail_call
       attribute")
---
 tools/perf/tests/dwarf-unwind.c | 39 +++++++++++++++++++++++++++------
 1 file changed, 32 insertions(+), 7 deletions(-)

diff --git a/tools/perf/tests/dwarf-unwind.c b/tools/perf/tests/dwarf-unwind.c
index 83638097c3bc..c8ce86bceea8 100644
--- a/tools/perf/tests/dwarf-unwind.c
+++ b/tools/perf/tests/dwarf-unwind.c
@@ -24,6 +24,23 @@
 /* For bsearch. We try to unwind functions in shared object. */
 #include <stdlib.h>
 
+/*
+ * The test will assert frames are on the stack but tail call optimizations lose
+ * the frame of the caller. Clang can disable this optimization on a called
+ * function but GCC currently (11/2020) lacks this attribute. The barrier is
+ * used to inhibit tail calls in these cases.
+ */
+#ifdef __has_attribute
+#if __has_attribute(disable_tail_calls)
+#define NO_TAIL_CALL_ATTRIBUTE __attribute__((disable_tail_calls))
+#define NO_TAIL_CALL_BARRIER
+#endif
+#endif
+#ifndef NO_TAIL_CALL_ATTRIBUTE
+#define NO_TAIL_CALL_ATTRIBUTE
+#define NO_TAIL_CALL_BARRIER __asm__ __volatile__("" : : : "memory");
+#endif
+
 static int mmap_handler(struct perf_tool *tool __maybe_unused,
 			union perf_event *event,
 			struct perf_sample *sample,
@@ -95,7 +112,7 @@ static int unwind_entry(struct unwind_entry *entry, void *arg)
 	return strcmp((const char *) symbol, funcs[idx]);
 }
 
-noinline int test_dwarf_unwind__thread(struct thread *thread)
+NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__thread(struct thread *thread)
 {
 	struct perf_sample sample;
 	unsigned long cnt = 0;
@@ -126,7 +143,7 @@ noinline int test_dwarf_unwind__thread(struct thread *thread)
 
 static int global_unwind_retval = -INT_MAX;
 
-noinline int test_dwarf_unwind__compare(void *p1, void *p2)
+NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__compare(void *p1, void *p2)
 {
 	/* Any possible value should be 'thread' */
 	struct thread *thread = *(struct thread **)p1;
@@ -145,7 +162,7 @@ noinline int test_dwarf_unwind__compare(void *p1, void *p2)
 	return p1 - p2;
 }
 
-noinline int test_dwarf_unwind__krava_3(struct thread *thread)
+NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__krava_3(struct thread *thread)
 {
 	struct thread *array[2] = {thread, thread};
 	void *fp = &bsearch;
@@ -164,14 +181,22 @@ noinline int test_dwarf_unwind__krava_3(struct thread *thread)
 	return global_unwind_retval;
 }
 
-noinline int test_dwarf_unwind__krava_2(struct thread *thread)
+NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__krava_2(struct thread *thread)
 {
-	return test_dwarf_unwind__krava_3(thread);
+	int ret;
+
+	ret =  test_dwarf_unwind__krava_3(thread);
+	NO_TAIL_CALL_BARRIER;
+	return ret;
 }
 
-noinline int test_dwarf_unwind__krava_1(struct thread *thread)
+NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__krava_1(struct thread *thread)
 {
-	return test_dwarf_unwind__krava_2(thread);
+	int ret;
+
+	ret =  test_dwarf_unwind__krava_2(thread);
+	NO_TAIL_CALL_BARRIER;
+	return ret;
 }
 
 int test__dwarf_unwind(struct test *test __maybe_unused, int subtest __maybe_unused)
-- 
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201114000803.909530-1-irogers%40google.com.
