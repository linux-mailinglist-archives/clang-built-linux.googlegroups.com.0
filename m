Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB752YDXQKGQEKA5KFBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CD1119CCE
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 23:34:41 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id r2sf11465669pgl.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 14:34:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576017280; cv=pass;
        d=google.com; s=arc-20160816;
        b=EKFcMbddg5RIQQ932E7IVo/yOQqD7jE53KcNShuv202Yv6HGFfazkLHU6ypPg6b7O7
         wiK9uhas6un2pHdt1e1SsWiA1o6VtLHc7p+JA8iKN7EtR2kPxuqOzSGe7fNE70+LFfZc
         YUpb15/VHRluJlB2c+JzHT9pJQjj2eVC3OnLjXKgUtbQTdfTy8/6VNlAsU9Iw1BetJhg
         MaR0QWXUw0LJiMFFWjaI8p82syi3q+6UJTi//wi5UrfM9iJq1NTu7V6ciyAZRksFm93H
         1WKw38iSvY0iOp2HqZyTWjmvxJ7F8+HjIcp47ErmBbeQeHTD12gjmzBcgJYc8KutAU9H
         ck/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=kFk7z+m1frY5HWYFuCe2KXFr02yH+K79a0w8G33WQHc=;
        b=YxhmfjBtAvEIubeSAXptphtRFsIqGwTq9b4UNV3U7wSO1bNPoqt4U7D125BIiN3VSQ
         oC7MYNbqgF80+2KTy2CqENWXxpU43HBvjyZCQqR+JUQAMAylv5FB4VO5aygKk3tcauBk
         IgTzDPuppkfdP9VP8TcvaLKFdRrmhAa59GIJlbpfS8cXpiVnJfBiDYZnPeNrbfldwgWd
         67e4dIt7YzHD1YeulMF8Yh8gfQa7AU6wUch4ct0KoF5acXKlYuAK+6jmobyAo7tNiY3W
         PEc+Y7SkNjEfjsILrAs4Ra1Cx4GlAEJ/Lb3cA6opy/UrvxmwYUyMkx40o/9KavDsN4hX
         T9hA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1nfTAUtC;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kFk7z+m1frY5HWYFuCe2KXFr02yH+K79a0w8G33WQHc=;
        b=BUY64H/I6N40f+8WF8XGG68p7bC4QtXgaxeBn/vlOErNGKXcDiwT/bERUp65NRVqFG
         6RK4R0ui3AvjrUsyCliYsTYVdHvjN0H418T2ywTYflXMK6iqtnRWLLrZEgCIueiFflJz
         GZnHTAA9i7m1Hwu7hygWZvkTc9Kv9YI6nDnSo1J4LY4mtMCAO0BHB2zdxaSaYfRbUZM4
         Q9mEL7Kx6+Ztl2NgCZho4Z8wNokMTW2coqwyQyDvWjFjdLYfOhKTrC9Dbtk+K9PrYwcG
         8erWggwcEhekqxK81fEJhXWlOS4+CKNPRYPPBK2eAiOkyuEURVNPF5uAAduZ3eSMtOp5
         6KCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kFk7z+m1frY5HWYFuCe2KXFr02yH+K79a0w8G33WQHc=;
        b=Z/wRdIniOhgxdNcY3y7wZe7KEsWN4cu2u+pAdzJDCptK9xDVbwc0DKExExFMYHbP5a
         r5/JUMVDidga5xclq9cY8mxBE+hGlPpkTlHf+VSL3shCiIpDVFz5H2X+CObmu+uhgpe6
         mGThn3SrYN8/DW0rGymMbJoP+cCBIIywiqkE0/YdR3Kvuv2qZQ8WqtXem9lwpfEr1aLs
         r6ykqVVcWBQPm9FhQIKRW5aLJQHQYK3d/PPZtKgRiv1B7verFqBIsZExACOShRTZe+94
         C0ntwCu/2SPCaT6b9lbpUR8yOVa35eSxndLocP41Da9hC76WIJS7RHb2Vc3Vr8zzedxt
         4qcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWA5uMH/HexvSG5AOgKuN6Wr8HtziZaqun8ANifaREEOykM/6fk
	zKjERkkzD34wOxP+Q6pwb/8=
