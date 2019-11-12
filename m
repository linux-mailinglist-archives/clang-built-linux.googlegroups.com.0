Return-Path: <clang-built-linux+bncBAABB35JVLXAKGQE6LQRT2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-f62.google.com (mail-lf1-f62.google.com [209.85.167.62])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A819F8DDF
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 12:18:08 +0100 (CET)
Received: by mail-lf1-f62.google.com with SMTP id r127sf1630734lff.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 03:18:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573557488; cv=pass;
        d=google.com; s=arc-20160816;
        b=VSXiD9J65C9adBzY7f63aHUWeLl3D6qABoO8ayehhISLwPxh5EqKSc9T/UxKQHt4oc
         G4Ot8uvq/gbz/klGBCKgGeYyB684KRz1ttJweeSbm1AYi2MmCJ/klK1vNz/xQ94+oeI4
         TRK4bwaAlApUrLjFoDdN0Pjo0OmZcU9VwdnQM+uNoag2yp3lnDIe4nQH/U5Tz6390GAd
         Os718DloJayStwDm1et827brXclWm+VUsVYtc5DHDWtkLNH9xhpe4vqN6O2RNRMDYDvL
         Y3wfTSz11u9u91/RLnG2CG159st2QUaTmwekVuc6mc2qCwnSNAmBbOXjBuzT46sG+pmp
         Kc1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=CW+1Qzyz/j83ymw2NrC399SvuA+KrHa7/nXaHdFB/sc=;
        b=Qbz6xQ39dMw9ri0jRNGoxpx70oMrTRzY/kMWq693BbMwSxjS3xdYWf5kyaShK1XUIE
         PrEp7SjRwjTVXZ3Wd8HFliD8YuDJytnops0kOCp3AWpM9JEhMDrmU50L62sskQhYi3me
         WKsoh5sn/Ww91C8kK8UDTvxvGhqfc7oiu0SghvEMQkAtwfK4CwxxBBABS2wi2Q7F8O9m
         St1nph06fXvrpVUWTARDPpLqhan35bzv2xuRpFN5Q3c+a+SCIUOs7Z/kvVyJGD9a+kNR
         Yqwx5Wmvl6izva+Ow8ezoCG3IHBDCYk07ege+wGStNBkPpqvQCsQpH/RHwkwpl0Qpdq5
         uh/g==
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
        bh=CW+1Qzyz/j83ymw2NrC399SvuA+KrHa7/nXaHdFB/sc=;
        b=YKGe6Ltv0hNxaNN2F9TMKB52YGhqIO+10ibXruXWQm5Qyiouw4X6i9DjS8rYyUHD0o
         0uvW+oFLANTaIkGR3VUX4v4R3e215gHZuzBjxW07aiPcmSrTnH4FbcgtFbCizqyQM34s
         ThUTbbaOsaa2t5urAwSKzYZ0R+JZogZnJT3aWfReDDnzNQxBXwMeYlhbO78mcCx4Iinx
         cXnoSyYg7sgYEOBGL0rJ0KbGLSZA98RMBfKgmddpzve6zg427TT2sKzOtmcBfqAE61hT
         7h4N8zpAkakG4IrFDmIMZ3DLK015AiHCJ1Eq4HNwqky9b4lHzOxlYd7lYfseayBp3Bjd
         Eqbg==
X-Gm-Message-State: APjAAAUicXD4SIy8kCc969pqrxVhUzeQT2Ph7b56PP0NIgJDAvKnzofC
	KvYKCQ/XqgTv4+XMPBMrr/4=
X-Google-Smtp-Source: APXvYqw3tM0h5CFMLYx3juxpsTWioLXlvTWTIEqScdFDdQ16xKee0mQ3nHoMxeMBouU9phlARsKvzg==
X-Received: by 2002:a19:ae02:: with SMTP id f2mr9442090lfc.54.1573557487989;
        Tue, 12 Nov 2019 03:18:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4465:: with SMTP id y5ls1099435lfl.16.gmail; Tue, 12 Nov
 2019 03:18:07 -0800 (PST)
