Return-Path: <clang-built-linux+bncBC4IFTUFXEFBBUHRWL5QKGQEO6MXDPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2373A27750D
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 17:18:42 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id h8sf2617231ioa.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 08:18:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600960721; cv=pass;
        d=google.com; s=arc-20160816;
        b=KVemX2B4yOoWO5Y084mc5eb/Qay1yBsyBcEyQuK+BqSfzibm3vfEpaNUuyaANnYeQP
         SiG0nfFedzFeRuIilHatrJn+81NdtIzt1OqA1fVwdM7J6ZR3OIV2dF3qWskYyUsg7V3G
         Kg8kSz5cVNOp4vHG307y35UNkDE21KQR/d1+Z0SdRtNQXjv+tBSm+nCP8ioXEfJOS7hS
         pYUrcucICzFs+TCLcodIoWI+6zYaql4y0AVRl0cfhjjxPecSsTcRu5QJt2g8rtaesFq8
         nsga4/CtJSPm1KJ0ev/4KS50IECjN8C/2HvaJPPkSao810epqIGCmyNP+OuHkfT83Oua
         UD+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=4rKShuQNxTQ1N/qAy4qLWqr98PDq5JEEUdidhjWirs8=;
        b=iMf+0u29V62nxHT93hTyAV8bYrVDPOU8ZqRrje9rhTvZQ0VcHHchpQDd0H/ViXrG8Q
         +zjWClBzz5t6Bda6If99FJpYNSU8aipT9IhTLkPrNRk57a9/M71MkK53YEkPkqfkXAe0
         y+xgTFoZ8ncoHfTWjBdGn0ZbOxGQMNBdSGUCfwvAdL+LJMo4YCqGsQCElbL6B50aXorP
         JvjvNvIow1e7FXCxSLNo/mpX7SuggFih+8eOXjQnHKMwwK4xjoBEHB24HVzbNzv8bPEB
         CzL/iPQUje2dnmBizVRkqEFlOwDV1Erw9Qycj6dxudVwd5D66wGQ4SG/yurznLBP/nSi
         b3xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="s/D0DJJa";
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4rKShuQNxTQ1N/qAy4qLWqr98PDq5JEEUdidhjWirs8=;
        b=g4rrOMq7RiT9Pqc2pdgfoDQAriaFj5pHjlMuB5GlUQARwzTz4L6MroghLceGS5gXir
         SpmEyTVYz/j3H5KF8GuvBULvOzUQQOeP4eDdlfeb+FUu+kGaKFIgFcbjxYZyvGHjwvOv
         QV1jzoJusk5/AWeZIVBky3TeT9iliy+NGj5NN4+Vyxd2xdrs0uFG/nkrXoziz4IM7mrI
         C09wAxRYIoca8Vysad/ODhI8uebtChRY9HE0i+H/OFpjx6cUDtdHpY3p5SQOdH3jiqp/
         KvsufzZ6KxSmyr9kJdfld0WH/8wKuSjtFp8lE6UUTArGqIJWwI8MbYiN6bVrsVj2VpdI
         wYJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4rKShuQNxTQ1N/qAy4qLWqr98PDq5JEEUdidhjWirs8=;
        b=VtYT88yluq6flcBeRI0uVAWHNTCzuWH9M0Qu0LOeV9PTk0Nzt+4iiFygEGr6ke972c
         pIe+z7O2DDN6YSg42VSN2Ynj4h4eoi0c11By4/3RdIb7WN+R1QMbY2rj9P2kRyIOd25A
         2B2CWrFSeC0e3AnTcVrda7kE7RlQB5dUpheA080Av9IV9Z4xyAB1NRa+vYgTb1hgN1Kw
         KXLo0H9mbomCtQZ2lfsoeddM61CsnU4hm0OunRPCXqhXQKjdeoEV5OiGS6CMwRQ0A2Wo
         dSUNsQTCW/hsJdQmrzYK2iJ/7p6TxnrJAAheKUWn1g7D5cFUz/e1NxXL4sUYhuy75aQP
         s82w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wYgyb7BuunO8YHEIJ3KOkSQNaslky57KRU1fBzHQX4i8CI5A/
	d+aUrTGJVECjxh36r47e/AQ=
X-Google-Smtp-Source: ABdhPJyY/HW6NmhnKuVOL+gbzWRBmcJiIb5DOQqCkNl3fnIeu2gBYZ3cpFZmZoUYJLhNs2NayV6MfQ==
X-Received: by 2002:a92:9146:: with SMTP id t67mr4243867ild.297.1600960721081;
        Thu, 24 Sep 2020 08:18:41 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5bce:: with SMTP id c75ls922758ilg.8.gmail; Thu, 24 Sep
 2020 08:18:40 -0700 (PDT)
