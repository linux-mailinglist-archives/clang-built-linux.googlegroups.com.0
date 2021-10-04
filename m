Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBQH45OFAMGQEFPJYETQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF50420D8D
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Oct 2021 15:14:42 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id m26-20020ac87b5a000000b002a6b3744ae6sf20346141qtu.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Oct 2021 06:14:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633353281; cv=pass;
        d=google.com; s=arc-20160816;
        b=BrJS9Ab0R33Ip+FdSjCV4hNeKM/r3Lg5aR2h0kVufDeqWqrih0vAUGjJcLQI1qTfDT
         XtF50Y3QKf/wm94dWvnd/6XGg6ZIEZmdKESz3195pZwtkB+L2mLgNtbctqafVy2BJQeP
         MNHwtNlXvztrhGGNokVp/iVGWMvUJ/YK4rX7fZrQ8R5tXbIoLikZIoyKY2jhgC3nqeDL
         Js2BxOfuD+gW6CXduf2ecaDGZtK6WVzBfltQtbYkM8UNHwqELIGhsBJnFmFmzPj2jhcz
         BgFNtIwmC/aJd4X4HC345VXm39+hqXeAfYbiXO+bSgKdGClI8+deg22u5PKyM4gXBWnU
         FAxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=etPD+3A9kzqV6uY+RmKOcH8bEHCSqm/6EFe6EOjHvmE=;
        b=cAfcd+lBhPE7fNbeBrak4Pi3CtSok+Dwll7HQnNp+mvKJdKl0EX4Fhs/kTsgaOAzQZ
         DrpsWMsai7MYbF8elZCdDfgXmsNPeyFfxADadyugOzmqz6+uxyEKQqkp77YUbDHVB5e3
         +kVrygxSs9qiHEYaNovgXrKkSZZcuwy2EWX8UGmxhET/ldhOrYGrP1/gqbV+ohiB9NPq
         PJ33SCBPnDt84VexeiYN+Tv1v1FexjUWyn69w0bdGRzXC3yFj10iJd+IoroDiJgR1wvx
         TPv2P2foVt+jgqurPm7dCNXZa7tdZQGrpI9fHWTZPv2kJxwnJjVwKUghUW8OZ0tGktJk
         nqZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=GLmUC2GW;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=etPD+3A9kzqV6uY+RmKOcH8bEHCSqm/6EFe6EOjHvmE=;
        b=MZmr4fD0mh9g0ZSfcCUTqU+MRebdh4GU5qLVYJBQ0s1XM/QoUpAZcbgGnMSOmn3Rv6
         wfCGhim/IaZnmwz+gglFz3uiTulKjEOlpmQ4zdguV9sXqG3lIv21bI2oeoPM6Ppl8v5i
         ofBGtjW2t5ozok9D0KpSiJJ0Zv2Q3CpTrmPE3JzvUGgPllnEM3KpvI1iT0tm08R85iy0
         ud7tnDIQXhpo1Y7HnHdB3MOQTzh7kVVkXJ1+vr2gndq6X0Alouq9edwHq6cS8yVljYZt
         Th+rMhrvOF3ZCsplPf9dyBvwzcqkHULTRNz9tNV/ylm//YEkFS05/0ppKK99QfuyA/+M
         TPSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=etPD+3A9kzqV6uY+RmKOcH8bEHCSqm/6EFe6EOjHvmE=;
        b=mRWmOmeHdTVMVdHYqlqtuFiVVJf+mWF6xXMf3VKEUEti2ndxl/qeE/UdzEfWuBhOLG
         WzRAAMQeF8MnHkToEUI2IhB/EiEPICfuOyd43SValgn78vNGQZUg5/UFdLb+QJdN0BmY
         /K7Lvatsfc6bttw+Qkm6NypS/WfzDCJv3LbeLaL5cEMZziDdJAFO/jCqPwq0n7mV0xSv
         s7SwhZV1Dn4xnn6VcBnedmtDKqnqwlaIBL4T3GdF2MnHhI0467ghuRpehdsWdCx7VVHf
         mASX6hXYGBNITT3dok7GxvtdqMjvUDzjn7YimksI2h3CT5IP4L277vbhS/QUG0bv4Dkc
         vPtA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532nwMKLpF+izouGUi6fRKDyE3/wWPJUSXUNQNUOul3UKsocF69o
	5d/vBxazUy/1kzR9xyaeZEE=
