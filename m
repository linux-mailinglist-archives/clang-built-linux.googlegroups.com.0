Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBB46VSHXAKGQEHHWWYXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id F010CF37EB
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 20:05:26 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id x187sf2752219oia.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 11:05:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573153525; cv=pass;
        d=google.com; s=arc-20160816;
        b=QJUVF8VJQv9ULoPDlBRsQ6eo6/AgDI8fJGDsbdTzlGcjFCQPQ4aIVTqv+VTCt2cpxp
         P54Nqayzf9N7XqAQj4w8HSsmCbbZbeDWNDcVYPh6ORQVScrOLhPwmezBLjf4d9nFpakU
         0JMhZ39sJcYUvopKT2WOsNgriWzPLQ41M1HbsWPiweW2YJgviPzjurGOH/lWdDyVWDhp
         2PpYyONeRo606jc5jO/jVrVrLcxh+IlPwExb5D7+SM77PyD9+X37PGBCwQFWWt23rS0e
         IAEd/5w479JthLos+tzzy55LeZn6FGEuGohq73V3aBDvNJV8RYy/v9RWaPzzDm3D5gjQ
         K4eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=jtlTrPfcgie0yXYJnHuTMGkYNynz87SHE+7CrBBF0bE=;
        b=NJ098v5mKErLDsxMiv7ebWwOcQ0/B9CmhWIbiLCBqOj1xv25wfFfWm6vV+PnzkkKao
         6ZDSwjK6wGnvtF+eoxZMQOoKhZuvxJ8oz1tT6cDtE53ufozI84Ui3yWzdzDFP5BdkFAx
         GoaUF/I6zwjYG2KdLaFPle9Z7/J0hiCsyOP3jrJ2wD3Cg4nMBzn4KMsfZJNOk/2FrOnn
         xh5UsGwnsr/Pb/18UhLTjt9aAwSGblKHRFfCFjuaHCqRjg0jybymirmuWDiQnuIM0pOy
         6R/VxUfxZsSvIlAqkkx/ohokMIgiDyYW5aHGgmQ1kKKIz4O290mDvGV2ivRx4brRyeoG
         r62A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="HKt6/puH";
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jtlTrPfcgie0yXYJnHuTMGkYNynz87SHE+7CrBBF0bE=;
        b=aZ/KFqe0qAbm7jOG6Zrbd6OJ+yBq3+bPGX9eSxJxSIF4pYdRlxchDDiksYJ+4rn6p7
         5FEG4LXRQWE2eT1A3Eaw9Jn6Qco57JEfx8Mv466UtwN6HrtAoaM4QfuDEoHfpnOMcGuG
         lEww+LpQYVgy8zUCqCIcudlZC4zu09IUcYv2yMx6iJpkhiyerWuVQBYXJHf3hdlzx611
         vM3ws9a5oow8yIJbbP1GrybWQncGaxp8uKNgl96HWx5iVFGMDJo8jXchEvyWVaOJGoWi
         T6taW01Ajtb48zWsY3TylplEfmDaOaHX7rJC/lQCo0BlrqXGHg0ALrZgfvvJ1jQxPbYy
         +4ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jtlTrPfcgie0yXYJnHuTMGkYNynz87SHE+7CrBBF0bE=;
        b=Z4p6M4vZErLC78iZfBxG0w1nFA7zNwZqHsyq3q4V3IGx3eJJraEZjC5uFxOf3kk3LH
         p8iUOo+/SBqSVt6br7YUnN6jM3YbhIbv/2HJLoGKrEk12RBwqJ9fm+AieOg/cytQM7KW
         3okNlh5RKUhAyt/ILct/R+Lo+msnv/2XllAbrOHL7YOuPrD+hZFcMMgFep1Vb2PYf6MX
         9BohNy/Lj3ZSQYbhoDwNI/ZJ9ww3TJ17a3HXJkptJDF+9zLueyqxeFof8mfv+/rr8uO/
         FokI3bXEJZd69ExCM/pxJ9XIs6psVlZPErikQ94ufY+Efxm3/T3ENIroGCI5NSMvlp7D
         KgiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU9cV/7MMarckoOYXEdxiRtvuCmMU+uAwjwGYzor5nDHvfQuXgd
	zTCSZDkHRZ1etoXNfa9fa8U=