X-Received: by 2002:a92:aa8f:: with SMTP id p15mr1011134ill.100.1600960719533;
        Thu, 24 Sep 2020 08:18:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600960719; cv=none;
        d=google.com; s=arc-20160816;
        b=eGF0SpGpHSfbG68s/FdFnKvrfJQwFSK9c5c3nCGEHbe+v/5GVMUjZkI7zJlaPnEk2g
         vtrgNnAHZ82OVF2u41EPw5V6LXNmrMoMx+N0TKXPRFOY7/v2nXq1mWXOKC30GAxSLuOL
         g/T4oHKhSMNNEZvsBRPqAOueFDxMSuVKs3li5BptJwim5m70nqCrNzrCnt+G+rQxvosE
         gmByh7WR+7re60VfCKJQxgA6FnvSh8rUVcOtk6xbrInPz1xR5VZt/avcpHvtcWXr3OEA
         uW64bntzt5iqclL6DhMReKaaoAKVrV3osoLJCQ+BabRYCiQ6KVTFAdsCEHme2GmkLEiP
         wdZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=DlHSo/msgaMSzxmTxKgqtpf8q6tea/erFORyL2OITnw=;
        b=qbJ+gqty712JYYwXsFBOOflqsR2RuIW0ClzWopfWcAxqPg/wLVUUkfeA25L6cUOFkQ
         uXwUH6UoGT/R9wv7WpZAudAK6qVKwNpGgRCTKTJbL8zoWn9IR2cCNvybRr1MiiyFOdU8
         3yITiBVIWz5+OV+xijUhL0RGMzf6Rycb9UNtuD16lSzrpiFXTWmAIFcAJVHdFrqXNItd
         ruZP6/vJZbHW3vFhst6Wm0h/Ru81sQNUnvmeFY5u0WuofHPgNGAQ3sHV7pi87WKzQqDn
         tYtcxs8qQUX8Seo4jGLjWjZtt5ka/F/NhhkMw/BwZ6WB9X1KOEH2TSUT0WLTMDvGuv6m
         n4JQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="s/D0DJJa";
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id a5si294901ilr.3.2020.09.24.08.18.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2020 08:18:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id jw11so1775318pjb.0
        for <clang-built-linux@googlegroups.com>; Thu, 24 Sep 2020 08:18:39 -0700 (PDT)
X-Received: by 2002:a17:902:20b:b029:d2:5681:dcc4 with SMTP id 11-20020a170902020bb02900d25681dcc4mr4981875plc.65.1600960719109;
        Thu, 24 Sep 2020 08:18:39 -0700 (PDT)
Received: from localhost ([2600:3c01::f03c:91ff:fe8a:bb03])
        by smtp.gmail.com with ESMTPSA id y13sm3295151pfr.141.2020.09.24.08.18.37
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 24 Sep 2020 08:18:38 -0700 (PDT)
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
Subject: [PATCH v5 1/2] perf tests tsc: Make tsc testing as a common testing
Date: Thu, 24 Sep 2020 23:18:14 +0800
Message-Id: <20200924151815.22930-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200924151815.22930-1-leo.yan@linaro.org>
References: <20200924151815.22930-1-leo.yan@linaro.org>
X-Original-Sender: leo.yan@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="s/D0DJJa";       spf=pass
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

x86 arch provides the testing for conversion between tsc and perf time,
the testing is located in x86 arch folder.  Move this testing out from
x86 arch folder and place it into the common testing folder, so allows
to execute tsc testing on other architectures (e.g. Arm64).

This patch removes the inclusion of "arch-tests.h" from the testing
code, this can avoid building failure if any arch has no this header
file.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/arch/x86/include/arch-tests.h           | 1 -
 tools/perf/arch/x86/tests/Build                    | 1 -
 tools/perf/arch/x86/tests/arch-tests.c             | 4 ----
 tools/perf/tests/Build                             | 1 +
 tools/perf/tests/builtin-test.c                    | 4 ++++
 tools/perf/{arch/x86 => }/tests/perf-time-to-tsc.c | 6 ++----
 tools/perf/tests/tests.h                           | 1 +
 7 files changed, 8 insertions(+), 10 deletions(-)
 rename tools/perf/{arch/x86 => }/tests/perf-time-to-tsc.c (98%)

diff --git a/tools/perf/arch/x86/include/arch-tests.h b/tools/perf/arch/x86/include/arch-tests.h
index c41c5affe4be..6a54b94f1c25 100644
--- a/tools/perf/arch/x86/include/arch-tests.h
+++ b/tools/perf/arch/x86/include/arch-tests.h
@@ -7,7 +7,6 @@ struct test;
 
 /* Tests */
 int test__rdpmc(struct test *test __maybe_unused, int subtest);
