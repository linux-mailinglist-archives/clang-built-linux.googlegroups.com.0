Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBCV3ZT5QKGQECNNKMJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id C680127C60A
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 13:42:03 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id k190sf1257662vsk.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 04:42:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601379723; cv=pass;
        d=google.com; s=arc-20160816;
        b=ytWTdw3NitTqWWaNHLMh7tnlPjJVLlEeE1/e90Wyly1AyuevcQ6WOq3+wrI0GCPjEk
         VZ2Br/zRtmnXDuruSVGfIPkgX0hFdjRpjbfmYOYzIJOkWppGe28xHT4+Ia6pHBIVhDwi
         ilDMAn1xUTe4/O8eRmnZ+8arul7DoNQ7i4/TRomWiAyBeVDbcgOBiih1MRTwnzNmsMnP
         IUBm6o1Z+ZZZtDIfG7+QkVceSMOUytm1LHblbZpAqtE7Eg9hZfT3psev2dbWV89f7GfM
         oeaMz8yMOWICUf6Ed0dsFBUCYWj0WnOrpReQpy1VEZ9Zc0GXHwjeFx8eYxLwszOHxCKf
         z8ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=z/nIaPRvB5tKX/ZdV979RrA0vMas5/J6XqKUXZmQeHg=;
        b=PeICliyeFr3u1fgVki0YSMIful2f57O1cIyU7tYaSK8phsReSd3O5Gro9glZ6ps0qS
         wiGnj8DOnL6EYQ01WZrBvLyd6rlRZIokaMlgWntrod7kmp5AjFy2QvaDBUxYtQmDHoj9
         42JT3uD10MvTLYc2Jbq6wffrxHOSmIGv2CjUij94bE6xBmvEFgG9Tq5rz1fz0Uudy+Fz
         SvYjJ3MOZ8PZd1NNS4NAPIMnOZIr4Of0dOuH1Swdd2fUNxSvaiapov8TG0FzbhSoOaw+
         rho/06yAZw5sSbHXCFg9Yg8LBVZI/yYj21zl2xwzWvimE2uZ3fc6Tx/vQjSvPk1r1shn
         kxxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sXwP7BR4;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z/nIaPRvB5tKX/ZdV979RrA0vMas5/J6XqKUXZmQeHg=;
        b=sz08ZCsF1S/ueuvjAqg8i5U4LFsm4+R7T94nRagPFa4rAqT0LQz61kjfWm8ypiAgf5
         RmRIGuS14qk05Q2liRnQsMgCW/cALm6HFXemrr/PnflwV/XECWGcn36DySYWWw+TbTaC
         uML196pWfldBQ8mS2lhf0vlLh9+KBhLuiedH9Taab+8Aj1qtWky1ja75F9pQyd5OxHk+
         Hm++WT8E45FnSU9w59WcVN9DGtmUPliZXTBHKf+rBzjwxeM/MAEY21QBAjoJeQ5bc5WB
         eRC/dvI9V5jvysYf8UKE3PfTCTpc76Fx1eITDtJWoKAihe2/MWE5UJzgja4oGtIqQfxl
         e+Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z/nIaPRvB5tKX/ZdV979RrA0vMas5/J6XqKUXZmQeHg=;
        b=HmugiKmv4DEDDUn3Wq9WS5NpEhyO+hpIciFGRQuLb3WcPgiDxKvOmCg2pIN9jgfsnE
         fPIC5XqwNWn1siVcOVmmXZPjLNkhCVJReDS5OFm5Ef8idIYN0ZO7AjKgZhAV4IhMFIIY
         0bWbc3ldNpHAmQd3SwrhhS2hE8M5Mg54P2xf5Zh6tIQTuoUEfAwOod2iuL2547wksbqA
         y6RMOraJ/mu6tyULGZq25yUpaYkMvBia0zW5A6o4E/9qXGaCnx4uoSDZjY3p+n9InrYc
         5eL7w2XJ+F0/Mdo7QvbsqlZPLaj4uuWznSmCwPNIRSExnuad5lpzhlmRIyOxriUXqmkt
         4MfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303Er/8jZ4yJ+sX87MRhk7okZVcol4hTvq53V8OoPXqyJdGGh0Y
	vESJkLd36S31tWKvFdqeTOo=
