Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBOU7YDXQKGQEBUUZD6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id ACED01197C9
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 22:35:55 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id x14sf9614557vke.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 13:35:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576013754; cv=pass;
        d=google.com; s=arc-20160816;
        b=HxDXBQXLbZ/L8b7T6hIKb/rCJpXvePLp3VAhu/KIP/13L9hq5Si42RJFY8oWxugmu0
         zyaq/sZlyoY/M/HYzck0YqW1UjAvnYfHFHxrL+vPYOXP0zu3lsEZyvRDpou9+h7XbTi0
         lwTgqp+8XTy9Zha6BNEBlSUxDHVFHuWYxRLs3CV07KX1Cjn1AQfGzFi1yAPQA14dpWOZ
         RvF4rghD+CwrrXJwChk9VhPLbG7srCs8gCdnwiyLcY5K2WJ+ctcBlSMFV0LnwADJybCc
         BkQDvZtlncTlhU9OPtaqG1w7hbwYSvNg5EuIFemutAvcAD3RHzaK9Ls3VienNwNDEv5s
         3OFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=BTg9GZEedbnWFrKVsMwrCKLc4AZfMv2ml8EgseC5Pjg=;
        b=P0s8I8K1aFBJfFm/HcenR/+BtXF2rxc2k8EBw9hUvGuM1xIPXczMT6KkeInQzV+G37
         D2i75ssuojfvL9wmMOn6AlCOJlvaRyja5LPdHbZH4Ivhv0dRw+35/Oy/jfvXORdJo03U
         bJApDgaTNfrdGYY7hNXI8GSrJ6usQ80wbk+wE8NM0uVtKhl/lQOpXnaS4uuS3NT8SMX0
         ppCC+JVKEZRIXajMkaE9APDIYkqYEXXqFIjQRLaEjhVL6l8tbJUhT+gcHI2xKheSBweG
         +gXQE3BUx4aJww94SUBAyGHR506qstcOgJA7mFxQyQcxo6g+uSqSYd4iQLxWrOzSE+y1
         05kQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fjKDGsWV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BTg9GZEedbnWFrKVsMwrCKLc4AZfMv2ml8EgseC5Pjg=;
        b=pe62lHszGifBnyJQa9dr5kS6tv5BdNTA8t0iTH/NvpjzD+E/ioEOBD2hVO5sCno2yL
         yhsi1NqWne1veDF+gvNUOHa6t1qQ1HbQKFTPDSFPFxR/LxBLf6IJVL3cpvmEIQwby/W5
         PYvwh1buiF003aAutY2SKzKGUXrpcx5brcBrbZrLvRBoYyAAF6/PTmfarl4HKKdPGyU5
         WJQ3iOiMZFmWGsjy+XDLW4eUQzlRvCzRpTB5Vu9wFES2m4fdiT/AnjuVI3PXWTbFRiXA
         oALWtT09qhY8C+OiTZ9q7yOq/LafzhkjGYY40IMmODurouXYotGDM4xdhZPpv7ody6jH
         ExGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BTg9GZEedbnWFrKVsMwrCKLc4AZfMv2ml8EgseC5Pjg=;
        b=b9IMvqe6k0CrhbV1+eFUlwvLtASjpmR9ubKud94qs7o+MZiuLhTffqo8e7wDlppMJc
         DfsS/+XOYCKNgpArYlq2+FJspGgpGb45DKzkVkmtym525DEGY/3fpogcn+m1bBR5IYuY
         MV2jxR1ENVYbbQDZbCTyuZ344Aelb8KsBZ2ycQ1Q96ly0mAmW9DN9ToSjNSltXMmB7yd
         B3t2seRQdC9OtvS8bFk0vVGTt9/Gx3WcA0qxb+h1x5nNbs4Cit3FkTB6ZPlKN+AmBBYL
         iDYUaZCbmHCXjCuGUS+SlqJ2bClNMB1U9JXDl/hQepeT7GmGaLd1GSZXClY6LDSoNlTp
         hzsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUoiQLH9PBaktljxqMqrBKbxUvuuivaRtuVcqHtCsot55HOU3mL
	vhMYMqiOjWySeuRJs97o4gg=
