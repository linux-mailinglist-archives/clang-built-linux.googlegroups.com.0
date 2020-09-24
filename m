Return-Path: <clang-built-linux+bncBC4IFTUFXEFBBVHRWL5QKGQE7LBIVLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3549927750E
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 17:18:45 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id f199sf3172383yba.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 08:18:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600960724; cv=pass;
        d=google.com; s=arc-20160816;
        b=cDzvKwkAv5RPhy/AfKUXeFmKp0KOacMJ2wLH1BIJdVEmXVZpZucYC3JOrZStF+25YQ
         ScuPeLwmhLFYKk56QWSTVlBarEcZ3DDku6TOvs7nsDIIFjlL8tqqVg+3bhq5gnUA+2rV
         tPKx3rUQR3PYTWuFkBCDcY4rhgpVaiqwzouS5cdCevW01xWNN2if5tiCeYSnksYAaLzu
         2+khfFrd/XkPupIwxUQWPQrj54FC3qd5f3qMN/ePdvIzFqxQ5jMTxJApmpCVEO4uxOvZ
         9N6P3XSO1U02R6CQvrErZECvnci2qQ7ggicGcV9FEx3R0exDqH2zw8qs2KSgx/kb0eBe
         au6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=aBGkXKdJW3kJuKPDQTzADAM3QpCs7cNk1FbA2N+V8Vw=;
        b=0aA9jD0HcBxVNz6IwbzVz4Ibh57sS5csFzNwwv37q6DPFnUW4jWTyFj2ag2NOS3sE1
         1XoXN4/xXeAKGpPxm7jQyxOIpjkjawAEg/xzvG2ZFTDww3T83gCIMob0y8H1WQHa0gxl
         +mN2a9IpecwQh6Cs7L42X4FLt0CXFgTUQNCgkLl3BEqtUutAlowtTxoJgXg1rirZ+DoZ
         tykbOKiqSXSfxYQyX4MCVRzkBiqclaDPTon03Q4gmetI6TujihKdsLHexFdES/1SobNM
         4WZK47kJmY5xKp/aB0xmwL8r4bImrdknLMWr6Eo3S/dDBxmETVr4f9a3g0bRvHbrNKjk
         P+ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=eDprx9t4;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aBGkXKdJW3kJuKPDQTzADAM3QpCs7cNk1FbA2N+V8Vw=;
        b=L9opqN3EtmjnOJcNlFQkukYaBiQkP4pIidCvvPyKm14N8jB0xlxvFGS8NFj2goa0bz
         DxXp3CFRMwFIR7qaalAivos4LGWDibvnUuYIyIagMEWwJs4Xh9vWZiCGrCYiMmzm2zwL
         vuGfyFOWWkHO0hPCT0jJ8CsoxvKqVNtuC0AxLrKvhE+unFkRYAKJ/o3NHwBUhoQdM/xP
         bk3Me3W1M1VA22ykRSH5EeSF58fretG5VRsDEklypDE5lJYh8VHK6I/+AHAPrr1+mW9Y
         yo85CP3SMCxTlBcBn9LLJWpIE078QUT99SpOvhlORs+tjz5gYADg0nCatI3QTZFxHKeW
         d97g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aBGkXKdJW3kJuKPDQTzADAM3QpCs7cNk1FbA2N+V8Vw=;
        b=lp6Li7+WBjW4PzqiL+c9xnPfpUHi6oarc5+tMcSPRUBLIrIqzG0H71JjhhUJTTRnkA
         Qp6c9HhZNgFUuXHqKqkfaVsGcuhGok3pPsvcOfpCxGItfmNnRCTTiVMod3m12n2xQTH6
         MOaznoFAsiI3oUky+83BB/kkAeFpf6B80j6qSYJkPgiuC7Z49wAHAPlrcosmur4covVM
         ukP+aazqtwD/aySrQS8ct3S2Ssl+jmkDEQuwv2uM3EXcHEU/K4tSDTM6CIL+4/FEdGhu
         +r9gIcUVdZ1BcZEM6fL5UhYSf7MheJa+fp1kA2hP4KLTGrZVqNRIXjRZF2qN0gkZ+/7l
         afAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303G1BoCKHmUb4yrjDfapyph79zZ9tBkO2vueZhF1lbGGB4BEZT
	HinvLSxrkGO2yRzXQY4EeZw=
X-Google-Smtp-Source: ABdhPJzEm751+B9Tf8UvnKBhD0cqfhUrL7mK/ktUu7v8Upja6ypeIHU6GmkBom1P/FOo/wDqpFj8Lg==
X-Received: by 2002:a25:500c:: with SMTP id e12mr47462ybb.125.1600960724156;
        Thu, 24 Sep 2020 08:18:44 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:24d4:: with SMTP id k203ls1721602ybk.3.gmail; Thu, 24
 Sep 2020 08:18:43 -0700 (PDT)
