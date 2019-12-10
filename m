Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB5M6YDXQKGQE463NMYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DA71197AA
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 22:34:46 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id a73sf3597217qkg.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 13:34:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576013685; cv=pass;
        d=google.com; s=arc-20160816;
        b=aYc7Z5T4h6eUDNitNwxklB9fNvQOmfYWCyh5OvIPR9fsUyVY6hqAiIIHeEgTrUXDMo
         yZn0GPAMksaoHgLqE3HXVPATJLGMDsLW3IBsLcYA0P65/1/eFIpevTUGA30McY1uaHGf
         XQ4bL3C5SGqLBGRWf9SrUmPwy0wE8eSO2Pj84lNzbFSsI3bFISPPdgHd5N9j9jFk4eTk
         GQYM0o7VJmrDf9RUUbHJFXn4mgsTI4yCUYVtfphrTA7wX1/CaGId6hUqc4OrKfs04Ri1
         0LR39h1LAbyvz5H2amncIks8M/X4+0YCqnzrelBxIqdqpGsh/bKL0wjHuZbAhDC67Nqg
         729A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=jYN0b7Q3SL+3KB0F0euLCcKte+m4KE+A6d0yOYyF+BA=;
        b=TeVjjx1k3CcDhh2uDvQhqmJpLELOERnwh/Erz3cfgFqZN3ScdQf1qaOIAuTIJc0aVx
         LAzENx92DFT7JesduSI4FzQ8zvmi1G4bG7YnVXKBVd3sGpX+nvDYRP2l/nhszi+3zz4W
         yqeYar1TL2HHIPSUOkWXBYn0m7BZXUZLM4z2JM7uHM/kquWkZLnZzmRmKBkn7DcBfjwg
         P01Him3pRpGG1XEC3miOH5s7XDGgphDbIiil0dNkcxKTbgo+mu3tli8VTB2HtsyZH4am
         WzA59icXwVuNNcbQxZQvUUziB6OgXNRQnfegszMAaqwI/Dd2xVn/zPZD7p3y8basTXjT
         d2pw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JTw3sVGA;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jYN0b7Q3SL+3KB0F0euLCcKte+m4KE+A6d0yOYyF+BA=;
        b=j8Jxo+iMnA89NNXqYbGNsAeZCdC2DjAJw8z3MkGMn9cLsQDiWFPfhFsMHI3Z7dQJ0p
         Ns/Vqac0WydeTOR8JriAyLZ8CRJNZIoOgoackjb6No4HV41jg6GRFKhJVqUMJNLPtq+q
         uMBsWtLklZGjBFLcE5NXVSXOxoOtyrgYujZizvxBAZ5zz70KVRA/X8QpjKU1mCnVG/lY
         n+rHSwQrW+Ta5hd1r6HR0Ll/Lz6s0NpeyXL7r7tpkOBnaNi5EMuzitBlyVCE53AK5/4J
         jYFG4yQEbWAumq7Wwv75ueUcDEcpCkI7LmJKw1KS+1ErLPfL8TyhgUi6UM3Y7hs3ReK5
         gO2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jYN0b7Q3SL+3KB0F0euLCcKte+m4KE+A6d0yOYyF+BA=;
        b=Zd7nqtalWQEfbxLbS3Ig44BAtNf5bsyHjxYTR1szLgg97Mt4nrgP4cHEe3/Z+vWqwg
         ozAkVAqzOVZfld3jIPd205MsvcCN8xkB420DeqZGhpNOFIqEebIff0hCzJifU2jvddDm
         G/lyfbGqxfnSqCXxyx6+rFkjxwd0fztTpXXWxZjnCSklaYJxFyTy8CGJJ2Y73SMXv5+G
         gWuHWrPGSsa+9ueoEKubFrGhpi/ChwSdtpDlm2WEAcQq4BB/8XEe/KkxdviNpeXplx9U
         /HLqtoQ6vKZ92VPhwmr6tNFpWph81hbkmwIraKK6FpE5bMNDNpQiyDjidrFvfIvd6Bcc
         DpDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUoFlcbQPJzMebRhHabwHkYtBEpQUbaTzgV2Qt4NsdReTRwuHRy
	rh97biWYER3nQ+h+FMdv+wM=
