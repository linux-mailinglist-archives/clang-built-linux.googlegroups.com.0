Return-Path: <clang-built-linux+bncBDPPFIEASMFBBMHKY7WQKGQEBGCZD3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D617E3B8B
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 21:02:10 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id 70sf15739425ple.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 12:02:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571943729; cv=pass;
        d=google.com; s=arc-20160816;
        b=tWy1A5uDL7uCVR57CZtducjBABX5gFRHQEaZPMtszE/MIHysrXfibEzHKmac+Q9meM
         OGuStH763fFeUsB5RYzUA1s586cpXwyxTJ+ZoO9f2OuEZ0nYhG4dq1AHdRduf9Rd9dmu
         GT7eEdODtGDQH2uPGmGJZRCljSJTMIxLpyPLU9rWfi0hAtYPfZ/ShyU4uiCuWL3984E6
         GxFHoNdPMhuvbze/LQ6wuCtg9vS6uYFqTmCgdw/KymU0t+c3E7S4YGeQyIPX1/rOQX/m
         9F88vitW/jxbn2jyyxdykN9ZThf7kl9vr5mLIUVEJimraag/RNB/U3SWBsFltcleQ6UO
         R02g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=CRt1dY1ky17R95jKoIRf00FeeqI0DFW6r6iMRUoIr/E=;
        b=MimD2+1NlEaY3dQd/d2vAHGzd6kdpc6B1dIXSi8NpCUPL3qlfs4hvNWBjmy/6qtjmi
         gVWtqqPrmGcjAOrmcMI9p8FLqgtTokqoXBqgrJl9S8FwtRNkXLmqcCdd50NhGn7GnlFq
         Yte22r4i/UyDNR7MxpzE0pA/oMasnBdQK1WPyn2NoFDj0+5L/I3CYB9dx2GWBSa+BfSL
         92+VrxuiH22Z5TzjJtHssYrJudwTYoDUBfs7bU9XpotQYPqxS94NvjpBM40eg80oUaAl
         hUVyv/+YRybYY5WANIKVu/Pqxd3Asmnqcr/CW0I0Gb/7KdIB++Nminq8Foupw+WHS4CV
         HS3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QZhxhWfv;
       spf=pass (google.com: domain of 3l_wxxqckedq8he64hi6ee6b4.2ec2b0d6-1k8bj-b8dkn6ee6b46hekfi.2ec@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::c4a as permitted sender) smtp.mailfrom=3L_WxXQcKEdQ8HE64HI6EE6B4.2EC2B0D6-1K8BJ-B8DKN6EE6B46HEKFI.2EC@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CRt1dY1ky17R95jKoIRf00FeeqI0DFW6r6iMRUoIr/E=;
        b=boiQr4qzX9Knp1vheUSTcSmmTbk9eEv+K+mU5eLwm+fslVaib32Qdb2NMgZBJNCPzg
         iYKPFD4sSZFWK20pGlDe3crlxd3HSaIYCbsxSoKClGOgQlYXbvr4UAHhv86X/Y9QD2HT
         fz/LZosgzpcMEF+OZhYoCj7b9mF5aTDPuO8aqDLmVILvA52QAAOo04y3Q9K5lQNpK2lG
         7Y/HSMVG1e/fxVuWUfyD9QoYkD14W7fx7sYCJjmLgMCb2VeWhcmwwTjCAUJJJFWsHtEB
         f8LNpyjE7fENb++02WvhspP49evFobh1Z4PeIGcboB2DJorwrfxequ54vCGzDZsKKL2Z
         /inw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CRt1dY1ky17R95jKoIRf00FeeqI0DFW6r6iMRUoIr/E=;
        b=EOjtzHjxghGM+wdUfATmZe7yFhV2RVcWUKaRjXtjuivyDnVxCS8W+BzvvnR/d8kI0e
         0feZ9TdLQB0OgrToUTru5JnhNDZhIbRNp/NYdCTdV5bZIXV3zayGZcpQsD9sjELE5CS8
         5DYiyvRrxjituPRtShFB8OA9dPPu8DrShDTcXYVOlzaFKMp5OgC25AfB8JG06fRLO1bP
         EOCMQUOqLO3INcX82gEaNrfEm1J4k4u7rjVbvWgQzo1UeGeI6kHvAXB72+QwBi0Eyve7
         xk3rBWlbd5LbYhQHWuC09uTpp/TkGyROlIjA5Z9MpJJIOTg2j/ElKzEtRYQSNZm4eNPo
         TZhA==
X-Gm-Message-State: APjAAAXwWhdJWkvqXDAnm8foSmYrKAs5+sbzYTXkQOX6MFm69SKCGyAT
	1LtXjCUmrPBIqJSBM2t9e6M=
X-Google-Smtp-Source: APXvYqw0E0+eVCC27Gy1ZRAwBsKVg1F1X9L9jUNITWd5wqE+rStSAA9IsjyapQLcPzhdm2cZkadhAA==
X-Received: by 2002:a17:90a:be09:: with SMTP id a9mr9247954pjs.5.1571943729048;
        Thu, 24 Oct 2019 12:02:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:1ae6:: with SMTP id p93ls2321985pjp.2.canary-gmail;
 Thu, 24 Oct 2019 12:02:08 -0700 (PDT)