X-Google-Smtp-Source: ABdhPJyOhmn20K5n+M4t5I7WtCkGjDSYUJx6OfbnPTKbNDOjDNccWXtPwa53EZlbLc03BqAJ+ERmBg==
X-Received: by 2002:a0c:e345:: with SMTP id a5mr21628983qvm.14.1633353280787;
        Mon, 04 Oct 2021 06:14:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5ce:: with SMTP id 197ls10211846qkf.5.gmail; Mon, 04 Oct
 2021 06:14:40 -0700 (PDT)
X-Received: by 2002:a37:9a06:: with SMTP id c6mr10018880qke.53.1633353280229;
        Mon, 04 Oct 2021 06:14:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633353280; cv=none;
        d=google.com; s=arc-20160816;
        b=We8m6EhKLpHCQPh7jnSmRHisUTluFxmguYlnm9lPexOLRGcD41rFjFc4wvH0gd++Jr
         blcol1jsfwPs++ojk2EWT3VsUTJoYg+BG9uYGuxj+1T91WuuKouAf+pxnM/A22lKoR1M
         K7NnZwk+pLshXCS2eLqOMdWi/W4kSqUngOLnz2/qpgCoQhrezvHpBKfC9cTW0NcUAz0q
         Uwv9T6dR9mxMf1Z8Y/Qn1akd5buG3rqIJoMmfvj5jQdFnkAKc9xBv/QgNurglNvC/3S9
         el3uYfwgE1HRra+DWIafzDU5KIEPkDF0yXp8g9dd+6Z5AFY4unBBiEzL9jtx8rDEtvZE
         XpjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=fY3w5phr1V0yxDGU9CovEVo9eOSg1UHdNi/V0+EHzwM=;
        b=X5OW28TiuLGh6rYYTrWPRa13nxCCFNtlf6VXRrR5p1xotwq3SQj+atgQN2ziEUrFwd
         JThbsrQEmCUsTlBnKM3wHFQC3lDT1VGjuKMur0AYf1o9r2NlwDCAL1YLlt3QrHZd2ZJW
         q7VjjbIdeeu2GmvzT/iN3PoyM5rv5i0GI0J0/iFaRSctX3jlVUJ9QpOQ0oDR1aHu8Leo
         gxLwtrmBaLvqyPuk61UsAPFbCVDRBV+iBVH3qu1l0KnJItRidNKAVLzxe6CsXRhrykfx
         kdTeiyXmDwJKENi503iGjdHu9IOkMJFpnbTEoj2/yk181FgnsMK1yPPmVL1fXf4CoxKQ
         bluQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=GLmUC2GW;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f20si1548217qtm.0.2021.10.04.06.14.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Oct 2021 06:14:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B7F6D61BA0;
	Mon,  4 Oct 2021 13:14:38 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Miguel Ojeda <ojeda@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Stephane Eranian <eranian@google.com>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 5.14 023/172] perf test: Fix DWARF unwind for optimized builds.
Date: Mon,  4 Oct 2021 14:51:13 +0200
Message-Id: <20211004125045.713703969@linuxfoundation.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211004125044.945314266@linuxfoundation.org>
References: <20211004125044.945314266@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=GLmUC2GW;       spf=pass
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

[ Upstream commit 5c34aea341b16e29fde6e6c8d4b18866cd99754d ]

To ensure the stack frames are on the stack tail calls optimizations
need to be inhibited. If your compiler supports an attribute use it,
otherwise use an asm volatile barrier.

The barrier fix was suggested here:
https://lore.kernel.org/lkml/20201028081123.GT2628@hirez.programming.kicks-ass.net/
Tested with an optimized clang build and by forcing the asm barrier
route with an optimized clang build.

A GCC bug tracking a proper disable_tail_calls is:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=97831

