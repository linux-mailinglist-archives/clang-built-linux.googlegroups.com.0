Return-Path: <clang-built-linux+bncBAABB35JVLXAKGQE6LQRT2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-f57.google.com (mail-lf1-f57.google.com [209.85.167.57])
	by mail.lfdr.de (Postfix) with ESMTPS id A79AAF8DDD
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 12:18:07 +0100 (CET)
Received: by mail-lf1-f57.google.com with SMTP id d6sf2739600lfm.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 03:18:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573557487; cv=pass;
        d=google.com; s=arc-20160816;
        b=eDvwJRUMuCV9DHOarwzASbvCNo5ly988tgqsKYl+yqRzF1jlVw56yb1mAIg2paf6aF
         4/fnH4HIc54vyhz+JKqOYN5fJw5jaSJazvIN/vOP1YxaXoaxFNdTCoJ28jCQPkeRchBl
         4XOhN6d/DmLhz0GYQchA0rvUmyp+xzx69EEQdqvbBnW96MSNP0c2Jwo4W+dUNE9fKyW5
         f4iOkwNaSW7zRvTtY5vgiGDFVaB+jBg9FLYYLJjc21X5J7UNQTaIfgCV4bfluwIrkPuJ
         QV1gyJzRjwLskEVEzJ5BLWPpq5OZ5uX8jjFKanMybTnl4hYEUBzS7hG+3OzlANC/Ok/f
         fgQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=FGeLk67i/K/AuXrREc1KOHFyifNcA7ibZQmpcuewgQ0=;
        b=wsiyp0bCaYFoS/pWmVILN5GyFUe0KgkE/EJ1u67HFIJrfo4oEmLxE+27ZieHcAPf/W
         174UuLyAytlOwzVsuKn1QWy2mzoGZuBp6NbRRVyTc7G7Omxvkv9Zjd/QRYIJi8aJuwO7
         2A5/BNUnA9h+IzrasbQD1drbdOE+w3Lu+DKF3Vuo6oMUuD2A8ghPjg0SM4ngr1MR1c31
         /hqI6NsBch9am3OhifD+rekcKC+qAv58WgZ+9xf1t56MofSWhzAWogmbggm9y+nrGzlo
         B8XpI7ToITZsIypXVYj6N3Yohfsc7MHllqbHYonKmyqE6uRfJbCL9VI22hsGAh6RdLx7
         3h2Q==
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
        bh=FGeLk67i/K/AuXrREc1KOHFyifNcA7ibZQmpcuewgQ0=;
        b=MApVk6XgITA9nuYy46PEk8SZUaUWBAiQAmzwyxeL5rPqbr5p+yeJXqTEX8c2VvArSi
         +Y+hT+bCMCyxVHdF0N42WBKr4twZNguisJMQQnpKTfs3eP5UUTwUkcHsqQcHTW2M9xhq
         9EBVg7gJ0eZ7QyNyc9ybkR6OGCpB2YXwrlQwKT63YKKOZ81p6ouWvZJUPJ0cuz/BzhN/
         uC1m4kF7knXnmqjjS0GgbfdEFqsA9ISzr1os7TLb20rIfUwigHYqPqQShGReKdQHUDs8
         oBDlDshmNlQLHA3KQSNSMCW5E/TEYww0yWipZFm1WksVW7TWKzs0huKbjNjneUVkT5uj
         WvZA==
X-Gm-Message-State: APjAAAVwsmw7awCaZ+x0Jiv6Bc/4s0ygUn6JpvozJ0wQSMpoWDIQ4BWI
	qJ4/CWtjH+cMlD1pYYLExKM=
X-Google-Smtp-Source: APXvYqwYMIVZVSrLjr6eqJhG+TxAwZ3KhWThflqFaCceF403sqFzUcOYqAhzMYRMhPWKLn9qaos7Ng==
X-Received: by 2002:a2e:9dd5:: with SMTP id x21mr19719274ljj.232.1573557487122;
        Tue, 12 Nov 2019 03:18:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:720a:: with SMTP id n10ls1524931ljc.9.gmail; Tue, 12 Nov
 2019 03:18:06 -0800 (PST)
X-Received: by 2002:a2e:9c8f:: with SMTP id x15mr8823096lji.204.1573557486694;
        Tue, 12 Nov 2019 03:18:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573557486; cv=none;
        d=google.com; s=arc-20160816;
        b=rRwsKAaawhTQu0a+dhj4sJJvlnU6W5bN4ucyyJxlFdViHjItB3WxY76eR0wrOBnnfb
         F9NkBimyD6zErJQN4d+DdtlOqhLGgCBtqJUiSTnUEG6jpGBt43fMDcrg2iaMzPBplWah
         VNdphu5pckWdCwmVOu2i43gZD3taTBL/e6R/3WU8ZRJ7xQaMI/okawpyMM5MeNr2Ar17
         vYZgGNS4fQFs8aCq9Ar3uQyMI3MYonv47l5a4vkwQ49VWmqfM410L53GuQdq9LYnyeCz
         rCO6fVuXdIE6RqEyxkr5ct0PGI73xU4tZjt3A2T1gIh3xitAV/FsQi+FHvNNj2fb/Pgw
         dscQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=33sB9KEYd0/0f7S/F/qoJzYmxLciA07yILZJdU6uqTo=;
        b=dp30BHhQWPjlLd0YmQ2r30RMqKrnn9zBDn9RljmxdVyyZYdnbSeuK1gHQPaXCwESMp
         1be+XIKjaOKFIVletXmBXKG9ixX3H8dSv2u7npp6qmJbMKrj/S/DRNsiD4QFt+2vArvw
         /gjT4+SNKR2i1+jblK9b42kPj3Uztv9kYm3+uwJkJAZteym+CuVrPG2cVB1wEp30uLQl
         KLxx996CMdDwZkSDdTbST3TW9TxPrtpNc4LBQM4koKQLw65H59H0RapweZ72ZNPJIZmK
         ljsKcE6SO266MN8GioOq6fA5KM1yA3kSfrk0p5NkwcpGq4d4meR8MjT0K6PPPGHHVLx6
         gwAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id v82si1154302lfa.3.2019.11.12.03.18.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 12 Nov 2019 03:18:06 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1iUUBP-0000JX-2l; Tue, 12 Nov 2019 12:18:03 +0100
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 4F8621C04A9;
	Tue, 12 Nov 2019 12:17:56 +0100 (CET)
