Return-Path: <clang-built-linux+bncBC4IFTUFXEFBBS7RWL5QKGQE6SV2IOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 340ED27750B
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 17:18:36 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id i80sf2848581ild.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 08:18:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600960715; cv=pass;
        d=google.com; s=arc-20160816;
        b=oNic3F5IiKwsCvXhn83Lmyx9Q/iHT9xWqKbmMi02oKnfLZHkt8WF0te5EgcTBCw2WN
         TMjFTy0E5N2S5rgEog9OayKwf/QW5BLYMs02INQ8j/hFVzgj4fBEeFffw8D1MoY8vps6
         0UzadWCZ/4aj/64Lr6mm+OcAqrRUfUxEei2x2qrpHbJ+byp2L59HHZp9C7ztRRmnNohl
         Sr30K+bZEs3e6hmYnEuhv7ySxhjNNLawcOOGUZzJkIjrD+qTqtyyg1VGaj4jWrQDCUPq
         LX7zFS5vY2kS+QPKv2Em7AzGRKL80Zyn0QsvjJ2BnOSK0OYKUUGq/d9HFZwV6hmYrqqp
         AWFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=iRWVIdunHqQIlPnuhpwTfn5xJH7PTYt67VS5es4vMUo=;
        b=QrFIhZ5UnlaFUGfQuMnBSoFnHOQ4ADCHwF3Jcv+useXl878/unVf8BQysFBQ7nefMp
         SwTzgoVi54rm71IJa97OgcD+6vt6z8Izd31UJ8QqDAniMwLP7rYgMtKvptQ/Ho/infnq
         su4BFQaxZzb77+VYLOfNGSxWUgtkYNIOMkBLCEDZt4+IAD4vZs2R+wxp06ayzFKpKsPv
         RLsDxWtIOz4ZJsNseN1OkyiP36kuk2LlJOBK6NQtpFFYXXlwaEP+YlCwQu6oLua7TuuP
         tSWPu/AyWuatF3O+Fqi4beA2i0sER9vfDExaxgc26dnBHuNUgskI5nkQNZtWNE0oQVaO
         j1/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=cVIv22lT;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iRWVIdunHqQIlPnuhpwTfn5xJH7PTYt67VS5es4vMUo=;
        b=aDb4hqeEbdpvI1IAjVTuIJn+BN8rGdmJ2rVFdsyaZIDiW4Pmq42Adyj7aqPFS7UX5v
         jNxlP/iJfLpIwYfyB1yhT+nkPg4yphkpObacTwdnRIesqfaKkSx+kBkQsHJVkr5q2F+Y
         kAchVamwcdjvhd1fmjQjl54FJejn77EdBXdYqOx5edBEhKy3++KOgt4gWMTjf+X+zMO5
         GPlKY+OjdxQB+sU94a0cC9EFRrX6eO8ahpwEc7UnfXQnpPJfGnEqXueLN0vBkf/iFF9N
         /sWHzqJ2RI58X58LdoEUR5I3MNFIfNBEgEFCKiBjGuHf2cEFX3zWZv/o3Nxl5+xzLmVT
         qJMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iRWVIdunHqQIlPnuhpwTfn5xJH7PTYt67VS5es4vMUo=;
        b=DyfyF2wUEkoWSF9u8YWzq+tz+5HyHvucgDORNd1ojMXk6KX7zxT8JcxZeFSYO761jN
         xuUSCo5Ju2Vlf5EBJJTmY4wBae0qfUzZ9opdFsDOJlaF2kyb4jw0oljxNuPPmejaKRjO
         yz79tWgB/qkQ/xIWv8xRLYguiZ1sh0G/17sTG57Q3ReB+FEo28BtN3G7XXAbskbFfMhd
         ATlIjFG4CG1+FYu6Ea5QJ7dHyr8CwLoKIXPIsep1NDH8xfwjIcYLFzUOUgeWAaLdtcBD
         OYj7taOSH3bg8YRMwavYy/TObiPeqVB5NSfjZYXW/Ek4ZZKf9SoGzYW6Vh1Zqj8bScNR
         Lxdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532+NlmhwLMONp6U2QA7EHku+z39E/4BMnjMXitMhpFW94yw3dn0
	ubM3B4Cpa4P0QarZk47w9Eo=
X-Google-Smtp-Source: ABdhPJxmy5avRZio/P3aBxGldQyPwOvnz8z63mF5U7lYwd/ywGQ9pXLYAgdSSA3345PtkIkF7FDHIg==
X-Received: by 2002:a6b:7c07:: with SMTP id m7mr3758521iok.32.1600960715145;
        Thu, 24 Sep 2020 08:18:35 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:dc09:: with SMTP id s9ls537060ioc.4.gmail; Thu, 24 Sep
 2020 08:18:34 -0700 (PDT)
