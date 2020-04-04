Return-Path: <clang-built-linux+bncBDJKZSEQ3YKRBWUQUH2AKGQE6VWKBOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-f58.google.com (mail-wr1-f58.google.com [209.85.221.58])
	by mail.lfdr.de (Postfix) with ESMTPS id 0043319E386
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Apr 2020 10:42:02 +0200 (CEST)
Received: by mail-wr1-f58.google.com with SMTP id d1sf4495408wru.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 04 Apr 2020 01:42:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585989722; cv=pass;
        d=google.com; s=arc-20160816;
        b=weg9WJstOucEMx855XnWo8C67f2vuqLshepNe1CPooeWQxSXOBxfSCA3BcwK/WFyEB
         GJYmSo+kCqQlQ4xQr1nKi2e+/Sm/e2R2qDbmiJ9CCDBephuLhqpDkITxZ9qPqvLOU3XN
         77xf/wxRED/BpytKKqJ8i3Cq6Tjt04gz0pkxztyF5iOwnJACJGAKQsp+oMiHqZLYjkuo
         QpBZi2ODqoXgt5nnzCiSfGsWt0ZzHgaDe0WJOOaP6IQOShMUHMGDXt4RU/Tj0IA8fFW5
         9nl0vq/7wUUaPr/wqKYorinsipcRaYH0DXfrcsep8Er99ikaFlrUQlaco29oqZcyI/xY
         /4oA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=kauI2UkQwTbJYl84qiNdpKnIb6MB4hKNcKlaY0WJIjc=;
        b=joRP8sViforuMMcKND7cTZ8DR31mEdT7ii9RCpFKKDgCNU6IvOE8PnnlkrolNWsbPm
         S+4G9M4UxmmmCFBRVOY1qdc4hOIQ4VIcUlGxtQLNoEfmJTWLmC3BmQSlC5/9UzpA4m66
         BesxwTZrPqiWz6McIqPrJjCl7qUAvLFac4ACm7Ue1v9hNohGZRJVjSQNBYppWbuJsQdG
         rlHbG9ks0GffGUPL8Fr5Dbb0JQSvcJrqtFNumIsF37jjJo6Z63SpJuJhO7rvlt+jSujX
         ZDd0xKsT0fy7ZZUijF5WAtxiDWuTGGgjE0wxN9YWT4chgn1fHUZbMCngGdujDuJOb0CQ
         CuLg==
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
        bh=kauI2UkQwTbJYl84qiNdpKnIb6MB4hKNcKlaY0WJIjc=;
        b=s21hslEG2i1PeekIy8niB1NVgo3aP9S88/+4NYCHmUfP8CBC3yvMnBlPGw76Nx1jRC
         DfkYSIXprZ1M6+ngvNBR5htkGI0WBuNKY5RLQGz8x74zokfhUbtrDAz02WOmNT1FRGId
         CS9gO/Y0l0gv2/NImtSYOd3z9lRWsdp5jcEV2F0UKcxFJZ4baHFNvnGKD+EM57E3BWnO
         3ydX319Aos8wQMtLIOtKFhxG5G9OzQemKLQ+tyG74SLZubxKGWvcKvkS/WOqmFIKIJlx
         DgzXGBPCMyQeInsxfgrSvRQmJW/cBw28/VA+6FhpHmhBiAJG90JqwvY+saRXQTjo1oAq
         hGyA==
X-Gm-Message-State: AGi0PuZyNtQns7FLCWkSts4faId/pNPkEgqYU7BBiVufm+MVqMjKbL2v
	Bq3AmWgRlS3ZX5MKknIj//A=
X-Google-Smtp-Source: APiQypJKak95f4BSOJw3B9lS7n8mDpNtlHWf5VmvlwINstykniVz4MoNJpyoZeyvrNCm6SYoDvlUMQ==
X-Received: by 2002:a1c:b743:: with SMTP id h64mr12567805wmf.88.1585989722681;
        Sat, 04 Apr 2020 01:42:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:61c8:: with SMTP id q8ls2441474wrv.10.gmail; Sat, 04 Apr
 2020 01:42:02 -0700 (PDT)