X-Google-Smtp-Source: APXvYqxVYzXp7BLBDpvHh4YXlM0/IJmaU67hx8MWdE3fdTPPvuM1Go6fjaLMqyGwiOlmh/KbqFT1Mw==
X-Received: by 2002:a17:902:bb93:: with SMTP id m19mr12885178pls.37.1576017279996;
        Tue, 10 Dec 2019 14:34:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a92:: with SMTP id w18ls4792516plp.7.gmail; Tue, 10
 Dec 2019 14:34:39 -0800 (PST)
X-Received: by 2002:a17:902:9348:: with SMTP id g8mr33081503plp.323.1576017279516;
        Tue, 10 Dec 2019 14:34:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576017279; cv=none;
        d=google.com; s=arc-20160816;
        b=AKAtLufgWkM66YdJVhHYbzk6wRuMUxInccGhtfb2mb9fi5zSCS13PHSNIO4GSjKIFL
         RE9tbn3J2Odh/wrdNVj/e6zzD2zSl964kpI6LzOiR11Womin7nlf8PNBRf0hLFMcEbGl
         7CyFttyG1Z9fsYdehguK43veYLVZjCgqggl8GOIRGi8xwEgE0nL/ryPG6FcMI52q3wXn
         hDeAFtqnP+Sz+ZU/r10FhMKDSFrOohHzg71k940iOFZDb2dhBMzT8ftbwPrsYBElm2m/
         2xMhqnulqcNPDSM8iQpSdLY2SxycwyoPnCMFIvEMAkWa5MyWiDwersdxyZ6TMeBClOAI
         6FYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VRpoyCsrx4YSsoWfusOeaj7JJ6v6RCVM7fgiExLsI7c=;
        b=lldsNrqhm63K0HwZHQ8gQoiOdnTJoT7nuNtIjqTkTdURVXLcXHnh6Szw9DFCCvYBWr
         yt/+/E4GFA8T4paoepP6S6mJPcHeLELB//Hw8XcrGKU3xopDS0BQLEQ/da3mhSGLhpII
         5A3iO3QHRw+JrPhSbi7g7y6L2hTtdj41Nb8bmiOF/esasMqj1+3/NOMXCDJMfNPkP4S9
         RHCVBv8Xz7pY1nkC+Yzwlbt05yvMoxofpBJEW+Okiprzp0iRdU0DxnOo7mIYeEHhwuaI
         qaKQ36nUYA90EJhiozhnFkkmzHdKvt2+BfDIA9ij5uVh9xq+Uc0ivrFHs/ol6+NnvpbO
         iU6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1nfTAUtC;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n20si9298pgl.1.2019.12.10.14.34.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 14:34:39 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E5A352073D;
	Tue, 10 Dec 2019 22:34:37 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.4 69/71] perf parse: Fix potential memory leak when handling tracepoint errors
Date: Tue, 10 Dec 2019 17:33:14 -0500
Message-Id: <20191210223316.14988-69-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210223316.14988-1-sashal@kernel.org>
References: <20191210223316.14988-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=1nfTAUtC;       spf=pass
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
index 9351738df7039..004f28a041238 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -398,6 +398,7 @@ int parse_events_add_cache(struct list_head *list, int *idx,
 static void tracepoint_error(struct parse_events_error *e, int err,
 			     char *sys, char *name)
 {
+	const char *str;
 	char help[BUFSIZ];
 
 	if (!e)
@@ -411,18 +412,18 @@ static void tracepoint_error(struct parse_events_error *e, int err,
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191210223316.14988-69-sashal%40kernel.org.