-int test__perf_time_to_tsc(struct test *test __maybe_unused, int subtest);
 int test__insn_x86(struct test *test __maybe_unused, int subtest);
 int test__intel_pt_pkt_decoder(struct test *test, int subtest);
 int test__bp_modify(struct test *test, int subtest);
diff --git a/tools/perf/arch/x86/tests/Build b/tools/perf/arch/x86/tests/Build
index 2997c506550c..36d4f248b51d 100644
--- a/tools/perf/arch/x86/tests/Build
+++ b/tools/perf/arch/x86/tests/Build
@@ -3,6 +3,5 @@ perf-$(CONFIG_DWARF_UNWIND) += dwarf-unwind.o
 
 perf-y += arch-tests.o
 perf-y += rdpmc.o
-perf-y += perf-time-to-tsc.o
 perf-$(CONFIG_AUXTRACE) += insn-x86.o intel-pt-pkt-decoder-test.o
 perf-$(CONFIG_X86_64) += bp-modify.o
diff --git a/tools/perf/arch/x86/tests/arch-tests.c b/tools/perf/arch/x86/tests/arch-tests.c
index 6763135aec17..bc25d727b4e9 100644
--- a/tools/perf/arch/x86/tests/arch-tests.c
+++ b/tools/perf/arch/x86/tests/arch-tests.c
@@ -8,10 +8,6 @@ struct test arch_tests[] = {
 		.desc = "x86 rdpmc",
 		.func = test__rdpmc,
 	},
-	{
-		.desc = "Convert perf time to TSC",
-		.func = test__perf_time_to_tsc,
-	},
 #ifdef HAVE_DWARF_UNWIND_SUPPORT
 	{
 		.desc = "DWARF unwind",
diff --git a/tools/perf/tests/Build b/tools/perf/tests/Build
index 69bea7996f18..8ddf81447344 100644
--- a/tools/perf/tests/Build
+++ b/tools/perf/tests/Build
@@ -61,6 +61,7 @@ perf-y += demangle-java-test.o
 perf-y += pfm.o
 perf-y += parse-metric.o
 perf-y += pe-file-parsing.o
+perf-y += perf-time-to-tsc.o
 
 $(OUTPUT)tests/llvm-src-base.c: tests/bpf-script-example.c tests/Build
 	$(call rule_mkdir)
diff --git a/tools/perf/tests/builtin-test.c b/tools/perf/tests/builtin-test.c
index 651b8ea3354a..0abb5ce88962 100644
--- a/tools/perf/tests/builtin-test.c
+++ b/tools/perf/tests/builtin-test.c
@@ -345,6 +345,10 @@ static struct test generic_tests[] = {
 		.desc = "PE file support",
 		.func = test__pe_file_parsing,
 	},
+	{
+		.desc = "Convert perf time to TSC",
+		.func = test__perf_time_to_tsc,
+	},
 	{
 		.func = NULL,
 	},
diff --git a/tools/perf/arch/x86/tests/perf-time-to-tsc.c b/tools/perf/tests/perf-time-to-tsc.c
similarity index 98%
rename from tools/perf/arch/x86/tests/perf-time-to-tsc.c
rename to tools/perf/tests/perf-time-to-tsc.c
index 026d32ed078e..aee97c16c0d9 100644
--- a/tools/perf/arch/x86/tests/perf-time-to-tsc.c
+++ b/tools/perf/tests/perf-time-to-tsc.c
@@ -18,10 +18,8 @@
 #include "thread_map.h"
 #include "record.h"
 #include "tsc.h"
-#include "util/mmap.h"
-#include "tests/tests.h"
-
-#include "arch-tests.h"
+#include "mmap.h"
+#include "tests.h"
 
 #define CHECK__(x) {				\
 	while ((x) < 0) {			\
diff --git a/tools/perf/tests/tests.h b/tools/perf/tests/tests.h
index ef0f33c6ba23..60a1c317b8db 100644
--- a/tools/perf/tests/tests.h
+++ b/tools/perf/tests/tests.h
@@ -123,6 +123,7 @@ const char *test__pfm_subtest_get_desc(int subtest);
 int test__pfm_subtest_get_nr(void);
 int test__parse_metric(struct test *test, int subtest);
 int test__pe_file_parsing(struct test *test, int subtest);
+int test__perf_time_to_tsc(struct test *test, int subtest);
 
 bool test__bp_signal_is_supported(void);
 bool test__bp_account_is_supported(void);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200924151815.22930-2-leo.yan%40linaro.org.
