Return-Path: <clang-built-linux+bncBDPPFIEASMFBBY56ULWQKGQEQKZWHFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id DB923DB2F4
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Oct 2019 19:05:40 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id r144sf1715331oie.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Oct 2019 10:05:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571331939; cv=pass;
        d=google.com; s=arc-20160816;
        b=iR79f/vbcVgFdu2DRhqcvwpUaJAw2s43eXcCYJoLzGQxbQqpnRE/y7iK7+YRFKQyk8
         O5Lgy0ije7LM1cNZ3tI7NcQdXTwEDyTK24xqwlAPrywYKue5y7+qTGDvKea6+GsxcqKm
         U5s7K4ccEPFqQv48vxVzW1HHz3jS/q62LDvuCDgNjSyGSpnd7wvZ3/A4uxFjcdT770al
         jKMfdJDKHkX23yq2z1w4A2z7WLxnUz93JuqyGzKUPM1VBHszH0VKc/OLX8DIIiE0VPY0
         rM6SNkcyKTXSaUj3kI6x902vsgkRDWutcM72FzcgWYDeQ80M4ttWt1hbgooe29041ROe
         gCvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=FCkPbCCeCZuhCIqBjgsupHYiYvbNvvKReh/gCWCCKbM=;
        b=ZmohcFBRcBvQziO7wLyHwQBliqHmN6AZcyr+1ZT85LmSS4D3gjNObwf7RIcnH+eJdS
         G/Y2GMWBGPyFM1TEzDQo+c4UwCoOUIbSTBJuu0w8+Bs+Rs0452JEjxECuL4GWRU962/8
         GCL6yCUxWDZkyzJ8VQCU4ywWAhdT9oXtBtv9D93+XzcQWaQaa9OspPUTABdRO5N+JzMg
         TLl4JX5RCqRNmbYCYZZavYaOljjDimm9/QleZ/p+bVGs2i1A/nWGXeMafXzy0g+SScT8
         FiHcqbrCS987PBXG7+tFOC6RO5CAvwevZ6UupT407nqXqOkkRBslkmpRY1eKgQDoYnJC
         ouww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GMtbEdxZ;
       spf=pass (google.com: domain of 3yp-oxqcketcbkhzxklzhhzex.vhfvetgz-unbem-ebgnqzhhzexzkhnil.vhf@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3Yp-oXQcKETcbkhZXklZhhZeX.VhfVeTgZ-Unbem-ebgnqZhhZeXZkhnil.Vhf@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=FCkPbCCeCZuhCIqBjgsupHYiYvbNvvKReh/gCWCCKbM=;
        b=aUjND02iNUaYUKoBQmjWzy01QgZ+/qUfj05GyGYDEmmrp8LCz+WsMMijiD9jRNsUiw
         g74azqeQHuSHwWTMUdhOs7+X8alPA5nY7Sq0ZcAcbtUy6Sk+GTk43k8oEocsVPXk4HDf
         kemzq1lKr31ZNUiz/qhtPBEtW/wkRFkpr6LQC7PXU0+FU9mp+4UWJ7gLZVvlZjWW7xnM
         89SUuwO4RhXpduvYSzfG04nSEeu9NYQCtFZmLyYtDBzlKr41evb7JiY/sw/RPikcqFrt
         VhI6P51dJwxRpy88UIxcVo93HJzGTyliKO0Wg8UQIayHG+PkhMvSsXwvKYb2qxGDlHNI
         RKMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FCkPbCCeCZuhCIqBjgsupHYiYvbNvvKReh/gCWCCKbM=;
        b=oHdjZ7/bMDFjBuU41is4UlMujKy1QgPWyoO0Onp19b3jcg2hHfBuvHFRuSVbOqJ88z
         HaBmfczPq9fDpjT6YCcG/JZpbDuDa+8bG2m5KMwNouttzMwY27WMxRMyt8ox507pu00/
         DTRj1s9u/XiYf+Q8yDX3B0RuTJMnTBNhLtQLhRLDw9gLT3pxn5neXXARO7PuztgoLuf/
         ICtEsWt0rKI4U60c33GyIBuRGyh+ygaVjA22UMeGjya8ur6RYDFn5WKwp85GLQFJ3z4N
         5iPCbxMVvhfQQpQeztW81kgQN2j9WQ8brobMus05J56+AZtxvzxj8ekCYgRCUSTXW6az
         hDMQ==
X-Gm-Message-State: APjAAAVZjkfYrqMmrA/EYi7VAzIEhgL/sK1xg2E0z06cJJAJPmajwVNy
	AyxBm/261Jw2KMsaMhv3zOY=
X-Google-Smtp-Source: APXvYqz49Yq/6rj3g5AIWn2BiWP0Z9Jlk7TU4GyTYkkRaiO8ZSKFjKHxSaTEtOKd1EnOJf8c4mUFRQ==
X-Received: by 2002:a05:6830:22ce:: with SMTP id q14mr445254otc.115.1571331939696;
        Thu, 17 Oct 2019 10:05:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:688:: with SMTP id 8ls566710otx.9.gmail; Thu, 17 Oct
 2019 10:05:39 -0700 (PDT)
X-Received: by 2002:a9d:6302:: with SMTP id q2mr3930271otk.275.1571331939426;
        Thu, 17 Oct 2019 10:05:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571331939; cv=none;
        d=google.com; s=arc-20160816;
        b=h8MsgQQ5n6adnpxkeGX9y5tVPNCq5n5/KIePedTRjOoVlR9kyoVwNmhXYTRpLAtLM/
         b7pGbLiA860EEKWSIoc+QpuKY4l9tU8awAa4H9BoZxSp/vlPfFnBxYxVK4BFFrMSpr8m
         zMWjoVW3aM0yiiv9k9J9MOXljxpvgk6HVR1VUzFhBw9+WcwLta96cvPqzGgVcq18gC/c
         CZhqB6nwzBV4kyg6VkZxQUJyJdXdOpKNUdbVFvGVCD9dHOIEY2FJ6IiYmEykHNKdVWmJ
         BaLS9gMD1m9DdKYEH+qaI/BpKH0NhKVq2a1e/uUEPV9LGamvu3QnWTYYHRV6Feor9CaG
         AtSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=KdTZDDDRzkpxS5FsYtTfQfiur0+t7NAcZsbef9E4EjA=;
        b=aIhRy6i/ePYAdhRpN4XKEQPnJKy8avDM9P4mVED2G6dhL6IjdYvtbaLwMlZOG/gsTS
         CUnF2U1I6ZiSBw3VDd/ZWsioyvMHUoWCYkR31yGgx+llkvjMyWr8OyrCG11tbuXNZ4Zn
         YTQUhz8yXsz4/R+VwmN4ippv5CK5twwa1anUvK7jp0KDLDZ9YLMpf4JOvzMbwtzehJgH
         GWxDKQmZJ0yqzRdijmUpJ86Vty8Sw8Tv6LBpQxKMYygXbc4c9xFUc9jJpHlqBQ9+6a4b
         61rkfvceNY5/ukNiqto15NHH2FnTkCFyYisw28ARz1U0RXpjdFspP+m+WCSB6+exkDCK
         TUKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GMtbEdxZ;
       spf=pass (google.com: domain of 3yp-oxqcketcbkhzxklzhhzex.vhfvetgz-unbem-ebgnqzhhzexzkhnil.vhf@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3Yp-oXQcKETcbkhZXklZhhZeX.VhfVeTgZ-Unbem-ebgnqZhhZeXZkhnil.Vhf@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id b11si240675oii.5.2019.10.17.10.05.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Oct 2019 10:05:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yp-oxqcketcbkhzxklzhhzex.vhfvetgz-unbem-ebgnqzhhzexzkhnil.vhf@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id m20so2214460pgv.6
        for <clang-built-linux@googlegroups.com>; Thu, 17 Oct 2019 10:05:39 -0700 (PDT)
X-Received: by 2002:a65:6903:: with SMTP id s3mr5086248pgq.195.1571331938396;
 Thu, 17 Oct 2019 10:05:38 -0700 (PDT)
Date: Thu, 17 Oct 2019 10:05:31 -0700
Message-Id: <20191017170531.171244-1-irogers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
Subject: [PATCH] perf tools: avoid reading out of scope array
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: He Kuang <hekuang@huawei.com>, Peter Zijlstra <peterz@infradead.org>, 
	Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Andi Kleen <ak@linux.intel.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GMtbEdxZ;       spf=pass
 (google.com: domain of 3yp-oxqcketcbkhzxklzhhzex.vhfvetgz-unbem-ebgnqzhhzexzkhnil.vhf@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3Yp-oXQcKETcbkhZXklZhhZeX.VhfVeTgZ-Unbem-ebgnqZhhZeXZkhnil.Vhf@flex--irogers.bounces.google.com;
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

Modify tracepoint name into 2 sys components and assemble at use. This
avoids the sys_name array being out of scope at the point of use.
Bug caught with LLVM's address sanitizer with fuzz generated input of
":cs\1" to parse_events.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.y | 36 +++++++++++++++++++++++-----------
 1 file changed, 25 insertions(+), 11 deletions(-)

diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 48126ae4cd13..28be39a703c9 100644
--- a/tools/perf/util/parse-events.y
+++ b/tools/perf/util/parse-events.y
@@ -104,7 +104,8 @@ static void inc_group_count(struct list_head *list,
 	struct list_head *head;
 	struct parse_events_term *term;
 	struct tracepoint_name {
-		char *sys;
+		char *sys1;
+		char *sys2;
 		char *event;
 	} tracepoint_name;
 	struct parse_events_array array;
@@ -425,9 +426,19 @@ tracepoint_name opt_event_config
 	if (error)
 		error->idx = @1.first_column;
 
-	if (parse_events_add_tracepoint(list, &parse_state->idx, $1.sys, $1.event,
-					error, $2))
-		return -1;
+        if ($1.sys2) {
+		char sys_name[128];
+		snprintf(&sys_name, sizeof(sys_name), "%s-%s",
+			$1.sys1, $1.sys2);
+		if (parse_events_add_tracepoint(list, &parse_state->idx,
+						sys_name, $1.event,
+						error, $2))
+			return -1;
+        } else
+		if (parse_events_add_tracepoint(list, &parse_state->idx,
+						$1.sys1, $1.event,
+						error, $2))
+			return -1;
 
 	$$ = list;
 }
@@ -435,19 +446,22 @@ tracepoint_name opt_event_config
 tracepoint_name:
 PE_NAME '-' PE_NAME ':' PE_NAME
 {
-	char sys_name[128];
-	struct tracepoint_name tracepoint;
-
-	snprintf(&sys_name, 128, "%s-%s", $1, $3);
-	tracepoint.sys = &sys_name;
-	tracepoint.event = $5;
+	struct tracepoint_name tracepoint = {
+		.sys1 = $1,
+		.sys2 = $3,
+		.event = $5,
+	};
 
 	$$ = tracepoint;
 }
 |
 PE_NAME ':' PE_NAME
 {
-	struct tracepoint_name tracepoint = {$1, $3};
+	struct tracepoint_name tracepoint = {
+		.sys1 = $1,
+		.sys2 = NULL,
+		.event = $3,
+	};
 
 	$$ = tracepoint;
 }
-- 
2.23.0.700.g56cf767bdb-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191017170531.171244-1-irogers%40google.com.
