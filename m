Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBAUUYDXQKGQEPCXHFPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6F2119367
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 22:11:32 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id q204sf7086907oic.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 13:11:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576012291; cv=pass;
        d=google.com; s=arc-20160816;
        b=ITuMWYuGw7Oq5F+1i8RJHL0dNEt/epRjksR6RTDWL/7Gf0IIomQsfYK9HbWnDU5FpU
         wpitFkmh6Wq+orhAAQ2Y03Dg/SaNvHtQ2DWGVJrYiuB41nHvMvP0ofwhUgD3YLqIBx0u
         C69UerYw/jp27GzqAgwyrxnUTaFVm46dJTrLM23kBo8oKmmC0xSkci3arD9nXOa1SEvH
         BcNJcbxFDu+fqVbwNNbV6JnZNOC1zophEaP9gwBt8pBssoT0ai1b08+KZUtkyJsn0Enr
         6L/1ot55aKF+OhjCKO8EIOHGGcbWP9zHqyEf9EJcIYs0uNiFFiRdahryEiW7qdXeSqIT
         /z8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=mhnXoMQS+0p77YL6gHkc7wV7bnWFq58LJBF1SEbF2xU=;
        b=DifsfjKGgzOKWYRkLmQ8Wo6J9bOUI4wsbn0VBFfwisKXJrNsACLv/ksehp8WfQThKJ
         a8nERAIEzTxQplzMfdm2kpo2eSKrR/9MpTB9RRLs7zZKsWIUmwrZZkQDbj6Ld+IjveOi
         /vp5YOGVCzOEzHsVxzke1bEcCZODiPp4mPsA8k6m6x/dfFvLm204UYM73kbJwFNLen0q
         CPBFvvlo2DCJHugCnNEVzbF7rwsRiN450qsnuFDitkioSiyxU5xHsd8oAIO2sdhpQqD4
         iD22jn3DoUuEb/ywEuz9088Q2MBtsxzVqoT5MuZz6Y/IGMM9sTYUgOTzwsFmLNJ+Tzkl
         5A3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jbrIdNI6;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mhnXoMQS+0p77YL6gHkc7wV7bnWFq58LJBF1SEbF2xU=;
        b=kYak1RGIuIkpQYGlcwBTf2wmLZYRrunaBnubXcF9WFtzBuL4QFcRPL7tv9HPMCN1v7
         qFgV1FLrW1M2tYkOR1BGl3MC+/z7ni9gbWuBYHHa/Ye7s+nTfGEGmctsN+a088J1lCyd
         NKkHS+6gOq+9s1bLBVU8dAQvoQOkVJMILxzJHfrUlgI6bhsulpK2/6teRIl7OMrR6Ogi
         BSsPenAIXxWhyhpfSd09lQbYmnSUmgGyBngWyIS9CNhN7e2rYk2W+g1+ylCkimK6hec4
         jgE9Az1ya4gEPEL93uroM8s+0UvWt6HcxTx5NassskrJX1ZQJzvQua4hcNFuaxRQ+dF9
         W6gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mhnXoMQS+0p77YL6gHkc7wV7bnWFq58LJBF1SEbF2xU=;
        b=n4PczOgMKb3xEWy4O1GN28zn3vNW0pWh60IzZy8Vcor1xYmei+JmrqBqSTUZmtHnAF
         sAS8cUGnhJquBG4/WQOvoxudji0gSYzJOIPnmOfd0GlJPswsRhMXNC5xi7uBH3Du6r5r
         GY1Md7evtKxinZeL/CRpKzJi0LDijbhfktRfjPDOV5DC6C7qEICGoRrEtmOcGI8rkl0w
         v41oLbcVqVefh9YT5HALsDG8MkjayCjEA4LSLRLEZdGdmj0JipIcqEMeU5XPB6eYFJxT
         y79wBpF0bx9rh+jE6Ae0u3elR1z3Q4vpetG0BA7qAS9NEO3XHJMaIC0chIx2soqQVwY1
         zywA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXJcGy53sKkLK5NMQehIVRy+6pP4WJeyKBy2Z7IwvyZTuAjQttj
	cBmNsmJERYcx9Q+7UsY4vng=
X-Google-Smtp-Source: APXvYqy1osn/2DLdBZNCM0afvmOCdRHY7OYGCCJKHXDr8Z9UZqTvQPtgkj2pzLqY6GyYEJ/iudV1cg==
X-Received: by 2002:a9d:7a56:: with SMTP id z22mr2770843otm.44.1576012290962;
        Tue, 10 Dec 2019 13:11:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:895:: with SMTP id 143ls907oii.1.gmail; Tue, 10 Dec 2019
 13:11:30 -0800 (PST)
X-Received: by 2002:aca:f305:: with SMTP id r5mr12584oih.174.1576012290583;
        Tue, 10 Dec 2019 13:11:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576012290; cv=none;
        d=google.com; s=arc-20160816;
        b=tl2YBgfcJl2h1SGNDTR6CJyUe9biVeTE6SLTkjZxPczAcEW2qJJgcmSJAUbdRtL2kO
         MQyCJVJ2zEijxtyo7mX5pn4Vbu31vTUxiPCFVEssZWkmxDK0Gh0wKnl6YDwm1DcfCL4A
         LmvFu6PJZMv8/qzR9oMbpoj0mFBq5EnCFIZdFJFBxYAeRIcvqMxxNVtm8yFf+u3qx8cP
         qgowJ7bYZUR2mUBc/AdXI22e1XloM74+Dxw2uPfCICfYyk1GNGNGg83wsjv96h//3ljp
         yqrMxsKVCXPrIVLV82ifioizKjBM35nynXxNqtzchfaLKn+1Ow/lWWgBRHPkKyLAbuuJ
         4sjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Au/OFV+LuEsPvIlm7hROxYALelWrl3XQeRTWjIblG8M=;
        b=D8XGzYZO0UOUKQP0O0xVhmKolm8hjIrkrvEAnonJg9zGBrG+jc+8iCN/ROQK/wIjs3
         iQmJ0mtGW3w7wl7dJw4qadNW91tzmG2X6OO9GiTWYJXETzbZVJ766UV6XdtmI5oYAxol
         CwDXQIuwDncQbWtHIAWnSkjIaT0RwjlYXLu4GJrc7boqPYBSaeap5tOJ97dhr1AuPWBi
         Ag0hEbm4/pkP8yTCvaNa1OZJBJUJ8yJ5f/yYTSY1pLIfqCKdiWwaZTzIZ2vcWoRmHiuJ
         I7OEzzmt1gHxITlYEcete33z5wHWdtQd9CB5AspOsvfx31tmm5DrNqxJEEcHIFkxWUed
         29xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jbrIdNI6;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l1si184128otn.1.2019.12.10.13.11.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 13:11:30 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9F10F246BB;
	Tue, 10 Dec 2019 21:11:27 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 229/350] perf tools: Splice events onto evlist even on error
Date: Tue, 10 Dec 2019 16:05:34 -0500
Message-Id: <20191210210735.9077-190-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=jbrIdNI6;       spf=pass
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
index b5e2adef49de9..d5ea043d3fc4c 100644
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
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191210210735.9077-190-sashal%40kernel.org.
