Return-Path: <clang-built-linux+bncBDPPFIEASMFBBC6UVWFAMGQEJJXNYYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 093BC414F42
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Sep 2021 19:38:21 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id c21-20020a05622a025500b002a6965decfdsf10236499qtx.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Sep 2021 10:38:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632332300; cv=pass;
        d=google.com; s=arc-20160816;
        b=W4lhvbIX4gmjMBHN9tHRJQeN4kdCZuH4gzQSkgIWWtLMblG1caRdMVNXM54ffnPjbW
         tXgcD9fCaC3mNKARSihFGXNMG7lHRaN8OSb+11EGTpwlQt/2tjFKU1iWjigzxmpC6atd
         Q/S84t0/v5g5h7maAszs0ovZbjrAr/QJN6IEygp6/XedcRsHEfiWpFIyn5SpwWoVyqVL
         RbrpKn7zfVSe5lDB5fbLT2Mmr/NJwA1lbH3ccRF1aJwgDxI+VeTEeiF1lHorlXc15Hsp
         U7rusDBI2DXI6PwWvwvaulBUujzOliSN4a+flUTP7oG6s6qor0/8qARARlQXHGUmeAH9
         /ksw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=pphUDfo+kP/gJxWW4BsUeXdBXcXP6Q/AYduPuIx3flM=;
        b=xn9YhIrHhrMPdEvOwuT1A+3Bm8piFxSVp1I2cvu63gi9atTaA+O/b2Znf1bJ1dXyRS
         IrZ/Wu6cKWW2OK409ssHk2GszvWeIVls8ZowbEeNiapL4xXe9kQ1pjU0uarCfPHgjiJt
         kUooHWyhaJ2+OEC5Sy+On/93ra4TtrlgTNrcxc5/1kd5Y1UNOKWCvhXYd3KgxKXCeNlA
         wAwhV4uOTXU1E66wT1KVNm3zGiG0ZI2YtpOZ+9aDYykhbTJOc+1+LpoMi9o09DATfEU2
         rGy0EaGYRmpBHubBFez2z0XAyjsasMV2pXqW3UO56on0CNBe3MhSMATL2rB98kJtRuop
         88Kg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=p6jihdXV;
       spf=pass (google.com: domain of 3c2plyqcker4clia8lmaiiaf8.6ig6f4ha-5ocfn-fchoraiiaf8aliojm.6ig@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3C2pLYQcKER4CLIA8LMAIIAF8.6IG6F4HA-5OCFN-FCHORAIIAF8ALIOJM.6IG@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=pphUDfo+kP/gJxWW4BsUeXdBXcXP6Q/AYduPuIx3flM=;
        b=flD0TcVVdgLFkdJPc8V8rw2X75nUbmxRz+N0eiXngAyW7X3pKQcDtnnCZW8TiZhlIQ
         +Gi1vdGgTViq+IqMDzXc45ILJtGZsvkfJmUCa/YRPoDIv8+cDsbJ62A0oWtUCx3Gs3CN
         H0btDqIQMVXl6zLForOzrWXnGIrxoatxtUzMFhXDDCQ9eCigAauywCPBRsMIZtWug3GN
         FtMN/C4lrAST+4fvjl8+0pZBVc09hwwaZafgXhYvQFYI/ifkEncMgUWNM1WgXZLH1uFC
         7BTLwFcDwaDuWcVMe9YzoSruHk3pA8W6HvFiybBRBK9ePow1hvGvdeObD6XWM9GeNqY6
         MS5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pphUDfo+kP/gJxWW4BsUeXdBXcXP6Q/AYduPuIx3flM=;
        b=XkGlbhW9sFuhU8jZ2zgDeII+H05eKCaH+TJm0EwZIW2KSEIR11akBAqTEdVtGwmjMs
         /64WOKVOBnyOQAn20En1cu4QKefmqRXieyxY8DhWxsaWbhFYdHXk4AqFKTSJguQj48iF
         C/EaExg6QlSEBTFwOTLXNbuwvVwwgaPlTQG1TnZFtwLqE2hCLOMFQMCEK8Tt07xaMCLs
         CM3mVB0I05U7+84DXqbSQIde9OWvTwppqmlsQRIaxBYiNIRHPNcRIBMJW8CtLkvKQf/k
         7PCUhMMTQeCcDwnzLsf8nceTvyNIeWHbNRSeFa2T32UvuAJ95n8S9HDO1aw5cFX0kkDE
         oFDw==
X-Gm-Message-State: AOAM530LsLPFW+c/o5YGcWRlu/+lO6K/GhqgGSN+3GCeoOwGRL0AjcIa
	8SZJslvvvOm7Rb2ZaIvEEQ8=
X-Google-Smtp-Source: ABdhPJxiwyVlpKO4WC4sLlBxV/bcBRKnhC494qY9qwkuVlT7Di8nawqYkqMkGOSMqNYYrYoM6mCFaA==
X-Received: by 2002:a05:622a:452:: with SMTP id o18mr390887qtx.401.1632332299825;
        Wed, 22 Sep 2021 10:38:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4150:: with SMTP id e16ls1892964qtm.9.gmail; Wed, 22 Sep
 2021 10:38:19 -0700 (PDT)
X-Received: by 2002:a05:622a:1d1:: with SMTP id t17mr460993qtw.388.1632332299363;
        Wed, 22 Sep 2021 10:38:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632332299; cv=none;
        d=google.com; s=arc-20160816;
        b=JVHewsu5xEtDFvQvtNZroqKqSSg9/b/rs4KH5f4/6vRtuAk7RTSjYWcA5BD2EWr6mW
         0wIHRWSuv0azcOANcGQKOwe3/VjjzblMMyIYUmWPdOJikJ5FGopLdlBlyXjOu/9poMXt
         8O5oL3KAP5/I/1CgRd4FmjefPMcNe/RIi8sekvbheWekUofvESv4/QFdZlfFvZBBfKF7
         un4dIxayrIY8OMySiRcUCUY4YLumZUk8p00GXlD8jEMOXJnJK4VirUEGpSGnMsjaiHdu
         fNRfLsmtsKsniT2Eeero79edXhmnBepKthhqUxfw4FrXxI6SvlDnQi/b2+O6U50EkaJM
         j0cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=japLK4v+y51csmvOjxrH47VIcfpX7TCEfxL+NB9lmDQ=;
        b=LSZoPAT6xBDjN2eykk4ZdvY116ldxFKOmJmIoVQNXnBb8KgRy9YSFbFzPK7DquCNXv
         /o16zlN2t2VGA+f2A14eMQMw+lo6idb++l/L2zraAsCakRSHNneGOQA9jvv3DjmXPj7x
         SvCLobd57XG659nX4NR/fcFjhEMP9UXS5Vk2sM/KGJsoQTxTQBYNxE4he3JKslYyrgb9
         pcyXy9UMxG1w8HE4kmk6XX/XwF9EI/btSXOZLKPnD/XGG7Mh9C+/I/+Neur6RuDQ61fr
         tPCL+oDQ3EG9k0cWS68jv7cwf0lv5y+lEvQlh2x/ipA8j+QcYvAivN+bQz3cBz64sJvk
         yW9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=p6jihdXV;
       spf=pass (google.com: domain of 3c2plyqcker4clia8lmaiiaf8.6ig6f4ha-5ocfn-fchoraiiaf8aliojm.6ig@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3C2pLYQcKER4CLIA8LMAIIAF8.6IG6F4HA-5OCFN-FCHORAIIAF8ALIOJM.6IG@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id j3si104265qki.2.2021.09.22.10.38.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Sep 2021 10:38:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3c2plyqcker4clia8lmaiiaf8.6ig6f4ha-5ocfn-fchoraiiaf8aliojm.6ig@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id j4-20020ad454c4000000b0037a900dda7aso13192960qvx.14
        for <clang-built-linux@googlegroups.com>; Wed, 22 Sep 2021 10:38:19 -0700 (PDT)
X-Received: from irogers.svl.corp.google.com ([2620:15c:2cd:202:d3ff:e8f7:11f4:c738])
 (user=irogers job=sendgmr) by 2002:a05:6214:13e9:: with SMTP id
 ch9mr282732qvb.65.1632332299113; Wed, 22 Sep 2021 10:38:19 -0700 (PDT)
Date: Wed, 22 Sep 2021 10:38:12 -0700
Message-Id: <20210922173812.456348-1-irogers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.464.g1972c5931b-goog
Subject: [PATCH v2] perf test: Fix dwarf unwind for optimized builds.
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
 header.i=@google.com header.s=20210112 header.b=p6jihdXV;       spf=pass
 (google.com: domain of 3c2plyqcker4clia8lmaiiaf8.6ig6f4ha-5ocfn-fchoraiiaf8aliojm.6ig@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3C2pLYQcKER4CLIA8LMAIIAF8.6IG6F4HA-5OCFN-FCHORAIIAF8ALIOJM.6IG@flex--irogers.bounces.google.com;
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
Tested with an optimized clang build and by forcing the asm barrier
route with an optimized clang build.

A GCC bug tracking a proper disable_tail_calls is:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=97831

Fixes: 9ae1e990f1ab ("perf tools: Remove broken __no_tail_call
       attribute")

v2. is a rebase. The original fix patch generated quite a lot of
    discussion over the right place for the fix:
https://lore.kernel.org/lkml/20201114000803.909530-1-irogers@google.com/
    The patch reflects my preference of it being near the use, so that
    future code cleanups don't break this somewhat special usage.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/tests/dwarf-unwind.c | 39 +++++++++++++++++++++++++++------
 1 file changed, 32 insertions(+), 7 deletions(-)

diff --git a/tools/perf/tests/dwarf-unwind.c b/tools/perf/tests/dwarf-unwind.c
index a288035eb362..c756284b3b13 100644
--- a/tools/perf/tests/dwarf-unwind.c
+++ b/tools/perf/tests/dwarf-unwind.c
@@ -20,6 +20,23 @@
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
@@ -91,7 +108,7 @@ static int unwind_entry(struct unwind_entry *entry, void *arg)
 	return strcmp((const char *) symbol, funcs[idx]);
 }
 
-noinline int test_dwarf_unwind__thread(struct thread *thread)
+NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__thread(struct thread *thread)
 {
 	struct perf_sample sample;
 	unsigned long cnt = 0;
@@ -122,7 +139,7 @@ noinline int test_dwarf_unwind__thread(struct thread *thread)
 
 static int global_unwind_retval = -INT_MAX;
 
-noinline int test_dwarf_unwind__compare(void *p1, void *p2)
+NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__compare(void *p1, void *p2)
 {
 	/* Any possible value should be 'thread' */
 	struct thread *thread = *(struct thread **)p1;
@@ -141,7 +158,7 @@ noinline int test_dwarf_unwind__compare(void *p1, void *p2)
 	return p1 - p2;
 }
 
-noinline int test_dwarf_unwind__krava_3(struct thread *thread)
+NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__krava_3(struct thread *thread)
 {
 	struct thread *array[2] = {thread, thread};
 	void *fp = &bsearch;
@@ -160,14 +177,22 @@ noinline int test_dwarf_unwind__krava_3(struct thread *thread)
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
2.33.0.464.g1972c5931b-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210922173812.456348-1-irogers%40google.com.
