Return-Path: <clang-built-linux+bncBDPPFIEASMFBBDVA5DWQKGQEW7XTHDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DCFEA638
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 23:34:55 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id y64sf3040359ybf.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 15:34:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572474894; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fg0j8p1MjXxCdn0+oSz4XDT/4D3oAXKSxB1Vy71mwWRk9dk7c9WFSsScO/rGZfObK/
         qyIhhbtU1bY595+RqU4CM5cbKAGksicVWv5NPUB1yJRhXDkKxLvGqRoGmM3inDSNdPuy
         OwG6pgae82uIkJIiD6BTEGdwas6oQVSiRIYZX5S1n9y60AbMfOEtKAHXhGGVQgdaz6sc
         GuzXxGmq5ifURt+cQOxxPzQZDN4l0MOV/0a+Prsj38km1HGtV489YfSd928N6u/JujFh
         5BpOsb3EKBcYjW/NR0Xbuqs1qjfqSb6bcZKuG0QtuGcmG4O2PENXBTbY2Hr3csinlwbh
         VIOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=LWV6YW762rVPmeaTvC9kAn25ZcQDaLaGYs1wzNZqukM=;
        b=sX0oHXLKnkzIxgegoq10UkMTUKXCf2UHaYvOuUO/KZwSWyZbjnSNFzhBbG8oXWkRCM
         zpSLy59kRi0V7Z2yOXJR3jz0N7xuFyJLu3UM1XURR3l2pmwDpdk1osFhIn9q082lnOzT
         w2s9hOjez7r2NByD2Eh9BQk+PJgpIv/DT1y3SsV9ozCpvLYPwUzQUQgEDhZmK7bFHyOt
         PSlw0drPVeEbO7VcwcSCf1igFpPq8mavrdJAMeC06ldqnc9RvHwextMlrODFfZf4k0Xm
         Uvd5Js90w+OAGqONnK1ikMF++gngmxENjX92K3XszV7JxbTtUHfWKGrwailbvvJRub7N
         5j+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gcodcIUv;
       spf=pass (google.com: domain of 3dbc6xqckeqkr0xpn01pxxpun.lxvlujwp-k3ru2-urw36pxxpunp0x3y1.lxv@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3DBC6XQcKEQkr0xpn01pxxpun.lxvlujwp-k3ru2-urw36pxxpunp0x3y1.lxv@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LWV6YW762rVPmeaTvC9kAn25ZcQDaLaGYs1wzNZqukM=;
        b=SylrYxjdYvkm/NlKmten/rWdOx8dqf9r8iVbyfdDx0psijrpKZh4WYyDRI60HHKpXn
         O4R/1zMgvpuc5GBqxQ1n7aAscNIfdckG1vQY9Matuss6XBKVCerS/BAmVgncxxsgLfJ/
         W2OGzKZd+DTzdDeKeJxHQ57Nm8ZpGCYSkz3gnMdyDhQ3WHQ7piGW2s3faR7JmDOG+qOH
         Jdlpw7Oi87auy0TmeMzFbuHzFynZPzff3AQYEqMPd3SURfc3ILDyUuRhWfqkgK+ADT71
         z+7Ywm6dABEpTbRAmx18mR5PW3c8trzqvIyhq8cVFHOo9zloEvVwG14zup+ksX82gfaA
         ni0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LWV6YW762rVPmeaTvC9kAn25ZcQDaLaGYs1wzNZqukM=;
        b=kK1PxGjk+WUo3vt2uE5xLn34XQCEcvs75BfkdIm8PLkfAl2SIv/23KBaPLQn8c1BtO
         k5zzw8Z2zwZuRsArsegMqse9q4ZYUk04xHNwyqWY0rB9hmQ5pJqhn66xBeuhfdNm9Xa2
         mWsFRRI3YKxYWsqryFvA5lzbOstcsQO4AzFCpNaHkaqVIjuJgOXTJ4xaLeiE3La73Agq
         hNFaEAFg+TVptehdl61gLHdjFH6JAKh1zQCV6EH58rJBdknEur7E+nQoNVLryrOSJBg1
         ftL0OBqFJgXIjYKqDsq6QQq1PHPeIXX5rGJiqeP0fqOR+rBWIKwBTUWjZqZrs20KCt6+
         0THQ==
X-Gm-Message-State: APjAAAWZg0bjf1u3LP7Xf86Jgpkot7KPAqZgo2gX3dRD4O5Aq1AU6RW4
	SGF5AbVwq8Ra4lY8qqM0mCE=
X-Google-Smtp-Source: APXvYqzVakEhJ9O9FuktDS4F+EJqG8Lurxny50zgyH7gcxTgJrnBQH67s0GOaIxBBMqNM60rl5r5DQ==
X-Received: by 2002:a81:6507:: with SMTP id z7mr1487396ywb.330.1572474894217;
        Wed, 30 Oct 2019 15:34:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d687:: with SMTP id n129ls137688ybg.13.gmail; Wed, 30
 Oct 2019 15:34:53 -0700 (PDT)
X-Received: by 2002:a25:ca4c:: with SMTP id a73mr1474916ybg.234.1572474893794;
        Wed, 30 Oct 2019 15:34:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572474893; cv=none;
        d=google.com; s=arc-20160816;
        b=T6nGSbei98bhHJp9WffVH85u/nPBnFo25xZ6w6H6nbxESGgWQ7A1WFvrtkXykX6v48
         jZXkoVpOo5uCYyx0zBovbr3h22v+FcoqQJsSqhCY9V/pykyLA4QrMhwLdU7z8yXoxKIY
         CHHZFHfzmh6X2wDLkcQ7GBzU9l7z3iD/WjS7eE43XcEv7INmuKuSON62RObn1betho8F
         NqefhpkHF0RNspkKUpsLgaea99Wo98ZhC2MKwhs0KRkz3Hip2MY1oMwYK6w6Ly3BMIAY
         0B8DZiZYBRz6kZQYXgNNrlo50M2ZtYniIFa0j9gC1r+DPQxFoGsoYPpqdXWDbPp75YLr
         8SyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=SRqw2LSx0YB2BdwYQ6EePHj++2f3aHwtcvmz2x8WsbQ=;
        b=LoRICjJdkbvGI8+4fH5fOxJprgaCLWbQYdHkgXT1VVmFWES+AwXFBwauw96zo47Qbl
         7CyDMWNLthHIuThxgW9B7O5PhAbrbEsQQjVbgJHa1SCuU1aH1kUtFeymp23UEFzo0eC9
         48S0w/Qnl4YXmwZZPmwDGSVnoisfca4tTTLrMeFIAsGoW27dXhKPIqK9kiQePYYI3MgX
         iKN4GtjYFqLe0rENdo4FAjNzJHQLOz6Ba5OYHdtgddNYsH/APXGo6XwSyd8QKr9szMXj
         Xf6jzkaQlE1afCn3k4h9tcMsUwhUE1eaPlm4zTYwsWpinqi5lP/jiUDuqGrL0HuDHsDB
         4AQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gcodcIUv;
       spf=pass (google.com: domain of 3dbc6xqckeqkr0xpn01pxxpun.lxvlujwp-k3ru2-urw36pxxpunp0x3y1.lxv@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3DBC6XQcKEQkr0xpn01pxxpun.lxvlujwp-k3ru2-urw36pxxpunp0x3y1.lxv@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id 5si131775ybl.1.2019.10.30.15.34.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 15:34:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3dbc6xqckeqkr0xpn01pxxpun.lxvlujwp-k3ru2-urw36pxxpunp0x3y1.lxv@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id b14so2715977pgm.22
        for <clang-built-linux@googlegroups.com>; Wed, 30 Oct 2019 15:34:53 -0700 (PDT)
X-Received: by 2002:a65:588e:: with SMTP id d14mr2063152pgu.56.1572474892551;
 Wed, 30 Oct 2019 15:34:52 -0700 (PDT)
Date: Wed, 30 Oct 2019 15:34:38 -0700
In-Reply-To: <20191025180827.191916-1-irogers@google.com>
Message-Id: <20191030223448.12930-1-irogers@google.com>
Mime-Version: 1.0
References: <20191025180827.191916-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 00/10] Improvements to memory usage by parse events
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
 header.i=@google.com header.s=20161025 header.b=gcodcIUv;       spf=pass
 (google.com: domain of 3dbc6xqckeqkr0xpn01pxxpun.lxvlujwp-k3ru2-urw36pxxpunp0x3y1.lxv@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3DBC6XQcKEQkr0xpn01pxxpun.lxvlujwp-k3ru2-urw36pxxpunp0x3y1.lxv@flex--irogers.bounces.google.com;
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
 tools/perf/util/parse-events.c          | 236 ++++++++++----
 tools/perf/util/parse-events.h          |   7 +
 tools/perf/util/parse-events.y          | 390 +++++++++++++++++-------
 tools/perf/util/pmu.c                   |  32 +-
 9 files changed, 509 insertions(+), 188 deletions(-)

-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191030223448.12930-1-irogers%40google.com.
