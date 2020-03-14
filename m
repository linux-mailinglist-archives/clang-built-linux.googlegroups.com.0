Return-Path: <clang-built-linux+bncBDPPFIEASMFBB4F2WHZQKGQEPJHAJ6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC3B1854AB
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Mar 2020 05:28:33 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id w21sf4722679otp.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 21:28:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584160112; cv=pass;
        d=google.com; s=arc-20160816;
        b=vfCjl3PjFM6TEAmR4kd09qe3l+H2ApnL2//+o3JbllDnK2iyItN9f1IR1ujPYiZP1F
         2uis1IG/T0QZKkq2/dbSxG5SkOeQXPIN+7lsmXlbEPf63WK+QmrnIHl2Mua3D6emygqm
         TmnGvQcEvUOQPkJjL32TnAlymI6Cw4S1dVnQc2qBS5n/EGAFFJ+I9t1rnb4oU2FfyLhg
         2zCfUx5PYNtr1OyAeHt5IsanMkoCkSXuDBO6BvB4GF2oedF4zHhRAy/ak4+ANaHv8SkM
         XaSgVVDMDYRuhSZ42PRO6rCrK39T3QNAbpCful2GgAmtM78Sitw1gIgKWEn/RFGU8fXN
         qFTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=QMor3LgzpU60+tfHMOCGV528zaE1QrTxFcSiNG5dlTc=;
        b=WLhB+hjMntZtiRIfOh1KmoZyVykw9aZMqfMo8OIGt7KSxM/WTBdKvcJUrxVfbWCQGB
         BznpMMa36TGqbuLPrbiCCNRKTZEWBzTryPDpk6dTuwHLvKDCOqnUvjG+oN9mwr2xRA+h
         6sfiq3HqJkG64cqA3UvhL0aGQVudC3tLR/zRONwlD3jjtvmehHsDisXFXOKg7MO/MACx
         iMsc//nA8S9EwEEQvKHNiyU3Sin8Cqu3iS9b4NrHS9tNbsTOs+blN8VvdyecqIxW4kDW
         /zxpgl8zKsj0ZZoP6Pz8BJ06S3UKu58wSWuGFghtusdaAB6Ykb3dbnq0jx2RzaXltVSv
         a+HQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N7nblpYK;
       spf=pass (google.com: domain of 3bl1sxgckedm7gd53gh5dd5a3.1db1azc5-0j7ai-a7cjm5dd5a35gdjeh.1db@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3bl1sXgcKEdM7GD53GH5DD5A3.1DB1AzC5-0J7AI-A7CJM5DD5A35GDJEH.1DB@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=QMor3LgzpU60+tfHMOCGV528zaE1QrTxFcSiNG5dlTc=;
        b=dgh4wMLsmUjZu/IW8Vr23wVLWFux9byfqxk2xb/IQqcP+uSFUUkZcBe8pJZn5r59LA
         vPOgOm9EJ1EAjh2c+4oHC9e80c6fEMC+7bQlFLMU66fqld5hHPfbNW1WBwgwLJTGAgMT
         nLQV8XhPqkerz4ISXO+pF/BYT+Rxpmk8Lq361TyoMH6nZofyHcGfwi2TbwZBRIGmo8IM
         qVF5XSVtb7X+xKFv4Vlue6Vrd8x+jWtJGHvSq44+tBwW5YAfbuGgg9xymHeBt3VqChp1
         F5mI77FDrnMahZC9ManFmLpi9G8AzshdqNJ3x/RExNgMLYz530s5MbW1mUNsgNEen5pU
         Y7lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QMor3LgzpU60+tfHMOCGV528zaE1QrTxFcSiNG5dlTc=;
        b=ibTBSh9gd+ar/gnAodX0hpNqOZ2JZqgaQn333qdhlRudph5bMAT2MckexFw6eB0yOT
         i9F5xMx/eap95QLdQM575a5lAA6py7qbawMR6ASGHRqkpupv4osZFSzwYaBXV2wFeeVZ
         hXqiei3r0MGPBZScnZT9xE+zZ16Ipmq2rBvmkXG5bLh+ecbhUU/ukRI2MtkalDkyH7Xi
         JAIYG/im8NeQy4DMBganpMlqklWb35xh0o/TR296gjjj5ceVHgkewtnnr5kNoAu3nyy8
         +OfEwLwm0l7eII8d5FfAJoTqK9gdLYWgWYrUpHp5x6kGywTEpMgyWs3h87VPsFUXvqjM
         ra8w==
X-Gm-Message-State: ANhLgQ10iBjHK82emx6+UTkMjdTWGLcEHnU1uAUb9ZlK+/gP5AnJ4ziJ
	xwlERqh5+F6gsxO/vgVzF7Q=
X-Google-Smtp-Source: ADFU+vtVDOQx8cs+UaV9c6FtgpkdeP/AImIiFcgAcAcu/McFe/ZuCA35O0e3v3i+lQY9h0j2JJF8xw==
X-Received: by 2002:a9d:bf7:: with SMTP id 110mr14676529oth.259.1584160112071;
        Fri, 13 Mar 2020 21:28:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:69cb:: with SMTP id v11ls3810141oto.5.gmail; Fri, 13 Mar
 2020 21:28:31 -0700 (PDT)
X-Received: by 2002:a9d:d27:: with SMTP id 36mr14473798oti.230.1584160111745;
        Fri, 13 Mar 2020 21:28:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584160111; cv=none;
        d=google.com; s=arc-20160816;
        b=y5RSL8g6HsbWvSDqKZUW8VEtR3Ir1K4DTrPMcVm8UaCGSozCZUVn5up7Zpd8jwxMQZ
         /s8R1VYhRVlhe07COukx4CnpYm89O83AkY4Psdd3kmF5yZ5FU866LIfa9cn29X4OFvJW
         UmcgaQQR1GMcx5hiT+rIF8ZG08qjoPvvamX6276ZO3AVVShkoRUK8gbWrQq2CBCMgU8Z
         ZyPV5EAYFR8KwJdBwnPdcVgwbfU4KVZV90MtO9SfJGX0qrYTcrPwiqoqJ0aGduvg5S4X
         J76WAh1/PFYu2gpjUMQ8EmLdsvM/JaYf292xd2GxSeo5o0ITjMiBKYpeml7aIs+67rre
         T8Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=OdlDyP22xWR3iukZ6BIAXqjFyoG87PPBI1OEHmhmYzg=;
        b=BPvVDoWPOh8LSxpUdMV6dDja84EEyDjnrCYS/J11rMH88iWXsshE3KhodFJ4MQ3kh1
         aG9L4SO+28CIbfrOi1ZSLcFVL1WHazibliTa3DTiZLLix2sWQqEqWNCxT2Y1rVE+tHZE
         ASBr7aDh/aOG4lRH4/kP4LzO05Gf16hxlSPOzdgHcXOSkTJq0kRyA+LHXC7D5MA/Tx0H
         3vOhSHSDkOTuvFilCUYs7AjwgXz31a1vRHOg0miKkDmgivXDkEP4cWhBCSVdg2x1qnv3
         dddzaNb/ubeNYEKB13j1mPfnm/fYOOSsoO2J4OY/Ui/lzChRyxjIr1SDWosyD+kL03Q9
         9xYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N7nblpYK;
       spf=pass (google.com: domain of 3bl1sxgckedm7gd53gh5dd5a3.1db1azc5-0j7ai-a7cjm5dd5a35gdjeh.1db@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3bl1sXgcKEdM7GD53GH5DD5A3.1DB1AzC5-0J7AI-A7CJM5DD5A35GDJEH.1DB@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id v19si732631oth.1.2020.03.13.21.28.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 21:28:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3bl1sxgckedm7gd53gh5dd5a3.1db1azc5-0j7ai-a7cjm5dd5a35gdjeh.1db@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id o5so2607314pfp.0
        for <clang-built-linux@googlegroups.com>; Fri, 13 Mar 2020 21:28:31 -0700 (PDT)
X-Received: by 2002:a17:90a:e38a:: with SMTP id b10mr5576509pjz.159.1584160110864;
 Fri, 13 Mar 2020 21:28:30 -0700 (PDT)
Date: Fri, 13 Mar 2020 21:28:26 -0700
Message-Id: <20200314042826.166953-1-irogers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
Subject: [PATCH] perf mem2node: avoid double free related to realloc
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
 header.i=@google.com header.s=20161025 header.b=N7nblpYK;       spf=pass
 (google.com: domain of 3bl1sxgckedm7gd53gh5dd5a3.1db1azc5-0j7ai-a7cjm5dd5a35gdjeh.1db@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3bl1sXgcKEdM7GD53GH5DD5A3.1DB1AzC5-0J7AI-A7CJM5DD5A35GDJEH.1DB@flex--irogers.bounces.google.com;
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

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/mem2node.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/perf/util/mem2node.c b/tools/perf/util/mem2node.c
index 797d86a1ab09..7f97aa69eb65 100644
--- a/tools/perf/util/mem2node.c
+++ b/tools/perf/util/mem2node.c
@@ -95,7 +95,7 @@ int mem2node__init(struct mem2node *map, struct perf_env *env)
 
 	/* Cut unused entries, due to merging. */
 	tmp_entries = realloc(entries, sizeof(*entries) * j);
-	if (tmp_entries)
+	if (j == 0 || tmp_entries)
 		entries = tmp_entries;
 
 	for (i = 0; i < j; i++) {
-- 
2.25.1.481.gfbce0eb801-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200314042826.166953-1-irogers%40google.com.
