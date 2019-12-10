Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBBMVYDXQKGQE2LZRCZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 64675119393
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 22:13:42 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id g15sf7708669qvk.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 13:13:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576012421; cv=pass;
        d=google.com; s=arc-20160816;
        b=yq8k1+K3BIczm6ZcRr+SsTksdcivJwIlFsAV5wvZz1cIQNoPmRPBVotQFTmBuT39d1
         Agy7RizVsgJ0gnwUj9DfigXFBR1jt9VYX3WC+z82AWtZGne1JwJJMETgLG5VpOs3xBC1
         i7BfmHRF3QglkDCpuB+hyZEZOjYp4wDK9nskQOacHzQ0QmoXhRdZ07fH8xGFKHf+aIWo
         Vt5heATrcjj58Ov//TCR67wlcLUYHJ04W2MkLUnR6Z4uXfkERoNtFEgXBUK+Fu7p88Z5
         DDnbK7TfU3JQB6gXgq5kO1mKXj7Oj39ozZaJhnk4XkkgQIEu/CaWLlHAk6DmvJE/sscD
         sgvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=D7IIHAYDjWwaii76lZJ6gWYPjgUj/9Dz8CA1E/mOFCA=;
        b=WQDOVrSxL6PZOqkIOBmtJLnFkvi5QyJ32e+DPr9KmPAi3+1I7jNpBb+TFBi4q7xfU2
         /M8HFk/8zJcsn8JZ4ccv+jrcgeXWwMmaDjIJ1XqVg5PjzG4W7FBQM70L4hZbV205yTIn
         /zYsZMKTnG0sRjUsvKn/oit0RFZPWQ/IFcHd3g21ReI+aBrV+kHfGteDisRz2Sxi3GYK
         rBS+nVcCiPDLIEpyb0AjaUYeXnzgNyGOOG89VnYWiOtCK6ZpsJZ1jlYMuaUtPLrc39IZ
         HEHOITdYME0/D2VgWVHYeS95+NvAz7evOYa5dBb7gIb+Cci7pfDc2+DZrBhM7XAJERfu
         6fGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=atDT7Oq6;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D7IIHAYDjWwaii76lZJ6gWYPjgUj/9Dz8CA1E/mOFCA=;
        b=op/+/bL7//RvHWr9T0OlfaSEKCOXcQLm2YgccuGYy2/JHcnuBnwIT0ygHIt8f369sS
         yEJE8C94QGQn08Rl+F6JFBi/cBxNr3JnZObuGJtLHbT8VYjiwl4aARw3s0+oiw/I5G3x
         sI6Vya3h4JzdejsJ9ptkJL20E3ybdI8/lWmMmadgkug7EbmAo4V9TBwMAj+0AsEgRdt6
         8I5VJwVuawXExvQCTnzxVHXXoRsTBSsAgpWslSb1tlCxxQRkXEZcZWG4AzQX8aetf4Xt
         QPMuoQcS0ViU9taFVsYMD9WaBLVDlr4+l40H/L1dq+umnvnuSiN4MPwPxMn3Iu69g5Fc
         /Jbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D7IIHAYDjWwaii76lZJ6gWYPjgUj/9Dz8CA1E/mOFCA=;
        b=elcz8IgVK4Vim/wwHYxwET1NXS2Ak1/2sRBcA40EOKHYLZ50NGD3gBopXAxlQeR4UJ
         kPicO+gdCZOp5cJ2ipId2e5QgFmtGfW8mO42YOLql7DmIq4qDL0xMtTwkXQWbfheKes6
         8IjkI7J59m9hYoawD+Dhc+Hi5XwM9PQIvNB++kpwlM0t40fmAlWPmU2RAwEXl1hF8zDo
         lQ+VqtBp2t48/QbX2i7KLwA//8+NYXFSAkJKffMowd/s+hc4feLbC7QQHonlwd+QIFIT
         cDblDtbevWwvu8gsSawl/aey6FCcxCbqW0b8/+tatFik7X9WpLJuYzlgkhk9WtzVGfha
         3IbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXBejjTrsl7ATHobITFlo0xk0TpZf9yGbi2jJWZA2azJjVfdidR
	0trH/eh7Pi8czmZEIub5Ea4=
X-Google-Smtp-Source: APXvYqws4m3j8ftBOBeQsq6ntuWT3rX8lDj48jfwHG8mIVJjQpjGZuD5TOGhkGvRH4N3+20m7BKyzQ==
X-Received: by 2002:a37:4dc1:: with SMTP id a184mr12842317qkb.62.1576012421373;
        Tue, 10 Dec 2019 13:13:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2ba4:: with SMTP id e33ls4953qtd.2.gmail; Tue, 10 Dec
 2019 13:13:41 -0800 (PST)
X-Received: by 2002:ac8:387b:: with SMTP id r56mr11663971qtb.364.1576012421025;
        Tue, 10 Dec 2019 13:13:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576012421; cv=none;
        d=google.com; s=arc-20160816;
        b=t8hjBJuCpDsjreY83ftc6rtL0PORrEWUiE769ZPqs8xnCe8j82vo9cCkEJngalys2u
         aSzInQl+D1gNS8v/0miIjH+npODJxB0eGZAFu9u+BgED2w1lL/KuN13Mvb4WBEflkqiH
         9iXqVna4JTCEEAF+WeFtvjitqB6ssweaDuK70YTtbWvn1lfJdebv19Z+iEaQ4tTA1G15
         S46rQAL3j7fOAZOk3+foyUQYABUzF14ixzbpP8v+bf1nK3NrfU1qfcCF06ZXLACb8GHF
         xYAvY/iY91UhzjaU0miQ1Oi6R9FgXw2Q9V4jhtMEtNylkMC9sBjk4HxBhBBDG+pPtlFy
         4SGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ge+Rz0f9u4wsXLsoxEnN9I9riBoHwCnZcaAJ6dvlc6g=;
        b=O4l3bdXuPV57dHwuHZIXttG5TkGDTlgJh95McJHaqFA0pdjVdHqDq3khbyRg1LgSyH
         WqNcoTdjwuUjKOuUXIbXOBgEn2LJVhvEOYg0vFE2P1p5RmA3UqhK08sQ5g/5swTZEhkv
         lILvluwKBxfK6cDDavA9fza0aD/CQN0nELMDxfrOa/jZC5LjZTcKY3TKNBYjciMqfG8l
         x1BySioMSKtFoiPIUQ/deglfTL44gX8UuI2idvpTsA3QivcZ0XVCG49iNCi18/xJh7U7
         fV3z+mmr2eqEbFl6BQTi9RG56cjeUxYyQB/9IWtDzXydKcivaTP7yV5RjnGHQHjbD/WV
         eEjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=atDT7Oq6;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w10si143298qtn.1.2019.12.10.13.13.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 13:13:41 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CEF97214D8;
	Tue, 10 Dec 2019 21:13:38 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 335/350] perf parse: Fix potential memory leak when handling tracepoint errors
Date: Tue, 10 Dec 2019 16:07:20 -0500
Message-Id: <20191210210735.9077-296-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=atDT7Oq6;       spf=pass
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
index 422ad1888e74f..9a958ec5a096d 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -480,6 +480,7 @@ int parse_events_add_cache(struct list_head *list, int *idx,
 static void tracepoint_error(struct parse_events_error *e, int err,
 			     const char *sys, const char *name)
 {
+	const char *str;
 	char help[BUFSIZ];
 
 	if (!e)
@@ -493,18 +494,18 @@ static void tracepoint_error(struct parse_events_error *e, int err,
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191210210735.9077-296-sashal%40kernel.org.
