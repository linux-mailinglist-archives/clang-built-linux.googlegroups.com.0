Return-Path: <clang-built-linux+bncBDPPFIEASMFBBXGXV3ZQKGQE3OV725I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 56698184BA9
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:50:53 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id s10sf5640724oie.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:50:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114652; cv=pass;
        d=google.com; s=arc-20160816;
        b=DHg8YopfRvnfrXQRHafGCb0heo78K/XQ18y35c7pzgYrQH25tNM0q6Y9mPozq1iDho
         Ma7QDCRKBJY19lZH07bC1vc0FAd0WBdBLEDLQECiXGwZkr8ikdZAezswkpV7phVWWNCv
         WqGkgi5DGKEoHkuFXQwN2cvqAr3RENlv1FVQAdPv+B8YcwKDVg4pShdZZc8YBIsE74/N
         eFUILBV6kRa30ZcnajGrUoGWMdWPMgr+t6ryzJbtuGtMPPxArxNbifkHMzca7/0dfeiF
         FCEN+KmKFtlwDmuTOoQDso53mplNKNpLmWBm6cD3ZVxd1Sen9iMmV0HMZ7YB/MkT3MYW
         En/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=BmRr6f7DKkkHfQYCDC3wv+9sr39IQ37znPGmJNMP6Dc=;
        b=j61B78xC/a6HT9yOAIG4NkspxQii5B4MaEmZF/HKzQs7nF5tBykrzAvHyrKMrIHmG5
         KLK7b5NteUay0ohLuAO+LHFEGcjJ22SCqyV1x8Gf3dMT6QHzwT6rSShEE748SXoQgvIb
         Ph+ipA8zkSqFKxcKrCmiH60eyuDAzYHutx8TPRXRHN4TaQI84qZwOmsintxMKw5Hnlch
         KkQo/zlH7iGdB/seanT3cV9bveRzWutAIDRhtuGQ78iCFBv0Keo29SMCOWekNnyocJP+
         G0NPAw9XlT0u2pZpibFZ8ouSnoqm7hm4RyoLkjKnjzd9UCoQAb/tQoPmJWBNvNUn1DnJ
         HPuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IcXI39oT;
       spf=pass (google.com: domain of 326trxgckedoenkcanockkcha.8ki8h6jc-7qehp-hejqtckkchacnkqlo.8ki@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=326trXgcKEdoENKCANOCKKCHA.8KI8H6JC-7QEHP-HEJQTCKKCHACNKQLO.8KI@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=BmRr6f7DKkkHfQYCDC3wv+9sr39IQ37znPGmJNMP6Dc=;
        b=gVsRxfoSDu7z4+qUez7+ZcV64goSz71k5iyEJoN6CQxD4fljNwqWFFNGtHVn+Sqvpe
         f/c3WlD7P3RCUVcWIsEMSnApdlqNUFyK7JRW4Gh3KV9LtnnzgtqnEo9eK7zENBeDlRok
         GCoOfDLTdPhMzKAXtwnqyrt3TFzbPcUFW0I9zOzUL1FmOuNQSWaz6wsJe+gvRZq1Upy6
         +GsSerd6gkSvKHnwHK5NgiaCIQclSmwSj2rYKQf0FPlaYCxGGr2hzrRP1cGcCS6vbxjG
         gncx56HWFzoSarCOMC8TXIQhmA9kvkpEQeBia+9eZsvcMin8xWAF8xych/9j4vn1II3o
         abHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BmRr6f7DKkkHfQYCDC3wv+9sr39IQ37znPGmJNMP6Dc=;
        b=MA9kYXzT4rrJk7EMk7PbV2zuOk8sKfRsIESAP7SGSBkQSvXHSX245J+v8fs+OCAkXk
         6zynu4iSslzyxSCqDDov/Pmz2fBgR1RKwuR1RflVL0V8hMTWNQeIwsaEPn54u2Aj6NEv
         3wzvVEoEBdIJydiioaB7ruS4Pfdb+fKZIH8jzu0rrwAk4LtkiQJuB64j0wbCS7zY5Ghz
         bGH1s+O7VsOLYQBlPiFnlkex+KvJbwjM9fwQgHNNRnQGnSSQW0mnawY9SSPO84hTyYdp
         +9xbdblsD4lz0CJ6wzx3pefstYekrMF0geK9T7Rtj4ZlPEXLIGLUVy6ydut5cOUecfE5
         Txbg==
X-Gm-Message-State: ANhLgQ1Ox6yRM3gzn+rKzg3thDzV2TXooW5uhUtcQ2BWp14KoJkKtQpA
	wJG7cx0oVuc/fmhCKIVqzdQ=
X-Google-Smtp-Source: ADFU+vuzzT1mtfSl4Uq5KZXZ5jzU2th9ny6wIwKIruistb/FPv8kuNwyKxqVNfP57OZp2MlLu9PYTg==
X-Received: by 2002:a9d:175:: with SMTP id 108mr12254789otu.287.1584114652246;
        Fri, 13 Mar 2020 08:50:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:69cb:: with SMTP id v11ls3068341oto.5.gmail; Fri, 13 Mar
 2020 08:50:51 -0700 (PDT)
X-Received: by 2002:a9d:67c7:: with SMTP id c7mr11891931otn.85.1584114651845;
        Fri, 13 Mar 2020 08:50:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114651; cv=none;
        d=google.com; s=arc-20160816;
        b=GE8BmWFTO0ESD6yXEbFi+GkfcJ/popDuL5WVq2BS7pmd/9X4dDrGp8qn2YUYOGsIEt
         wiy1RNP3SH0E+sJyydWaUhR+9kJaHUsgyp2ge9igxEZxenXYp8xtrvcLTi47GZgEzkp5
         kvjMOjFcRWmpc0+fZDdyX9rJggMFyokAfmHl3o+ZQFe1neQl+lOKoV5QN6BrpOj7uApC
         dpFU55nwpCLWu5ikLX57KUBQZhVkx0qE18PYjLVFtAi8Mj2Hiul8acm2+fNszBUTL6ci
         eJGYbBJfpeKxadbTKoWFWU0ua5zU5PtsHRNrVJMWkpPu5n2uGvmI0UYBWmIwwLZwZduT
         iWCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=eVmA9NNLkJ9r6wHykxZnxklaK4+O9W87gli6+oUvaSc=;
        b=s1N2cUphoTwTM5rwaK5qstgnvQpWoWHfKbbBJMaQVetjWF/r748wJsjbssZvqtbJ1L
         V8MaNZbyEuwZvRYUEt/twunn6MyMuh7dNoJ+iy1J3inaI3ZF+w+/ss2WpmdNv/CS3eEF
         yZ8MAaoWlNOT1jQg2SttAqiRfpo4RvmlQgKLF5FMhRWAE0thxRh2BsWPqcDX5eDTC44M
         c+PTzdL/UFDmA7LitcOrTOdMKsAbSmGjFx7KK9UO9BVCuSdedKJ/tGDqTBeP5MsoqbVY
         bcaupZpSUdNGz6dDebhu81Bjt0dtkPJqyddjB9TwLqFILutXn/1TuEA9Om+HlcZ4elLS
         Yjww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IcXI39oT;
       spf=pass (google.com: domain of 326trxgckedoenkcanockkcha.8ki8h6jc-7qehp-hejqtckkchacnkqlo.8ki@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=326trXgcKEdoENKCANOCKKCHA.8KI8H6JC-7QEHP-HEJQTCKKCHACNKQLO.8KI@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id u22si745612otg.4.2020.03.13.08.50.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 08:50:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of 326trxgckedoenkcanockkcha.8ki8h6jc-7qehp-hejqtckkchacnkqlo.8ki@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id s13so5730511plr.21
        for <clang-built-linux@googlegroups.com>; Fri, 13 Mar 2020 08:50:51 -0700 (PDT)
X-Received: by 2002:a17:90b:94a:: with SMTP id dw10mr10525477pjb.105.1584114651018;
 Fri, 13 Mar 2020 08:50:51 -0700 (PDT)
Date: Fri, 13 Mar 2020 08:50:47 -0700
Message-Id: <20200313155047.22339-1-irogers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
Subject: [PATCH v2] perf tools: give synthetic mmap events an inode generation
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>, iri Olsa <jolsa@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IcXI39oT;       spf=pass
 (google.com: domain of 326trxgckedoenkcanockkcha.8ki8h6jc-7qehp-hejqtckkchacnkqlo.8ki@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=326trXgcKEdoENKCANOCKKCHA.8KI8H6JC-7QEHP-HEJQTCKKCHACNKQLO.8KI@flex--irogers.bounces.google.com;
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

When mmap2 events are synthesized the ino_generation isn't being set
leading to uninitialized memory being compared.
Caught with clang's -fsanitize=memory.

==124733==WARNING: MemorySanitizer: use-of-uninitialized-value
    #0 0x55a96a6a65cc in __dso_id__cmp tools/perf/util/dsos.c:23:6
    #1 0x55a96a6a81d5 in dso_id__cmp tools/perf/util/dsos.c:38:9
    #2 0x55a96a6a717f in __dso__cmp_long_name tools/perf/util/dsos.c:74:15
    #3 0x55a96a6a6c4c in __dsos__findnew_link_by_longname_id tools/perf/util/dsos.c:106:12
    #4 0x55a96a6a851e in __dsos__findnew_by_longname_id tools/perf/util/dsos.c:178:9
    #5 0x55a96a6a7798 in __dsos__find_id tools/perf/util/dsos.c:191:9
    #6 0x55a96a6a7b57 in __dsos__findnew_id tools/perf/util/dsos.c:251:20
    #7 0x55a96a6a7a57 in dsos__findnew_id tools/perf/util/dsos.c:259:17
    #8 0x55a96a7776ae in machine__findnew_dso_id tools/perf/util/machine.c:2709:9
    #9 0x55a96a77dfcf in map__new tools/perf/util/map.c:193:10
    #10 0x55a96a77240a in machine__process_mmap2_event tools/perf/util/machine.c:1670:8
    #11 0x55a96a7741a3 in machine__process_event tools/perf/util/machine.c:1882:9
    #12 0x55a96a6aee39 in perf_event__process tools/perf/util/event.c:454:9
    #13 0x55a96a87d633 in perf_tool__process_synth_event tools/perf/util/synthetic-events.c:63:9
    #14 0x55a96a87f131 in perf_event__synthesize_mmap_events tools/perf/util/synthetic-events.c:403:7
    #15 0x55a96a8815d6 in __event__synthesize_thread tools/perf/util/synthetic-events.c:548:9
    #16 0x55a96a882bff in __perf_event__synthesize_threads tools/perf/util/synthetic-events.c:681:3
    #17 0x55a96a881ec2 in perf_event__synthesize_threads tools/perf/util/synthetic-events.c:750:9
    #18 0x55a96a562b26 in synth_all tools/perf/tests/mmap-thread-lookup.c:136:9
    #19 0x55a96a5623b1 in mmap_events tools/perf/tests/mmap-thread-lookup.c:174:8
    #20 0x55a96a561fa0 in test__mmap_thread_lookup tools/perf/tests/mmap-thread-lookup.c:230:2
    #21 0x55a96a52c182 in run_test tools/perf/tests/builtin-test.c:378:9
    #22 0x55a96a52afc1 in test_and_print tools/perf/tests/builtin-test.c:408:9
    #23 0x55a96a52966e in __cmd_test tools/perf/tests/builtin-test.c:603:4
    #24 0x55a96a52855d in cmd_test tools/perf/tests/builtin-test.c:747:9
    #25 0x55a96a2844d4 in run_builtin tools/perf/perf.c:312:11
    #26 0x55a96a282bd0 in handle_internal_command tools/perf/perf.c:364:8
    #27 0x55a96a284097 in run_argv tools/perf/perf.c:408:2
    #28 0x55a96a282223 in main tools/perf/perf.c:538:3

  Uninitialized value was stored to memory at
    #1 0x55a96a6a18f7 in dso__new_id tools/perf/util/dso.c:1230:14
    #2 0x55a96a6a78ee in __dsos__addnew_id tools/perf/util/dsos.c:233:20
    #3 0x55a96a6a7bcc in __dsos__findnew_id tools/perf/util/dsos.c:252:21
    #4 0x55a96a6a7a57 in dsos__findnew_id tools/perf/util/dsos.c:259:17
    #5 0x55a96a7776ae in machine__findnew_dso_id tools/perf/util/machine.c:2709:9
    #6 0x55a96a77dfcf in map__new tools/perf/util/map.c:193:10
    #7 0x55a96a77240a in machine__process_mmap2_event tools/perf/util/machine.c:1670:8
    #8 0x55a96a7741a3 in machine__process_event tools/perf/util/machine.c:1882:9
    #9 0x55a96a6aee39 in perf_event__process tools/perf/util/event.c:454:9
    #10 0x55a96a87d633 in perf_tool__process_synth_event tools/perf/util/synthetic-events.c:63:9
    #11 0x55a96a87f131 in perf_event__synthesize_mmap_events tools/perf/util/synthetic-events.c:403:7
    #12 0x55a96a8815d6 in __event__synthesize_thread tools/perf/util/synthetic-events.c:548:9
    #13 0x55a96a882bff in __perf_event__synthesize_threads tools/perf/util/synthetic-events.c:681:3
    #14 0x55a96a881ec2 in perf_event__synthesize_threads tools/perf/util/synthetic-events.c:750:9
    #15 0x55a96a562b26 in synth_all tools/perf/tests/mmap-thread-lookup.c:136:9
    #16 0x55a96a5623b1 in mmap_events tools/perf/tests/mmap-thread-lookup.c:174:8
    #17 0x55a96a561fa0 in test__mmap_thread_lookup tools/perf/tests/mmap-thread-lookup.c:230:2
    #18 0x55a96a52c182 in run_test tools/perf/tests/builtin-test.c:378:9
    #19 0x55a96a52afc1 in test_and_print tools/perf/tests/builtin-test.c:408:9

  Uninitialized value was stored to memory at
    #0 0x55a96a7725af in machine__process_mmap2_event tools/perf/util/machine.c:1646:25
    #1 0x55a96a7741a3 in machine__process_event tools/perf/util/machine.c:1882:9
    #2 0x55a96a6aee39 in perf_event__process tools/perf/util/event.c:454:9
    #3 0x55a96a87d633 in perf_tool__process_synth_event tools/perf/util/synthetic-events.c:63:9
    #4 0x55a96a87f131 in perf_event__synthesize_mmap_events tools/perf/util/synthetic-events.c:403:7
    #5 0x55a96a8815d6 in __event__synthesize_thread tools/perf/util/synthetic-events.c:548:9
    #6 0x55a96a882bff in __perf_event__synthesize_threads tools/perf/util/synthetic-events.c:681:3
    #7 0x55a96a881ec2 in perf_event__synthesize_threads tools/perf/util/synthetic-events.c:750:9
    #8 0x55a96a562b26 in synth_all tools/perf/tests/mmap-thread-lookup.c:136:9
    #9 0x55a96a5623b1 in mmap_events tools/perf/tests/mmap-thread-lookup.c:174:8
    #10 0x55a96a561fa0 in test__mmap_thread_lookup tools/perf/tests/mmap-thread-lookup.c:230:2
    #11 0x55a96a52c182 in run_test tools/perf/tests/builtin-test.c:378:9
    #12 0x55a96a52afc1 in test_and_print tools/perf/tests/builtin-test.c:408:9
    #13 0x55a96a52966e in __cmd_test tools/perf/tests/builtin-test.c:603:4
    #14 0x55a96a52855d in cmd_test tools/perf/tests/builtin-test.c:747:9
    #15 0x55a96a2844d4 in run_builtin tools/perf/perf.c:312:11
    #16 0x55a96a282bd0 in handle_internal_command tools/perf/perf.c:364:8
    #17 0x55a96a284097 in run_argv tools/perf/perf.c:408:2
    #18 0x55a96a282223 in main tools/perf/perf.c:538:3

  Uninitialized value was created by a heap allocation
    #0 0x55a96a22f60d in malloc llvm/llvm-project/compiler-rt/lib/msan/msan_interceptors.cpp:925:3
    #1 0x55a96a882948 in __perf_event__synthesize_threads tools/perf/util/synthetic-events.c:655:15
    #2 0x55a96a881ec2 in perf_event__synthesize_threads tools/perf/util/synthetic-events.c:750:9
    #3 0x55a96a562b26 in synth_all tools/perf/tests/mmap-thread-lookup.c:136:9
    #4 0x55a96a5623b1 in mmap_events tools/perf/tests/mmap-thread-lookup.c:174:8
    #5 0x55a96a561fa0 in test__mmap_thread_lookup tools/perf/tests/mmap-thread-lookup.c:230:2
    #6 0x55a96a52c182 in run_test tools/perf/tests/builtin-test.c:378:9
    #7 0x55a96a52afc1 in test_and_print tools/perf/tests/builtin-test.c:408:9
    #8 0x55a96a52966e in __cmd_test tools/perf/tests/builtin-test.c:603:4
    #9 0x55a96a52855d in cmd_test tools/perf/tests/builtin-test.c:747:9
    #10 0x55a96a2844d4 in run_builtin tools/perf/perf.c:312:11
    #11 0x55a96a282bd0 in handle_internal_command tools/perf/perf.c:364:8
    #12 0x55a96a284097 in run_argv tools/perf/perf.c:408:2
    #13 0x55a96a282223 in main tools/perf/perf.c:538:3

SUMMARY: MemorySanitizer: use-of-uninitialized-value tools/perf/util/dsos.c:23:6 in __dso_id__cmp

v2 fixed a white space issue.

Acked-by: iri Olsa <jolsa@kernel.org>
Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/synthetic-events.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tools/perf/util/synthetic-events.c b/tools/perf/util/synthetic-events.c
index dd3e6f43fb86..3f28af39f9c6 100644
--- a/tools/perf/util/synthetic-events.c
+++ b/tools/perf/util/synthetic-events.c
@@ -345,6 +345,7 @@ int perf_event__synthesize_mmap_events(struct perf_tool *tool,
 			continue;
 
 		event->mmap2.ino = (u64)ino;
+		event->mmap2.ino_generation = 0;
 
 		/*
 		 * Just like the kernel, see __perf_event_mmap in kernel/perf_event.c
-- 
2.25.1.481.gfbce0eb801-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313155047.22339-1-irogers%40google.com.
