Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBZWWSHXAKGQE4IHGPBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4B5F380A
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 20:07:19 +0100 (CET)
Received: by mail-qt1-x83b.google.com with SMTP id i9sf3759649qtq.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 11:07:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573153638; cv=pass;
        d=google.com; s=arc-20160816;
        b=avqDLYDYmXxjx+nie+NYv1mIzZosYuHlS3qYPIPKGr7F2no7lnxF8cUKmFCF8H08ea
         RoB3bJd3rkOrJbkOdAVKWQ3dxYtAUI67KdqNfOvYyvVVyJDzsbGfdgWNEUuAta990znr
         ww5DPjc3+Vxe7hun+pbc2Iz3SbT3TZaGtxbaHVWbjjzo+VkYmu+YU/JFjnIfvSQ8XPVP
         NazUSip6hcuE1B2ryqTxUB9J5Ja33x5579l6tSWOxM1GScHKerhWGnvppYOiPyWa/4GW
         fOZOBw/Wm0NmY9BLCgzjkosMRYzPI5/VbdvK1PMe9osb8MAMz+BPLZJ+DZThfFk1+YHV
         CyPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=NsHjWcPEOuc5hI0p2jsK3ZN2Jl4T02aVDOw5dTfMPMU=;
        b=HPtPdvoaaH9P1h0zPdBC1qWhQP3xIMcDtSywVtrQS6cQvXuRyUX7DDybZq9LdeGzbt
         SJOKkh42ZpOCKRx7QKqILhASNnX+AsOQyMZL7NmXtlF+YzF/76CcBg5/Fmm53Td1daH/
         93gqdzV4fpjk/x7t9TLKxV/cvLxehXhvhiaspc1zQqM6C1N5+8fT8i16sI7eTG+EVqoY
         ONBhZg7a0MiogGP76WYp9vQ/wXhIr3MTf1FGAvccypNaqckkrewMiNvvkzGY6bMkvoHB
         VxhbGmUaUZo0peYNJ+yOk2324Fz3O1i4b9/heAz6lnUycYw4hJDCvSwHRQzWs068eS4K
         GJ/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=djDJxCs9;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NsHjWcPEOuc5hI0p2jsK3ZN2Jl4T02aVDOw5dTfMPMU=;
        b=h0vA23xvEGzxwBkziXws1whVilVkOoZF+XjRq4fDdWk/quVGoEdE0hV/kT8dRsw+fS
         3iqTU9+85nww/HrehEHRD0wHGCwTBah28on0lP+6ryEeBKsEhx1wRJffQ4BThmBa5TWP
         WZbqvGyTbKaC4mS89fPVlzX3hI1i4V5xJJTyLWBC8SnOnkN0uP8SUr5r8o1otEBfxchR
         Tr+DG+9DH4i//vt9FfzLUmKWzn4Vd406w5AqmY3/+hcBdCFgoBn2y/6S5d62F2uOPQo7
         oRVCPZzVlpJcIksTvJU5U0jIgx5MKVNC/gGddYWw6q92VNlYmkhFo/3ZhhjrBDZGeqXW
         4WpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NsHjWcPEOuc5hI0p2jsK3ZN2Jl4T02aVDOw5dTfMPMU=;
        b=AsqzXcdyh+c4gupf+iKZONwGRym6pWdP4PneDkkx4ok1UwqaDFrZ5We6BkqAX3nOQg
         x/AHXgesLO+j2PEaEN5YBwqU5EhmNOOwH6gZzNZhww3pgl6hgkTm4+Cqot4fJpHbqgSZ
         ybLI8QS5v1RDbuYmSjWPS0jz0f/fVPvhl6QU1DWoil5+9/3c5b9Sr9vhATgjYJCdtaTL
         CAWPLevReX0oshUCI1KgKeCjE3/R9prcDbRRaWOtpGq6e2OJcwosL3/B6WixW+jhUhAk
         ec33XOKJWvPvTPkhrkd5bsb3RZMu6UdFU+pAp8cmymBf49bQE+n/DvB+ZvzVRBdpPvrS
         SfVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWXOvgYRh8m3BIr7iLDn1GGA/EyEKel35hz1ErgO6AQfHhcMjuR
	95eLdjTeM2/oGDo+1KddEj8=
