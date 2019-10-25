Return-Path: <clang-built-linux+bncBDPPFIEASMFBBLPUZTWQKGQEQ7K7E5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id A2EA9E5336
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 20:08:46 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id a5sf2577502ybq.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 11:08:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572026925; cv=pass;
        d=google.com; s=arc-20160816;
        b=nffIg2RVnuBQryKx3PuH1hf9QAMu74BaTcb5U35jl2io3gDlW9HoKQMAmWNAYW2wWV
         t++sjOpXiafolxoWzl8Gw+D+SiCcAGa9YKUoHykD5Tjt1IqNFOs1p11bO9APQCh5QRTb
         Fy5PkUaGZxb0a97xJrAMdFUygmTRc9qyIIox/ftmQjqT6Q3N541rVfkkseqsxQ8RypIr
         ALD1nsyCKSSkqJvYBQvjJhqm1aTmA7cMV1xb8nWDEzuDV4oHcgnoNI4LE2M3XGhSPow0
         iuiup3GjqLszSXUq9GVWN7BotOPmxLHmC9kkPLRq5MfLtkbCq16NBchJdgrydcRX07BP
         UKWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=GyUbPCW6QZ742NKOvHokR5xNXz+2TVmfSJhEl+WZkr8=;
        b=LJRIyzXq6wev3a38QayE2Wuq8HWCzV+Gc0cTEqWPAwu1OHzKjbVJP4TLb1ek3fDsgi
         ghdJ3r8ZGqrsmw70sqNXUqB4W+5oAj/n1lP15wgGzFklc5a/cYmt1Q9STw2Mi9nYMJRt
         i3HvzDul94/b+HroeEXeuAW18hsJ5maa0nJ1OxwG5/+3PQNQFlOYU3qvXeGnuEer5tNS
         4R38c52h/JqRGdbHajvnOgE/ckq4KhTIbZ7G2aAV5Ezo6MlnEw/B+AEgBvIxyjSAIa0A
         WyarUfUMVohIjudNR/xEUVci1Ji8fM06yzRyGf73F+713f++NBCLrDF6TJ5+cwiI8vqt
         gZiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=S1GOx2ch;
       spf=pass (google.com: domain of 3kzqzxqckewagpmecpqemmejc.amkaj8le-9sgjr-jglsvemmejcepmsnq.amk@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3KzqzXQcKEWAGPMECPQEMMEJC.AMKAJ8LE-9SGJR-JGLSVEMMEJCEPMSNQ.AMK@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GyUbPCW6QZ742NKOvHokR5xNXz+2TVmfSJhEl+WZkr8=;
        b=PWDeTgWt2ZVkQ964gcCelfLNv+UoH/VV0Z/6yhD0yWBqekFJd4mEOBIeHWZWOEov5+
         rcrQk5CwRPulFD3+vkvHN+o9du1ilRRj4i7nO+iXDGf4hImwZV4sEqDaekwRQTRNB/YH
         vcmnjE4ouSMifkIsK3J1vEVUoSKPbygYNFEY/bvD9QwMPC5wVXb2cNmQAxunSLiKacXF
         w7m0vfbmqnE0xf1A2ufQnXGRUbcOMysP0K0Qz3MUii7EZeoUWbmW12DisxtSFBoj+Vnc
         OgjnBmKWv9erbdAUpSogkbqPOkEtqI7LL7oBnwmOErG6FNfUveu7F8qywSp0xH5cnc2l
         Uv2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GyUbPCW6QZ742NKOvHokR5xNXz+2TVmfSJhEl+WZkr8=;
        b=G5V+XgpgOhTJK8km30GlDc0pnuQNgy4RYvKG8Lp2yQTyMnqMb721mHIWeGExqkOJ+d
         tsqCh2Qm+d4CKMWSrMet5/5pa3mdAEdlJwGd513HWK2BiKlHRYKuqhFOMsS1L8EZu0ed
         XnxyohqMUbj7yhVwBpcUwK2vR+POfnts+rQLNqrPvZPMX+uS8G9TWpgqouQGATVK05hk
         3TeZfIaJ2iFJYUieNHppgZSefUIjIgwE8tvxQ4BtvthaT2oV91PwyGMzHTmWVqK3RZab
         KNQZ7QFmw0X1T9WW4t3zeK13wPa/gHEp1E4gRjBNt2a8xLBCJvKWd2mEVKyOIUDuX0K3
         f7EA==
X-Gm-Message-State: APjAAAXXwYFjyQPzX6EZf2VjkkdA31xewxTlknF1fxxOkG9BWPgXug2I
	77BrLVjqOKDtK8kFzSR0koU=
X-Google-Smtp-Source: APXvYqw9FPRpUwx42rlRwPm0g23XnwaDBVSNPbJoI6ilAAo0CF+TfXSxguYUGQXvdOzRrrzPXr3wbQ==
X-Received: by 2002:a81:3889:: with SMTP id f131mr3338052ywa.136.1572026925170;
        Fri, 25 Oct 2019 11:08:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:e403:: with SMTP id n3ls1548381ywe.16.gmail; Fri, 25 Oct
 2019 11:08:44 -0700 (PDT)
X-Received: by 2002:a0d:d650:: with SMTP id y77mr3549691ywd.395.1572026924802;
        Fri, 25 Oct 2019 11:08:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572026924; cv=none;
        d=google.com; s=arc-20160816;
        b=yySwX97X8ip09cdjWDExkcnYz9HXmrw9HO2sDautnxtSGTeYXxQpJyNSttXOiW2zSj
         zaza4K5dQDFJMNtoDMFoScyOu0WR2kAje3M7O3xCrbpKCiqX89Eg0DJZJWLSuyIFuosR
         j9Dq0OYQtyIE8idjPiHCyREqYaz8vEX1wfjzwkxIi60pb7Drm51dGHaqrBKdjKVTJFki
         jkY10ZrsToIF+Q4uqzGxpeyb9TTXkBc7wh9NGdVhl1oqFY3hSyzkauX/HuJ5kGjvApvS
         Q657ZpUa2WYy+MgO8U+W8HCJgQDRCaOE6dKRW4PuhQZE9XWG06TaDSnbNRcpB0D1/EDh
         eH5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=2S2DsvKndhCCCwXhy7APxIUiBul3NbHlVg5iB3GS6wI=;
        b=zX1tu7RO7OFypGerC0pHVWxCHK9tIrmj6ZkTS4L3ZGgdhlqCmBW7SWgAn7bN5CjPc7
         XdwV0GxQLG1VnaVAUNtpIrWgA1WOlP2Ps1/Z1o6ZTK+4FZZO867qUG/4P+Ai5NyE4P+5
         m60k99UJI3D4qoZ1N7TU5JVVjNNXienid5OdbnNO2/3zAMDGIoS5i6PbWYFOAHLpBCSX
         iEIEjJpymbzVCVFf0aF5EOGP5FqG8BlNiea2K5R2NEZ3rbaw/dXsVv5a+1+ypnoM25ej
         8JIEouy29vlPMVbIg3QSEmhD9qctGnBh1Dnev1xyWaSNnzQsiiHhZPINZ37qakDtdQm6
         M7Sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=S1GOx2ch;
       spf=pass (google.com: domain of 3kzqzxqckewagpmecpqemmejc.amkaj8le-9sgjr-jglsvemmejcepmsnq.amk@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3KzqzXQcKEWAGPMECPQEMMEJC.AMKAJ8LE-9SGJR-JGLSVEMMEJCEPMSNQ.AMK@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id d192si201642ywb.1.2019.10.25.11.08.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 11:08:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kzqzxqckewagpmecpqemmejc.amkaj8le-9sgjr-jglsvemmejcepmsnq.amk@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id bb3so1987454plb.23
        for <clang-built-linux@googlegroups.com>; Fri, 25 Oct 2019 11:08:44 -0700 (PDT)
X-Received: by 2002:a63:e60b:: with SMTP id g11mr3770780pgh.119.1572026923546;
 Fri, 25 Oct 2019 11:08:43 -0700 (PDT)
Date: Fri, 25 Oct 2019 11:08:21 -0700
In-Reply-To: <20191025180827.191916-1-irogers@google.com>
Message-Id: <20191025180827.191916-4-irogers@google.com>
Mime-Version: 1.0
References: <20191024190202.109403-1-irogers@google.com> <20191025180827.191916-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v4 3/9] perf tools: avoid a malloc for array events
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, Andi Kleen <ak@linux.intel.com>, Jin Yao <yao.jin@linux.intel.com>, 
	Adrian Hunter <adrian.hunter@intel.com>, Kan Liang <kan.liang@linux.intel.com>, 
	John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org, bpf@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=S1GOx2ch;       spf=pass
 (google.com: domain of 3kzqzxqckewagpmecpqemmejc.amkaj8le-9sgjr-jglsvemmejcepmsnq.amk@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3KzqzXQcKEWAGPMECPQEMMEJC.AMKAJ8LE-9SGJR-JGLSVEMMEJCEPMSNQ.AMK@flex--irogers.bounces.google.com;
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

Use realloc rather than malloc+memcpy to possibly avoid a memory
allocation when appending array elements.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.y | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 5863acb34780..ffa1a1b63796 100644
--- a/tools/perf/util/parse-events.y
+++ b/tools/perf/util/parse-events.y
@@ -689,14 +689,12 @@ array_terms ',' array_term
 	struct parse_events_array new_array;
 
 	new_array.nr_ranges = $1.nr_ranges + $3.nr_ranges;
-	new_array.ranges = malloc(sizeof(new_array.ranges[0]) *
-				  new_array.nr_ranges);
+	new_array.ranges = realloc($1.ranges,
+				sizeof(new_array.ranges[0]) *
+				new_array.nr_ranges);
 	ABORT_ON(!new_array.ranges);
-	memcpy(&new_array.ranges[0], $1.ranges,
-	       $1.nr_ranges * sizeof(new_array.ranges[0]));
 	memcpy(&new_array.ranges[$1.nr_ranges], $3.ranges,
 	       $3.nr_ranges * sizeof(new_array.ranges[0]));
-	free($1.ranges);
 	free($3.ranges);
 	$$ = new_array;
 }
-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191025180827.191916-4-irogers%40google.com.
