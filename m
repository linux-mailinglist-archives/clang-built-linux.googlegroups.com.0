Return-Path: <clang-built-linux+bncBDPPFIEASMFBBQHKY7WQKGQEVWGH4TY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1DFE3B9C
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 21:02:25 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id b3sf1494169vsh.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 12:02:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571943744; cv=pass;
        d=google.com; s=arc-20160816;
        b=vgf59ONjYHpPeT92KECN4vGe5LxBd63GBB/KO/+t3CgqBzjcwYhWmq1xQ7zEVhravJ
         A2YhbbQSWG6/2KnDBMaJtf04pR3CAqBeMQIiUZE1jUbWaJuqZHl1IEvFcXAxhtlEYxbG
         5ORc+PaYWLbBewK6TxXKLzDsMFN55v2Nj1/RNaSt38dKwKpRc8diX3aqgR/T9Udcup2r
         P+DjUdweqAAkprhF/CTzAvJSwmg9jArMeYGOoy3xzMg+GZlRO2E1Mce1egU7BEAwiV20
         Khn/35SjwemUEAokSk1cX33L5TnwBPjp8kY244WBf6+UTc5r0nInjwmmE6laK5iRqf7g
         Z0Ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=tvAU3WmkRsbvYTGT+FrQSi/Qq/7yEbvXOY0X2klYXl0=;
        b=qOUSgnnFDWpptKYRbj+7DRTVMzJzVedMdFtwMfG/V+nUOWTsD6+TAdH9Qu9bETgBzp
         b8iS+8uZGQtyIhFyLdP3BbdgqGKeTR48pQ96LXMSmMaAb3IjT6glp5oDwu68xoeVSCME
         64ewQ1fcllbVpuGqgjVnZ1HJ2Na2e0chpVQjjYzTTed6PfXlIzGqKyUmvHt9+ETh9zOh
         NphxOuQRUduUDuBxZ4En9jS6hGar1LMJ0d/9cchVEScuH9cfd9dq6j7WmXaJf2ny40MH
         74VK5Izc7DKzbkU3wCUBBDdJ/jN/bCBZPGcmzdcP1UdZ9Iqq81Kw1IzmbasGgsAEKlw/
         kT7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CgSp5bXh;
       spf=pass (google.com: domain of 3p_wxxqckeeqoxumkxymuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3P_WxXQcKEeQOXUMKXYMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tvAU3WmkRsbvYTGT+FrQSi/Qq/7yEbvXOY0X2klYXl0=;
        b=NG8SQ9YhaU4nRLQycXoxCwnDJNUSftbQzTtHnxTNY079fsu5CmMSRHmo7gYpq+aIQt
         /gEWDa+0egGa6camgmcEyPEHPz6Xv6g+LjHhI8rkwEPIw+v5NYI7WwK2mL6RS0jymyh3
         wRvUMcSuD8Unb7aKcK/qWHAKsX+R+to9e8Ha0yOVju4rEpICxFzgQJnATeWeWY2PRts6
         lDkuJ9DmuFO1ekvAkeSgvdak432iuPxdPj9rTe4J0l+AMEnj9ba1LCZQxg42sIGLQ5Lu
         b0enqn5jSsPfCLDHTkpTBwsiM0ena/T28Q3aELYboa9TsAD9RYKeBJ0sOMSzyeori+u1
         FTXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tvAU3WmkRsbvYTGT+FrQSi/Qq/7yEbvXOY0X2klYXl0=;
        b=WKVMgIhZoVJr1N/iQsRzQHkCSGQ8XoKb3CkMdYaYhPFRVyG0JZH1TuuVLC0dyAiZFd
         SJIx/kt26/KKjthkgmQb+yWrRBkSLf98LC7K46E6aXXqJqH3qpf84EkW09l/fbH3wQdk
         kR0R2JiO1DAnL/U8IygS+FoQgp8JtJhaLlGFEDTO/Br2VT0lu4BHTgQCdUl9F2OfHELX
         /sXoqrTOdgXAOF3RbWfj7Y6JACzlkmu/wh+DnhQWB+cgL4jGT9AeyZaw20gLx4epAcy4
         IczqrS+I4TJPGMnoeaRvb7Wh50o/HgrpK61HdXSBAiZDpL8awwDjTD8TqOPy1Jb9BWPB
         dljw==
X-Gm-Message-State: APjAAAU1pf6jn2AzEpD6pAYlO4ArqMrITJnQHXyA8A6AaXIwbEZoNRig
	p++5nep5sKlpoEuakUclwaI=
X-Google-Smtp-Source: APXvYqz6R3ip4RhcY1hJgjPuyCedh6nMwLW1rFUwzu1ISwmOeHQUNGcGyp+kokEDF4vU6DC10qzmJw==
X-Received: by 2002:a05:6102:2271:: with SMTP id v17mr248282vsd.171.1571943744695;
        Thu, 24 Oct 2019 12:02:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f68c:: with SMTP id n12ls698820vso.14.gmail; Thu, 24 Oct
 2019 12:02:24 -0700 (PDT)
X-Received: by 2002:a67:c40b:: with SMTP id c11mr10266080vsk.45.1571943744390;
        Thu, 24 Oct 2019 12:02:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571943744; cv=none;
        d=google.com; s=arc-20160816;
        b=JoXsdDm/tk2V/Hu3VkVVXE+MD6bzFXCnkxipU5GVHW0KKWamY5b1gEco7RdxjxA4i5
         gPbBRkcQn7y3myytcZuj+teDjOGUiwT09a8nifEUIac7qXAYHaohAa8ecryx+3PlWXDL
         iaIObvX2IM0ukbM1Qmme3XpPYhYOhCyZy1DZttWvf+Aog28k5FU82OY527UUqzExBGWl
         ywOfqQ+nusRAlD5Kvt0b2n/rbQunsnEN5XK/I6W+hLtCablhAnyVMXE2ofUnLp2BzNoQ
         1ev1NQAqkxoHk2Ow0JoLk5fNL2RcreQASHhNvjpUHwOJ2+k6NAQC2t2Ldq4pSNGiSLRx
         TPSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=5ErD/uUW7vtCV74qLmYJVVPg+bMOBGzP+X5HkC35T58=;
        b=P4R+hwwJhIb2R71M/1mrvUw2Do5EQaEr+DM4NjZBMFZnOsehPNPS1LYraXcP4oWdKx
         HZZfRnN71HVloJf7G7iZ/C4zBgw9AZ9jyYdynMLvaqZWnieAgxCFYeB7zzjgHAKexsyv
         9tzwx5AeSYg6jTEnmKi4TDNnMaM7iKDwxWTKXQ28r/pp2vOilU9sj+NAvatg0z21492J
         unPxCMgXsEpr9p/V8AUi7mGMkXrBFNE1kGSP7p3e8xiki2+6o/Hz/ildqV5SD0idxQre
         BnifZt6pXDiyh4qi/Jhtx5OyPENYWLy/G3CQtGlffiFhAbPJ7a2Ef4t4bhpBviI7vaaQ
         bfTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CgSp5bXh;
       spf=pass (google.com: domain of 3p_wxxqckeeqoxumkxymuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3P_WxXQcKEeQOXUMKXYMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id y14si1302956vsj.2.2019.10.24.12.02.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 12:02:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3p_wxxqckeeqoxumkxymuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id o10so4459136pll.0
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 12:02:24 -0700 (PDT)
X-Received: by 2002:a63:8f41:: with SMTP id r1mr13088716pgn.83.1571943743102;
 Thu, 24 Oct 2019 12:02:23 -0700 (PDT)
Date: Thu, 24 Oct 2019 12:01:59 -0700
In-Reply-To: <20191024190202.109403-1-irogers@google.com>
Message-Id: <20191024190202.109403-7-irogers@google.com>
Mime-Version: 1.0
References: <20191023005337.196160-1-irogers@google.com> <20191024190202.109403-1-irogers@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH v3 6/9] perf tools: add destructors for parse event terms
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
 header.i=@google.com header.s=20161025 header.b=CgSp5bXh;       spf=pass
 (google.com: domain of 3p_wxxqckeeqoxumkxymuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3P_WxXQcKEeQOXUMKXYMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--irogers.bounces.google.com;
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

If parsing fails then destructors are ran to clean the up the stack.
Rename the head union member to make the term and evlist use cases more
distinct, this simplifies matching the correct destructor.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.y | 69 +++++++++++++++++++++++-----------
 1 file changed, 48 insertions(+), 21 deletions(-)

diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 545ab7cefc20..4725b14b9db4 100644
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
+	struct perf_evsel *pos, *tmp;
+
+	list_for_each_entry_safe(pos, tmp, list_evsel, node) {
+		list_del_init(&pos->node);
+		perf_evsel__delete(pos);
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
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024190202.109403-7-irogers%40google.com.
