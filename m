Return-Path: <clang-built-linux+bncBDPPFIEASMFBBOUU2TZQKGQE2K3CPRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA8518D6BF
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 19:23:55 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id p4sf5336236ioo.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 11:23:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584728634; cv=pass;
        d=google.com; s=arc-20160816;
        b=w8466APYK7/l3qnf5yqmWhP0uSFsH/uBjWZ6cCyia+RRMvon5MheXjpGOyn5TJLF/n
         NHKIiMLcZGezFKyjyGg7dKgYlOSeMWa01v8vdin+SD0LRoEE9yJOt38VaSkVTahYs1QA
         nC93cWmxQlPzEpOUfuRdCB+9gdgDuo9yZiYV9W3Zra5lTPG2OUdfC9hT+Jkm742vFBJ/
         l9YQ+fCSxi9J0RxtF0PiktYO9L2wt6VYXksB2cJUDvRoAPLi79XxOS3mArFVCDcP6lTS
         33lQDClqBrG4mgbcAqbLmxJj+53qBQ35+SfdB+F3DChcmx7lxDYdHPQf2TJhl6uYHTsp
         KRpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=+s31vJO4c/fzIBNYdivCAhHPZNGNjcCj5dZ5IF8/aIA=;
        b=djNUDx0hKxW7qEJWq+GvDlCh9kHboo2m0kaXloCD2D6XaV8zqlqF9cgkCOm8bZ8fQF
         /eGNpOIDC9VcTRy9A+QgiwkB7ualIQ/Yz/1QWvIk5YjCwUmjAtKWlEvR6dL+xIuS462c
         XVnxYnzca7NPaRkAuawFWbTmO457RatM67PSdJXiY1++jlohY2nc6J5DOq3J3nVXGn/1
         dgRkGL9ALcDRk6/npP+9zz6rADZaJdKK8KgvAEu6QVbE8Re4TJAP3STUwEeCpatfPord
         Oa7KFzsUS0Gx8eTBN7edfmsWsM9fT47xpmnYuaIFKaxsXmUFraY3HomRjaS3LB3d0/j4
         4qDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CU06efIQ;
       spf=pass (google.com: domain of 3oqp1xgckerwajg86jk8gg8d6.4ge4d2f8-3madl-dafmp8gg8d68jgmhk.4ge@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3OQp1XgcKERwAJG86JK8GG8D6.4GE4D2F8-3MADL-DAFMP8GG8D68JGMHK.4GE@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+s31vJO4c/fzIBNYdivCAhHPZNGNjcCj5dZ5IF8/aIA=;
        b=lHD2Rp6PWY85GPVFzfgqwW17e8UN3JKbJRiM+ykJozN03K1bQENlLHD+ZwQYFNDeDz
         FNqMAbzvFl52Pxff5ehQAXwx1FjSriombBDwgok1O/Xl6N8XdUhgIE2rQfnTydZ673w+
         CEHrlfK6LS2ufQZ+UGro8u4sY43KtDb3Fj5Gn+w0S7Th66LNJRdBkt4qXJu+Ghb4uice
         nLdQ30tuU2oEytMuD/YbMUg0A4txX7rqwSOXa0Sq/VIxve2MQKGMiPuQR9GlNshxpsIw
         4RU1ldp3JOj4h89BRMOfkjp6PmIhAX1KSMJSdvKcPD8P0HmF8WAxqdNtoDTnRjXrBddK
         /uEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+s31vJO4c/fzIBNYdivCAhHPZNGNjcCj5dZ5IF8/aIA=;
        b=rohV83PKtyCTi8Ubfn+tO9D7HQ4wnv3k+sOIa439KNssIQtL1LQt8CplIbzhRpc7ew
         Od8HDynOSyOr/+1DgGYOfj8sZVOo1iS1l1bD4XxQEbD/pvhTVw6rIH5ZAz/gejw/7sBf
         p07n48/2fGEVcDXXBSUo5f0qF6j2AAVyfrwk1UoCwJSfrEu+rEuuG4vO14tRKqQ0cq90
         K8R0F+ceyOha+6VdCMy1u97NdzVCkzvt0eTz6Gb1mXpDhqE7Ka7Dt6pVh1GT4IGojLVg
         6AVvlhgNOQ7ZqkW4X2BqXaPYau9A/Xr5eYiQ/LL/1mrh0dMhM58SD0iFNbMNpOeatl2C
         Vplg==
X-Gm-Message-State: ANhLgQ0Qop30apSOSC8MOvYpXgbYAFqeTOZ0ZUir4SJ2hRBYaGbGdMXo
	vV9PKWpt3uwDV9URX8aFg5U=
X-Google-Smtp-Source: ADFU+vv+9EfvMbu2wmTT1JMn+AiJXetX4hmm5uaKx7kvlOqq4OIlQXctnh5P/XWbkl3yvjFcP5HKig==
X-Received: by 2002:a05:6638:19a:: with SMTP id a26mr9446539jaq.137.1584728634723;
        Fri, 20 Mar 2020 11:23:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:8106:: with SMTP id e6ls1715029ild.6.gmail; Fri, 20 Mar
 2020 11:23:54 -0700 (PDT)
X-Received: by 2002:a92:d0c1:: with SMTP id y1mr9456344ila.125.1584728634351;
        Fri, 20 Mar 2020 11:23:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584728634; cv=none;
        d=google.com; s=arc-20160816;
        b=fEv7IuL2tuMqsYLbcFHAAg1Qxx+t6tCGH/cCEa5CdSEkLhuYP6GJ/NezCrS8i3GiMv
         DGCdPiWdGGBaV/XWivEv0tQnE4Inq1e8LqNyFISJimeqBFjN3VL2J75EkE+wSOkGC50i
         xhfalxDJgw1jHysKQXAsAt4ojxni+J+yuadbqfWdPWfP2u06PhXrUhSjE1kCM7rMgzNe
         faytKdflIWT3xy3wq9QF+PARWidMsKdaRSRf96aLJ56LZH02OrlGasiWaHjEJzEtgCQb
         DsstS6dXDA3kkRjky3+fTBKSM7GJhlF62RGEgnFhfiav2dfWr9D02qpbO27rphnC2Yt5
         jlmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=RMPXYe/vR5ct6qGO4irRpO9ggqjWQLrULMnyekYeYdA=;
        b=frHTketgxS1pMIl360YfSPh8xNRf65KeA6oDdgE52MjS2ZvulPwCgGyQ2ss+ySSYst
         LSqLRoflV6KwMhFQeDnFFDXYNFtFnAwiiN6NlbsVpHU+CP3CDCZk8HZgoUGpN7u1M5II
         B87B7lDsHg7IPlz0URvOjPiyPGaaoOetUm0p6mzQ42x3ujNwic6Z04Ct2SFYaTtwogRI
         W4EXv4aBQTlx6RKABtsakz5H+gaMRKja+LEA9hi6GBugLSuHtfr1f3dao1kjwNyPEqpo
         R8mwyKwZhSfcLcVUo9/AfSB0twUCYm/OleIWMM7nc8weotpsrIS9svQum6DSHaboLe0V
         WUCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CU06efIQ;
       spf=pass (google.com: domain of 3oqp1xgckerwajg86jk8gg8d6.4ge4d2f8-3madl-dafmp8gg8d68jgmhk.4ge@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3OQp1XgcKERwAJG86JK8GG8D6.4GE4D2F8-3MADL-DAFMP8GG8D68JGMHK.4GE@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id t125si399467iof.4.2020.03.20.11.23.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 11:23:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3oqp1xgckerwajg86jk8gg8d6.4ge4d2f8-3madl-dafmp8gg8d68jgmhk.4ge@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id d11so2008487pll.6
        for <clang-built-linux@googlegroups.com>; Fri, 20 Mar 2020 11:23:54 -0700 (PDT)
X-Received: by 2002:a17:90a:8c83:: with SMTP id b3mr10818804pjo.1.1584728633692;
 Fri, 20 Mar 2020 11:23:53 -0700 (PDT)
Date: Fri, 20 Mar 2020 11:23:47 -0700
Message-Id: <20200320182347.87675-1-irogers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH v2] perf mem2node: avoid double free related to realloc
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CU06efIQ;       spf=pass
 (google.com: domain of 3oqp1xgckerwajg86jk8gg8d6.4ge4d2f8-3madl-dafmp8gg8d68jgmhk.4ge@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3OQp1XgcKERwAJG86JK8GG8D6.4GE4D2F8-3MADL-DAFMP8GG8D68JGMHK.4GE@flex--irogers.bounces.google.com;
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

Realloc of size zero is a free not an error, avoid this causing a double
free. Caught by clang's address sanitizer:

==2634==ERROR: AddressSanitizer: attempting double-free on 0x6020000015f0 in thread T0:
    #0 0x5649659297fd in free llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:123:3
    #1 0x5649659e9251 in __zfree tools/lib/zalloc.c:13:2
    #2 0x564965c0f92c in mem2node__exit tools/perf/util/mem2node.c:114:2
    #3 0x564965a08b4c in perf_c2c__report tools/perf/builtin-c2c.c:2867:2
    #4 0x564965a0616a in cmd_c2c tools/perf/builtin-c2c.c:2989:10
    #5 0x564965944348 in run_builtin tools/perf/perf.c:312:11
    #6 0x564965943235 in handle_internal_command tools/perf/perf.c:364:8
    #7 0x5649659440c4 in run_argv tools/perf/perf.c:408:2
    #8 0x564965942e41 in main tools/perf/perf.c:538:3

0x6020000015f0 is located 0 bytes inside of 1-byte region [0x6020000015f0,0x6020000015f1)
freed by thread T0 here:
    #0 0x564965929da3 in realloc third_party/llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:164:3
    #1 0x564965c0f55e in mem2node__init tools/perf/util/mem2node.c:97:16
    #2 0x564965a08956 in perf_c2c__report tools/perf/builtin-c2c.c:2803:8
    #3 0x564965a0616a in cmd_c2c tools/perf/builtin-c2c.c:2989:10
    #4 0x564965944348 in run_builtin tools/perf/perf.c:312:11
    #5 0x564965943235 in handle_internal_command tools/perf/perf.c:364:8
    #6 0x5649659440c4 in run_argv tools/perf/perf.c:408:2
    #7 0x564965942e41 in main tools/perf/perf.c:538:3

previously allocated by thread T0 here:
    #0 0x564965929c42 in calloc third_party/llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:154:3
    #1 0x5649659e9220 in zalloc tools/lib/zalloc.c:8:9
    #2 0x564965c0f32d in mem2node__init tools/perf/util/mem2node.c:61:12
    #3 0x564965a08956 in perf_c2c__report tools/perf/builtin-c2c.c:2803:8
    #4 0x564965a0616a in cmd_c2c tools/perf/builtin-c2c.c:2989:10
    #5 0x564965944348 in run_builtin tools/perf/perf.c:312:11
    #6 0x564965943235 in handle_internal_command tools/perf/perf.c:364:8
    #7 0x5649659440c4 in run_argv tools/perf/perf.c:408:2
    #8 0x564965942e41 in main tools/perf/perf.c:538:3

v2: add a WARN_ON_ONCE when the free condition arises.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/mem2node.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/tools/perf/util/mem2node.c b/tools/perf/util/mem2node.c
index 797d86a1ab09..c84f5841c7ab 100644
--- a/tools/perf/util/mem2node.c
+++ b/tools/perf/util/mem2node.c
@@ -1,5 +1,6 @@
 #include <errno.h>
 #include <inttypes.h>
+#include <asm/bug.h>
 #include <linux/bitmap.h>
 #include <linux/kernel.h>
 #include <linux/zalloc.h>
@@ -95,7 +96,7 @@ int mem2node__init(struct mem2node *map, struct perf_env *env)
 
 	/* Cut unused entries, due to merging. */
 	tmp_entries = realloc(entries, sizeof(*entries) * j);
-	if (tmp_entries)
+	if (tmp_entries || WARN_ON_ONCE(j == 0))
 		entries = tmp_entries;
 
 	for (i = 0; i < j; i++) {
-- 
2.25.1.696.g5e7596f4ac-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320182347.87675-1-irogers%40google.com.
