Return-Path: <clang-built-linux+bncBDPPFIEASMFBB25SZPZQKGQEP4F6XHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id A84E618AAAD
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 03:31:08 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id 2sf439131plb.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 19:31:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584585067; cv=pass;
        d=google.com; s=arc-20160816;
        b=zhk+zUwfhv5c+DBYbPX8u23o/PMaSJ1L/fbCJzMhLlKRnEzOLOAkQjCjXqFWz+wCUL
         AqKicMdppVhm1iD6/ok5DOz6jEvhJPV/uOd8068nzeeRMQOwyYdvBDJHMLsejovapq+8
         Uf7mi7I2MUOTd/JjVPSCIc1g/ECNQivxoXMqKB/MV2r1T2lAFxGCy+rhsc8hZ0BpYElx
         sHAsw2Hv6yjfKNMeU5PkSb7a30TPriens76tvkMVM8+bo8p0I47k1HTXIdlTtkBnFuFL
         HGc6eWmk+vjMzJoUGuWGmQz0VD3eSsxWQjiGferfvCa5nA8OHRXKM70ZARKVRcx1FsuA
         io6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=+Q/Vbb27bsZtmcfMe8APTekEmJDDbkiXIt1d/Fv9QvA=;
        b=SKtlX0FN2vQsGAqJd893duVG+c5Svl2ISjmctCkcUDi+etI+1bIOB8ALp8VzfxFJWH
         rD26xK+XQjDbhs+JbM74KagoLfyhhz9sYwf3gLBG4YnmuYuczEDZ4u0FOzr0db+0cQq1
         9e166TAoaMtEO1OsEUm4PQ5dudpJK6hNjcYbBF2sxTfZ2ZxpDPz9Hw9pseP8z14J7xv4
         sDysn5xITL/O9eB4C/38rB88oC/CZZJBusoEPv6UnDG7W4r7/00ujjsx0s9vQMyNXh1W
         q5nHYuy9yqj4oqaQe7mXhOWFvM7xPzwAUJzjk+WFseWtOrH9uGcWO1SXYSmvNV8r3RRl
         qOQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PwhlomgH;
       spf=pass (google.com: domain of 3atlyxgckeeelurjhuvjrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3atlyXgcKEeELURJHUVJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+Q/Vbb27bsZtmcfMe8APTekEmJDDbkiXIt1d/Fv9QvA=;
        b=Qfc+yLTA9WWKmdiduzQ0Mw1B6jN36vrF5swPxJzpBO0UWD+xxEXQNgz3ojTT0YrtDm
         0vt/i2NElTVa2vsNhypvDxI99YAFAfGsV3YTKfNfENWzjgPwDynQxr4lI+e2F4E0UwBH
         xu82HAaQFeJU0LTzZJKJtYg9UxO0Nj7yiZpD3sBZH5uMXnq+L81l9A2FkleAvJk2dffU
         oDzbHQB1UQCqdX3FPmR9sjf8AP29zKC9tsnjqm1r/c98oAt+eGejcSIGuisUy/4ZBdGw
         6cQMeL0UOUFuref7LVT4Co+h5DUYkJMumn8RGTN7UPnh+BlVHs1Aygt/3NznPAGXfjim
         szAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+Q/Vbb27bsZtmcfMe8APTekEmJDDbkiXIt1d/Fv9QvA=;
        b=ufooHChSGAJrPK81lSLGeptJWkm/xTX78kvcM3/Uzx4ldQa6161AGw+zpRbhBJ9ZLa
         QtrvqFb7SzdhOhwdSRfz460jMTMeK5DuoBla+QB5Tg0x6LbHsjVL8at8K9V3/Tqmbt5f
         5cExWIla2vwYEbmr3LkHLf8yJJA0WH+mn3YSukqpwbJvaoIW5yR9qH8i0tTPG/7Oe4F2
         iPLW8vDQL8CaEYd2u8cNOnwHu9vZ2gxIexjmgDI1oZbddE6GfLnokQFLbfRUu6tqVMZh
         wBjLrPgnORk1WFBIl+UlRmDGLmR9KawignJSOB8PJUTyzW8N/zrczsUdeQR9HixyVrd5
         y60Q==
X-Gm-Message-State: ANhLgQ09I0EjqPYL+mhr+29FHc8u+JV49MJOv2X/kYzfqjjjctdJv8Mt
	1d47idXC6YSSmsqtiqrr3ng=
X-Google-Smtp-Source: ADFU+vtmr0ZK/RSzIyKPXgu/EazblsHDWbygrLsIYXImY5fOeVLsOJ0vUu+RJlBDiLx+Y3GsP5q25Q==
X-Received: by 2002:a63:a062:: with SMTP id u34mr906538pgn.286.1584585067427;
        Wed, 18 Mar 2020 19:31:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5f8b:: with SMTP id t133ls708943pgb.1.gmail; Wed, 18 Mar
 2020 19:31:07 -0700 (PDT)
X-Received: by 2002:aa7:84cd:: with SMTP id x13mr1530753pfn.310.1584585066967;
        Wed, 18 Mar 2020 19:31:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584585066; cv=none;
        d=google.com; s=arc-20160816;
        b=wV31q3cPH/2VkOY7dKx1ibH1+r1W/oZxRQ8ihnUr9moNfIFaz0zv01OET5FpUHbizy
         ZvWY/kkEbIKCYB+JkF85XD8N5A7m1Qce03WCm2BZ4rYVG730/VXdwfqSE6Bi5aWqkT8J
         TS++gRizhrWU9OA0mgTpWlzWs3/Q8fFgw35Drz/etKtQzJ1hitB/VBBItxTjjSnTqVQk
         t1TXvpBRartCTVKVBfyIPDS+xcbZhDkNguyO64FUp+qOOtJLKNHXloVJ9asc4N9elppM
         OY9In5mKYxMguUrkkCjNKjo0O5CJ4w7gabN8M+J84PQDqx5oOCjJ3y3ujBYrTR3CICo/
         YUWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=0M5yDwMnWT3eGZaAP87ZabJ+9eP1uwNT7JZCCK6lZ+Y=;
        b=oxkbWJuxtqOxh1dYrBUgfHIt9Vl3/s+MIO0pgOhexG/cu1logHH4x/5XIqY99D39er
         05bZ2uSDFyCKvJwE7KpFpd4F80bcm6GcrBTNuLfulXEJu0HbdzEUkNfu5+/f+qJNt503
         4OcFy2Zhg7S4JTyD9/tz/m1rRV8AYdyEiYWrWws3Tt+SkBEoOWjgpk3OVPxOZYGIC8uU
         VGREUBEQ+s/6oKfytFYkBdomDEjfxDr3YavxeM8UgjvsSb7Gzv8O1kU4CjnMxmRTf6sg
         EjYMa2ejGy3IxEZK3V0VjGqzWwGB7xyBNaksBcIzwKqKmAd0AHYPl5vzZi0GZhq9jbkq
         jndw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PwhlomgH;
       spf=pass (google.com: domain of 3atlyxgckeeelurjhuvjrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3atlyXgcKEeELURJHUVJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com. [2607:f8b0:4864:20::1049])
        by gmr-mx.google.com with ESMTPS id h10si38495pju.1.2020.03.18.19.31.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 19:31:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3atlyxgckeeelurjhuvjrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) client-ip=2607:f8b0:4864:20::1049;
