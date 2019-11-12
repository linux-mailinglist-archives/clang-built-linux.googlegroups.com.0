Return-Path: <clang-built-linux+bncBAABB2VJVLXAKGQEQ6IREBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-f61.google.com (mail-lf1-f61.google.com [209.85.167.61])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5B6F8DDA
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 12:18:03 +0100 (CET)
Received: by mail-lf1-f61.google.com with SMTP id d11sf3775879lfj.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 03:18:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573557483; cv=pass;
        d=google.com; s=arc-20160816;
        b=b2n7oJg/tP6d2ICL57kQhDzEQWOxHQ2ZnQjJ203znWh/z2Tjz3gP1tswYvlhtHEtKl
         cPRtEtqWYTCOW6PomjAxuH7T9+N81V9ywc/wlQDKmVQz39qRR8a5nyWGFRKECyfEmhPA
         LdkGgRVXKZeSK2BvbKdkm6kVUuZ9UqS26CHVORsoSdBof5z2uwDn3lwpKM4hGrEDuhTW
         JB2+zWeQSeLVHx6vhWZ4Ws6QpybqGCl2A4asUuo1ToTncx1AM7LOmhwNkFxbxvBDCfIQ
         psM1PqtKnL3246PSoduJk9KxxBvB2w5xid17vyMpXhldP5TTHhxgc2jg9prR/+Wu43jP
         wNow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=CRO524kYqSIUYNKjxNO5pAJ2Jbs339a7c36oX714DNc=;
        b=P8sJdIbJDPwTBVxr3kkIDdyoXbkF6ibDeZwDVwpg8Qc2caLDD05Qu7JI/XJotvuwPp
         9DeEOcI8UyGVXznPCHTYrPLt5PtjYJXeeFSMoR4dn6r51Pzuz9P3CE7f4q63Ek5U6X9g
         c3I8hbI0vQCU1beDeafaQChf/9H9gWW8EsOSTN9nCmA2jt47jY+ObAbWxpb3uHuVj1Pl
         ddavGxCcDgOH9pW/VL2DeqkKbI4E5PLq4dE15Yh7nhxW0HFW8PwbR5uZFD2ZGzFywiF1
         lmpOUor3Kw5y+6Ya3zAO6VdK9GY50kZJxOZb25U+5yoGfJtgvUTxEnBiVeTiNozjVOZO
         2Y3g==
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
        bh=CRO524kYqSIUYNKjxNO5pAJ2Jbs339a7c36oX714DNc=;
        b=ogjqZSbngYmYUhi0FrD4zcSo+K1KrJH8bDHJDS6UTi97pQXg488Jd3Z/3A0WmFelX8
         y8ldGQKaQL6g0NUq9524O1Ev7UKrcUiIeRb89+8JmB9Gi/EDv4z5Urcxq4fvqWKhwVHm
         i0Za+jYDPh32zTmsTS8o1wT2260e62iXizSragbYu10S9xuQs3siru6EYhTo83znlr1Y
         TZZOkNKhQ5FtqB6puqRGQ5v7Ha5itcetlCOf6QNgqvykRoeFzyEIUTWgQsQZ85IczGh8
         s6W/YUTWWF3Z6Qz1rLdbFvf8qxZAkaKG+NxwiRRM1u31ITYyb8Wriq5mB4IDdGmoBHsS
         HYbw==
X-Gm-Message-State: APjAAAWKbi7PdLsXp8X7OaPdR+fQ3s6D6NSKVsUwyrzDtJcOhNeUXsj3
	ovtzk90GagT6Gl5Q6RWyWHI=
X-Google-Smtp-Source: APXvYqyhS9ZhvnYkpLpa21jBjf3pS6kksK92+JpSyJROYqndgUP2nSXaAXcXeUNxhEjcvR/yMRQRbg==
X-Received: by 2002:a2e:8601:: with SMTP id a1mr20169020lji.159.1573557482987;
        Tue, 12 Nov 2019 03:18:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:154:: with SMTP id c20ls1524150ljd.3.gmail; Tue, 12
 Nov 2019 03:18:02 -0800 (PST)
X-Received: by 2002:a2e:b014:: with SMTP id y20mr20154955ljk.223.1573557482387;
        Tue, 12 Nov 2019 03:18:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573557482; cv=none;
        d=google.com; s=arc-20160816;
        b=BNqUWkNqJ8PJFpWkfA/gqtJp0FgDvf6CjVSBQ/Kb6RAcwqU2iOLni9Bhuv+rj+HYLR
         F01FLmCCve+pz5KPUwDk9A8hKMOy/vonNh1fm+orPk6x/Q3tKAr3F0KvPXhtWhaqUUtt
         yqAJNnOR6gGugfc9R8aQav6D9ZdO0kDpkUfMt/pfOBhFAYpaZwdlD+PEIGoyfDy6kaXr
         ivosa6jObA1eMRS1ZAOWZ6WRRk9r4gUJatfaNGCnJz3NIN4Rujuj1fGJd0GKSTb9G8t4
         zmYs70lwZtDBD+SNunzyQ7/LkJCJuOHd0elU2Kfe6u7oFbBTJJCF8+0E2qJYpuDFixrl
         UD3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=Iaq4R6bE9p1ROs3YqS1vTdeu5hEMnlHrZM2x7bNu9gk=;
        b=NResar69fcfEL97B9aiNOI4M3ItIh7xGUiJvxLwweTPhKH9swwcwfs/2VkhY2JEszF
         Kx4EuvUoGnFqCAv38IwFs5V7oWWXPApE0W0jWSQHEj31zvCyAzajDUTSzD32a7Y6RoEz
         XwDQnJf8NKLIr8xTaMQF5RVvCSjj+KFHWixggV0hNMErC8L3OYRp/DpxmxN8/+86ub/7
         jR1ag6NJN9U0VCJQdhJhh6ioJ5kFhNCDMQm+i/02ftAN+PeI471JnGBnBZ7WuFJXuwHU
         6aVd5sGAVJfjyiI6484YilpjLs1zOxOkROA0bADgpOdB1hnm1KoE9jkv9Jb5unggj5LB
         Ba4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id t3si413280ljj.1.2019.11.12.03.18.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 12 Nov 2019 03:18:02 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1iUUBK-0000Ji-Kl; Tue, 12 Nov 2019 12:17:58 +0100
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id BAEAF1C04C9;
	Tue, 12 Nov 2019 12:17:56 +0100 (CET)
Date: Tue, 12 Nov 2019 11:17:56 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] perf parse: If pmu configuration fails free terms
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
In-Reply-To: <20191030223448.12930-9-irogers@google.com>
References: <20191030223448.12930-9-irogers@google.com>
MIME-Version: 1.0
Message-ID: <157355747641.29376.8277642487437732660.tip-bot2@tip-bot2>
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

Commit-ID:     38f2c4226e6bc3e8c41c318242821ba5dc825aba
Gitweb:        https://git.kernel.org/tip/38f2c4226e6bc3e8c41c318242821ba5dc825aba
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Wed, 30 Oct 2019 15:34:46 -07:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Thu, 07 Nov 2019 08:30:18 -03:00

perf parse: If pmu configuration fails free terms

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
---
 tools/perf/util/parse-events.c |  9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 578288c..a0a80f4 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1388,8 +1388,15 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
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
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157355747641.29376.8277642487437732660.tip-bot2%40tip-bot2.
