Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBQVOSD5QKGQEP5XES4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D9A26EC35
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 04:11:16 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id n19sf1952910oof.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 19:11:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600395075; cv=pass;
        d=google.com; s=arc-20160816;
        b=RkBo0pYLQnf4nc7qp5Ljd1FyxhR0YbpWSnpUALQW1euEYPqZSGhybNExztswEYGnYl
         QJ9MKH3lUmNRzbJEj5fRJ7ADDOUAeVCZYtlNFzMpRMSRuPVu5PnZvo4zwdkMQFkxl4iM
         0sCydC5P6VAwUcuGkjCU2fz9Z3zbyGnTyR9jbMiux8GvyLl7I04igl+S5+d8bjx4rdTH
         zgDwBNgkmj1V3GHKrm507zit+MuEjTPANL0taG7jwonCPt4KsWtEoAs/F9gxgHuTubZK
         flG7tyRoVBMeX8U6rN2vMb5FLXIGEUANgDJ4n9CwJB4lRqpsNOkLDFFrVf9IEG4ug1QH
         wpvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nZvT1rF9YI6I4Iam+Vgp5kqxT1GBFjZsOpG7SBzesgI=;
        b=afoMIARd1j90SJejFt7v2l/h4FaToBoQqg0wGLXlD98PXV0Qxrq/Ia02mAULILTqDu
         5MMytXH7tE2o9MEhy40F8n3Lv5bXJL5MiiXfTz3wk0ugTYGIuzNZrYEONrkgMZ8ti3gi
         vacPnJIpknm2oYJKlOw6gi843RtQcHJ0JfNU/Ddzz6dKxITho6zYXakkC7R3RdLAsswU
         WyweC++xeoALJvWkLy9QhnNuipmFTevI4PfwqdCJ4L+d3IfG/ROe8t7HP+NOH2+K2v9i
         7vcF6jL4H9u0uD/E948WIeyf2/9gxMhRZlgP5RaTX1UvAgKj69VbN2mr3xwIxaRATzUP
         Pwgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=J7rUpesN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nZvT1rF9YI6I4Iam+Vgp5kqxT1GBFjZsOpG7SBzesgI=;
        b=lQZWRygqU5d88Gcm9x8KQtb0JMt0XBlx7fIWO2s6DbHrhP2NwwF7JCj6NguAXfzzoH
         oxVNqWsTXEugDnNXz9cnKuTCzNnznYHF9vEiHZtShs6nxQ5WirLVwEJSZ1gPCBVyCMXZ
         OfSK/BSPFlyX9kr0pCx56+mY8SIpHLVuwSMPdK1qRlvJU1vEoN1qzdWCr15JPQBJ/xoK
         GxxWn2dFfsgOoNfsYjC+6qil9pVI05fgOr3sWBraDmh/JRcZ04+KjX7sOJzombUnQ5oO
         kw8NiMl38iD64m95XbynYgyC55w4jGn8BIsdnHMQ8lzuzABVNp93cLFWRT+Ogamamzcj
         qiMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nZvT1rF9YI6I4Iam+Vgp5kqxT1GBFjZsOpG7SBzesgI=;
        b=LLyYhEaFUqKpmjf53UJB4EVwXJ/f1EHRBw01bhnt5FYd+HWIZQ69fcVaGxDyfwOdK1
         bgghJX2cuRfQuF5SovnfPVyZm19YKGvREwmnkH+xtz6xAH16OY3h0a+GiJpn+1RiR1Iw
         ynUmAd88QtbZ0dnvamgMtKXjnJfC+RnQdlh/hzVhHWkooGDl6lSEWypBc1Ezgng9elEl
         LDelmMQoqtpSFJGEhcG+iMXAKX2lAvJ1Oef/dzrr4VyFR+WzTalcIV16gcxFEh4EJ+1O
         nDGIhv1pAnPCEI4JxMVXDDGEJ6xh5OCLOUsdLe335TRETRaKGYZuFf5TqFxF0Or7C2g1
         i1Vw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532fRmiYSzqu9Y6qUfccDXNhYppinEiNnZo7/gJow1oVXIfaOcnD
	oYRVd6+4efIvQ6dhe3OXs40=
