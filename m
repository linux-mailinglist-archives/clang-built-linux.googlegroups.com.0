Return-Path: <clang-built-linux+bncBDPPFIEASMFBBPGJX3WQKGQEX5376SA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E5AE0F5F
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 02:54:22 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id x8sf5061939plo.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 17:54:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571792061; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wybz916//0F2Tts+Lb/37iSiJqVjDAXOhQGvpbABdALEdpjNGbS3T6KKAIU4PMi6r2
         caPDW6cYJIgitQn52O7anjN6VRtUtFi8ho6fWvKDH8vxwOMFEiDibT4ZsrhhFg4zYj4G
         urYvRLrwZO1n8mPhGKArvY8y+EKyx0CMraIZ5U/nEyWdoAmO/T5IXX0Nr44Z8uT386Qg
         cfX/ywjDLQDOmBdjU8vCvAu/svQ6LLh+r2kMhQ/F9cR8qRowLezQUF38mLD239W4els2
         t61YLnwvuq/LEMClG4iDPh1d0v4OAxkDU/VGhFnscDk9qOSV64DnU3qzIl7VJOZ2Tso3
         aWSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=2ZoGBYwUpDYOFLxvpQQKka7s8UG06ytTWO8kZ1yhJHU=;
        b=oNzTCPSgymYOp9f7FDQ/LyymID+CQOLQDn7c2JKBSPnMYh5u5AGACZ9LcOisE/kX57
         A077AFuwtbquUNNyPKHrI7w3GhvYPCA3y/fl74tSyf3iIUWpcmN7ODHqIk/w7MRnhzRL
         +9DISFx4JevSg8XKnxDFUPnW/swEDj+drJnssdmSuAwI7fyoqnwOQ5tRjWG5yOSFkkYA
         gJDSGNJpYjUCVZJmDcF4FCGXvVVSEIkzXz+48S0lK0RDDEba0us9Ckf0T6MgL69vASCU
         NIaSJXdvwwMa+XgV4OJeFWvPRToiS9Ckd6X6BZ09Ab4BCBo1ZFvUcsly5qXGbrNcodSD
         nJGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ACzNOSjh;
       spf=pass (google.com: domain of 3u6svxqckebyenkcanockkcha.ykiyhwjc-xqehp-hejqtckkchacnkqlo.yki@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3u6SvXQcKEbYenkcanockkcha.YkiYhWjc-Xqehp-hejqtckkchacnkqlo.Yki@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ZoGBYwUpDYOFLxvpQQKka7s8UG06ytTWO8kZ1yhJHU=;
        b=ANrd95oDuwZjia9fjwGBSbXN3rGB/ISVhSDDCWj5MpbBOImG5N/ziq1nwoTCupWgXG
         +iCnuZvBvic3HWZr327eYZaKAzGWJbf8+G7KdMdOnQ0FcSUNQs4Ut5Pr8D/zsLry7oM3
         yEDncg6f8ot6Xu6PMG0+gRBVdLCrojTe3dUkS5SS/XSGQgjZJR0HLsk9vnrICSAF0lkJ
         mgY63IGePXQUVXfh6su/774JpgKBsuiBXUy8bdFTv5zAipy+O/A3iVYAd3065cNj8yVP
         N+RR2Ivbayms8rtpSkFQcU3r7QbTzC0/9za6YLaiWf6t7Oaex/T/iuO6wQRwDZXI3h6g
         wQ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ZoGBYwUpDYOFLxvpQQKka7s8UG06ytTWO8kZ1yhJHU=;
        b=G8t0YnIBRKVdyVYwXJwjj73H8zzZtLTOeVgBK2OOFMuV37j1N/3AyJezRNuzDjfYsI
         DNQgPx2v5DbpoJukX57dsL5P8IfVrtwbhvtX6z612SyWLCvAVc9QCxyIr/f7lhVPqUVX
         j5PPbZGZo/1kHALXrDAZFDtyKkT9gwNB3Kvkrj0wv5A0ONYdax5ZzQw7Nts9Kz9h4SIl
         OipNzujzJa4kIfgJxAqqiJww/jfqvz2hFuG34JqIW2E1q2ZwWV482E1QY1ubDAN+bMLP
         6KVGRdhpfCOVoaesQexNU/MQShUx2LbsmuYfLQ+nvC66UKd9C8TYWRJtNALVVKk2CjzI
         UuUQ==
X-Gm-Message-State: APjAAAU+lWzxWLogKAEJiaXKWmzmNymW/m5IDa8JCfHolxkrfE4Y/lbC
	8c3Vj/hJQpuG8qW+E/sLnms=
X-Google-Smtp-Source: APXvYqzfiUTL0q632ZPFAWpLE9+evUev6r63vjYPADE21gXmb/JGE6GV+0GjN9okV6H7aspvaRfqtw==
X-Received: by 2002:a63:471b:: with SMTP id u27mr6693315pga.96.1571792060946;
        Tue, 22 Oct 2019 17:54:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8c8b:: with SMTP id t11ls124722plo.16.gmail; Tue, 22
 Oct 2019 17:54:20 -0700 (PDT)
X-Received: by 2002:a17:90a:fd83:: with SMTP id cx3mr8074404pjb.64.1571792060599;
        Tue, 22 Oct 2019 17:54:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571792060; cv=none;
        d=google.com; s=arc-20160816;
        b=Yrar25hyG+bnlIYCqtuNOVLDrdJSm4/MhEKeEy0apoSRO9CbTzXWlqp+13St0rGRn1
         muA0g9DeQQckiEoUj1kYYkhrFViUDBK7QN3DZv6pUsX2JXpl5JfqR49/8MHyBFiyLXKy
         Pd7y/S87MHcxMuFob8gmlDfKa6LyETp0/M2E+5TF7d6DQW5maPkpAHo6eUYCBuF2RIIA
         uEguy9jwga/5iY/gHiutLNUYQo4odFyKBhhMwLt7eF58qeZRVI2hYF3+j1Evt+zSmHTk
         c5PVnU8KSGEwH08NS0HhZf+1BIojGN6R6Q3hgwm1hTcVZh76oBaHNb5Tn1p7dvSS0ONy
         oBPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=SBGZ2h3aJPS5SN0EQWSYu3r6PtBuafsgvwZrw927JEs=;
        b=tKQ5TI3dNSx3w0AvcrP5YW2zYEKH9X9fNIIhG2Rrf3dlqrxtbcOYP1fB+ygd2xmI5j
         inXyxVsuB8+wgurTTkQ1EQ6hJtE3PWQTPFMhbXDEgNaxG0gi469rM3WBzUcoOSdwmRsX
         ogOS9wly/1DbtA9URSeUFjZ6jXDwWuCuZRKZ9/qWW9gZlJ1ATPzBLtpH3fQnfuzp0/R+
         papEVU1ltvykMFUFNzjTDTmhRtYSpItB5hBEBxPdUyL0RSItr2jCAYsRLdIfQXqHoWfC
         PLdCC6EKQXBDmJfsSMsLC/936e5i3n9jUqtTImVVm+xPzdpQWBAZHbQKGA9ZYKxC75RA
         tdHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ACzNOSjh;
       spf=pass (google.com: domain of 3u6svxqckebyenkcanockkcha.ykiyhwjc-xqehp-hejqtckkchacnkqlo.yki@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3u6SvXQcKEbYenkcanockkcha.YkiYhWjc-Xqehp-hejqtckkchacnkqlo.Yki@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id d3si844670plr.4.2019.10.22.17.54.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2019 17:54:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3u6svxqckebyenkcanockkcha.ykiyhwjc-xqehp-hejqtckkchacnkqlo.yki@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id r25so13800647pga.20
        for <clang-built-linux@googlegroups.com>; Tue, 22 Oct 2019 17:54:20 -0700 (PDT)
X-Received: by 2002:a63:fa4a:: with SMTP id g10mr6658099pgk.432.1571792059764;
 Tue, 22 Oct 2019 17:54:19 -0700 (PDT)
Date: Tue, 22 Oct 2019 17:53:36 -0700
In-Reply-To: <20191023005337.196160-1-irogers@google.com>
Message-Id: <20191023005337.196160-9-irogers@google.com>
Mime-Version: 1.0
References: <20191017170531.171244-1-irogers@google.com> <20191023005337.196160-1-irogers@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH v2 8/9] perf tools: if pmu configuration fails free terms
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
 header.i=@google.com header.s=20161025 header.b=ACzNOSjh;       spf=pass
 (google.com: domain of 3u6svxqckebyenkcanockkcha.ykiyhwjc-xqehp-hejqtckkchacnkqlo.yki@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3u6SvXQcKEbYenkcanockkcha.YkiYhWjc-Xqehp-hejqtckkchacnkqlo.Yki@flex--irogers.bounces.google.com;
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

Avoid a memory leak when the configuration fails.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index f7c8d0853d71..6bf64b3767cc 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1400,8 +1400,15 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
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
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023005337.196160-9-irogers%40google.com.
