Return-Path: <clang-built-linux+bncBDPPFIEASMFBBKGJX3WQKGQENCSI2GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc37.google.com (mail-yw1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 555D4E0F57
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 02:54:01 +0200 (CEST)
Received: by mail-yw1-xc37.google.com with SMTP id m143sf11914062ywd.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 17:54:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571792040; cv=pass;
        d=google.com; s=arc-20160816;
        b=b9EqwIG+g7GSuk5TqUTF3rU+iu12nZhbylyr2KJnOV68ICNl2jx0Lca1EmPocX9h5z
         Rp6GmbSEoI2H/rVJLeSONAjZz0x8NB0r/O9/ONNrUyWIVRsGdoWAEgz20eRjJDklzinw
         SgeKrS8oqP7YTVBXPTTVI5xb+eE6Ak1zhwzpi8Ikmqmudf1+ktt+nQ7wSsuAGF4zvdhL
         pxci6R5APtw6WZl+YkEgczFlT3m4yiocAq7BP9xxufkVXN07PCXZJZGbKxhmQ2cD/rHv
         V+jwg3m/qlTuVwaGmTlhXVjcs4r0y9dsZcQmiUjOS8iBvqmAkoDAhlpstQpvT3bNNSFj
         90Kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=oXNZDzmNPrYr3OR6fOio5juUvYnkBnOOG5ov3vOutRY=;
        b=Hyiz6X4u0xo3AC1HVUrJ4hiCEs0MnWcLdN7DwbqRvweU8hLg6xjkmZVzJElOnZ8E6R
         8RtbqlwuBXR36/CaTDE+Dh+nqr1Tj3MVMumKF0h9j2Skh/ae8r8ZZCl1ddsCX7/bHX+f
         PRxn38j/laH8TBvfGrWKhXc3ur3sDidyxepeL7G+u1J5dO8W/wQPj+InGficdZJpWy2K
         sJ9iZqZf8QySyJ7l3GclkKL8k/87boJIEGDTFqcsSF+YwmWIx1RwHMRdQsEhzJmKnuFb
         USe8M377jVJJyudTB3jNgmvK8eL+U4d7S8zR+kVRG2qdUdYn2US8Bynv2cQ5mxBMuFmW
         aCIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G3+2N9hR;
       spf=pass (google.com: domain of 3pqsvxqckeaejsphfsthpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3pqSvXQcKEaEJSPHFSTHPPHMF.DPNDMBOH-CVJMU-MJOVYHPPHMFHSPVQT.DPN@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oXNZDzmNPrYr3OR6fOio5juUvYnkBnOOG5ov3vOutRY=;
        b=Ie7iPWkP/VlAXnXx+1ds/hMaw42RrKsgP74lrmYDstRbjzCUFNhO4YcsFIYTm2Bi+L
         1++3a930PnUXuh263fh+A6yf2jVB5Q4P5uEnmWD5DygKqHRUWntO2sAraUXU9OzB2t+q
         mmRHer15PDaP04paK9nliK4uNPqxD0it6kSDh1SC0I6uxLBP09kRtTWWmAHPEUc9JYnV
         5d1VqDZ770UtnqtvxWVDgx5fOXATX28x/5ub3tuL9bLrgtdWD2SZ+IoHdKUm4D2/LRH+
         81wVazNZ4Z/gafca4QswfziiihXisQazENmxbnviCrZPk8a+Gc2ukbl9mbYUqim3qB8g
         22Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oXNZDzmNPrYr3OR6fOio5juUvYnkBnOOG5ov3vOutRY=;
        b=hI4IUh8ab3pq1miLdIFux1D1YOvsJhn7TKIxhUw4Xv2LyWZJetu3fgoUWuDnk34HZ/
         E+FJ5czl3d5q0jsNU6IzTj87iDGaAb6c1HelrQXb4nrtdLtj9Ym0Uo2nxujYfuulIsPO
         tS9xQZKIglSzYowbg9P4ao4XBP8qsSrg78zdH5tHxDtTyLF/HojWbXjcqTHRdADBGWb1
         +D+k5rgc6UEZdg8QYs+CyLWA5RefJyQM2LF4sP/VcrK0D01U0WbefGf6+97jVyoGEqNT
         kbOp/CakaOEClaCP38aZQ7zhrttVg8x/2mK1+w8H93sbyu4CuAIMMxUjH/I9JsfEOqIA
         ulYw==
X-Gm-Message-State: APjAAAViWS/ff21vznbHSHiAAhOXffOQOPzypcsWfIdaG87T6w+mT565
	oN+Js1Z/CewZPuUdMH5Kgiw=
X-Google-Smtp-Source: APXvYqyAbniEYaDOSt/OZyvqUJKkm+h+T51xLFczQwPNzTlWNwdPZILGCiBaEsjf4c/VgtAEE+pwcA==
X-Received: by 2002:a25:7389:: with SMTP id o131mr4533682ybc.12.1571792040297;
        Tue, 22 Oct 2019 17:54:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9788:: with SMTP id i8ls104371ybo.7.gmail; Tue, 22 Oct
 2019 17:53:59 -0700 (PDT)
X-Received: by 2002:a25:3b51:: with SMTP id i78mr4626553yba.186.1571792039832;
        Tue, 22 Oct 2019 17:53:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571792039; cv=none;
        d=google.com; s=arc-20160816;
        b=wV0u2xvNgBJJtTYs1kh1lZIxWTxlSwHfXC5xg0oKe7JgajLf5ZFlrt0bQbxOmsGbWR
         BqroKLWWyn5WMZu+vWOIC9Np3evNVUw4a0r0+1r8ga8czF3JkPBhr4XUyNkCCvBmb5Vi
         ZKb52pwj5b4KSQT40FM5w0jeE4UIrRcKuVKfOVgd8U+hZCuvVJBphA0wHe8S0ccf+oB+
         I94fj6emd1IxNcVWl69PFuQygQbAic2FbewuxXUyhDXX0fAWTRVZdQIybmoTqwIpFqBd
         YG8N0yGgY/8NM8iQjZn8Xq0XsbrE8NIuLRFNOIiW65MDj4AnJrTgs6LnI7cQcAergT5T
         CCTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=hTNszrLwiWQM9d4qPLewL0yEQ/cfDBLkldVagVLEUe8=;
        b=qdS1XNHVWvGgYLmagRcqZW+3uoMY1vtt1wazc1WlS7Bc9fShucwDxDf8TfcRuP03Us
         2qHFOy4Yd1dll1BtvaMMMxk+D071jx4hX5bAHXAoBwXlMu9TqK6Aq0sZVw53LpV3T1zX
         x6m/F9EMtKKWCyvrxjSqnwmlwCqw1oqQIC8bAsG3o2xQV5+Id65kEh7MAfwpKq9n/ulh
         mMnNRZLVaqHTcLCB6ahRM+eHwJSGi4gCEexavTeBRok5gye6G+DivbvUHhPGakRdsY/M
         8W5Z16eqkvM/EgUUtEsqlWsa0kCKjeb0KXEdx2Zr4U3BnFZPr/LHxYQp5Mp88UOz6mE0
         PBnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G3+2N9hR;
       spf=pass (google.com: domain of 3pqsvxqckeaejsphfsthpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3pqSvXQcKEaEJSPHFSTHPPHMF.DPNDMBOH-CVJMU-MJOVYHPPHMFHSPVQT.DPN@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id x7si168824ywd.5.2019.10.22.17.53.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2019 17:53:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3pqsvxqckeaejsphfsthpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id y2so145185plp.23
        for <clang-built-linux@googlegroups.com>; Tue, 22 Oct 2019 17:53:59 -0700 (PDT)
X-Received: by 2002:a63:e255:: with SMTP id y21mr3404951pgj.353.1571792038384;
 Tue, 22 Oct 2019 17:53:58 -0700 (PDT)
Date: Tue, 22 Oct 2019 17:53:28 -0700
In-Reply-To: <20191017170531.171244-1-irogers@google.com>
Message-Id: <20191023005337.196160-1-irogers@google.com>
Mime-Version: 1.0
References: <20191017170531.171244-1-irogers@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH v2 0/9] Improvements to memory usage by parse events
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
 header.i=@google.com header.s=20161025 header.b=G3+2N9hR;       spf=pass
 (google.com: domain of 3pqsvxqckeaejsphfsthpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3pqSvXQcKEaEJSPHFSTHPPHMF.DPNDMBOH-CVJMU-MJOVYHPPHMFHSPVQT.DPN@flex--irogers.bounces.google.com;
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

The parse events parser leaks memory for certain expressions as well as
allowing a char* to reference stack, heap or .rodata. This series of patches
improves the hygeine and adds free-ing operations to reclaim memory in
the parser in error and non-error situations.

The series of patches was generated with LLVM's address sanitizer and
libFuzzer:
https://llvm.org/docs/LibFuzzer.html
called on the parse_events function with randomly generated input. With
the patches no leaks or memory corruption issues were present.

These patches are preferable to an earlier proposed patch:
   perf tools: avoid reading out of scope array

Ian Rogers (9):
  perf tools: add parse events append error
  perf tools: splice events onto evlist even on error
  perf tools: ensure config and str in terms are unique
  perf tools: move ALLOC_LIST into a function
  perf tools: avoid a malloc for array events
  perf tools: add destructors for parse event terms
  perf tools: before yyabort-ing free components
  perf tools: if pmu configuration fails free terms
  perf tools: add a deep delete for parse event terms

 tools/perf/util/parse-events.c | 177 ++++++++++-----
 tools/perf/util/parse-events.h |   3 +
 tools/perf/util/parse-events.y | 388 ++++++++++++++++++++++++---------
 tools/perf/util/pmu.c          |  38 ++--
 4 files changed, 431 insertions(+), 175 deletions(-)

-- 
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023005337.196160-1-irogers%40google.com.
