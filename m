Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBIWPUPYAKGQEWTJ5HWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 453F912C60B
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Dec 2019 18:51:32 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id g12sf12024517pje.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Dec 2019 09:51:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577641891; cv=pass;
        d=google.com; s=arc-20160816;
        b=FcncqdDzUbOAGkzLBWhPSJg5fawqNgZ4gNT61BNrrhh2RlD7Y+b6PPd1LKvZNMw6s3
         FuRQI3ae3PgXalsb9NoZuY0Unec9SXVDwYyhkRQ0pZo5mhNeF7wwUZc3UXleTqk7Fb/o
         w5guevwGlvrjge/c6MtkQlFoJlLHyqcqZGAltdu2TsE8A8STaYjmhCLmSAHNMjV2vIUd
         oi7SjH3tMBw9ZL87i4neeJ5xPLL1aebiTL0mhS5wihYr6qUEUnRnwMwAvJJgAPlXkVAJ
         FOQGtPMOXU/a9itkNJTaUU9GzbiSma99khKIzC0kpXwJEBWbkaGFVHMARKUS6wSBjebd
         z+QA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=aLiY8llEXzvdw8Obwc9gtgxT5zGG4Mo94WNwN+Dw8WI=;
        b=traCP/dbZe/c5pm/TIYpDdlvyBez6/0C0rZrks0sPGbk56cyhSsBhbsg4L5d+wbYro
         BMvROmgIkKq0tubv0d1MBCqY5sOrBpDeeUVpwF7javXbrKlA/AxZF1FemdmhW2WvIZFw
         lMeBpvAc4jG3pVft0+IlNrXS4Eou/ZD+ReM87GWsmKO7ZmRkClXckyHBOqHRsFqCPTYX
         A6JYfBNsZuEaYWtpY45eHCvf1N4WaR9OLk5ZbdJfyDxqf0lR/rk8RXXvxNB2WdyVQH0J
         fYqzFFJO0n6h559sdXiEw+az7hPUQXAHkjCWsoQ6Rgj5EWv6LO7WfW+n2qXZs0nvGp6Y
         6p6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Vqvc/Bz6";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aLiY8llEXzvdw8Obwc9gtgxT5zGG4Mo94WNwN+Dw8WI=;
        b=GPrTaFThP4r6/obKDLDwJj1ivhMQmRcf/NdYD8rRsMpGKM1Y7jYpYGU3b+4JI+8HDo
         tCIbfWGuuDd4eF8lCwIOQdHN/tA5SglPrZh+tbEzASJUvotXOzsiUQdrEl55D+VtzsOx
         wmHL2EpXK/kfzUV8hox9o61GnV2ajjHJp3CEpEwelPR+m6tM9xZw0EnZBvCnOw4Psn5J
         +0gGxEQBw+U0wWoIu7oHqgel7ru33rhxz18cCbtKlk9Wc7UYUw3+y/KAlxLzfcTBdm2d
         uIm/ADz0cD3F8PTL3Q6yVGkO8XZo9xTW447GN1mwJuF92dvEKw9j8Dxlq6I+XRlNBgPK
         FY0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aLiY8llEXzvdw8Obwc9gtgxT5zGG4Mo94WNwN+Dw8WI=;
        b=NDX81D92pUX7gfXzYLGJIAX48jyt9pOBmkASSLGdQcdMUSe/0msUuJsSBhwWkV4OuG
         EsP1AkeeOZfiTkUwOeQKfR8VIaUjSTsEfxoM2e/+uh+YHqdaL7vTr/vhzas/lP41sUcl
         x8Z5NKQEA6wjD3GLunjOtv6hi4PvTTV2ybqvFjT1FKb/JfU5wP5GE+2bPm1+GaowI7Vw
         vfi62acMXCIHHoNhTrZuESCYIiSdPXWEUe2dJ91DUb03oy3YZR6Jr9YKtrZLPxJ3WILF
         l08vxXD13v0H5SjSa2WNqc56LgqZw8AO0Cj8JElzg+ckg9wKEtUnfbmeawOR46EFtfz5
         uz6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV9s/aAMEhtVro4hISV7SswchLN85ihnqWGmaD76cT5prJjTng/
	3ydKx6qVbX3LGwwgHQ8SJGQ=
X-Google-Smtp-Source: APXvYqwwZwKwdB+kjUb1Jqd1nPq9T9FsqUYCDWosIC9pJHGyPpe40KgnYeQcC8ER9QCUhmjEoC2/9A==
X-Received: by 2002:a17:902:407:: with SMTP id 7mr8708811ple.226.1577641890712;
        Sun, 29 Dec 2019 09:51:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:82c3:: with SMTP id w186ls9426767pfd.16.gmail; Sun, 29
 Dec 2019 09:51:30 -0800 (PST)
X-Received: by 2002:aa7:870d:: with SMTP id b13mr46936800pfo.212.1577641890375;
        Sun, 29 Dec 2019 09:51:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577641890; cv=none;
        d=google.com; s=arc-20160816;
        b=EjT0uvnp2onymy+6nLzgn9PjAizMS+9KG4PJbDQmIlKm2hlTPnG5G9wp23lhTeM7ue
         l566Zc50HfWge8Dbi4d61kEZYi0liVOy0Rzb00DhB18fhTOCZbAOjysF3RLKV9TqpWUr
         rfp02ELuRFKdtSIilYbs9sg6H+ZFcpvYxKv2wyRYrw20vYAcvZwA0RPB36EUdujqmg7L
         giFAzRJMywUtVt2QW/xbQm40yJAdv4jYJENY4K1O/1/1P++omViIPqsFaVbya7gNgeQX
         SqNDQp2ALp33ksiWlTM1CwndYHDT0YHAw0oYQxmm54RXSdMYF9oAalpREzDp96J3kiCI
         Ok3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=QHkNnSU2N1eZbiF8vcz5fgArtpRMxW7aG5SfoMummyo=;
        b=NexR6J0uiEkXLKLeq7hPek60YTNCo9pEalIj2XGfyHQgFslmZKQgBvKAM9pW67p7FL
         KCp4XX2jResqIz6OeROi608UXZFmuPgWOLpX9Dv++cgQmfjC2JZbMFl9XaG+kagCPee3
         9TEsOpdD0eV982coYQcCi2X49ZIAyc3VtqLvgLt1Op3OACNPxM/7psebm366n2FrkuPI
         cw59ooaYL9V22tUTEicFQbzYSItK8iLgumK/hCMJWLft/IkswtE3vN1IfyYkFw0mep1C
         b/nIX2WvFfQM6irGL3y9d1XiD1PLCXYfz/vcFHWI61mxqBCUaPO9taq2njT4jvnrHYuC
         xsRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Vqvc/Bz6";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h19si989650pfn.1.2019.12.29.09.51.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Dec 2019 09:51:30 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A802A208C4;
	Sun, 29 Dec 2019 17:51:29 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
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
Subject: [PATCH 5.4 254/434] perf tools: Splice events onto evlist even on error
Date: Sun, 29 Dec 2019 18:25:07 +0100
Message-Id: <20191229172718.795111361@linuxfoundation.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191229172702.393141737@linuxfoundation.org>
References: <20191229172702.393141737@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="Vqvc/Bz6";       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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
index b5e2adef49de..d5ea043d3fc4 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191229172718.795111361%40linuxfoundation.org.
