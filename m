Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB6FZYDXQKGQEB4LDB6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 37DB9119C6A
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 23:32:25 +0100 (CET)
Received: by mail-qv1-xf38.google.com with SMTP id g15sf7828239qvq.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 14:32:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576017144; cv=pass;
        d=google.com; s=arc-20160816;
        b=I+Jsd44z6etYA4s7arbSxXZ+D4tpve+YoxsZI0hcKYbxLfO/8S6SsDNE5KEWGtaw7U
         m9j2pHcEgzP+81/4VT7tig0TirD3Hiij4r12kpAigOzjm2v1P8M2UAWRK5BwE1bnu+rV
         eIwfp/75M343R52hpxdwePZwPl3g2s06V9uFi9y8askPJVDqD19CHIXNLtuYo87TJvGy
         Iw3tofFVOs9zQUPyorYacHMs78xucqRkoQNvgEdVOAYaxIw5PojqFGWbBUZir4j6tGSN
         NP1AbY2zALOwsdZlqHdSmLpPg49da5cskq25FBqfdzWCA8C5T7dsbL9uAyg78HgDQAap
         cMgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=lbI4jp+kQkcwiURqSvu8EMiXWf28r95z2r3kt79MGvA=;
        b=sEezcnXak59BcE9UofErtH1ztqPdR/0EWzSLakw0kNauwU5fGn7f32gp/H9hzuqwLQ
         dgsP4zv66ogoASVGdhpDVe4gxssY+cMCbsZ58fmBX2EuhazA0PDQu4GnNQa7ZqmfLvRP
         ta0rwb2V0X331IVA+pWgvp0xVbxWIb/K4aj97eTBgtSXyJP+1HXxOPELQThtq8fxEvB7
         o06dyIU1fJOeNa4xo9Lgg6WFQ9yh5GHp/ZEghXRcVkQ2UlkR37TpGhhk4RhJ8AICHbmV
         ZNZqNWNVLOBOw7c1V99K9ig3V4YREnuMNEZvx3Q57kJm1xg33DhpkFhDp9U+0NXJkkhw
         IIbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2ba5N3nz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lbI4jp+kQkcwiURqSvu8EMiXWf28r95z2r3kt79MGvA=;
        b=gFCPZoLab5PbDbToy38M9WffenGdNUu1AIJA1dntZp9hgzeysMVQTA6ZhXTxkoZvta
         U//nGpQ9VTChrjfGvu9CYg7CtZh4w7ejdJdcOLztTILL5ax5J5ZiltjAOzUNr0iKY0MC
         Xf84536VtcJGdk9HKGg0D6OBnrBvplynSaUvYwtZjyv27n/T0Uvl7VX1w/tT5vz9ihqW
         GCoEvDEo7wNxYqM6pbngtU7rW4aqNh/qFwVaICIBI9GQNpVP/troTyPExmZA9aaYmkUy
         8qU69GVfi1xLn+iwlV6K5CBpCiMVD4PUJMG2w5sNOj+7W+L/ae4LRSbsAmuxYtwxIln5
         v8ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lbI4jp+kQkcwiURqSvu8EMiXWf28r95z2r3kt79MGvA=;
        b=InExB0h3rbIiRI0q4nOTxuclxII3OWZUQRCwjzmEUuCGBF/zbgZVWlRL51hxkKKjWm
         N5yzWWh/Oa2f59Z8EG7nTkU952C9gLtp2sVyTBP6Of+OmYm1vLpkoXkoaAyImsDFD3t+
         htTIhIS4yX3v1t5o8JrL/8STL5S+gy/JklrcHv0XtoQFd294cZ/AM9FiuLA4epEtGt2X
         upOCFJhF6hLVnq2tVMnCkrS3NyQ1SQYoqVqHxhYGJ54EHEgvZcNZ8jcRMAboXCpoyLh4
         yHkQ9cuSmyTt3wFoyBZzSdCiFy6C0IXnV2V1LnleQR6fXoLEBOuj0qhlK+ip+Yd8Kpa3
         NNJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXr7l3r7hRYb62R2N4xCofwVvqgUtn2qDZoQ6snaAQuUik9wrCr
	lK2ByIIE9KJItHOjIMWgZXM=