X-Google-Smtp-Source: APXvYqxhSMwfN16qqMmSOGiJq5yqs9VIV2DfBgA1pRwdF5PNzpi9tFvmL78lyZ9HaFh0f84z4UBlsg==
X-Received: by 2002:aed:34c2:: with SMTP id x60mr5723449qtd.381.1573153638087;
        Thu, 07 Nov 2019 11:07:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9e0e:: with SMTP id h14ls2323757qke.7.gmail; Thu, 07 Nov
 2019 11:07:17 -0800 (PST)
X-Received: by 2002:a37:9b50:: with SMTP id d77mr4553888qke.349.1573153637617;
        Thu, 07 Nov 2019 11:07:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573153637; cv=none;
        d=google.com; s=arc-20160816;
        b=jQj5IP6gZv95UcEypFHPdyNSQy0nt23ymaYVkpYKhSoL/m3Bt8O7VyOnXrAZKTRJgK
         e+RCw5cMrc1Hz15FZgosEp/mo2lIN886Oa/DPe6bNCPMeyZ0IDgVRe3+OnEtKpoYKwZw
         CK6eP4owwZOIUvmVWOLtWVQa9ikwQnJI0PZGnr8ywvSMxu+0Wj4sHGhSsQWEkKA5QnL5
         VE1JqSnGLTS5fYtLxqGOTCjBlPCnA8bU5m8vTqXd72RGabWbz0RFZnpBX1G16F0RL1TL
         0j6zqYXj6lBq4ALTIgzDTr8RAJ37wzlkNomUi0OQuhFh8IhznSJljTbDoquiq7z5FjtC
         Sv0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=70FKljbcRGOG2ZfWD8t+C/CbnRrWrgNn98iaBF79PiE=;
        b=F4dObeuqTgqbgrkjzlf508C+U+chC9/8ddLKwxIBBCfca04fp45c0uVhVtD16O4VJg
         Z/W1RT2zINNNxyUJg0cApnVfoO4pk3Hq2MuhXNMb2pAF03t4AZ9df6KBRYi5eDGoKC7J
         5BouLPffaPCOYUcpmfY7lrjHotNj+3iH0x27yvXLxwhK9cBybFtTeiszvX2wYPjUJwfj
         c9oWu3eV+G/6z61K7iG6nWkBzFaXAMgjEArfGw8LID0OEyeU+Pq9XTmfh/R8TtlKhwO7
         RezJMAXGH3ddNEmATFJtyfHFYuXlKvA7+3yi42BE2Vrns+aq+VO0glFhVyYrguvH6hhn
         5WJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=djDJxCs9;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v189si203729qka.2.2019.11.07.11.07.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Nov 2019 11:07:17 -0800 (PST)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (179-240-172-58.3g.claro.net.br [179.240.172.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 17C1721882;
	Thu,  7 Nov 2019 19:07:01 +0000 (UTC)
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
Subject: [PATCH 43/63] perf parse: Add destructors for parse event terms
Date: Thu,  7 Nov 2019 15:59:51 -0300
Message-Id: <20191107190011.23924-44-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191107190011.23924-1-acme@kernel.org>
References: <20191107190011.23924-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=djDJxCs9;       spf=pass
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
 tools/perf/util/parse-events.y | 69 +++++++++++++++++++++++-----------
 1 file changed, 48 insertions(+), 21 deletions(-)

diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 545ab7cefc20..035edfa8d42e 100644
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
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191107190011.23924-44-acme%40kernel.org.