Received: by mail-pj1-x1049.google.com with SMTP id v9so532257pjh.7
        for <clang-built-linux@googlegroups.com>; Wed, 18 Mar 2020 19:31:06 -0700 (PDT)
X-Received: by 2002:a63:7359:: with SMTP id d25mr881791pgn.2.1584585066575;
 Wed, 18 Mar 2020 19:31:06 -0700 (PDT)
Date: Wed, 18 Mar 2020 19:31:00 -0700
Message-Id: <20200319023101.82458-1-irogers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH v2 1/2] perf parse-events: fix memory leaks found on parse_events
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Andi Kleen <ak@linux.intel.com>, 
	Adrian Hunter <adrian.hunter@intel.com>, Leo Yan <leo.yan@linaro.org>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PwhlomgH;       spf=pass
 (google.com: domain of 3atlyxgckeeelurjhuvjrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3atlyXgcKEeELURJHUVJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--irogers.bounces.google.com;
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

Memory leaks found by applying LLVM's libfuzzer on the parse_events
function.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.c | 2 ++
 tools/perf/util/parse-events.y | 3 ++-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 593b6b03785d..1e0bec5c0846 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1482,6 +1482,8 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 
 		list_for_each_entry_safe(pos, tmp, &config_terms, list) {
 			list_del_init(&pos->list);
+			if (pos->free_str)
+				free(pos->val.str);
 			free(pos);
 		}
 		return -EINVAL;
diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 94f8bcd83582..8212cc771667 100644
--- a/tools/perf/util/parse-events.y
+++ b/tools/perf/util/parse-events.y
@@ -44,7 +44,7 @@ static void free_list_evsel(struct list_head* list_evsel)
 
 	list_for_each_entry_safe(evsel, tmp, list_evsel, core.node) {
 		list_del_init(&evsel->core.node);
-		perf_evsel__delete(evsel);
+		evsel__delete(evsel);
 	}
 	free(list_evsel);
 }
@@ -326,6 +326,7 @@ PE_NAME opt_pmu_config
 	}
 	parse_events_terms__delete($2);
 	parse_events_terms__delete(orig_terms);
+	free(pattern);
 	free($1);
 	$$ = list;
 #undef CLEANUP_YYABORT
-- 
2.25.1.696.g5e7596f4ac-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200319023101.82458-1-irogers%40google.com.