X-Google-Smtp-Source: APXvYqx2tsVZFnFwcdoNLXvbV3bpAma5FgvbEZoO/8OQF4hkwuCWSfFyN8yGR19CeYt8+kvZgDYThw==
X-Received: by 2002:aca:5696:: with SMTP id k144mr5065298oib.87.1573153523642;
        Thu, 07 Nov 2019 11:05:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5886:: with SMTP id m128ls1582517oib.14.gmail; Thu, 07
 Nov 2019 11:05:23 -0800 (PST)
X-Received: by 2002:a54:4f83:: with SMTP id g3mr5076819oiy.24.1573153523241;
        Thu, 07 Nov 2019 11:05:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573153523; cv=none;
        d=google.com; s=arc-20160816;
        b=h/K7B9to69RZQuMuz2zgL2yp5XXVXrwzWfWSwG14wkbJeefqziMeonN/CjXTWO9muT
         CIcMY/jZIRi8cYMbwhyVlYjD9k4LHWh4fISOvHRfYxN9bK9lZUQ8BD/sF6JVZinA0Uyb
         V0T3lX2qZmrzvYHeyMXdQY6G8lMh0Ex7OfdNK90Kcfbt2zyM6jwL66YVLxAtbNSuWKqy
         KwIKgMFR/+834sXQ9JX3IDnzSspe5gjZwCKnS8nazgPCpZduqNOLpt1yWXPWygIEX3Tg
         EbihgBZN1DGd28Lp8fqGSH7zcZvkOSOmU2vB6xPALtZsRUaYBpZTG2Zbt0mF8c3Xy9A+
         bu5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=It/VOaUqmvFlU8SOAgrmPUZm6M3pbuAO1Q/1SpEoZCA=;
        b=lhwlnigUyzghq/qg3irCXB71o7jH2lIfI0xLu8Q0ZYjd6Cz3+iJ4kDbKxIBMHRU97V
         1h8GMALwJhd8AdPY4YLwvNYMRwCeP+948T682eNYp8dDciSKHQJNS3KTIq9+DovvKui5
         /FNfNQqVCa/yNwTj12i5JrZfrDdWIXTb4q/FK2yZ6xdK5P2AmM9XNJsEndAefU34YjpY
         rUauOo8jhlEezds4+ER5IPd3/1OTifHOAaZB7zQByCnqFVWxG3ejM7uzJKTzT4nsN3+l
         4VuB4mXO/8ViMSOBX/uUITlH0TqHcTxU+QV9/w+1unBfIJLhuWwvyWZ4Y6kvKRKJNsuM
         v82A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="HKt6/puH";
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v3si208181oth.4.2019.11.07.11.05.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Nov 2019 11:05:23 -0800 (PST)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (179-240-172-58.3g.claro.net.br [179.240.172.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 494F421882;
	Thu,  7 Nov 2019 19:05:09 +0000 (UTC)
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Jiri Olsa <jolsa@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Clark Williams <williams@redhat.com>,
	linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
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
	Peter Zijlstra <peterz@infradead.org>,
	Song Liu <songliubraving@fb.com>,
	Stephane Eranian <eranian@google.com>,
	Yonghong Song <yhs@fb.com>,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	netdev@vger.kernel.org,
	Arnaldo Carvalho de Melo <acme@redhat.com>
Subject: [PATCH 34/63] perf tools: Splice events onto evlist even on error
Date: Thu,  7 Nov 2019 15:59:42 -0300
Message-Id: <20191107190011.23924-35-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191107190011.23924-1-acme@kernel.org>
References: <20191107190011.23924-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="HKt6/puH";       spf=pass
 (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=acme@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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
index db882f630f7e..d36b8129b27a 100644
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
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191107190011.23924-35-acme%40kernel.org.
