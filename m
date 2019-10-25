Return-Path: <clang-built-linux+bncBDPPFIEASMFBBL7UZTWQKGQELQOOBYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 66BE2E5337
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 20:08:49 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id c190sf1686337oig.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 11:08:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572026927; cv=pass;
        d=google.com; s=arc-20160816;
        b=QhNfPYY73zw+XeEue/5rVK3NAgX+Y+UtWjXZekxqIIwTEFxZR6g23DbJWbaabq1BpN
         AVO1sg1PqFdh2EJQEYORuNfUOSTSYE45oQ5UjXbre+BBcbcqBYHv8P3e1pVh08PVTbp4
         S6U3WD6gNQLLviw4HqQxXOOwjfnErnet8BRE7dS9RODCInklmgV7UWO/X7ohEiDXgVQt
         Gu75NC44aU96t5ccH1OfT07LTQ5WmOzRY3fgQV2mDygQ++QjgMdyGRjjag/nyAUezHUL
         HyH+6e97TIsM2nYd+BiOKN8hHzMvL7JwHNlt15xNTqOOjKu8hH6RN499vbPsg2m283Zh
         AKdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=+IEMr752qAOvgYCO9YAvJJ+cQVhDy+mS7axF2agutUI=;
        b=hqgXo0C704ZR/qQ7o5Uih07bO47+x8B9Do98pclI5MR3GAkm5dx4rM/JHhE2o86JSH
         IKtpcriBx42+b2m7SjEPJk7/mtRi0vj4FErU/U2m7phQvaKbTXC/OmlqVUQrpzGHbaS8
         5Lo/uAbI7aCPNDQDVJ3UzAV5ojbNsI11Zi6mc7LPHovhqCM2mc50YJ3gEgGgd2DFDwkS
         XGR9UJs7U/n5ABZks4jfUos+Z4a1QuKKgQIfwSShI3vw6GihjoQparioINtmkwJvE0km
         oUrB26VCXQkLLJKhOZyY91/ycdp0WY6SXZf5CzHe5Q6sqp8+vmxZ78nicCOh9VXVpATS
         +cSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="lTwv/eB1";
       spf=pass (google.com: domain of 3ljqzxqckewmjsphfsthpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3LjqzXQcKEWMJSPHFSTHPPHMF.DPNDMBOH-CVJMU-MJOVYHPPHMFHSPVQT.DPN@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+IEMr752qAOvgYCO9YAvJJ+cQVhDy+mS7axF2agutUI=;
        b=q9ObRcyci4KLcvFV5ELgLZWlnCbLPdbiljkmPQTnheLUP9ZWHyg9OPCPrRz9P6hY3A
         aD5M4YVV7KhDOUMdD55upXNuworfkWsn/DSbFSV9ruipwEyWHI7L5OUj1qq84Cnzi9B7
         BwWaG5xdERjd8RigrXx8BAjP+H7uKGnz0xUHKYxtVzmyKojkX0mf5zUd/YfWdLCGJ/ua
         DFpKrwOUjcy0VV07S6ujPYPJOadEp3UQDyXOXXZ2E2dH2DYVdEsMfgJD/4ExmE/VZLkN
         WxiwHqKYs+YvRKxNaoaqzEcUIy40UacfHkphapEmI5/EO/GSQv1ekMt+ebf8Y+Kg60C3
         /Hgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+IEMr752qAOvgYCO9YAvJJ+cQVhDy+mS7axF2agutUI=;
        b=OPF3RoP2Xr88CYTOvu/NQKkUd8yXDusz+5duOQ6uzqu/4OKx9La7apAVohBPImlCzV
         f2RY4ZfchM0fcnGoQFzdlbuoTjwVtfAmdN/gIZIwG1SpQoUlLRA7DAlDlSYsoKGlOsaM
         TTQ2LLT/H9lrLs/Dtu/64AOQYrJO7o5+iPffEqa2N2FIGQyb1qN3bSHNoBejT8oR7AZj
         5owjUbPnqPXhaAePRU8n/Jqsx5kA5JgGdiCGqyt1zRozT7Y0JKiPcY1iMboQ0knjwBSF
         LYeXm0CHx8z2rCGoCQqmv5BCY+eDdV2zD1vUzihpnJefMOHvppMx+ZEovXnzCv9rtBYh
         RRvQ==
X-Gm-Message-State: APjAAAVPU5/nlEzOU2cmWsUxviSsEgX1LTqdmCna7+a3K48yMKzL5emD
	1i2UntOIg8CZD5kIs0Q/zFc=
X-Google-Smtp-Source: APXvYqz8+W5e95r4EYbAZRkPgroqFVRvoeJ4kBBp1BzkNeP5GOCzlaE5L37vbD6GxbIarV4Q9N/+Dg==
X-Received: by 2002:a9d:65cb:: with SMTP id z11mr109471oth.195.1572026927655;
        Fri, 25 Oct 2019 11:08:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4a9c:: with SMTP id i28ls2425017otf.14.gmail; Fri, 25
 Oct 2019 11:08:47 -0700 (PDT)
X-Received: by 2002:a9d:6ace:: with SMTP id m14mr3876541otq.11.1572026927282;
        Fri, 25 Oct 2019 11:08:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572026927; cv=none;
        d=google.com; s=arc-20160816;
        b=I1e0Qejf6Q7tIXOrDvT3KDuV5h1scZBHz099okCuT/a0IpZFzgaYmZyDpjhaHeYIwk
         5U0HGECTE+MVrmjHCL3FsoZUbqzqbgAsYYf+ZwzJn/iNVe6Y9DQi2tTZZysI3Nw0apmw
         VQmeto+6ZKEUmtjJf5I2xOUytkkChKxbHnMlilfA670CSWuzj5cq+uxuXSamgFz43kO9
         19fjRH+si3rvEgdKlWBs3WY/dX++l+ukQ5C97XrGWqxEzxdlaxYSEWEDklK6ThqIEEfc
         23MWUQTIg6xe0B6OMP1h8cviEddo1JoUgmBrnLls8JruenO8Ok5ZYh+gGPVc6p0hnNAI
         eXkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Ozw9D+vclIFM2icN5y6LJ8c4+4sMg5YbQ5WcIa5mPKI=;
        b=StHIV23aRSZx2+LgQQXxTIdGNM6HD8b6rFHstXmMl1dDJvcns9RHtUvyjVkqd9M1ZP
         xY6rcWF7vCwv2yRWQkdKDzRqVua/X0rGt9JQuSk4CR/Q5DW3sJE+v6gIpI2qi3CY6Kq6
         cs1CR0LxvYBTpR8uV51Tgd6MmXS7U5aqebVWjN7E1Y9ofDJ+dBFwhg6j8v/SRG0Y6q9E
         EOS0NAf7SW49qE1WCYx5bGv1xaEQ9/cyTHJaebRtYHBeqLePhi+IxgmSqlCYlPzYdAQD
         1WHydq19d9hkkDWmDOOmVrUVkDezOKj3F54Mc0UPL6uLaaAE44S39+IXzqVIGawRcIkH
         m3Dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="lTwv/eB1";
       spf=pass (google.com: domain of 3ljqzxqckewmjsphfsthpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3LjqzXQcKEWMJSPHFSTHPPHMF.DPNDMBOH-CVJMU-MJOVYHPPHMFHSPVQT.DPN@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id a22si60751otf.3.2019.10.25.11.08.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 11:08:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ljqzxqckewmjsphfsthpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id x203so2353105pgx.9
        for <clang-built-linux@googlegroups.com>; Fri, 25 Oct 2019 11:08:47 -0700 (PDT)
X-Received: by 2002:a65:53ce:: with SMTP id z14mr5963399pgr.445.1572026926291;
 Fri, 25 Oct 2019 11:08:46 -0700 (PDT)
Date: Fri, 25 Oct 2019 11:08:22 -0700
In-Reply-To: <20191025180827.191916-1-irogers@google.com>
Message-Id: <20191025180827.191916-5-irogers@google.com>
Mime-Version: 1.0
References: <20191024190202.109403-1-irogers@google.com> <20191025180827.191916-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v4 4/9] perf tools: splice events onto evlist even on error
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
 header.i=@google.com header.s=20161025 header.b="lTwv/eB1";       spf=pass
 (google.com: domain of 3ljqzxqckewmjsphfsthpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3LjqzXQcKEWMJSPHFSTHPPHMF.DPNDMBOH-CVJMU-MJOVYHPPHMFHSPVQT.DPN@flex--irogers.bounces.google.com;
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
index c516d0cce946..4c4c6f3e866a 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1952,15 +1952,20 @@ int parse_events(struct evlist *evlist, const char *str,
 
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
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191025180827.191916-5-irogers%40google.com.