X-Google-Smtp-Source: ABdhPJylFyG55VPx341G/vJyWLHaXFiJsfm/Ev7SOEbNRRTcS3egNm8aEA/TYV/Fj2VzHjPrl5Z1Mg==
X-Received: by 2002:a4a:344b:: with SMTP id n11mr22636239oof.89.1600395074815;
        Thu, 17 Sep 2020 19:11:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:614b:: with SMTP id c11ls910171otk.2.gmail; Thu, 17 Sep
 2020 19:11:14 -0700 (PDT)
X-Received: by 2002:a05:6830:101:: with SMTP id i1mr3776701otp.300.1600395074474;
        Thu, 17 Sep 2020 19:11:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600395074; cv=none;
        d=google.com; s=arc-20160816;
        b=ZqCDmJF7fKKinN8tJb+nDRckG8yZemDRU1M8G2OtiyNduUiQRahCZAZYn3cIkQMyGL
         s8SWP+Hd93Fg3FmHsUQ8LcCNAunq9Dx0aTylkFJOiwTMrMUMDrqiEOeFwSqXPOYBsGCE
         QMFCXaMZxDLzm9b+OqC2AwudcjYqh68ssoDbJ9wwGOmKsgLm3rh8TcLSn5ohxbqA4sgW
         MvzG1S/nc5ZzXAAXYabUa/fV3lYN2GJSM/sXAlfdwTSSDWpSHGSBb+XIUr+REA9zdtUC
         VXGZUmRGu12Ojzs6kK2tzE5kL/vn6H43dlGn/a0V1hFFAt/hgFCbTPSyNVsagXMNra2Z
         p4mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=OeB92nl4uRjrPFy/tuqWaCXnLb8KU8lagnBB2h+wyUw=;
        b=jXapCBDfNGnY1Ftfyt5uy7xJH1Q8uz4SN/OhSFsSq29ZMd6PGicQzwP+xEoJf0cywO
         J668luUsB6K5LHRZY2cQPOuZSU575RDSh2KbK2cPjzMxGT8O9OVhbuZeT31AxFv68qPv
         hif6yrG2RuBZuQI2mJbdZef+dJDhwKEeGNquQdnVQ+e71XajnbLuP2Wi4iiCRrNljG5T
         BzjtJyoux+c1QZDoySoOmTXrmbAuX0wMlTU9pMEOQTfjEad4asQbgKOt76VtoOJV3LDC
         sEy1W766SCQLvvk/qUV5KDByptRGsU8AQRX0bPD88HQCSYcpD/25na43mwvYCdMmw3Px
         jxFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=J7rUpesN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l19si149683oih.2.2020.09.17.19.11.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 19:11:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8BA4E23119;
	Fri, 18 Sep 2020 02:11:12 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Ian Rogers <irogers@google.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Stephane Eranian <eranian@google.com>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 4.19 157/206] perf mem2node: Avoid double free related to realloc
Date: Thu, 17 Sep 2020 22:07:13 -0400
Message-Id: <20200918020802.2065198-157-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200918020802.2065198-1-sashal@kernel.org>
References: <20200918020802.2065198-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=J7rUpesN;       spf=pass
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
index c6fd81c025863..81c5a2e438b7d 100644
--- a/tools/perf/util/mem2node.c
+++ b/tools/perf/util/mem2node.c
@@ -1,5 +1,6 @@
 #include <errno.h>
 #include <inttypes.h>
+#include <asm/bug.h>
 #include <linux/bitmap.h>
 #include "mem2node.h"
 #include "util.h"
@@ -92,7 +93,7 @@ int mem2node__init(struct mem2node *map, struct perf_env *env)
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918020802.2065198-157-sashal%40kernel.org.