X-Received: by 2002:a17:90a:86c9:: with SMTP id y9mr8895639pjv.67.1571943728610;
        Thu, 24 Oct 2019 12:02:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571943728; cv=none;
        d=google.com; s=arc-20160816;
        b=SQUj1b+EMqXloNhqRRKSWR+hM4C44XjdUm4IW9vMA7e/RuATPkbbs5ySQ0V2O5JTXz
         TVNvkMJURX713r3QBZmnMuUsbKjIEnNGQM304gNu0zqD0G77duT8ZjMr+eOSrn5YXckh
         1Ua+Vwk0paHXtbWiNC/on7YC3o+cW18AMZl6GrGYL1zu+fUCSBFtpHlmdmfbx8rz/idL
         /0cOBsA/tchIFrix63Sc02KBw5UoypjIKYAVLmm8qG6ZJ8e53RjSWgAWwLhAur8ISexj
         gwi1soxJffFr2+zjTQNN1iqj1/EQSoGDHDxNyrICldhTkU2PZcWe0R/wHiygsp6Td8rZ
         d3pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=StLsOwadC4o8p6VwUA79Cb5g5hBpyjdxZ8Va4K7Io2Y=;
        b=YkL5AydirbdqEf+MbcxladAPb2d4CXxM68wSv9f5IT9rHmSZ+zTKDSnTt14xVMYvAU
         /KCYyDHUXidf47/YWhE7ERXDzTLiHLcxdvjRIkt73STRMFi9yWK1U5VLVtsJC6UGnjKV
         zqNx9tAK1cNYObasIg70LaH7/SrMp+81L0YAD2Jj/Zbfmnp51A3kygpwpPz+bFQhaRT+
         0QExymkMhN2W9f0eADK0p9xNLmRepdC+3n/myrZ5qUPBVnay9H1WjxOfbxMk4GRjzsrf
         9XYs3wJHjQ6XDkdEpVgHYiCwgnViZ13Z2c0v56IdDxzkdPXhKnqRoEoa8m4oQHkzkH8k
         s/JQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QZhxhWfv;
       spf=pass (google.com: domain of 3l_wxxqckedq8he64hi6ee6b4.2ec2b0d6-1k8bj-b8dkn6ee6b46hekfi.2ec@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::c4a as permitted sender) smtp.mailfrom=3L_WxXQcKEdQ8HE64HI6EE6B4.2EC2B0D6-1K8BJ-B8DKN6EE6B46HEKFI.2EC@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yw1-xc4a.google.com (mail-yw1-xc4a.google.com. [2607:f8b0:4864:20::c4a])
        by gmr-mx.google.com with ESMTPS id f17si1291036pgk.3.2019.10.24.12.02.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 12:02:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3l_wxxqckedq8he64hi6ee6b4.2ec2b0d6-1k8bj-b8dkn6ee6b46hekfi.2ec@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::c4a as permitted sender) client-ip=2607:f8b0:4864:20::c4a;
Received: by mail-yw1-xc4a.google.com with SMTP id t2so15227482ywd.2
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 12:02:08 -0700 (PDT)
X-Received: by 2002:a0d:d84b:: with SMTP id a72mr7582697ywe.331.1571943727482;
 Thu, 24 Oct 2019 12:02:07 -0700 (PDT)
Date: Thu, 24 Oct 2019 12:01:53 -0700
In-Reply-To: <20191023005337.196160-1-irogers@google.com>
Message-Id: <20191024190202.109403-1-irogers@google.com>
Mime-Version: 1.0
References: <20191023005337.196160-1-irogers@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH v3 0/9] Improvements to memory usage by parse events
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
 header.i=@google.com header.s=20161025 header.b=QZhxhWfv;       spf=pass
 (google.com: domain of 3l_wxxqckedq8he64hi6ee6b4.2ec2b0d6-1k8bj-b8dkn6ee6b46hekfi.2ec@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::c4a as permitted sender) smtp.mailfrom=3L_WxXQcKEdQ8HE64HI6EE6B4.2EC2B0D6-1K8BJ-B8DKN6EE6B46HEKFI.2EC@flex--irogers.bounces.google.com;
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

The parse events parser leaks memory for certain expressions as well
as allowing a char* to reference stack, heap or .rodata. This series
of patches improves the hygeine and adds free-ing operations to
reclaim memory in the parser in error and non-error situations.

The series of patches was generated with LLVM's address sanitizer and
libFuzzer:
https://llvm.org/docs/LibFuzzer.html
called on the parse_events function with randomly generated input. With
the patches no leaks or memory corruption issues were present.

The v3 patches address review comments from Jiri Olsa improving commit
messages, handling ENOMEM errors from strdup better, and removing a
printed warning if an invalid event is passed.

The v2 patches are preferable to an earlier proposed patch:
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

 tools/perf/util/parse-events.c | 193 +++++++++++-----
 tools/perf/util/parse-events.h |   3 +
 tools/perf/util/parse-events.y | 388 ++++++++++++++++++++++++---------
 tools/perf/util/pmu.c          |  32 +--
 4 files changed, 449 insertions(+), 167 deletions(-)

-- 
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024190202.109403-1-irogers%40google.com.