Fixes: 9ae1e990f1ab ("perf tools: Remove broken __no_tail_call
       attribute")

v2. is a rebase. The original fix patch generated quite a lot of
    discussion over the right place for the fix:
    https://lore.kernel.org/lkml/20201114000803.909530-1-irogers@google.com/
    The patch reflects my preference of it being near the use, so that
    future code cleanups don't break this somewhat special usage.

Signed-off-by: Ian Rogers <irogers@google.com>
Acked-by: Jiri Olsa <jolsa@redhat.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Ard Biesheuvel <ardb@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Miguel Ojeda <ojeda@kernel.org>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20210922173812.456348-1-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/tests/dwarf-unwind.c | 39 +++++++++++++++++++++++++++------
 1 file changed, 32 insertions(+), 7 deletions(-)

diff --git a/tools/perf/tests/dwarf-unwind.c b/tools/perf/tests/dwarf-unwind.c
index a288035eb362..c756284b3b13 100644
--- a/tools/perf/tests/dwarf-unwind.c
+++ b/tools/perf/tests/dwarf-unwind.c
@@ -20,6 +20,23 @@
 /* For bsearch. We try to unwind functions in shared object. */
 #include <stdlib.h>
 
+/*
+ * The test will assert frames are on the stack but tail call optimizations lose
+ * the frame of the caller. Clang can disable this optimization on a called
+ * function but GCC currently (11/2020) lacks this attribute. The barrier is
+ * used to inhibit tail calls in these cases.
+ */
+#ifdef __has_attribute
+#if __has_attribute(disable_tail_calls)
+#define NO_TAIL_CALL_ATTRIBUTE __attribute__((disable_tail_calls))
+#define NO_TAIL_CALL_BARRIER
+#endif
+#endif
+#ifndef NO_TAIL_CALL_ATTRIBUTE
+#define NO_TAIL_CALL_ATTRIBUTE
+#define NO_TAIL_CALL_BARRIER __asm__ __volatile__("" : : : "memory");
+#endif
+
 static int mmap_handler(struct perf_tool *tool __maybe_unused,
 			union perf_event *event,
 			struct perf_sample *sample,
@@ -91,7 +108,7 @@ static int unwind_entry(struct unwind_entry *entry, void *arg)
 	return strcmp((const char *) symbol, funcs[idx]);
 }
 
-noinline int test_dwarf_unwind__thread(struct thread *thread)
+NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__thread(struct thread *thread)
 {
 	struct perf_sample sample;
 	unsigned long cnt = 0;
@@ -122,7 +139,7 @@ noinline int test_dwarf_unwind__thread(struct thread *thread)
 
 static int global_unwind_retval = -INT_MAX;
 
-noinline int test_dwarf_unwind__compare(void *p1, void *p2)
+NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__compare(void *p1, void *p2)
 {
 	/* Any possible value should be 'thread' */
 	struct thread *thread = *(struct thread **)p1;
@@ -141,7 +158,7 @@ noinline int test_dwarf_unwind__compare(void *p1, void *p2)
 	return p1 - p2;
 }
 
-noinline int test_dwarf_unwind__krava_3(struct thread *thread)
+NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__krava_3(struct thread *thread)
 {
 	struct thread *array[2] = {thread, thread};
 	void *fp = &bsearch;
@@ -160,14 +177,22 @@ noinline int test_dwarf_unwind__krava_3(struct thread *thread)
 	return global_unwind_retval;
 }
 
-noinline int test_dwarf_unwind__krava_2(struct thread *thread)
+NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__krava_2(struct thread *thread)
 {
-	return test_dwarf_unwind__krava_3(thread);
+	int ret;
+
+	ret =  test_dwarf_unwind__krava_3(thread);
+	NO_TAIL_CALL_BARRIER;
+	return ret;
 }
 
-noinline int test_dwarf_unwind__krava_1(struct thread *thread)
+NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__krava_1(struct thread *thread)
 {
-	return test_dwarf_unwind__krava_2(thread);
+	int ret;
+
+	ret =  test_dwarf_unwind__krava_2(thread);
+	NO_TAIL_CALL_BARRIER;
+	return ret;
 }
 
 int test__dwarf_unwind(struct test *test __maybe_unused, int subtest __maybe_unused)
-- 
2.33.0



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211004125045.713703969%40linuxfoundation.org.