Date: Tue, 12 Nov 2019 11:17:55 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] perf parse: Add a deep delete for parse event terms
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
In-Reply-To: <20191030223448.12930-10-irogers@google.com>
References: <20191030223448.12930-10-irogers@google.com>
MIME-Version: 1.0
Message-ID: <157355747597.29376.8966956495102275134.tip-bot2@tip-bot2>
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

Commit-ID:     1dc925568f015edfdbb89e20ad41755bb70538b9
Gitweb:        https://git.kernel.org/tip/1dc925568f015edfdbb89e20ad41755bb70538b9
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Wed, 30 Oct 2019 15:34:47 -07:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Thu, 07 Nov 2019 08:30:18 -03:00

perf parse: Add a deep delete for parse event terms

Add a parse_events_term deep delete function so that owned strings and
arrays are freed.

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
Link: http://lore.kernel.org/lkml/20191030223448.12930-10-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/parse-events.c | 16 +++++++++++++---
 tools/perf/util/parse-events.h |  1 +
 tools/perf/util/parse-events.y | 12 ++----------
 tools/perf/util/pmu.c          |  2 +-
 4 files changed, 17 insertions(+), 14 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index a0a80f4..6d18ff9 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -2812,6 +2812,18 @@ int parse_events_term__clone(struct parse_events_term **new,
 	return new_term(new, &temp, str, 0);
 }
 
+void parse_events_term__delete(struct parse_events_term *term)
+{
+	if (term->array.nr_ranges)
+		zfree(&term->array.ranges);
+
+	if (term->type_val != PARSE_EVENTS__TERM_TYPE_NUM)
+		zfree(&term->val.str);
+
+	zfree(&term->config);
+	free(term);
+}
+
 int parse_events_copy_term_list(struct list_head *old,
 				 struct list_head **new)
 {
@@ -2842,10 +2854,8 @@ void parse_events_terms__purge(struct list_head *terms)
 	struct parse_events_term *term, *h;
 
 	list_for_each_entry_safe(term, h, terms, list) {
-		if (term->array.nr_ranges)
-			zfree(&term->array.ranges);
 		list_del_init(&term->list);
-		free(term);
+		parse_events_term__delete(term);
 	}
 }
 
diff --git a/tools/perf/util/parse-events.h b/tools/perf/util/parse-events.h
index 34f58d2..5ee8ac9 100644
--- a/tools/perf/util/parse-events.h
+++ b/tools/perf/util/parse-events.h
@@ -139,6 +139,7 @@ int parse_events_term__sym_hw(struct parse_events_term **term,
 			      char *config, unsigned idx);
 int parse_events_term__clone(struct parse_events_term **new,
 			     struct parse_events_term *term);
+void parse_events_term__delete(struct parse_events_term *term);
 void parse_events_terms__delete(struct list_head *terms);
 void parse_events_terms__purge(struct list_head *terms);
 void parse_events__clear_array(struct parse_events_array *a);
diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 376b198..4cac830 100644
--- a/tools/perf/util/parse-events.y
+++ b/tools/perf/util/parse-events.y
@@ -49,14 +49,6 @@ static void free_list_evsel(struct list_head* list_evsel)
 	free(list_evsel);
 }
 
-static void free_term(struct parse_events_term *term)
-{
-	if (term->type_val == PARSE_EVENTS__TERM_TYPE_STR)
-		free(term->val.str);
-	zfree(&term->array.ranges);
-	free(term);
-}
-
 static void inc_group_count(struct list_head *list,
 		       struct parse_events_state *parse_state)
 {
@@ -99,7 +91,7 @@ static void inc_group_count(struct list_head *list,
 %type <str> PE_DRV_CFG_TERM
 %destructor { free ($$); } <str>
 %type <term> event_term
-%destructor { free_term ($$); } <term>
+%destructor { parse_events_term__delete ($$); } <term>
 %type <list_terms> event_config
 %type <list_terms> opt_event_config
 %type <list_terms> opt_pmu_config
@@ -694,7 +686,7 @@ event_config ',' event_term
 	struct parse_events_term *term = $3;
 
 	if (!head) {
-		free_term(term);
+		parse_events_term__delete(term);
 		YYABORT;
 	}
 	list_add_tail(&term->list, head);
diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
index f9f427d..db1e571 100644
--- a/tools/perf/util/pmu.c
+++ b/tools/perf/util/pmu.c
@@ -1260,7 +1260,7 @@ int perf_pmu__check_alias(struct perf_pmu *pmu, struct list_head *head_terms,
 		info->metric_name = alias->metric_name;
 
 		list_del_init(&term->list);
-		free(term);
+		parse_events_term__delete(term);
 	}
 
 	/*

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157355747597.29376.8966956495102275134.tip-bot2%40tip-bot2.
