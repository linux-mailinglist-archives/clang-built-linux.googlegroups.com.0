Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBLVNYDXQKGQEI3FPSHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B59119AA2
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 23:05:35 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id e5sf10484230pjr.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 14:05:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576015534; cv=pass;
        d=google.com; s=arc-20160816;
        b=N90ns6pvCTo6UkOTKsufxwFvI3IINZKX4N8CPhaZE6gJBBVVUVd+xRMvcY7tLhS6m5
         gbt8N7KXjXbMF2BsS6FfXnn5nldPd4rg+Cp3J5Lo7eVYWt8tVCEV0yy1rmuCGJzgkSyO
         y9iCri3Jh7qgJaofOXP8fsm0Ft+BDJ3QPDEMmAmtYwLcyKaI7igML5/dyvPlEG+U2Fle
         6tfe8YACNEpEpjE3mAi/OvduB3TpF7FUHzQ9E2FkckVqu7VnDkdRRQPGrnTlxUxAOkX9
         c/Uj0qehEnOJb58pojhVA6HQr/VaRkAsr6b1VNraTJYv4FFbVfkMIw9EscJd0g9ZV8rf
         GJ2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=BdcZXly0V8odiViLCyxqqST9nlhes8WrkSzuocU/EO0=;
        b=Elh/HQa/SXa1or/W4zCCPAUOcesEdodwNOVNkA4qY70wxbHvEzLlVHxrFzJXM3XQVx
         W8bWYXlLu5RmQTso8Ibo81UgA9bZi1MpwKd4Z4UsMnwW6/ofL915iIsl3zjK4CX0pWOZ
         xf0xuFhj/p5Rp5/Q6Efn/wpuS4GHMN2X0MqPQ+3T5M2nkRxDBXk+4QS9xxR//UaSzGZT
         tz+91HkbBPgDTdIAMs3gD4T5smgNeIq+h9n1WpZr3Yi4sVjOMDwEJs162Jrblwe86cxP
         CEbN6QaSEdHEO93fS/uFrZtWWOR3uQ1W1FBRgt3/w+ftj6nqGey/YHXbsrrWsGsQAEd+
         0XAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ci7Mpzwx;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BdcZXly0V8odiViLCyxqqST9nlhes8WrkSzuocU/EO0=;
        b=HjNusOFTRlgmZCJJlZVNemY2seZpkWIR85/7dZSvERzFIPRfuk+RKqZfm7xadt4eBu
         vigcVFp4gyZSBNUZL2yOZcTLlGj8whNVy61rnVICb0lTMo8lf5qiRfE+h1kSKr+tSl0y
         Icbl36/rHJEV0kzfLTAcYrm1470F3tHbTXtdUy9eUlXINl/PpkRMgnsEyrToTKY6DUe/
         JO8gQru3cnOiYjDlxJEuz4+7hl7hby4l3sNnyigVq0vE4SxkucE/yI9S4AVK3MGvasQ4
         ryqCWZNHdKdw8/NSA9LGXWZkD2lP1MaeSIecB97qOhFBZ+zqvwKCE2i7plYY47I/nq94
         y/qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BdcZXly0V8odiViLCyxqqST9nlhes8WrkSzuocU/EO0=;
        b=Q/SUu/b9Jchw/jM+UuqNQ7s/wQWPjvmEjEh2dno+3clorCHVmTwLFthFA3NhWyrPFd
         uYcsg9WZZ7MqFPHtT3q59fxeFaeZ7oKlhpe18UX9tp1PcWwV2y0cy8UjC2lU9BeMW6Kl
         K2uL5ylUTlcQA+0g35MQ2+DpDbOkb67evLLLUsQZmMWy5/Hs7zdu77pH9atGlv2BP8pl
         Djks/G9K6FT14qgYPUUEyDZ/rza0ah5TDXKuMUtG/bZ5FuHh52zrm0bXHSy9/m+Oqs1v
         1A92nz+afq41Vm+Wvtbp3zGvR3vvEIe5RIvtAeSaMYvtgmegUCfxOrPxXuf/zO+YiQFV
         rHJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV1REO9Hp2QZ+KYRQJxju3ytZOxulep+7O1CwXu4wiTv60vx0Br
	PzYN6JnJggAyy8dPCP7iblY=
X-Google-Smtp-Source: APXvYqwKl+5T/ko1mbCQMhusvwJTOxqB1fE0JK3XinY29VAAxp7znmUxb57GS7weNkcat6tHMI+w8w==
X-Received: by 2002:a63:753:: with SMTP id 80mr315601pgh.95.1576015534243;
        Tue, 10 Dec 2019 14:05:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8048:: with SMTP id y8ls36507pfm.10.gmail; Tue, 10 Dec
 2019 14:05:33 -0800 (PST)
