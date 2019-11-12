Return-Path: <clang-built-linux+bncBAABB45JVLXAKGQEZZUY74Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-f57.google.com (mail-wm1-f57.google.com [209.85.128.57])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B84BF8DE4
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 12:18:12 +0100 (CET)
Received: by mail-wm1-f57.google.com with SMTP id b10sf1022919wmh.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 03:18:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573557492; cv=pass;
        d=google.com; s=arc-20160816;
        b=u8m1+YgZntxITg8RFGtFvHPW1hk5ZZ93WcJTrO0CATjUs2vXUkT9/SiFazrAJtDId3
         XDeAIcI4yaAgp976u002hNxFXgrQcDevlEu5CZ1sMQ1pHo+V82PKsEtT24BPrq7g9o8Y
         rK+GRUv5yMaarN3ae7mLiM6tF15vRZ/80s0DfMgL8vPUr1VHIdfWh9Gp0OzjgNd61F2v
         1GgRbGlcicIwfbqbj7KFJX1jg4HDvGLO/nQR27pED/9zs1azM2ixVGZVz9hJlJYcA1vZ
         ibJLMk0XDxJm0S3EJ68ZNzN6W62pyiYkPXueAawEC7yLnNXD6G34vEoz/aHciYXMnJBD
         Nu5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=pqQpJ0PNf9G3EZupJ1A9thMl8HofpYmGqmjkL+lpPuw=;
        b=xzFqhK1HgqqVUGsbk3BDAbO9ynqZm8nsaNyuQYG8AXW4lJ5nkmxUjbuYMd/ek4p8d3
         pQMsTUtI3XArNUdiOKlFIiRCpOh4deCfquWXPbgW/Dv0JtMFbEHwfFP8m+9Ujef+GehT
         gPAiZWIlOdLzdGqDTCNqioYGBcMlKFDB29w6e2fqp64H4aOVrnXqzeiKT/7QuQN/DbaY
         SBjH7xkWQiGmXgVcUMHlezQ+si+rUCT++F5Aqzpw199aD2osmYiXkjeAfkdmdNiwmcV6
         5NOdSZ8c7G3Jm4Wui2HZ9JmNf2EVpiT8uLdEG4ZJyoIsEwIPHkByE+yeZLBRzOLUX2cN
         xyFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:sender:reply-to:to:subject:cc
         :in-reply-to:references:mime-version:message-id:robot-id
         :robot-unsubscribe:precedence:x-original-sender
         :x-original-authentication-results:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pqQpJ0PNf9G3EZupJ1A9thMl8HofpYmGqmjkL+lpPuw=;
        b=Vc8IraTIsquQEtxUy6CrvaynSfv0ttXeGNRGpX6Jjb0Tmye5NyqLGzdaVtf/Yd3KL5
         yo++3i+UwlMigE1f6jO0uAZS7eoRK887TzuE2cjYFjH26/WAuDmqRcI6uSVo/eLw4q2x
         eB4YSH5tSwJBS6T0rUqIIxRNSAA6mD+t0P3pGo8D/27sXRCWV3OvI2G4P3v8NsiLbVZ1
         JgDLLEKfaIbPZKjM9yRPEZVPmABlj8j+LkeX+UykY1nMDBdtNXioiU4Cm6Y5SVM06+qe
         PkQB1QeA3kBB9XJg5Rxgq/guLFp23UMtP5jOi465iOkMRkaAcdBI1g/DawIe7y9XX3I/
         KHRA==
X-Gm-Message-State: APjAAAXHZMzp3MTvo+1xI3PDrOHa56ciAruQBOtlNo8NNLzEmcLcNs2q
	X0pwRrjIx6Nxhon+CLDVQNc=
X-Google-Smtp-Source: APXvYqwvqve1LRXWfxHfeUKrOIUceWA0x5tf75Nwf/CDCeIJSMrwwRq1i7Ep5MN54mfwfeVNZZ1dQQ==
X-Received: by 2002:a7b:cb89:: with SMTP id m9mr3396878wmi.141.1573557491892;
        Tue, 12 Nov 2019 03:18:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:660f:: with SMTP id n15ls1844504wru.8.gmail; Tue, 12 Nov
 2019 03:18:11 -0800 (PST)
