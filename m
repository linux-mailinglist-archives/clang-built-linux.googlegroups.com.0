Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBC4UYDXQKGQEWR2PY7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E7D11936C
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 22:11:41 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id h87sf15421483ild.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 13:11:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576012299; cv=pass;
        d=google.com; s=arc-20160816;
        b=zlBlG/xcNb1O0aE6TJrkk4yTpmcQPezdzaEydaZwB08xQLA5JUDlFOb5VpmFDFHw7Q
         X5+pGtDjDtWtdC6xAHPBq1dwcSROw0lE+YqSK6sUHrqS2J0B2QbdzBGPzByRLnt5x68b
         u9Bh/2ivbsQGZmPZuDzbK3Q3VM3OwWHMgFtAiBIMyYyW1PQXakxEOB09R44RX01SepuJ
         2sfHvv++ZdL+q+8iWTOLPPz1P66W05tOPxzetw+elxr/2Pn/4/VeYSikY7PzdqrwexTV
         pIRtKieArMR94aHihXuxxV/YHr1ED5aGvbxKLb7IEfFJNmqTkFqQcdOYVzdu16aX+BpI
         VLpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UCmKRVwGOXZRQeT72DuIIu30knc1r4pfV/I0stUBtc0=;
        b=uKWEvZJVWEPCe026a8Rtlw0wkcl2MikEutlNiPi8lXpAgoBopi1sled1cRk8JRcWLA
         kSz5ZQHafpHY/N26ficCtB/CUmB1iJxekLHjYa/6+xOCK1XbucFx22fk70aUoXh+f0YH
         VJfkFHVe1r0Jt191tLjQxKZpaDOJsXLeVTB4WBJF+1skPeGfElsx+Np/SsGKcT/bgWUt
         0WxU/mibPVxRmMfM35L3+Lrsvsso6E9ipkVspcwgW6qI2tvKK651btbaiJ7gIQnxPVO/
         7MEBpYhZE8zJNRyU9kub38ZPworP8oUMFEtefEdh0JmrU2TsKuSwKqHyRSEHgUsxisD4
         wwbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qVORyjm7;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UCmKRVwGOXZRQeT72DuIIu30knc1r4pfV/I0stUBtc0=;
        b=fVXSUrpb3TKSbGu8BD0uNPmLRw3M5Oy/HfeqGj89CugJK4GTG3OO8cNqIZfbM48vLD
         eFmnhsW621IG0QRnV5hexJ11lnCN2PUR7tM75DuILfHZnF5dW4gBXcI6cCDfl6zokbCC
         Lkmj44RnOjh/kdD/B7SVYxYWyCGJKnoJF+qhN+x5nHKIQ9F0waBi/7lrChHWvTjCHySp
         D+pFdgocrXp2vJiUv3a2duS7YYkg2rbtoZC8aSGBlY+qhky2nxsXmvVe3mizCGsvLFRA
         lm8UMm9RbaMkMiAoYxXGu/Eq7ZXaYk+fbEQzvJZulDBbml+ML5NjfJ6onhVYqxqEQiw/
         4NZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UCmKRVwGOXZRQeT72DuIIu30knc1r4pfV/I0stUBtc0=;
        b=NW8rq473L+KSgr7oSwP7oVJpJd6/jlgGZpkcxNB71gbEZFkpOyVNOluo42hG9+ByE3
         3LR9re+Hh2iPOrJ/vIcYJ/VGNi1CdY6k2lNgC2XGDNCf8tvvQQ89cwLQmEiUjXzbfa3b
         tt6Nr4E4kc2TGwmKEgRqL/J2mehw1E84OHVVFnNsRNOmZRWWtUxAkzfztSw0Y/8YNOMj
         iHjx46jx9ZnttlCKPgiCt8qVGrv8aGMxCy3LJBFxPoBNDj4UjaYbRqDwKvLTBAl7e8vQ
         HJGguqyT/jmRbzWCaVOMiFILrn/1CUFfmIohOpSbcyA1NH7+YMynUD0KA+KhICpVW4BO
         N91w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUxAiKHv01GCTt1EV2d7yVKRj4bP2eYu7X2yVypUi0XxO3ZOhkX
	xnt+M1Ftdx/YJzmOEJ2daMk=