X-Received: by 2002:adf:81b6:: with SMTP id 51mr5807566wra.229.1585989722103;
        Sat, 04 Apr 2020 01:42:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585989722; cv=none;
        d=google.com; s=arc-20160816;
        b=gE20Oh/l0jtJrm7Jo7vHwRD/MT51lZNwGXlLUZcWvpB9VENX1rw1a+wJkAVNpJxIg5
         CwL9PHOQsTOfvGK/HWimxAhntq9cRX6QVPNooBm2ldMySlmFmHZ16o8hJ5qGf4QGgaGW
         WdcIDuvXXI47ILJgnB8hklSKoLRBb/sg61O7VGM1HcjAQSDmEUgTlxO9GdhD8kWtg2Vw
         2D36tjJ8KfcxJnj3Ptb1KhuR2s6XMylTe7VFmqcpshubYXwXXeNUgc7/llftV/Elwr4d
         zBmDQnDnfvEJo9VUMC68cBozhtYJasrUxQNTy6kfUlULx9Fkjy6rks8K4qxw1j9OqCLo
         Ma7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=CayZHxq3ZXLAFZuVlGU1DQ7uKBqXr38BtAe/LgQ1eds=;
        b=Rsvl0t88i0ADzcmQsOlPAaRv27AKaKKuUvMzxZXl2TZxrYARkgcQSZTOWFf4r/yYPy
         i9F8ZGiIpJryV9qcqOqEHocXKUELlWVq/aNC5JsQ4V4O0MBR7s+uqN6A4r8JYXGDe/Q/
         ChXZ67jMCawktJktpotVAJOU63qtBl3TwWPigQ6xFvM8vlt7KO6ldM21L54myv+vf238
         vEXKHrjTUUe743z2z5RuAGonnN56KTGa3m1IqsiRMCEbF245IdOggcBxtS8DnMsIGhSE
         au1P4O1a3WAJo0wGzVNLWynyTBnXJPJ/fzryfFv6snKRV9Q3UCj1XDQxvPCC/um+UUEu
         zmig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id g78si760607wmg.0.2020.04.04.01.42.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 04 Apr 2020 01:42:02 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1jKeNM-00016H-7g; Sat, 04 Apr 2020 10:42:00 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 7438D1C07A5;
	Sat,  4 Apr 2020 10:41:52 +0200 (CEST)
Date: Sat, 04 Apr 2020 08:41:52 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/urgent] perf parse-events: Add defensive NULL check
Cc: Ian Rogers <irogers@google.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Andi Kleen <ak@linux.intel.com>, Jin Yao <yao.jin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, John Garry <john.garry@huawei.com>,
 Kan Liang <kan.liang@linux.intel.com>, Mark Rutland <mark.rutland@arm.com>,
 Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Stephane Eranian <eranian@google.com>, clang-built-linux@googlegroups.com,
 Arnaldo Carvalho de Melo <acme@redhat.com>, x86 <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>
In-Reply-To: <20200325164022.41385-1-irogers@google.com>
References: <20200325164022.41385-1-irogers@google.com>
MIME-Version: 1.0
Message-ID: <158598971212.28353.3722461127643050599.tip-bot2@tip-bot2>
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

The following commit has been merged into the perf/urgent branch of tip:

Commit-ID:     2a3d252dffe14582f238e21b09923e3772263123
Gitweb:        https://git.kernel.org/tip/2a3d252dffe14582f238e21b09923e3772263123
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Wed, 25 Mar 2020 09:40:22 -07:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Thu, 26 Mar 2020 11:03:53 -03:00

perf parse-events: Add defensive NULL check

Terms may have a NULL config in which case a strcmp will SEGV. This can
be reproduced with:

  perf stat -e '*/event=?,nr/' sleep 1

Add a NULL check to avoid this. This was caught by LLVM's libfuzzer.

Signed-off-by: Ian Rogers <irogers@google.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Jin Yao <yao.jin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: John Garry <john.garry@huawei.com>
Cc: Kan Liang <kan.liang@linux.intel.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20200325164022.41385-1-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/pmu.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
index 616fbda..ef6a63f 100644
--- a/tools/perf/util/pmu.c
+++ b/tools/perf/util/pmu.c
@@ -984,12 +984,11 @@ static int pmu_resolve_param_term(struct parse_events_term *term,
 	struct parse_events_term *t;
 
 	list_for_each_entry(t, head_terms, list) {
-		if (t->type_val == PARSE_EVENTS__TERM_TYPE_NUM) {
-			if (!strcmp(t->config, term->config)) {
-				t->used = true;
-				*value = t->val.num;
-				return 0;
-			}
+		if (t->type_val == PARSE_EVENTS__TERM_TYPE_NUM &&
+		    t->config && !strcmp(t->config, term->config)) {
+			t->used = true;
+			*value = t->val.num;
+			return 0;
 		}
 	}
 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/158598971212.28353.3722461127643050599.tip-bot2%40tip-bot2.