X-Google-Smtp-Source: APXvYqxYE/8+MFmXXdxM3yGJvYhTh8sgZcLjcwm6BKbyXJDX8xlJn4ybX7IRf3UMlFguD16Rw1Ac3w==
X-Received: by 2002:a67:d582:: with SMTP id m2mr27884800vsj.134.1576013754365;
        Tue, 10 Dec 2019 13:35:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:22c5:: with SMTP id z5ls1583133uam.6.gmail; Tue, 10 Dec
 2019 13:35:54 -0800 (PST)
X-Received: by 2002:ab0:641a:: with SMTP id x26mr31158722uao.31.1576013753947;
        Tue, 10 Dec 2019 13:35:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576013753; cv=none;
        d=google.com; s=arc-20160816;
        b=MFruobuflz7gwvY1VHGNDacbrkLptQxzTbrR/5+CIVlT4cIv/Z4TzB8f0bGwP8cRPX
         HniNgH+pyM3SrEGCsfF8EzlrqvF/ZZPjISHqEOmNYSAv9/fbfnY/7fPZ6EJ73oxT8qoC
         35B0yY/vVd78tSzrEzjkb1ImwQFbmNDP6VbQLMDQTSm6UfzZwRC/3e/r+5Fbbe62JTlp
         V3/sueLeI8YVIy5qyapO6qmicsVQqnIeCJ85MrRRrCxfX6Mn5HYl7W2PB2LFtJKnZWFt
         h+dkvanFmpTIIyUo3mItN3/Xbvdnd++JG+e4w3EJuv10KNoZrTBnMZfDJvt5m8bZc1J1
         59yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=dBgqMzeVSBAhlevHRdUznKO90gauUMeYVLRPHwREvtA=;
        b=sJfOXqXJN0qi/Wc5gxPutFy5RVeqDZIttUlIfFDkZVIpI1v6MBRBbKU3k0APa25Dzw
         eLPmkaDspdnqobLNg2nZYuRbFNHUQ6JXCpPhidgJf0/xNMhLAsm9fWDzLLOWq96h1dg5
         JWHOSJRtYpQmhWM4Cq0NxAt9TQ9/9YbaXwETQd2xtdndHOsOwUFBNOaNyQTlEBF4Ga69
         NIBkv5D8oNJ9f3zodOec5u8Kl87wPCQFdFSSMEpLFiW+jdn0mvMbGwReW0CWxGnIkaKo
         CXtHUL23TT4VVM2LclgOi4uIci3TvpnFJ4BxCwgm3vUHRuVgMN3g1LxKSItu96s44t3y
         myBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fjKDGsWV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q15si215567uam.0.2019.12.10.13.35.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 13:35:53 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2C6E6208C3;
	Tue, 10 Dec 2019 21:35:51 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 173/177] perf parse: Fix potential memory leak when handling tracepoint errors
Date: Tue, 10 Dec 2019 16:32:17 -0500
Message-Id: <20191210213221.11921-173-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210213221.11921-1-sashal@kernel.org>
References: <20191210213221.11921-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=fjKDGsWV;       spf=pass
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
index 95043cae57740..6f7292442b821 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -457,6 +457,7 @@ int parse_events_add_cache(struct list_head *list, int *idx,
 static void tracepoint_error(struct parse_events_error *e, int err,
 			     const char *sys, const char *name)
 {
+	const char *str;
 	char help[BUFSIZ];
 
 	if (!e)
@@ -470,18 +471,18 @@ static void tracepoint_error(struct parse_events_error *e, int err,
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191210213221.11921-173-sashal%40kernel.org.
