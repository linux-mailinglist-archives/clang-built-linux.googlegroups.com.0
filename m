Return-Path: <clang-built-linux+bncBDPPFIEASMFBBT5OSLXAKGQEPNE7K3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 810AAF3AFD
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 23:14:41 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id l67sf3165072oih.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 14:14:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573164880; cv=pass;
        d=google.com; s=arc-20160816;
        b=m6K2b1vOR+C3DcviQhk+fciBVPtglzlKwE2UfGs0zFqKo/NFkXyvlUOlpAM0EO2oBq
         wcI21Wm6vXRdUqKWOh8LWmFFLY9GofnNJ7+AhnjwSG3xn9tmqVHeZjh2NcwMLGvLsRrT
         cqlHez6MaWcgZF95eU1CiAxLaSspwj9pxL2wFXmFGshMHGaAoz7eg3vp3c5WVHFS5JTt
         3RTInbGYxK6empej4gj2XD4sR8mN4BhhgFRMR/eJ2/Wvw/m8/B2QRb6CIBaWahlvqqbk
         hRf8xIGK7ybKpicW5VhWvKAVOcRGYCUXiPyInw+VcvesxrWL+ZwsgurrYoGchuoEfBFy
         x80g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=siHIQmYBtpExYZwbR2KgZ9bq87wetQ7WwX7SZ+E8EQ4=;
        b=uZYQy4SzPhWK7uQyZiEeYZ4vAxu3M2Oc2g/ERqzeod2hCO92cIgSwq8Pyk41gT2vmr
         DsUpo3aKqd0CWpNs4MdY+uPaU7spSK37f3wd+MFqid1cBf4SwADBue/RLaEQDRF8bEPk
         PkdOgIK2XBJ6lTEy7fc8TJ/2K7v9TtJVFruOVcSjPBNTrU9eLtuh6elIThcc8n7pyoWB
         uCXHzbOBt4ya0bFqFLsgZRxaqVLv2acgUVEg8QBZgQp/KKpC6UXtsyzeQ4oc4BScjM2c
         szyY9qk/NmQn7DrxGVqH5U2NulybqAyQB5VG0RJVHIhHHPj9zmMNiAgIYEKBzbLOtBIz
         ZRhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Mp83Scxe;
       spf=pass (google.com: domain of 3tpfexqckeympyvnlyznvvnsl.jvtjshun-i1ps0-spu14nvvnslnyv1wz.jvt@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3TpfEXQcKEYMpyvnlyznvvnsl.jvtjshun-i1ps0-spu14nvvnslnyv1wz.jvt@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=siHIQmYBtpExYZwbR2KgZ9bq87wetQ7WwX7SZ+E8EQ4=;
        b=Ve1AG06M5olPsVeT/JT6jK5cNtUs21OB9ajo14DvJsbPfE0KbSB4usJBq8s28TOpTp
         uy0Y6NV1DN8V2HCu5L5pIdJ6lB3GKbLUFektcvM5KLKfiW2/P/b9RHqub0wHpmjlsK8S
         YCLuglsw2FEYyu8YXMChPW/x8A14Ye3VK3OAF3WnBneFKOwarVdcMuNVD2mEjAnCHlOT
         NJ3wYpnAJs673l3XJNRvpMmUgo5NJPUqeBT1GhEQRQZ8tu1K4UJlVOjmNZvyAefk8NsV
         iT+DWGvFt5Y5DDCBTthCOglZnqvO0fc3MT8Ab86Lkp/06zQ8agRFoPEqVnzDmcVwbm04
         ENcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=siHIQmYBtpExYZwbR2KgZ9bq87wetQ7WwX7SZ+E8EQ4=;
        b=gyE7bIlDmEIv8rrIWneE8CAZ5uIVhVvljJesQOfHF0WGeqrbV3lEpwksU6lURAWCyD
         vsUPb5Q3TvXsxplEqf2boCGPK0k1L7uzQFGz22IjR36JKCNxfRHQ1l2+vLzZYJLfoFm0
         xI97ugia5w35zxVFKpCKCEZBJN79WF/t6bl9Wmtk950Of71+Oo0iqlrVsWDI1mw19ohs
         ZyIdBwbXJmIt0YF2tkPHP7p97e5oH/CK9ud8f6a87rvVhCw7kHEZfiRi5LA7ZFPFYcpm
         dujmUA3nFMR9FFVfyYezfcGnR9gYfvh5sxyp5S0MjuY2AdKwiJMzWO/li96ICGG1+JoT
         AGnQ==
X-Gm-Message-State: APjAAAWr9bXdaRxMo08z5HEqhNaU2HubE6NtkJGvqwmU1ll76SmYNK4l
	JGdXNXOVaX7WMLdMMbwxq2U=
X-Google-Smtp-Source: APXvYqypHKqrnyRtXYI4xt/K6grv89UtkAD8gA7JQdLd8AQDvYuUwPfvDdc4Ny4gwynRC4bzbXEgXg==
X-Received: by 2002:a9d:5f0f:: with SMTP id f15mr4825474oti.251.1573164879869;
        Thu, 07 Nov 2019 14:14:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:adc5:: with SMTP id w188ls1916345oie.11.gmail; Thu, 07
 Nov 2019 14:14:39 -0800 (PST)
X-Received: by 2002:aca:dd0a:: with SMTP id u10mr5983368oig.130.1573164879568;
        Thu, 07 Nov 2019 14:14:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573164879; cv=none;
        d=google.com; s=arc-20160816;
        b=YAi9ZcxUiXnD4KWVuPU+8jtiHy1oKGywIU8WKt9PKQgCzR1W/KWwBW+AQaD0R9hqFb
         Zz4nBtlmMQ/YDtwU9WosJCyUVONvR6E+/zq59TQBbfcEcSOwPudgLbrF4jaZ70Wan4+n
         jdqBWiXFT8KuqaexefrYAzv1dKokx6SCn4eD7QXilpLh9RryT8WGz2anISqISBUTnYB4
         s3nKM5iBWI0QzmmKHlxJR62pP7y91/let9mCTjz27rvMmGTr/S1dtBdHVS6bK7I94h2y
         d5VqjHN/WWuvMJRL3znhOmg6aJpZlFCZyLd2sl2hVdFt+0mWaSAW38Fru3v687TE0Y4c
         B2gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=omy25HIHX5dmo9XLEd3IHF2hKxH2v3SOwm2huLFaCk0=;
        b=E7tCoEjTRTOy+JqF+yxjx1Kszhc1Fg8pqYC6+YmHU1RGiixy3ZK7LIJVJX0X1BwcOv
         1F4iOnjdRujxdvIy6O23p5UwGXXUTeC5nXq4sooeuijx9KyvYOImWEcmc6M1UEsDv7Qn
         qRVeFv5KrIQ/TanqAb/kEJu5FtDBEUBIIPyU0BjeLQ5EnYDblNLJBN/IOO6PADtPq/6x
         z0nOK4jQSHRVubsTEVyyiGCtgR69rDDdnRA6eXZPzMkKF/KOoPdEubwXAkLVbjDusHBr
         +K72G+Qdn4T5KRYRArGQWVRykvF3gGkC3xT1ZohhBNFJinevuMSlGQp2x6UBoQUK2aak
         N3Xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Mp83Scxe;
       spf=pass (google.com: domain of 3tpfexqckeympyvnlyznvvnsl.jvtjshun-i1ps0-spu14nvvnslnyv1wz.jvt@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3TpfEXQcKEYMpyvnlyznvvnsl.jvtjshun-i1ps0-spu14nvvnslnyv1wz.jvt@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id x65si236463oig.5.2019.11.07.14.14.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2019 14:14:39 -0800 (PST)
Received-SPF: pass (google.com: domain of 3tpfexqckeympyvnlyznvvnsl.jvtjshun-i1ps0-spu14nvvnslnyv1wz.jvt@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id k12so2982121pgj.9
        for <clang-built-linux@googlegroups.com>; Thu, 07 Nov 2019 14:14:39 -0800 (PST)
X-Received: by 2002:a63:e241:: with SMTP id y1mr7746140pgj.427.1573164878525;
 Thu, 07 Nov 2019 14:14:38 -0800 (PST)
Date: Thu,  7 Nov 2019 14:14:18 -0800
In-Reply-To: <20191030223448.12930-1-irogers@google.com>
Message-Id: <20191107221428.168286-1-irogers@google.com>
Mime-Version: 1.0
References: <20191030223448.12930-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH v6 00/10] Improvements to memory usage by parse events
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
 header.i=@google.com header.s=20161025 header.b=Mp83Scxe;       spf=pass
 (google.com: domain of 3tpfexqckeympyvnlyznvvnsl.jvtjshun-i1ps0-spu14nvvnslnyv1wz.jvt@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3TpfEXQcKEYMpyvnlyznvvnsl.jvtjshun-i1ps0-spu14nvvnslnyv1wz.jvt@flex--irogers.bounces.google.com;
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

The v6 patches address a C90 compilation issue.

The v5 patches add initial error print to the set, as requested by
Jiri Olsa. They also fix additional 2 missed frees in the patch
'before yyabort-ing free components' and remove a redundant new_str
variable from the patch 'add parse events handle error' as spotted by
Stephane Eranian.

The v4 patches address review comments from Jiri Olsa, turning a long
error message into a single warning, fixing the data type in a list
iterator and reordering patches.

The v3 patches address review comments from Jiri Olsa improving commit
messages, handling ENOMEM errors from strdup better, and removing a
printed warning if an invalid event is passed.

The v2 patches are preferable to an earlier proposed patch:
   perf tools: avoid reading out of scope array

Ian Rogers (10):
  perf tools: add parse events handle error
  perf tools: move ALLOC_LIST into a function
  perf tools: avoid a malloc for array events
  perf tools: splice events onto evlist even on error
  perf tools: ensure config and str in terms are unique
  perf tools: add destructors for parse event terms
  perf tools: before yyabort-ing free components
  perf tools: if pmu configuration fails free terms
  perf tools: add a deep delete for parse event terms
  perf tools: report initial event parsing error

 tools/perf/arch/powerpc/util/kvm-stat.c |   9 +-
 tools/perf/builtin-stat.c               |   2 +
 tools/perf/builtin-trace.c              |  16 +-
 tools/perf/tests/parse-events.c         |   3 +-
 tools/perf/util/metricgroup.c           |   2 +-
 tools/perf/util/parse-events.c          | 239 +++++++++++----
 tools/perf/util/parse-events.h          |   7 +
 tools/perf/util/parse-events.y          | 390 +++++++++++++++++-------
 tools/perf/util/pmu.c                   |  32 +-
 9 files changed, 511 insertions(+), 189 deletions(-)

-- 
2.24.0.432.g9d3f5f5b63-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191107221428.168286-1-irogers%40google.com.
