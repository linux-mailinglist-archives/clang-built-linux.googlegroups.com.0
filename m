Return-Path: <clang-built-linux+bncBDPPFIEASMFBBGFA5DWQKGQEKSKNVJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F1584EA63F
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 23:35:05 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id 13sf3373121iln.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 15:35:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572474905; cv=pass;
        d=google.com; s=arc-20160816;
        b=VJsl0LkjUHbXaUmwwFMihEuV60jT6ajU1+L335bDuM03DJ+LaKL7ZR6W773A1uPqVR
         g477+jMAN+JSlug20DKYe1QQ0iso/zWAuCARFcxCKBEU1gl9aopgF0kurfIZdaaysFF5
         SxRFcMZSeJDOWAILH2OEdLC8I5I5Xjc1fhIozE/liqT8kslrCOkn4JKyOfrgWFQYy15p
         UM3w1ASGNue1TzpCf/egLvwC2qoDX5goYuMQdbPF03Y6agNS8ZCeyLJpGgb45NE5pIAI
         1fAtVtjDtqCcqbqWCuSKac53+HAc0QNxfMUd2XCwus6Dcnj/X4Sqp8pFof3eVM3zTTuk
         5Oig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=vN4Ve+jpJrH4gfTeKxi4sKO+/RLS/jg5s5GSzCuFmXo=;
        b=hIgM58q0wRNEcpz/Tejtj7B8D2k62HI76S80k8lvQL+FqEJ08Ghoz0FHQr5BA4Kths
         xojLwCdB81ElttbBcoDena2XiGKKEz2v9h+xyPnguZZC4VCy4VMZZ3vZ62uxrFG4wzK4
         bCCvCMWCEXyst8oOUk2Vhs2Q5bNx6EjpQhWk9SBOLzd7uSrCKbe/iFKWsefdXQnnNcrB
         qWeZYXVxa1VXxtE6jSyqt5nfVfe6z7NlLSFJio9H0RTEnaRVz4vVprWRoMJDY5UE3eNH
         WPbX9BAmFFWHrdKOtrgWg81mU0k2IFZR90Z7zi/j581JYtfOOgSucGfaanZrJ5ZWKAwz
         bB4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CrSETiRq;
       spf=pass (google.com: domain of 3fxc6xqckerq2b80ybc08805y.w86w5u70-ve25d-527eh08805y0b8e9c.w86@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::c4a as permitted sender) smtp.mailfrom=3FxC6XQcKERQ2B80yBC08805y.w86w5u70-vE25D-527EH08805y0B8E9C.w86@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vN4Ve+jpJrH4gfTeKxi4sKO+/RLS/jg5s5GSzCuFmXo=;
        b=gqLPRPyNaaEllWWWVznvyEJX6KoE/Mgg9faPwVtDyOg1XzWhk//MC9eOEHl1mdqkpy
         w/iORsrXjYpjyo7XwSMHrEMZPS8Mun/4Cd2EoCxdqvkJWsfmXbdVJ8UHGy3J7ulIj2VZ
         GGw+gRaT9VeSu4PUVwSg2y37zMorw64dc8AYmP/R3v1njZwepSL+fWLbkqrLBoEm1Clo
         Znh+76DvEXcY210oLhyJyL9phZYcR7QVy2Yry+fI4ia7u2ePkNKF61cdHwFbFpire6Z8
         W9mjxVgUnnKUJEYLrovQHRpvyv7itnhNbuf8G+nF6dpbR/H9EwgWkty1Qmr+LHOtM431
         D+xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vN4Ve+jpJrH4gfTeKxi4sKO+/RLS/jg5s5GSzCuFmXo=;
        b=oEUmRKRwUVZXUc+0Oi3h/eLrZuHFvC/fwqjfM7O1TdBoklmx7TaJ2qir/74VvdyOVS
         GmGXW4f5pVDZWRyyYjrHlsVrzLCFcN6aQDlfD1uZpoV9ysQmQZR+sSev9OULSW3hU0Go
         uTlOF6ckLbmpUTh5Q9LuwvOGNbo3R4RbTeJEoeEbq54njs5LIYxQmclIblwJRFZg+XB7
         GVBnW39yOrvkoP3bLY7ASSzbrzmpO1k6MfEmH2VO/I4nYwcvDqw0HRaMvEFcy027BORk
         a7tDffdV7jKKvNOdOjsQPzIG8T/jHS5jGwZJj0Ti3QQnWS6g1izbPoWxndGPVQlUDkWo
         gacQ==
X-Gm-Message-State: APjAAAVWlHw9zVAKIlqRALYSmMRLl05DKxCJydTGJVflOPqnj71eOMcl
	XxfdWDZK6WlewoywqbgEceg=
