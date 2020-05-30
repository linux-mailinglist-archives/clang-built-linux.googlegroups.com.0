Return-Path: <clang-built-linux+bncBDPPFIEASMFBBWFOZD3AKGQE2Y4GADY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DCB11E8FAD
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 10:20:42 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id i12sf3611565pjv.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 01:20:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590826840; cv=pass;
        d=google.com; s=arc-20160816;
        b=gwq1jMvKjmBfMEc0EmRM16yBPr3LRn0n9LczwJZ84S2NmADeqLWOuLYNM7mMcgVDIB
         VgcXjYRFOrKWIb+gzzCiU3XrfvJqBeyszhZAid8fRlHVvgUzzyTeLgdw4z30Wo93Y7+z
         /BCcEcOe3A8DmKdYBhXzVGVodDKWOkIbiCpMB4rr6HIPKpICO6o3kgXqUuunO4Cy3Zkw
         zjyNmBwvu3xA2BxEhlaRoLAq9d9CUGSSkmIwJYMJoVUUGiVsMN2uyNd5IC09VOlELBD0
         5poColIJ4sPsJ88CGvZZB2I/p0bEX0MdlUEjPPCY0Z5EKVkK3guM9antZNbocL0QLkwH
         mnkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=HK8CZHkK4Uf3l1bBVHJNOA0npgbvTP85DlMBps6NNSA=;
        b=A/wwfctePLl+fZm61b20dEzh8WbLhPDo1IJ17rkEkR9m5s8excKBSMEmPlK9BrJjNA
         GEj8wyGPYUs6W17SHfdtl9aqAIJ03poE5y7LxFlndn54f+tjdBfnEkSw9CIIMzjoYn42
         OEtkL/8DzA4qZdnhoxxegQe2dxKg4/xzepjfxBatNLgrSdFSl0K4KDhcKj9rL/5hBPX+
         pyqlwu+lDkLFSHLZnMO+tKlWZ0tZKDd/K0U8jCkKUWI+aTTDuOOEw33eCmS25UyLuc5Y
         B+/zZubYyyIQRT4ZNW8mIKCvZalBl5lhDdhQSVjyjdQpYeG2Dfu+pU1h0QFpyRQs3++w
         WP2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oDiMO4OH;
       spf=pass (google.com: domain of 3vxfsxgckecoy74wu78w44w1u.s42s1q3w-ray19-1y3adw44w1uw74a58.s42@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3VxfSXgcKEcoy74wu78w44w1u.s42s1q3w-rAy19-1y3ADw44w1uw74A58.s42@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HK8CZHkK4Uf3l1bBVHJNOA0npgbvTP85DlMBps6NNSA=;
        b=QEg/qaTIAoAW+gI6RBxDwNxlOzANLff1ToF5I4Xm3T2CYknYBkOQqUxTtJCPmy6nXu
         vejyt5ZO+ZN/SkzrVkmDKGjP01LXdP3/VKL1khdhmoHLxMe413ZUsR7j0eHJbXGGCjcQ
         kYAlW2jM4IrqJRDZ/ffkd0vovGnavh/kxMb3yoRllyuFS/TlVJr+kR3Okm+qjvWMCTET
         xe8clCg7gC2z9DNNgPb/oWnjvvgJy5OQrO7vTTjFX1dptQ81w3j4pG2g1sbvBTLKNyHM
         TedANi0xUtObP2+GTymKC5CDqvR1CjlL2Mv0KkvmoCn1sAm6g4IdMMbZygRy7bH1AfHZ
         WaRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HK8CZHkK4Uf3l1bBVHJNOA0npgbvTP85DlMBps6NNSA=;
        b=i3/wsqKjLWY61E7JohmmjWyKu8+HQLjbQC2Nd0SPphkiSUdqnZsYo5dGhDzEb/9IFY
         zwLPtpqEOc+JM+jWit8w9QbJcsWhxpLiFCJtQm05kEXiXj3dQIJym7iKV4RsUSn3VqA/
         YriinzXWqjwXYDvNCAowItYEcd/CmbIRfE3IiPI96dcMdQztMtK9ZPVlfqHa4W9PoaeA
         MET6uo5ouajcxGdTX0TFH4F9NwX6x4+MHmB8ctA69O8FbGpEQ5fUIL8XzTS01dHIXQ07
         sB1J07NXkH62S1y2r9fGvjynbJYHxadSHLa16QDFHmH+BSN1/QRJS0gp8yuv7b5NdrkD
         DorQ==
X-Gm-Message-State: AOAM531I0JwEPx3PFr+U5e/s3uhfoKQiOM3TkqRq2opMpW3oqxkHBtF/
	Z8hProYd1I9HuaBj5S/tWJU=
X-Google-Smtp-Source: ABdhPJzSq9JVWd1Ey1dKsMcCyYAl/tIIvYNBD1PAb0Q47lro9CQxrT5W0RHQMee/+/3p//RIR/9Gsw==
X-Received: by 2002:a17:902:a502:: with SMTP id s2mr12349354plq.267.1590826840700;
        Sat, 30 May 2020 01:20:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5a03:: with SMTP id o3ls2805651pgb.1.gmail; Sat, 30 May
 2020 01:20:40 -0700 (PDT)
X-Received: by 2002:a63:531a:: with SMTP id h26mr255711pgb.188.1590826840334;
        Sat, 30 May 2020 01:20:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590826840; cv=none;
        d=google.com; s=arc-20160816;
        b=Igmstn10H+v5tyeHvM8cpufh9spokjPP7Xpn6d2c/PRwJlsJHVXkQOtJUPjlVBCOgz
         KGDb1x0lB8qNhXd0bHrKRIVkcR4IQ0HDSkJFshEfID3M13AAavYPfi1P+smSuO0YJE1Q
         jefx6WbkxIQ6Z5xN+6yhezb0aT7GrwYnILDBdmRlJoExRfxWlDCqJnU+dGdVDZVxmiSS
         vxmlDwoUEAqJRPnnJvcvP/q50wE3g+mqPM/fjB4yvrPfNyV1pbtAlNPdG2RkKdjjlcfY
         T9sYQVHndRMAJ2INQ9sN6k8W9fWPE/KDRyDUNdAIbhapfYlGf95WKTA+syOSYyJkzYnd
         EKUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=ULNDcMU2cPOuKjungjzNkW5is5uzXicsHUJwDCdcrQ0=;
        b=CxYKq6RXY92fVwrDH7kIond2uAsOU1YUZLPOSeAijKmbUadLoHLG/1Yn4qhZjsC2Cp
         DEYofOL5S8srIGJYkQ3ouFj2wJ4YtIh2/QRh3pVuc+9/RM5ybd6iMy/AKB9B93YeIyQp
         fH6AZtHqG/++f//R+KsrorbMj57qDWTTJJG74mqAdWKYsvK9dDegpRtBy1ovJYRT3SjY
         5jE7jVvXKtYO8jaHKEWqQUF0LYP5+SsQe+iswx++BVfh9v1WUU3hu7ebNavuYJojHW8A
         ffSfyqf5sVtBi4FBFUGC5KSqNJuIB7ky0UeaM1s46RZ4YWhSReQl6HUHoMT00C4/PEZF
         IUeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oDiMO4OH;
       spf=pass (google.com: domain of 3vxfsxgckecoy74wu78w44w1u.s42s1q3w-ray19-1y3adw44w1uw74a58.s42@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3VxfSXgcKEcoy74wu78w44w1u.s42s1q3w-rAy19-1y3ADw44w1uw74A58.s42@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id q12si396933pfu.4.2020.05.30.01.20.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 May 2020 01:20:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3vxfsxgckecoy74wu78w44w1u.s42s1q3w-ray19-1y3adw44w1uw74a58.s42@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id v128so4681607yba.5
        for <clang-built-linux@googlegroups.com>; Sat, 30 May 2020 01:20:40 -0700 (PDT)
X-Received: by 2002:a25:80d0:: with SMTP id c16mr19278304ybm.98.1590826839536;
 Sat, 30 May 2020 01:20:39 -0700 (PDT)
Date: Sat, 30 May 2020 01:20:14 -0700
In-Reply-To: <20200530082015.39162-1-irogers@google.com>
Message-Id: <20200530082015.39162-3-irogers@google.com>
Mime-Version: 1.0
References: <20200530082015.39162-1-irogers@google.com>
X-Mailer: git-send-email 2.27.0.rc2.251.g90737beb825-goog
Subject: [PATCH 2/3] perf tests: Don't tail call optimize in unwind test
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Quentin Monnet <quentin@isovalent.com>, 
	Alexei Starovoitov <ast@kernel.org>, Jakub Kicinski <kuba@kernel.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oDiMO4OH;       spf=pass
 (google.com: domain of 3vxfsxgckecoy74wu78w44w1u.s42s1q3w-ray19-1y3adw44w1uw74a58.s42@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3VxfSXgcKEcoy74wu78w44w1u.s42s1q3w-rAy19-1y3ADw44w1uw74A58.s42@flex--irogers.bounces.google.com;
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

The tail call optimization can unexpectedly make the stack smaller and
cause the test to fail.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/tests/dwarf-unwind.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/tools/perf/tests/dwarf-unwind.c b/tools/perf/tests/dwarf-unwind.c
index 779ce280a0e9..2a0dac81f44c 100644
--- a/tools/perf/tests/dwarf-unwind.c
+++ b/tools/perf/tests/dwarf-unwind.c
@@ -94,7 +94,7 @@ static int unwind_entry(struct unwind_entry *entry, void *arg)
 	return strcmp((const char *) symbol, funcs[idx]);
 }
 
-noinline int test_dwarf_unwind__thread(struct thread *thread)
+__no_tail_call noinline int test_dwarf_unwind__thread(struct thread *thread)
 {
 	struct perf_sample sample;
 	unsigned long cnt = 0;
@@ -125,7 +125,7 @@ noinline int test_dwarf_unwind__thread(struct thread *thread)
 
 static int global_unwind_retval = -INT_MAX;
 
-noinline int test_dwarf_unwind__compare(void *p1, void *p2)
+__no_tail_call noinline int test_dwarf_unwind__compare(void *p1, void *p2)
 {
 	/* Any possible value should be 'thread' */
 	struct thread *thread = *(struct thread **)p1;
@@ -144,7 +144,7 @@ noinline int test_dwarf_unwind__compare(void *p1, void *p2)
 	return p1 - p2;
 }
 
-noinline int test_dwarf_unwind__krava_3(struct thread *thread)
+__no_tail_call noinline int test_dwarf_unwind__krava_3(struct thread *thread)
 {
 	struct thread *array[2] = {thread, thread};
 	void *fp = &bsearch;
@@ -163,12 +163,12 @@ noinline int test_dwarf_unwind__krava_3(struct thread *thread)
 	return global_unwind_retval;
 }
 
-noinline int test_dwarf_unwind__krava_2(struct thread *thread)
+__no_tail_call noinline int test_dwarf_unwind__krava_2(struct thread *thread)
 {
 	return test_dwarf_unwind__krava_3(thread);
 }
 
-noinline int test_dwarf_unwind__krava_1(struct thread *thread)
+__no_tail_call noinline int test_dwarf_unwind__krava_1(struct thread *thread)
 {
 	return test_dwarf_unwind__krava_2(thread);
 }
-- 
2.27.0.rc2.251.g90737beb825-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200530082015.39162-3-irogers%40google.com.