X-Received: by 2002:a19:ad43:: with SMTP id s3mr19177405lfd.34.1573557487567;
        Tue, 12 Nov 2019 03:18:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573557487; cv=none;
        d=google.com; s=arc-20160816;
        b=WzrawjK6902LdXJDSpyIvBy1xVa75kPUAgr/96qZZLZ+6BLv+WpKbI8iqy2QrTF6ow
         umFjeAvx+M608RpZxFOQPSismL49VshrQeqtKDdJHI2zI8a9B+iF9uriWfdMk0LXLL7J
         y3+Gewqd+9Mcvpxf2+D7xYy6V/qzd02mH64KNxPHvqHgN9zAndEPeQApCiSfJoDmDj1p
         JdY/vYIwPJPFYAklDgDBy4n4neh5Fea7R0pFt4okGMOCmtD0vQjcAbsPOd+QjABRg9wF
         Pe+vPvSJOiyrPv0/5S7B/Gu/q1zkfVgJ/a3uFRmqvVFXrd2SxLfrNHh2d5E61+4X2jLc
         1gDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=FSt0tkyfx9hKjoxazxSLi36UBXRgsTuTIlO9a9zkJkY=;
        b=N2rgBkSMQYiYMXTbNkYMyPgc3WfiLFpQmNPcWFkY+YbkQHFKfC3zp+DeDdR5QcvF5r
         XcwDmmfoq7VY8MY8J6mVQiyFMA3EDeKHvVfFayubY/FNpfAEb3GNjaE0Yd5lmhRdu6Q+
         YCpqHEjrZ7Rf8Xh2AUYC013XLOpdsLn9ojtmtANvKAxrI2mqVlNiORP3QQfayxGcVo88
         P+M3TFt1hshIiScGxaYjvtKaXhXRbvjHKVyvOiv1FkA1VPxP6FsQueh9KE55mKwezvCS
         hIwRMM0YCN+7KIPnLcVGyuxCziINniVbTY6Dbpgb+zCoeSyxe1bBsFjSmWzVzivJXRfz
         VWMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id c17si221946ljb.3.2019.11.12.03.18.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 12 Nov 2019 03:18:07 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1iUUBO-0000LL-Pi; Tue, 12 Nov 2019 12:18:02 +0100
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id AC2901C0483;
	Tue, 12 Nov 2019 12:17:57 +0100 (CET)
Date: Tue, 12 Nov 2019 11:17:57 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] perf parse: Add destructors for parse event terms
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
In-Reply-To: <20191030223448.12930-7-irogers@google.com>
References: <20191030223448.12930-7-irogers@google.com>
MIME-Version: 1.0
Message-ID: <157355747733.29376.2202395677486498086.tip-bot2@tip-bot2>
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

Commit-ID:     f2a8ecd8b1f4df096d9597388eda1c994c72d373
Gitweb:        https://git.kernel.org/tip/f2a8ecd8b1f4df096d9597388eda1c994c72d373
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Wed, 30 Oct 2019 15:34:44 -07:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Thu, 07 Nov 2019 08:29:43 -03:00

perf parse: Add destructors for parse event terms

If parsing fails then destructors are ran to clean the up the stack.
Rename the head union member to make the term and evlist use cases more
distinct, this simplifies matching the correct destructor.

Committer notes:

Jiri: "Nice did not know about this.. looks like it's been in bison for some time, right?"

Ian:  "Looks like it wasn't in Bison 1 but in Bison 2, we're at Bison 3 and
       Bison 2 is > 14 years old:
       https://web.archive.org/web/20050924004158/http://www.gnu.org/software/bison/manual/html_mono/bison.html#Destructor-Decl"

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
Link: http://lore.kernel.org/lkml/20191030223448.12930-7-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/parse-events.y | 69 ++++++++++++++++++++++-----------
 1 file changed, 48 insertions(+), 21 deletions(-)

diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 545ab7c..035edfa 100644
--- a/tools/perf/util/parse-events.y
+++ b/tools/perf/util/parse-events.y
@@ -12,6 +12,7 @@
 #include <stdio.h>
 #include <linux/compiler.h>
 #include <linux/types.h>
+#include <linux/zalloc.h>
 #include "pmu.h"
 #include "evsel.h"
 #include "parse-events.h"
@@ -37,6 +38,25 @@ static struct list_head* alloc_list()
 	return list;
 }
 
+static void free_list_evsel(struct list_head* list_evsel)
+{
+	struct evsel *evsel, *tmp;
+
+	list_for_each_entry_safe(evsel, tmp, list_evsel, core.node) {
+		list_del_init(&evsel->core.node);
+		perf_evsel__delete(evsel);
+	}
+	free(list_evsel);
+}
+
+static void free_term(struct parse_events_term *term)
+{
+	if (term->type_val == PARSE_EVENTS__TERM_TYPE_STR)
+		free(term->val.str);
+	zfree(&term->array.ranges);
+	free(term);
+}
+
 static void inc_group_count(struct list_head *list,
 		       struct parse_events_state *parse_state)
 {
@@ -66,6 +86,7 @@ static void inc_group_count(struct list_head *list,
 %type <num> PE_VALUE_SYM_TOOL
 %type <num> PE_RAW
 %type <num> PE_TERM
+%type <num> value_sym
 %type <str> PE_NAME
 %type <str> PE_BPF_OBJECT
 %type <str> PE_BPF_SOURCE
@@ -76,37 +97,43 @@ static void inc_group_count(struct list_head *list,
 %type <str> PE_EVENT_NAME
 %type <str> PE_PMU_EVENT_PRE PE_PMU_EVENT_SUF PE_KERNEL_PMU_EVENT
 %type <str> PE_DRV_CFG_TERM
-%type <num> value_sym
-%type <head> event_config
-%type <head> opt_event_config
-%type <head> opt_pmu_config
+%destructor { free ($$); } <str>
 %type <term> event_term
-%type <head> event_pmu
-%type <head> event_legacy_symbol
-%type <head> event_legacy_cache
-%type <head> event_legacy_mem
-%type <head> event_legacy_tracepoint
+%destructor { free_term ($$); } <term>
+%type <list_terms> event_config
+%type <list_terms> opt_event_config
+%type <list_terms> opt_pmu_config
+%destructor { parse_events_terms__delete ($$); } <list_terms>
+%type <list_evsel> event_pmu
+%type <list_evsel> event_legacy_symbol
+%type <list_evsel> event_legacy_cache
+%type <list_evsel> event_legacy_mem
+%type <list_evsel> event_legacy_tracepoint
+%type <list_evsel> event_legacy_numeric
+%type <list_evsel> event_legacy_raw
+%type <list_evsel> event_bpf_file
+%type <list_evsel> event_def
+%type <list_evsel> event_mod
+%type <list_evsel> event_name
+%type <list_evsel> event
+%type <list_evsel> events
+%type <list_evsel> group_def
+%type <list_evsel> group
+%type <list_evsel> groups
+%destructor { free_list_evsel ($$); } <list_evsel>
 %type <tracepoint_name> tracepoint_name
-%type <head> event_legacy_numeric
-%type <head> event_legacy_raw
-%type <head> event_bpf_file
-%type <head> event_def
-%type <head> event_mod
-%type <head> event_name
-%type <head> event
-%type <head> events
-%type <head> group_def
-%type <head> group
-%type <head> groups
+%destructor { free ($$.sys); free ($$.event); } <tracepoint_name>
 %type <array> array
 %type <array> array_term
 %type <array> array_terms
+%destructor { free ($$.ranges); } <array>
 
 %union
 {
 	char *str;
 	u64 num;
-	struct list_head *head;
+	struct list_head *list_evsel;
+	struct list_head *list_terms;
 	struct parse_events_term *term;
 	struct tracepoint_name {
 		char *sys;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157355747733.29376.2202395677486498086.tip-bot2%40tip-bot2.