X-Received: by 2002:adf:fe0c:: with SMTP id n12mr24891411wrr.174.1573557491543;
        Tue, 12 Nov 2019 03:18:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573557491; cv=none;
        d=google.com; s=arc-20160816;
        b=inle75sK2sh+XVi3F5hneKv1FyH3UBZefz2JvftI8LQvxUmmt9KW6D0ZPKANq1jzEP
         IatjjIuusAt5qURKGLafVuM0yR3BeyFwnEg8st3QAeLX+LojGd/Ml36IwOYhfMIQ+kdm
         4xGUJVDywyN4xnbrP81LbmDNm50R2T+jDhqGE9ZhMbndJIQMMkThvu4vzAp75kmkXn7H
         N7piCRHf7iuakmwSWN0MkeBR81uYmovOt6XuLr9iydLalfciknAlt79WyfUtCIn5revg
         51mSahFdw/K2/+I/ykqQtu/Lm8C4C3jLp5GSONCpjsmfK+ITfk48j52UkyoGPpnA/MSo
         iCJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=DfPpmZGH+sEMVccEbINJdVbciNkbVBT5id3AcuuTh+s=;
        b=X/uOPm1hXPUKnOE9tqzFCq2P3kW24VtyGDXk/mc3RXJnG1sPzGKIKGwuhA3So36rvE
         e61QMNghcfZpMo5YIbQsfOCw/mGmPrXjrGj3zfMA1dnWOKscqcGIH4XOOaoOYYb0hRsx
         5KyftSbUH/5Rw94ONddQFrpTsykKx9FrjJ7MMUxEPTWRu6YqsfdaZsX3ZtwM4lnG6aUp
         cvzpdUthb9jM+r8O8KwSfOIrUaSBL26hCRQ7IPb+/76YiD2YApXGz7uLhr5yZMh2zkJL
         fr7wyCqQo9CaDdOcm9Apr61I9bijBv50/LAYLtOxyQHolgJJN7MuwaYGoQP3H8N9Qi6M
         i2yQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id w10si1140757wru.4.2019.11.12.03.18.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 12 Nov 2019 03:18:11 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1iUUBS-0000Se-Pd; Tue, 12 Nov 2019 12:18:07 +0100
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 1A63A1C0483;
	Tue, 12 Nov 2019 12:18:03 +0100 (CET)
Date: Tue, 12 Nov 2019 11:18:02 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] perf tools: Splice events onto evlist even on error
Cc: Ian Rogers <irogers@google.com>, Jiri Olsa <jolsa@kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andi Kleen <ak@linux.intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Jin Yao <yao.jin@linux.intel.com>,
 John Garry <john.garry@huawei.com>, Kan Liang <kan.liang@linux.intel.com>,
 Mark Rutland <mark.rutland@arm.com>, Martin KaFai Lau <kafai@fb.com>,
 Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Song Liu <songliubraving@fb.com>, Stephane Eranian <eranian@google.com>,
 Yonghong Song <yhs@fb.com>, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com, netdev@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@redhat.com>, Ingo Molnar <mingo@kernel.org>,
 Borislav Petkov <bp@alien8.de>, linux-kernel@vger.kernel.org
In-Reply-To: <20191025180827.191916-5-irogers@google.com>
References: <20191025180827.191916-5-irogers@google.com>
MIME-Version: 1.0
Message-ID: <157355748269.29376.11251581788671798282.tip-bot2@tip-bot2>
X-Mailer: tip-git-log-daemon
Robot-ID: <tip-bot2.linutronix.de>
Robot-Unsubscribe: Contact <mailto:tglx@linutronix.de> to get blacklisted from these emails
Precedence: list
Content-Type: text/plain; charset="UTF-8"
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tip-bot2@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tip-bot2@linutronix.de
 designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
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

The following commit has been merged into the perf/core branch of tip:

Commit-ID:     8e8714c3d157568b7a769917a5e05573bbaf5af0
Gitweb:        https://git.kernel.org/tip/8e8714c3d157568b7a769917a5e05573bbaf5af0
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Fri, 25 Oct 2019 11:08:22 -07:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Wed, 06 Nov 2019 15:49:39 -03:00

perf tools: Splice events onto evlist even on error

If event parsing fails the event list is leaked, instead splice the list
onto the out result and let the caller cleanup.

An example input for parse_events found by libFuzzer that reproduces
this memory leak is 'm{'.

Signed-off-by: Ian Rogers <irogers@google.com>
Acked-by: Jiri Olsa <jolsa@kernel.org>
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Alexei Starovoitov <ast@kernel.org>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Daniel Borkmann <daniel@iogearbox.net>
Cc: Jin Yao <yao.jin@linux.intel.com>
Cc: John Garry <john.garry@huawei.com>
Cc: Kan Liang <kan.liang@linux.intel.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Martin KaFai Lau <kafai@fb.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Song Liu <songliubraving@fb.com>
Cc: Stephane Eranian <eranian@google.com>
Cc: Yonghong Song <yhs@fb.com>
Cc: bpf@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Cc: netdev@vger.kernel.org
Link: http://lore.kernel.org/lkml/20191025180827.191916-5-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/parse-events.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index db882f6..d36b812 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1927,15 +1927,20 @@ int parse_events(struct evlist *evlist, const char *str,
 
 	ret = parse_events__scanner(str, &parse_state, PE_START_EVENTS);
 	perf_pmu__parse_cleanup();
+
+	if (!ret && list_empty(&parse_state.list)) {
+		WARN_ONCE(true, "WARNING: event parser found nothing\n");
+		return -1;
+	}
+
+	/*
+	 * Add list to the evlist even with errors to allow callers to clean up.
+	 */
+	perf_evlist__splice_list_tail(evlist, &parse_state.list);
+
 	if (!ret) {
 		struct evsel *last;
 
-		if (list_empty(&parse_state.list)) {
-			WARN_ONCE(true, "WARNING: event parser found nothing\n");
-			return -1;
-		}
-
-		perf_evlist__splice_list_tail(evlist, &parse_state.list);
 		evlist->nr_groups += parse_state.nr_groups;
 		last = evlist__last(evlist);
 		last->cmdline_group_boundary = true;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157355748269.29376.11251581788671798282.tip-bot2%40tip-bot2.