X-Google-Smtp-Source: APXvYqzn4cPz4hGkmiBBXlC4h40uukFZCKgLE/f9yIYFs2neM8R8OYJEd7hzq4LsaNZjS0nNFy3grA==
X-Received: by 2002:ac8:1196:: with SMTP id d22mr32570937qtj.344.1576013685538;
        Tue, 10 Dec 2019 13:34:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2927:: with SMTP id s36ls11929qtd.14.gmail; Tue, 10 Dec
 2019 13:34:45 -0800 (PST)
X-Received: by 2002:ac8:34b5:: with SMTP id w50mr5313290qtb.107.1576013685204;
        Tue, 10 Dec 2019 13:34:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576013685; cv=none;
        d=google.com; s=arc-20160816;
        b=KDk+IDsv/fN8IkUtyhFT7/oywUbw96cV/TRtZm0HHe69AjFWE0YKusxAwQWjLTpqpF
         tphWndzYVV6yzlQq4pPugtg7EBQDhmVJAaNgyrFfo0PafGRSRL+N761kBzu+V2j5Utd5
         6gHhdV+h0DCOjx9gqNmzrAexgIsZeZNMsPYkvPwYBdubMR5tBevQ7mAAuB0CIpatWyZr
         VqrZzrbHXg795pIs4+/Amfk6Vh9LsGDYx9b3EQMfwg32cbHrahMIv43bmIKUXfkDTxyv
         ANqNfbCFS9o3NFx9JOqFXk61e9XZ/Z/TBHjwfsKPbnz4PFhRqdJf+aH2vBe3sah9asfe
         OTWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VlPSLCq9S+9wCqMgfIFPRaDaYii+5iuMdifHsSS+jNA=;
        b=CD+2XOKQUmAQmjik8dRSadHrc+rSAt9Ty6YjuRq4jmPjWJVgkG3QxNaa3mzXVobX6c
         09YojtS2OcFrkqad5flIKivu6S7jrjojMOYd4frX1QY23b2kjhuz1b1HkXsCrjq3CLoU
         KKU4fO+6hXarId3kdorFm4ZtGRenKx+AYQdAo39HIEGaVhUbQLeBOpHXrgFaBBACMB5o
         dA641nr33LFJGvdcEfYTRtfgGnWWdNVAcAsQ0sHLfCaMMo5zHk02UBv/MRTe07d27Pqi
         ezWKeMT4rZCBwaARZXRavSB2Emk+eTz9L2hfWaf4Wvu4D3/zlLzFer/U661WQCNsuH0y
         gqpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JTw3sVGA;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t22si202872qkj.6.2019.12.10.13.34.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 13:34:45 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 12E26205C9;
	Tue, 10 Dec 2019 21:34:41 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Ian Rogers <irogers@google.com>,
	Jiri Olsa <jolsa@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Andi Kleen <ak@linux.intel.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Jin Yao <yao.jin@linux.intel.com>,
	John Garry <john.garry@huawei.com>,
	Kan Liang <kan.liang@linux.intel.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Martin KaFai Lau <kafai@fb.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Song Liu <songliubraving@fb.com>,
	Stephane Eranian <eranian@google.com>,
	Yonghong Song <yhs@fb.com>,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	netdev@vger.kernel.org,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 4.19 117/177] perf tools: Splice events onto evlist even on error
Date: Tue, 10 Dec 2019 16:31:21 -0500
Message-Id: <20191210213221.11921-117-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210213221.11921-1-sashal@kernel.org>
References: <20191210213221.11921-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=JTw3sVGA;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

From: Ian Rogers <irogers@google.com>

[ Upstream commit 8e8714c3d157568b7a769917a5e05573bbaf5af0 ]

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
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/util/parse-events.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 1a7c76d2baa80..7ea1a230e89d0 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1843,15 +1843,20 @@ int parse_events(struct perf_evlist *evlist, const char *str,
 
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
 		struct perf_evsel *last;
 
-		if (list_empty(&parse_state.list)) {
-			WARN_ONCE(true, "WARNING: event parser found nothing\n");
-			return -1;
-		}
-
-		perf_evlist__splice_list_tail(evlist, &parse_state.list);
 		evlist->nr_groups += parse_state.nr_groups;
 		last = perf_evlist__last(evlist);
 		last->cmdline_group_boundary = true;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191210213221.11921-117-sashal%40kernel.org.