X-Google-Smtp-Source: APXvYqxy49es61YI87787yd6JHrnuzfZj1DnPjqD84KMPgyWRg/5hG8fpVNPVZgYjPYEGVXbOTJ7Tg==
X-Received: by 2002:a92:d30e:: with SMTP id x14mr36687606ila.108.1576012299523;
        Tue, 10 Dec 2019 13:11:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:7205:: with SMTP id n5ls909641ioc.3.gmail; Tue, 10 Dec
 2019 13:11:39 -0800 (PST)
X-Received: by 2002:a5e:c20b:: with SMTP id v11mr103463iop.56.1576012299105;
        Tue, 10 Dec 2019 13:11:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576012299; cv=none;
        d=google.com; s=arc-20160816;
        b=SX19FJ+NjKf6o3b2I+/NLqJ+h76sjkaczwI7eeyDI+QnilP59ydqeYvYZ6PFNIre1u
         Y+Ks8kBswUWbnjCMBbZ6cJGgUZhejqH9PqTEPzmO8dadvXyaC0IRx1iHU7rdjHQM0dOT
         N52UfbCM0MIov1i474cSiBiaLFFuN0AvKy3C6g1STILDnL4a3YXHQKrVQ8Un+TI7/Zlz
         btGypKFgWg9qMxWYi5pzWQ6rlmrRSIC24YfbDiSAuyMpoTSj19I4YRmoUCLDCWxxYbnf
         QmUYsZzUyM8irjt+BATAfD/ZuCeHpI0W4f2BXRxpmcJPnxgaaZpz/vsUKSPr94cg+Rfy
         BD9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=nS+lFtKk4jlNUbzm34kvfqRzI4T75Xr9R3CNZAiECz8=;
        b=L8M1fj43gy9zfFowQbkD1Ld0fVV/pYeFPZFrSs7V9dfW1Gh3pOsl9XQG4eqQ1t79J8
         yYBppPZwOovtyDPs0/hNZFxoYfxwJJoab7VSs/RR/jlRlizGmG+/Jfu6rDFdOfrpp9bf
         WgwnY3Wx3d/bbFlPJQcTCdYJht304WFUCNNfwlK2faXRI1Lx6l3+6H2XhFXhNAiFOqmE
         JzvrZAChwS7bIeJmRNCSppY2smC/PJs8hdfM9DhpxlAMcNRTvAnO5MVOdSq1b2BT2oxC
         EsZGQ0CBP4c5BLS46F+2Pq5rc2JXlfihf9Wbp3sPBnAYg5Ni10EMXjH6lxOpmZbkb/1P
         Vscg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qVORyjm7;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g10si257231ilb.2.2019.12.10.13.11.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 13:11:39 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2E9E3246AE;
	Tue, 10 Dec 2019 21:11:36 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 235/350] perf parse: If pmu configuration fails free terms
Date: Tue, 10 Dec 2019 16:05:40 -0500
Message-Id: <20191210210735.9077-196-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=qVORyjm7;       spf=pass
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

[ Upstream commit 38f2c4226e6bc3e8c41c318242821ba5dc825aba ]

Avoid a memory leak when the configuration fails.

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
Link: http://lore.kernel.org/lkml/20191030223448.12930-9-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/util/parse-events.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index d5ea043d3fc4c..422ad1888e74f 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1365,8 +1365,15 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 	if (get_config_terms(head_config, &config_terms))
 		return -ENOMEM;
 
-	if (perf_pmu__config(pmu, &attr, head_config, parse_state->error))
+	if (perf_pmu__config(pmu, &attr, head_config, parse_state->error)) {
+		struct perf_evsel_config_term *pos, *tmp;
+
+		list_for_each_entry_safe(pos, tmp, &config_terms, list) {
+			list_del_init(&pos->list);
+			free(pos);
+		}
 		return -EINVAL;
+	}
 
 	evsel = __add_event(list, &parse_state->idx, &attr,
 			    get_config_name(head_config), pmu,
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191210210735.9077-196-sashal%40kernel.org.