X-Google-Smtp-Source: APXvYqwfkbiA4eDMVX9qmHywxDiIaDiqK5rogdg8j+JqboZxvEaU/dxQveoxw9YrKZTIjG17+lVd9A==
X-Received: by 2002:ac8:7491:: with SMTP id v17mr190397qtq.154.1576017144273;
        Tue, 10 Dec 2019 14:32:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:95f7:: with SMTP id t52ls23340qvt.10.gmail; Tue, 10 Dec
 2019 14:32:24 -0800 (PST)
X-Received: by 2002:a0c:e790:: with SMTP id x16mr243527qvn.18.1576017143959;
        Tue, 10 Dec 2019 14:32:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576017143; cv=none;
        d=google.com; s=arc-20160816;
        b=wCT2x3X38EQCJlLJJnrollVMT94XOcSBGOaNDpQn6qQRV+AbhaTcTQQuo6+hTQRkfq
         jUGb4hoIsEq4SfV2riFHlXkyDkm136Ac8Vuqd3tO29Z8DbFFy93KeTfw9AOxslpjk31Y
         1ieCIHRpCfxz61/0IZZyRpxmBgc1HxGX6FZiSt4mYBUDkdNbk3pFNVC5OJJYhrP6CJkf
         Y3beWIumxBTYONIA7MSGu+/BhDscQ0E7kOW89psLPXM+NBL1IYbfQPxFD67ryip2n37j
         iVQoqhd1HmInODbE1tRA8asQPS5hmBMRA1Kdo2u9BIXkYtsiYjWOvqUHhS+RO/dQKOP9
         NNFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=g9/nHPeRTKBCNqSVwy/uUwy3PNQxY50MHJbkqTKdaZ0=;
        b=x2cNfJ3HZ3i4wjYEFgw0EyzMTQmc8Trfli6cL8nOIJLsoSL5noNPWBMG1veTYBuE8/
         AEQeXHFWpCc7GFZjqnIK4mAUFdgEU66/nNU61B2Z/DzPPH7pJJ7/7JS6EbZVAUe8qyPn
         8sEtSQJIfH9kLN3AnVwr0Eh4DfPPem6s1NWZgh+hXJoqxRasBPANWwTY/cbUkhWIVmPJ
         cXQzYWSAKONOLV2Lgvzr/RufNuqAHSBwSFAFEi0bVDjSk4og2uuF58S8JJkZ5t/+X5Xs
         dvJtncBLJa06z5NOD/AwOwIzlGokFvIeM/V/eh08JWqrkwcZU3MuO0x7DChQZpnRBlsW
         gJTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2ba5N3nz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b15si7685qtg.2.2019.12.10.14.32.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 14:32:23 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9F106214D8;
	Tue, 10 Dec 2019 22:32:21 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.9 89/91] perf parse: Fix potential memory leak when handling tracepoint errors
Date: Tue, 10 Dec 2019 17:30:33 -0500
Message-Id: <20191210223035.14270-89-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210223035.14270-1-sashal@kernel.org>
References: <20191210223035.14270-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=2ba5N3nz;       spf=pass
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
index 6193be6d7639d..cfb64369a18d1 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -440,6 +440,7 @@ int parse_events_add_cache(struct list_head *list, int *idx,
 static void tracepoint_error(struct parse_events_error *e, int err,
 			     const char *sys, const char *name)
 {
+	const char *str;
 	char help[BUFSIZ];
 
 	if (!e)
@@ -453,18 +454,18 @@ static void tracepoint_error(struct parse_events_error *e, int err,
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191210223035.14270-89-sashal%40kernel.org.