X-Google-Smtp-Source: APXvYqwMZCU04TIE5i17ioO5PjKMWB1O/V+zFJUOaNZ1jxU7Wxa1d7nb/hGgix8fnbBeygLuDmoC3Q==
X-Received: by 2002:a05:6602:198:: with SMTP id m24mr1944226ioo.34.1572474904999;
        Wed, 30 Oct 2019 15:35:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5ad5:: with SMTP id b82ls170116ilg.2.gmail; Wed, 30 Oct
 2019 15:35:04 -0700 (PDT)
X-Received: by 2002:a92:ce03:: with SMTP id b3mr2666654ilo.301.1572474904644;
        Wed, 30 Oct 2019 15:35:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572474904; cv=none;
        d=google.com; s=arc-20160816;
        b=P+c6SGPJiisqdOQud+kJhrKKrpMrkfffiT2DMudFYU011ti8UTpxR32W9GstIdLoWD
         l1EgzLkn0DGRpDCMCGIfqSRd8zLSz1WZKXji9WWeMtmfUxnrkqGnm7C8twoNT9yRiMsG
         SDGVkZQg4m0JQfFo+Eo5J9BM3oogpoOE9WTj4hj3z86RmRNcSizwtWUhnYgQzCILMBXx
         k0/JhdKBg1CbBCoECqC3ap3JKc/R2c8S9Ktldm9q81ENVvkJSQtEg4vVqiz7HBbhoD4r
         4DTKwirkSQ+ormv4tJBYqTzQrKJIVN/PEN7KfB3SF+c8aTwhQ5Jg6ofpLDLauBpkHLa5
         HGdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=O46qQh0NfSafqZOQ3RB2bA5TlgUNmGeU07O7S2mDmp8=;
        b=uA5QB9vg5P+lPoqCzKWlWGzdYUBOlLR8/oqAAV1psXRMXxPhC4ENgWFNq+bkvi73g0
         x83Q4l76Rn4HsXk35BXr8+NnLL4XDTPHrTVMX0q+sjnj0dBLeOl6VMu/CK+zOWqYb6Vq
         7W3Mzn5A1cykmYK4a2qC5X/vP4BAn87A8lTKrxdYP/lL9Xf3ARYzAWOvx9m91FsCEP1/
         53i/qBkuWd5mS9GeEmIVqcUdS5uESwcUiRiaum2WedoBtZU30z1IFh6/hAk9vnvNt9I4
         aBlCr/Do7W26y15YmVk1VE53kX6ggT+m95CybdXm723lKq/vIo85zW7zUxhWKBuJOzhn
         YOpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CrSETiRq;
       spf=pass (google.com: domain of 3fxc6xqckerq2b80ybc08805y.w86w5u70-ve25d-527eh08805y0b8e9c.w86@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::c4a as permitted sender) smtp.mailfrom=3FxC6XQcKERQ2B80yBC08805y.w86w5u70-vE25D-527EH08805y0B8E9C.w86@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yw1-xc4a.google.com (mail-yw1-xc4a.google.com. [2607:f8b0:4864:20::c4a])
        by gmr-mx.google.com with ESMTPS id y205si177420iof.2.2019.10.30.15.35.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 15:35:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3fxc6xqckerq2b80ybc08805y.w86w5u70-ve25d-527eh08805y0b8e9c.w86@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::c4a as permitted sender) client-ip=2607:f8b0:4864:20::c4a;
Received: by mail-yw1-xc4a.google.com with SMTP id g69so2884644ywb.2
        for <clang-built-linux@googlegroups.com>; Wed, 30 Oct 2019 15:35:04 -0700 (PDT)
X-Received: by 2002:a81:4948:: with SMTP id w69mr1570034ywa.404.1572474903817;
 Wed, 30 Oct 2019 15:35:03 -0700 (PDT)
Date: Wed, 30 Oct 2019 15:34:42 -0700
In-Reply-To: <20191030223448.12930-1-irogers@google.com>
Message-Id: <20191030223448.12930-5-irogers@google.com>
Mime-Version: 1.0
References: <20191025180827.191916-1-irogers@google.com> <20191030223448.12930-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 04/10] perf tools: splice events onto evlist even on error
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, Andi Kleen <ak@linux.intel.com>, Jin Yao <yao.jin@linux.intel.com>, 
	Adrian Hunter <adrian.hunter@intel.com>, Kan Liang <kan.liang@linux.intel.com>, 
	John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org, bpf@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CrSETiRq;       spf=pass
 (google.com: domain of 3fxc6xqckerq2b80ybc08805y.w86w5u70-ve25d-527eh08805y0b8e9c.w86@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::c4a as permitted sender) smtp.mailfrom=3FxC6XQcKERQ2B80yBC08805y.w86w5u70-vE25D-527EH08805y0B8E9C.w86@flex--irogers.bounces.google.com;
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

If event parsing fails the event list is leaked, instead splice the list
onto the out result and let the caller cleanup.

An example input for parse_events found by libFuzzer that reproduces
this memory leak is 'm{'.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index e9b958d6c534..03e54a2d8685 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1950,15 +1950,20 @@ int parse_events(struct evlist *evlist, const char *str,
 
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
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191030223448.12930-5-irogers%40google.com.