X-Received: by 2002:a25:c00e:: with SMTP id c14mr116442ybf.262.1600960723672;
        Thu, 24 Sep 2020 08:18:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600960723; cv=none;
        d=google.com; s=arc-20160816;
        b=yOq40i+Su3quriG2/kC4zTnmzFgR19fxFv/VQF7gjPnKY77n2dxYnLPvKPFcgDlnjF
         MJw/HoD02voh6J/a0d9mCzm0wz+pjNUJitVUzm5T46zFrAUqd58xOIZPPU0iJdbcsxEj
         YBDACBY5FQhN+q43oMiiwFW4hMbbikGK7Q/ROLJXTJht4AINEtM2vrVWULUGoLwPQ6Hx
         UFCgdlf/yYGJmebEZ8RlSbI8sYfNZ63y0N6L7LpJsHhhj2jS3WWPACfnDR+D38Nna2pn
         yDfrYIeN15dysdxrXFxRznuA5nvB7emmZJsTwXk5scVbU91AuTi1uPnms5iCt/0wS4Mk
         Lv2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=subQd7H0xCv+i94BqfvfOBk2O4HVh7NJGTRdMFF+r4M=;
        b=cMKTMu8UKqkeb0QdUHjzkRzgUc0ok4+YXIeJg1BTQiSorHKvfxqmHg9etw7hpk/N7B
         xRQ46Aw+4YGVLsDNR1Pw4a5NJ9cPF8tWCvV8d82uzcXrK4QCCN6F6fTaKvF6qzxQLy4g
         /l4bwvFo8DZA8ervfgn1Vvv1P/erDBaP81lNfJAubiwZrtdephOINRugND+PJl1lXKh6
         +mmZtz3j/rVHf3Y6Vya/oEmnVFeGw0RQioZkc9+n2vyOgJdcAoHE/ID1nZEYDDfVhgw4
         UzR4tk/MEOV7WANH/lf+CaqhqRas0MSLcl8DTUd2h7YSaTfudFZmmQb428r3PuIa+pcL
         LDCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=eDprx9t4;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id y189si226067yby.5.2020.09.24.08.18.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2020 08:18:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id s19so1852902plp.3
        for <clang-built-linux@googlegroups.com>; Thu, 24 Sep 2020 08:18:43 -0700 (PDT)
X-Received: by 2002:a17:902:7248:b029:d2:2a05:6eed with SMTP id c8-20020a1709027248b02900d22a056eedmr5072810pll.80.1600960723217;
        Thu, 24 Sep 2020 08:18:43 -0700 (PDT)
Received: from localhost ([2600:3c01::f03c:91ff:fe8a:bb03])
        by smtp.gmail.com with ESMTPSA id y5sm3638073pge.62.2020.09.24.08.18.42
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 24 Sep 2020 08:18:42 -0700 (PDT)
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
Subject: [PATCH v5 2/2] perf tests tsc: Add checking helper is_supported()
Date: Thu, 24 Sep 2020 23:18:15 +0800
Message-Id: <20200924151815.22930-3-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200924151815.22930-1-leo.yan@linaro.org>
References: <20200924151815.22930-1-leo.yan@linaro.org>
X-Original-Sender: leo.yan@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=eDprx9t4;       spf=pass
 (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::644
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

So far tsc is enabled on x86_64, i386 and Arm64 architectures, add
checking helper to skip this testing for other architectures.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/tests/builtin-test.c     |  1 +
 tools/perf/tests/perf-time-to-tsc.c | 13 +++++++++++++
 tools/perf/tests/tests.h            |  1 +
 3 files changed, 15 insertions(+)

diff --git a/tools/perf/tests/builtin-test.c b/tools/perf/tests/builtin-test.c
index 0abb5ce88962..60682e945f9b 100644
--- a/tools/perf/tests/builtin-test.c
+++ b/tools/perf/tests/builtin-test.c
@@ -348,6 +348,7 @@ static struct test generic_tests[] = {
 	{
 		.desc = "Convert perf time to TSC",
 		.func = test__perf_time_to_tsc,
+		.is_supported = test__tsc_is_supported,
 	},
 	{
 		.func = NULL,
diff --git a/tools/perf/tests/perf-time-to-tsc.c b/tools/perf/tests/perf-time-to-tsc.c
index aee97c16c0d9..a9560e0f6360 100644
--- a/tools/perf/tests/perf-time-to-tsc.c
+++ b/tools/perf/tests/perf-time-to-tsc.c
@@ -169,3 +169,16 @@ int test__perf_time_to_tsc(struct test *test __maybe_unused, int subtest __maybe
 	evlist__delete(evlist);
 	return err;
 }
+
+bool test__tsc_is_supported(void)
+{
+	/*
+	 * Except x86_64/i386 and Arm64, other archs don't support TSC in perf.
+	 * Just enable the test for x86_64/i386 and Arm64 archs.
+	 */
+#if defined(__x86_64__) || defined(__i386__) || defined(__aarch64__)
+	return true;
+#else
+	return false;
+#endif
+}
diff --git a/tools/perf/tests/tests.h b/tools/perf/tests/tests.h
index 60a1c317b8db..9f1eedb21eee 100644
--- a/tools/perf/tests/tests.h
+++ b/tools/perf/tests/tests.h
@@ -128,6 +128,7 @@ int test__perf_time_to_tsc(struct test *test, int subtest);
 bool test__bp_signal_is_supported(void);
 bool test__bp_account_is_supported(void);
 bool test__wp_is_supported(void);
+bool test__tsc_is_supported(void);
 
 #if defined(__arm__) || defined(__aarch64__)
 #ifdef HAVE_DWARF_UNWIND_SUPPORT
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200924151815.22930-3-leo.yan%40linaro.org.