X-Received: by 2002:a05:6602:2e87:: with SMTP id m7mr3532130iow.106.1600960714686;
        Thu, 24 Sep 2020 08:18:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600960714; cv=none;
        d=google.com; s=arc-20160816;
        b=C7MLFFqesqgitRNe5fr6M5Q82+pImKcAN95+bbfcdIigxVubiG2fGdLcZFgG6/7LCn
         4x5k6DNyxQYrSI9/oFI0w6Z9RCgkpfbvCjRRtjtpv+AdGLifo41P4wdTXNHdfBJZSTPF
         w1AibOpQR3JUj2hbmRJKVn2uVJtqZ4Fob7fYQfWZFcT9USwQkqxCgwdSs41HAM1LaO2m
         +kbgK/bUvS2TgLzgRdJWDtsAyxtSmp3r/kJKV2HWMsO2maVil5f3JLEUvB+Tu0LzazVN
         z1UPhH8qUPkiXQJxo7I82q4VPEhIgv0DMNKVEuETpW/bAt6Tn1JVZt2zDrLb6cBbWrXO
         cY7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=puw58mDs8KzYb2rLs0SANRcfJwykyGIPKXhMCo03gvU=;
        b=R1KfGNm9r77gxxyo5lcWb8wnfK+LzmHTnVixiWP6D07d3AirGUehew98tYxjduvAzU
         6NGEfW5/n1OSen64zTQJN40YQvalESqLQxFgpev0I619sU8HdTJKSHoIuMGd/eBYvlN+
         eowzYYlq9YklZBjg/lAARrjrhiaGiMqmFzz9zo5vAaswZZ7ekchEBeBauzrOrcuRTh6i
         1pWsZs+dONZmZYtqp3yi80XhU/l9Nl+Ppm4+hScs6+gmA2TFkyTX1kJDBuFiXbLl3Ce3
         7qHIKKUQ5rrLkhPrxJIjOGuF6VbC1eFjxLv9LnVJgrfibFZQtlPyIn7pYPd7JSZ+/tHD
         QWSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=cVIv22lT;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id a5si294901ilr.3.2020.09.24.08.18.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2020 08:18:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id jw11so1775318pjb.0
        for <clang-built-linux@googlegroups.com>; Thu, 24 Sep 2020 08:18:34 -0700 (PDT)
X-Received: by 2002:a17:90a:ba06:: with SMTP id s6mr4567290pjr.13.1600960713900;
        Thu, 24 Sep 2020 08:18:33 -0700 (PDT)
Received: from localhost ([2600:3c01::f03c:91ff:fe8a:bb03])
        by smtp.gmail.com with ESMTPSA id r4sm2619996pjf.4.2020.09.24.08.18.32
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 24 Sep 2020 08:18:33 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Will Deacon <will@kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ian Rogers <irogers@google.com>,
	Nick Gasson <nick.gasson@arm.com>,
	John Garry <john.garry@huawei.com>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Stephane Eranian <eranian@google.com>,
	Remi Bernon <rbernon@codeweavers.com>,
	Andi Kleen <ak@linux.intel.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Leo Yan <leo.yan@linaro.org>
Subject: [PATCH v5 0/2] perf: Make tsc testing as a common testing case
Date: Thu, 24 Sep 2020 23:18:13 +0800
Message-Id: <20200924151815.22930-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: leo.yan@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=cVIv22lT;       spf=pass
 (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::1042
 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

This patch set is to follow up the building failure which was found by
Arnaldo:

    CC       /tmp/build/perf/tests/llvm-src-prologue.o
    CC       /tmp/build/perf/tests/llvm-src-relocation.o
    tests/perf-time-to-tsc.c:24:10: fatal error: arch-tests.h: No such
    file or directory
    24 | #include "arch-tests.h"
       |          ^~~~~~~~~~~~~~
    compilation terminated.

Patch 01 has removed the header "arch-tests.h" from the testing code, so
that this can fix the reported building failure.

These two patches have been tested on x86_64 and Arm64.  Though I don't
test them on archs MIPS, PowerPC, etc, I tried to search every header so
ensure included headers are supported for all archs.

These two patches have been rebased on the perf/core branch with its
latest commit 69f48c7040d3 ("perf script: Add min, max to
futex-contention output, in addition to avg").


Leo Yan (2):
  perf tests tsc: Make tsc testing as a common testing
  perf tests tsc: Add checking helper is_supported()

 tools/perf/arch/x86/include/arch-tests.h      |  1 -
 tools/perf/arch/x86/tests/Build               |  1 -
 tools/perf/arch/x86/tests/arch-tests.c        |  4 ----
 tools/perf/tests/Build                        |  1 +
 tools/perf/tests/builtin-test.c               |  5 +++++
 .../{arch/x86 => }/tests/perf-time-to-tsc.c   | 19 +++++++++++++++----
 tools/perf/tests/tests.h                      |  2 ++
 7 files changed, 23 insertions(+), 10 deletions(-)
 rename tools/perf/{arch/x86 => }/tests/perf-time-to-tsc.c (92%)

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200924151815.22930-1-leo.yan%40linaro.org.
