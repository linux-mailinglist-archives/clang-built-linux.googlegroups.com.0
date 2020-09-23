Return-Path: <clang-built-linux+bncBDPPFIEASMFBB6PRV35QKGQEDFUKQNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C102762D2
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 23:07:06 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id c19sf618822qkk.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 14:07:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600895225; cv=pass;
        d=google.com; s=arc-20160816;
        b=JMfgH6/bsiBq7HibaWThK+h5ws+Z6/EazJu5hjucO161MH6Lr/f71X8ZKDbtDCydqJ
         P+SHKjO0z60RbEyy6EFNyB0O9mWnL9rb4G53m9d9rDB42sUvjtf7BqFWk2sicIdSXVoo
         I/y5UgNNV/DQ+TsGlGjXlQQBWfgEGQbB92M+tZUzgGzz0bGK1gYM0b58l/ZEHN7rLdHp
         1+WUVODnijL9l54rcta4tLrtjj0W9NvUBpmEW5LaLkSyVkxBQaJFBykMcuqzlRskjliS
         4blvEInGhd5D3CPcQHic6gwApRlYNCXLDeAw0vhs5sF1EURScXFCQXlMlG+fWQ8mAaff
         RhNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=fc3kJPVWH6KzZjm8N2qzM+GIqJa3Qvz9lT31Iu6sRQQ=;
        b=pbArHxjjZHHG9H/0L822FgLg2RaYXBpdjRQl0+FZNHdSFQb5Y3JoIJ7+RVZ8Y7b+RL
         WpnTDIXa7bkr/Cj55VPTdi8LTLJcNVTh7TqQDGchEy38Eg65ZzS/uriGeElX4bhB6xW5
         0aQqgHJKJvQ8NUyMBjsHeui+rtnxcU3IWlIRISd/Bd9qqn9SvlNa/xyi0/nh9E2i1ERs
         MMPs/XuLCWl98OC21e90VaeJFEobdZ6cqdf8wWo3rid8JDllUQvtWpoMKg5w62rDoSeX
         QWJz53Mb1RNW7wGJckvu6Tgo8eUu1HYEJ3MJPLlqOPDlw3VXvbyE3oWBWYkm04qTkOuG
         UdBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wWPPSVV2;
       spf=pass (google.com: domain of 397hrxwckero8he64hi6ee6b4.2ec2b0d6-1k8bj-b8dkn6ee6b46hekfi.2ec@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=397hrXwcKERo8HE64HI6EE6B4.2EC2B0D6-1K8BJ-B8DKN6EE6B46HEKFI.2EC@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fc3kJPVWH6KzZjm8N2qzM+GIqJa3Qvz9lT31Iu6sRQQ=;
        b=SQwKwML827eYPdFRbDgyZQtd6+Cwt4U9tO8+n7TwtTXsO0OOZd7gvAZTCbDDjgS+HS
         fVrABUo8KP+eIOtHNxGGdkMw2OvFOkNMqm6sqyX4STeScLoAhLvzSYA0dwg57dm1CAkl
         5j1fByLKjquPjImIa4RyNGlDnwoXWpNspOAj6mVCAT9hXCh85PYMGq6od3xrWx5I7PX6
         wLRqtlMznyw8upYPKm9tbKsMt65VmEvj2qIcTTXR8LgGKCXKblFgVYPfggrb2cgpYwD4
         u5NFoYHLWIn7zIVOfR0UzeqbAmTV2MW6o12KdUcwLGl7VAgTe/fZKPEmzyy1etvcQTwH
         SOWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fc3kJPVWH6KzZjm8N2qzM+GIqJa3Qvz9lT31Iu6sRQQ=;
        b=sIB+3vBa9hHCt/ieJPsrcIO7D0FysCQ27b4JX56hsc4nAlALjiL5kH+4PuXk52D05n
         4m6dqZKyR1sFSl7wT1cUzfej/oOeMP9gt3OaHo17cD02u8jZebnDnI/VMyrQXAnECynm
         oECoYX8IsdgbPuvLLk1zpu7NWhs0xVKaoNcL0HR128dGD1MeMs0iPw5RvZc43d42ULva
         ZxUVkMNlCOlzpCTGwKQIz/yA9rO9ZyWzaK+rxDRenAeu7AJyFiOCeip3KkFoaaQlUSm6
         XOy2GipUBHESxdtUWvq5s3fulePGc79u19dv4et+D0wXeKLzj8zffoxWTbHPicQQYtjR
         8qkg==
X-Gm-Message-State: AOAM533zQDxZCm4BOIicnygXNbNsbPZp09cmsB5eeJ0uf/CxFB6Y535k
	kCUN0RZEwLKofIUO5Bk3ohE=
X-Google-Smtp-Source: ABdhPJxlv2GhYQIeCH/p1gZCf9xxJMr1cNZFV753VS7oRk9c7fPTNF7xtjuk9mOyjfIfEpGYCK+0QA==
X-Received: by 2002:a05:6214:a85:: with SMTP id ev5mr1921824qvb.1.1600895225472;
        Wed, 23 Sep 2020 14:07:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4ce:: with SMTP id 197ls498048qke.1.gmail; Wed, 23 Sep
 2020 14:07:05 -0700 (PDT)
X-Received: by 2002:a37:67c1:: with SMTP id b184mr1805224qkc.199.1600895224878;
        Wed, 23 Sep 2020 14:07:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600895224; cv=none;
        d=google.com; s=arc-20160816;
        b=q/O4ojHOFyqPUsKSKpnYQ8Pr7LMK9SD1DiYwadQICIL3+LYjjDd9s4c41k18DwWAcs
         jO5fTZze3GiKs1JgXQyOnVrjbX+B8WZ2i8ykhSaE3at/NwgbgwOqwYmQ9WLo6d2akyFU
         YRK4fNjpU8p/f62WXxhMmfMOsQykXRtbvvrnJX/QqbAIm31qdzYdvsmHE4U4S0gVlDCH
         DGoe4CoAj4g83w+H+XyVFa3//l0v+HVl6hc4JOnJux/SBZs3PySa7yRaFnzCYWi9PAzd
         +JEz2nI3V6POTlkocqhYbtqH06avmn3jdEDdG7xdUTzRiF3GzaUV+x5HzpbTZF204uCG
         wOTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=EI8D8euVnqE4tbRisfgZZb6mweGrIp0U9jbq/rpkV0Q=;
        b=NsiUXiz0kcyB0d4EXZzTGjRce1UGVg7IFvTJy9TRrOdO3zvkY2N+mjg+NrVITbcePH
         A3zwc/+wZAmO5eqdNOZzr5zF93BkWttgO2hY/wd4Og7YAgKuKIX/xpgUczV6j1gF181n
         iJafhxcC0oCyP6UeEDgJFEDN5V77z2dgfrUsM1IZ2MCASrL0xeOWY6Fw+0XZS+Fa/Pwz
         /7jEuWVGU2uSlhjPTil6yaIx4dbHRwC+bHvS9fFDb/UVuGtWN4gFx4q8HQt7E5Hve7RP
         CIAvEMP8E3gY1YkaT7PdDf5vETD+bV6iUF5EOaIxwB05o6Z7dunaZjjuB2bpoSiiAldT
         pWCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wWPPSVV2;
       spf=pass (google.com: domain of 397hrxwckero8he64hi6ee6b4.2ec2b0d6-1k8bj-b8dkn6ee6b46hekfi.2ec@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=397hrXwcKERo8HE64HI6EE6B4.2EC2B0D6-1K8BJ-B8DKN6EE6B46HEKFI.2EC@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id z6si59381qkj.6.2020.09.23.14.07.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2020 14:07:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of 397hrxwckero8he64hi6ee6b4.2ec2b0d6-1k8bj-b8dkn6ee6b46hekfi.2ec@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id k9so750604pgq.19
        for <clang-built-linux@googlegroups.com>; Wed, 23 Sep 2020 14:07:04 -0700 (PDT)
Sender: "irogers via sendgmr" <irogers@irogers.svl.corp.google.com>
X-Received: from irogers.svl.corp.google.com ([2620:15c:2cd:2:f693:9fff:fef4:4583])
 (user=irogers job=sendgmr) by 2002:a62:1542:0:b029:150:e3f5:d8fc with SMTP id
 63-20020a6215420000b0290150e3f5d8fcmr1478852pfv.66.1600895223924; Wed, 23 Sep
 2020 14:07:03 -0700 (PDT)
Date: Wed, 23 Sep 2020 14:06:55 -0700
Message-Id: <20200923210655.4143682-1-irogers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH] perf test: Fix msan uninitialized use.
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wWPPSVV2;       spf=pass
 (google.com: domain of 397hrxwckero8he64hi6ee6b4.2ec2b0d6-1k8bj-b8dkn6ee6b46hekfi.2ec@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=397hrXwcKERo8HE64HI6EE6B4.2EC2B0D6-1K8BJ-B8DKN6EE6B46HEKFI.2EC@flex--irogers.bounces.google.com;
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

Ensure 'st' is initialized before an error branch is taken.
Fixes test "67: Parse and process metrics" with LLVM msan:
==6757==WARNING: MemorySanitizer: use-of-uninitialized-value
    #0 0x5570edae947d in rblist__exit tools/perf/util/rblist.c:114:2
    #1 0x5570edb1c6e8 in runtime_stat__exit tools/perf/util/stat-shadow.c:141:2
    #2 0x5570ed92cfae in __compute_metric tools/perf/tests/parse-metric.c:187:2
    #3 0x5570ed92cb74 in compute_metric tools/perf/tests/parse-metric.c:196:9
    #4 0x5570ed92c6d8 in test_recursion_fail tools/perf/tests/parse-metric.c:318:2
    #5 0x5570ed92b8c8 in test__parse_metric tools/perf/tests/parse-metric.c:356:2
    #6 0x5570ed8de8c1 in run_test tools/perf/tests/builtin-test.c:410:9
    #7 0x5570ed8ddadf in test_and_print tools/perf/tests/builtin-test.c:440:9
    #8 0x5570ed8dca04 in __cmd_test tools/perf/tests/builtin-test.c:661:4
    #9 0x5570ed8dbc07 in cmd_test tools/perf/tests/builtin-test.c:807:9
    #10 0x5570ed7326cc in run_builtin tools/perf/perf.c:313:11
    #11 0x5570ed731639 in handle_internal_command tools/perf/perf.c:365:8
    #12 0x5570ed7323cd in run_argv tools/perf/perf.c:409:2
    #13 0x5570ed731076 in main tools/perf/perf.c:539:3

Fixes: commit f5a56570a3f2 ("perf test: Fix memory leaks in parse-metric test")
Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/tests/parse-metric.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/perf/tests/parse-metric.c b/tools/perf/tests/parse-metric.c
index aea4f970fccc..7c1bde01cb50 100644
--- a/tools/perf/tests/parse-metric.c
+++ b/tools/perf/tests/parse-metric.c
@@ -157,6 +157,7 @@ static int __compute_metric(const char *name, struct value *vals,
 	}
 
 	perf_evlist__set_maps(&evlist->core, cpus, NULL);
+	runtime_stat__init(&st);
 
 	/* Parse the metric into metric_events list. */
 	err = metricgroup__parse_groups_test(evlist, &map, name,
@@ -170,7 +171,6 @@ static int __compute_metric(const char *name, struct value *vals,
 		goto out;
 
 	/* Load the runtime stats with given numbers for events. */
-	runtime_stat__init(&st);
 	load_runtime_stat(&st, evlist, vals);
 
 	/* And execute the metric */
-- 
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200923210655.4143682-1-irogers%40google.com.
