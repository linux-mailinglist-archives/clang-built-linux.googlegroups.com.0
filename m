Return-Path: <clang-built-linux+bncBDPPFIEASMFBBXMC23XAKGQEC3CUZMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7B21042FD
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Nov 2019 19:09:35 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id w20sf286782oie.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Nov 2019 10:09:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574273374; cv=pass;
        d=google.com; s=arc-20160816;
        b=vXmAmTCBz65QgVScgcFpfjekQOPI9O0oATt7vc5fQ96CLrZy6QWKmIBHOhKngvHNYH
         q2+8I7jeZ2qZnsy3M9OOrqQ+SQfNLoDEMexqlGys7xn6HN8LekXhpk7WlLhcH0/w8KPY
         wDMWjbsaAHmGBLbUEsSnmyQstGmOVsM6bBu6OXJ+XSjeL8HSAFwLmNMh7CIg2J130rri
         5qGBfix3uJsaibEZU8gPiMSTDi1galuIXv29G8+Z+oxFMt9KDIh9AdND8JF4LJkpS+Fb
         ja9hX8aFZY4rPGqbqMC+Nf0s35+eoqc4d6PWwvTPt/9V+Jrdm9avvhpPJHALUlsfQ0WP
         qPkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=eylp/AAgLXdR5pQdJCuTNI2B8NB5tL4f6i5ktsEJzQU=;
        b=N7H+hXx+0TZEIYIGBeHwG006JsO1sKZPNWxTdiOqeQ8JtzS/PMo8mhle16Hk1vUj1N
         4r6myjbYbNSZDB8rV21c5C3UuG8NthFlrY7xM8/2O7ae4tu7ArEikO9A042AenJWCEoC
         NUCq6GZctmiyex6Dq261/1EvzWcam965bEJk15kaZmzCuNd5bOnM+GU7kVly+yRRcjom
         I95cax48yzpuqaY3McH4+uncTOCJ3JYFOIv5qNE/0d9bdireIS6St+owL8XfpGHc2A0N
         9C5HsHY8JWTMam2IOXU1SfTyDtb3NqqmdIreYfrvyKoPtxWvSggucTMBpGq7m1XBoDXr
         sw9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FT45OuHH;
       spf=pass (google.com: domain of 3xihvxqckeakraxpnabpxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3XIHVXQcKEakRaXPNabPXXPUN.LXVLUJWP-KdRUc-URWdgPXXPUNPaXdYb.LXV@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=eylp/AAgLXdR5pQdJCuTNI2B8NB5tL4f6i5ktsEJzQU=;
        b=DEDucuEi6UHg/epwKGaZrU0Goc9pEwbe+WPT1i3qxgVSOcu4P/7yoUAc0BZDMoDnr3
         xgyy9nYK+PzsnosvSfrYxvuVFRTUIOgDZabWQkYP/Bgb3BOJXR3uGJjwwKYIpcq4PEk/
         T1HP0DP18OYOctvx1VXGuL87WWeFFFTuQNXYiZJHGvbvcAAXvSyAzbcAZooLOURnfkVr
         0HgTv89XlWiscRa2f4MVptj4qdQmMC8mcV+9Vseyb0Sp05jBBy1r6o3gv2qRcIFvEVk8
         9zE/sW3P3PH7xXn5W3yrSy04xKGlSAEW597Kp5FtOXQCrC131bpfHrQXNHfr+GjSDzV4
         17Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eylp/AAgLXdR5pQdJCuTNI2B8NB5tL4f6i5ktsEJzQU=;
        b=Xnf55cX61jbLT32zTGTgn4XwHKmOu4KBWvSnvDQHgaqQ2WVT6HU2g6DXEqfWAURsz/
         dJ+Au69yh7pTwkjRJYCPV7i3BmMlGMtLkTAbcVxG9bO/GzR3CMI4yoOamDe9yakCpRrs
         hy8TCPjaerppLjBfEtnjSAFjhzV76d0JitSjY3jKY6suiwT9DzhnKYZoonFrJCFy6v6k
         niFR+8nU0EnA/SDtuvrqBmcT2CJbJPxKtJHSFCXuBgMjigyNr+gzv0h9g4EKbmqfghw8
         3WdbbRWw53I7yWqMvH2UidnICH1ZIBfLOHQ3phTbOuryZXho1sx3yHXBq4CBSxfzH9IB
         AnVQ==
X-Gm-Message-State: APjAAAWuvTSxmPaahNYJKKDuuSAZ+zu+Nc27npXj0sKLR+2svO1zZJ8V
	jyyzMGIq3xI6w0tME1eAfok=
X-Google-Smtp-Source: APXvYqxn88WiTDMJVXzmlEBeEoOl/tMQsHfW/6r+oRqzsP7Ls+v1aK56+uE+0gncdQ+3AHm9gujrmg==
X-Received: by 2002:aca:4945:: with SMTP id w66mr4099173oia.98.1574273373914;
        Wed, 20 Nov 2019 10:09:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:410f:: with SMTP id l15ls484319oic.4.gmail; Wed, 20 Nov
 2019 10:09:33 -0800 (PST)
X-Received: by 2002:aca:4fce:: with SMTP id d197mr4076443oib.142.1574273373622;
        Wed, 20 Nov 2019 10:09:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574273373; cv=none;
        d=google.com; s=arc-20160816;
        b=JuCpqDXdighI1CMrgDswx9w2lgZzNvNskG0XR83TLblWhyaotkrvCxN+mv/02xIsh/
         0weOM0d7+pulyuIX0j7wOV4mJ0wcVq7XF+jczJfffBMGcaHGPmqciLkhmdJ+EJ/LKiRr
         7y5KF4cYn+K6MGXbyLI6ujbZzBmzXfmSoZ44g1gd3l/zPiiov5uy0xegCZrzkEsbOh1s
         rjb97oGk/jaAFVNIu1arxFTjGwTrVzy1LH42ZJG24n1IUoV6LlQWmLJaNbM3N10ftNoZ
         xQ3I6MWNxu++A1aC4xBDjUDXSirgRuYCTaIGteG6FXYMRjSHDQsLuaD0sY75eFBNBPPA
         6/xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=m+U1zAaIxdg9VzXauR+Zmx1TAKT0+Jtq+g8ufQj/Y54=;
        b=PhxwtOlQsjBZjowaEKP38rtoHaMki2rrw6FYDSd8w+ZDFchs9Wx1HJilcmxJZ/dn9a
         wW9D50Y3wzMAIYPrVpHw9WJBkqW2kCbo30D0C1OXK7HW2rNx68QlDf/g7NG5jHV72UdL
         jiSfZorTWConX7qtrqUQ3viAdi00zw5y8waxJnTtDs5zPzHe4qb1dW092WZkUgIqnMB1
         z/qj5A3dQEMelUAks2V9fXShiLmSxJ0TeqOBG7g781RGjURpWcKAMmjvw0cMCg+SOWN0
         I+jXr5bnOb0ZOMW1N6phPVomxAD8a6WeabelpRxRZITKElQL9Xib2lk1m0BPjF9pk1b4
         Knpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FT45OuHH;
       spf=pass (google.com: domain of 3xihvxqckeakraxpnabpxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3XIHVXQcKEakRaXPNabPXXPUN.LXVLUJWP-KdRUc-URWdgPXXPUNPaXdYb.LXV@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id i23si1436928oie.1.2019.11.20.10.09.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Nov 2019 10:09:33 -0800 (PST)
Received-SPF: pass (google.com: domain of 3xihvxqckeakraxpnabpxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id m1so280674pfh.5
        for <clang-built-linux@googlegroups.com>; Wed, 20 Nov 2019 10:09:33 -0800 (PST)
X-Received: by 2002:a63:66c1:: with SMTP id a184mr4755320pgc.164.1574273372597;
 Wed, 20 Nov 2019 10:09:32 -0800 (PST)
Date: Wed, 20 Nov 2019 10:09:25 -0800
Message-Id: <20191120180925.21787-1-irogers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH] perf tools: fix potential memory leak
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Andi Kleen <ak@linux.intel.com>, 
	Jin Yao <yao.jin@linux.intel.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FT45OuHH;       spf=pass
 (google.com: domain of 3xihvxqckeakraxpnabpxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3XIHVXQcKEakRaXPNabPXXPUN.LXVLUJWP-KdRUc-URWdgPXXPUNPaXdYb.LXV@flex--irogers.bounces.google.com;
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
---
 tools/perf/util/parse-events.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 6bae9d6edc12..ecef5b8037b4 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -511,6 +511,7 @@ int parse_events_add_cache(struct list_head *list, int *idx,
 static void tracepoint_error(struct parse_events_error *e, int err,
 			     const char *sys, const char *name)
 {
+	const char *str;
 	char help[BUFSIZ];
 
 	if (!e)
@@ -524,18 +525,18 @@ static void tracepoint_error(struct parse_events_error *e, int err,
 
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
2.24.0.432.g9d3f5f5b63-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191120180925.21787-1-irogers%40google.com.