X-Google-Smtp-Source: ABdhPJwEOmI7YuRQLQhNUXRbEPif6sIPW0ghZ9w3BiSYI7nSYgxFHUgUWrKKHltJp2kC4ItTrCgiSw==
X-Received: by 2002:ab0:234b:: with SMTP id h11mr3377460uao.80.1601379722840;
        Tue, 29 Sep 2020 04:42:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:3d1:: with SMTP id n17ls624310vsq.2.gmail; Tue, 29
 Sep 2020 04:42:02 -0700 (PDT)
X-Received: by 2002:a67:e2c2:: with SMTP id i2mr2469182vsm.27.1601379722058;
        Tue, 29 Sep 2020 04:42:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601379722; cv=none;
        d=google.com; s=arc-20160816;
        b=SrBGj1w5VERmAXJ0Ba96iFJ8zlplftvZ7lkrfHtLBNuLjNE0aEzfFbWQangyLfwt1/
         /xCOWje+DcsFLBf3rmb8P2LSJeIEyBQXW/hX8DVu6fBSwRUEXi+5vmgb/09qnTVxrYuT
         cHdNVfA5/yabffWwuP6GL9lgg/iVoUpY59MPv1gHJIMAHdkehOlfW6CgVI/Rc80x9xgP
         4innC8QRH9lTmeJkyKIiv/bql4VjlLR9bVWDX1smrZr8BUdlGffb05BZaVRNPor2IWqF
         vyki+nI/G//qc00oPdljz4lkSHgdJd8B75RZZXmYKmX1iul/vRXHi7uqXp6hT33tz9I3
         4L5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=JMeihtiiq6ixqNRZM47zc13v3tJ71X2MM+6a2sFnv2c=;
        b=BnV/NoXcLTMglLN7bu1fqV8KQM8PHKUYJl9VZAUtrqn6Usl2sWO2ip56BhieNlgife
         IMz5kWG721IlUwPdIjqYQaAo11/znOX8VjUlRMhVY58E4Pi5qnIf2FasrTjpGEafoBr4
         5J9X1PehDJOL/JlBxY63exztOMdE7wZLFTEL5XexMxraRhS5+JMhg9/ELNLouI/rg30/
         jYpTmw/YLc/t8svk7by2wi869JHRA5NDwxjMaIlue3Oj1KLq2Lqbkk+zha4s8+ykGXnU
         lz1GsjgHLMLkydGkMJ1bLByF/4by2eSJ00FichJN7YN6jtNRTkaKLKC5OeEa52Rloy6W
         xtIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sXwP7BR4;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h9si205406vsh.2.2020.09.29.04.42.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2020 04:42:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 76D8C2074A;
	Tue, 29 Sep 2020 11:42:00 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Stephane Eranian <eranian@google.com>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 5.4 249/388] perf mem2node: Avoid double free related to realloc
Date: Tue, 29 Sep 2020 12:59:40 +0200
Message-Id: <20200929110022.534635698@linuxfoundation.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929110010.467764689@linuxfoundation.org>
References: <20200929110010.467764689@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=sXwP7BR4;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

[ Upstream commit 266150c94c69429cf6d18e130237224a047f5061 ]

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
Acked-by: Jiri Olsa <jolsa@redhat.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20200320182347.87675-1-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/util/mem2node.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/tools/perf/util/mem2node.c b/tools/perf/util/mem2node.c
index 797d86a1ab095..c84f5841c7abd 100644
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
2.25.1



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929110022.534635698%40linuxfoundation.org.