X-Received: by 2002:a63:5211:: with SMTP id g17mr368344pgb.426.1576015533766;
        Tue, 10 Dec 2019 14:05:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576015533; cv=none;
        d=google.com; s=arc-20160816;
        b=SoqOWSQzhjy7D+lll/4zvYrsMDzgnbIZ51z/yConl9kOcNwUl8llhubyijRv+t5hmk
         I1q4x8mxUqRIeCjMJpMthJeDedY6opGGJXnCvtV0s60VNILtCZBOTods1k47JBiSbfNJ
         RuQImHL2J2/a4fFlQ5evPdAQi7CTiAvN/JQQs23hutrZ4nQbmn12CKtPnjK9Z6ROr1Ot
         BU4VjaotpQSriU67QKkv/I1NQQ1PVoaAz35bfEf6A4OOWyL0ShhHYgzGMEnXHQxkHFY6
         wM3MxkuZ6pCpK0Dqa5Ru69jnbwNavkEw3GRZaj0n8Tx9ibwH561EGmmoH6AcqqOI8rWG
         kajg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7ysqrYf4+C4IWNdE0E6BcX5LiNfShoiFzLkgIRu6vY4=;
        b=jScSFxuH1jFhjlKvdkTSrHY5Su8ODqI0xZ6A+BAAoMXsRw+vWyfWnZ6xE+nlvY+Tj7
         6Q++jMah+djRCMcwZUK0Hk+AISzsILNV8xJHtyZZ54Aawx8iSS8oQ88i2A9hvCsvTyrP
         C34sYoUtsWjGY5bzPNKqcBsOcg0HBSOUWkPM+0CLryAf3FyCGDrNv1e2JJ0gzlDdys0U
         j9cjkbV2vF7T7FnSmOZTDGTMHhYXdN+x38CaDoFY1n4wHFn2cHizBwQkf00ZDqE0rhXv
         Fgm/ByzBZWbmtJZrGVwN5LVSPBdC2N5vFQFVS5HLz23BtNzT8DRTZ94Y9isFrFClLGEk
         MEoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ci7Mpzwx;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d14si3210pfo.4.2019.12.10.14.05.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 14:05:33 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2B1E42073B;
	Tue, 10 Dec 2019 22:05:32 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Ian Rogers <irogers@google.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Andi Kleen <ak@linux.intel.com>,
	Jin Yao <yao.jin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Stephane Eranian <eranian@google.com>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 4.14 127/130] perf parse: Fix potential memory leak when handling tracepoint errors
Date: Tue, 10 Dec 2019 17:02:58 -0500
Message-Id: <20191210220301.13262-127-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210220301.13262-1-sashal@kernel.org>
References: <20191210220301.13262-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ci7Mpzwx;       spf=pass
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

[ Upstream commit 4584f084aa9d8033d5911935837dbee7b082d0e9 ]

An error may be in place when tracepoint_error is called, use
parse_events__handle_error to avoid a memory leak and to capture the
first and last error. Error detected by LLVM's libFuzzer using the
following event:

$ perf stat -e 'msr/event/,f:e'
event syntax error: 'msr/event/,f:e'
                     \___ can't access trace events

Error:  No permissions to read /sys/kernel/debug/tracing/events/f/e
Hint:   Try 'sudo mount -o remount,mode=755 /sys/kernel/debug/tracing/'

Initial error:
event syntax error: 'msr/event/,f:e'
                                \___ no value assigned for term
Run 'perf list' for a list of valid events

 Usage: perf stat [<options>] [<command>]

    -e, --event <event>   event selector. use 'perf list' to list available events

Signed-off-by: Ian Rogers <irogers@google.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Jin Yao <yao.jin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20191120180925.21787-1-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/util/parse-events.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 096c52f296d77..6a9ae16cd098d 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -451,6 +451,7 @@ int parse_events_add_cache(struct list_head *list, int *idx,
 static void tracepoint_error(struct parse_events_error *e, int err,
 			     const char *sys, const char *name)
 {
+	const char *str;
 	char help[BUFSIZ];
 
 	if (!e)
@@ -464,18 +465,18 @@ static void tracepoint_error(struct parse_events_error *e, int err,
 
 	switch (err) {
 	case EACCES:
-		e->str = strdup("can't access trace events");
+		str = "can't access trace events";
 		break;
 	case ENOENT:
-		e->str = strdup("unknown tracepoint");
+		str = "unknown tracepoint";
 		break;
 	default:
-		e->str = strdup("failed to add tracepoint");
+		str = "failed to add tracepoint";
 		break;
 	}
 
 	tracing_path__strerror_open_tp(err, help, sizeof(help), sys, name);
-	e->help = strdup(help);
+	parse_events__handle_error(e, 0, strdup(str), strdup(help));
 }
 
 static int add_tracepoint(struct list_head *list, int *idx,
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191210220301.13262-127-sashal%40kernel.org.
