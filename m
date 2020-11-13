Return-Path: <clang-built-linux+bncBDPPFIEASMFBBCU5XP6QKGQEJF5J2LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9404D2B238D
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 19:20:59 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id s3sf6646292qve.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 10:20:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605291658; cv=pass;
        d=google.com; s=arc-20160816;
        b=HmJvD99fwM485e6kRYRF58NEhgf7Xdc3mJSCkK9YDR6EL01hoQfxrCGzLOMEP47wHE
         xcdPlFu5MqCAy17FcxFvmavwrPCbuWzuDWZOgUL+ZBB4c+wKB055sYyOpYGzdGcB4WD/
         6ZXj4WpQZWYskj77bO3/QlTSAB8NeOBaqpRverxjqTs/J6g5NfmJPLWMuVtlnw+Qs+h9
         puVdlJ9Ww6/woEjvNEE1/nP2KrnxfuT5fuoHZsrvTj5v834OWYzvCmJBkvHNLe8mad/p
         Ev3pkLZGacY4CMxtuX1MNZzJkFBIjfCYo3p+K659fpidRZ43pZ8JclYC6LqcFS7+am8+
         O2bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=7V75wwpt/5+XhVS8HgSXUqS4oD1BawNVR7rww3Plf74=;
        b=gcY6i+wcR5iaRJ0nyzvFKJapaFICpX468iROCWgtDtTrDxUOHUWmGlW+oynSQkYgS8
         DqNsqBrKxgMMWwMNv54o2NJtwH5tqIaIVYF2nyN1cwYj86kxFU9VV+0J0XBOfCxpgwgN
         KPi6sIkbcyU+AJ5VqY3cCD76poIHfU6wzkL9Zm2w5ENz7lUqXKPJbW04+imsKLoBvXAA
         aUjM4VRR5A0t9XmRAKpJyCdahYBJZuaH1aRBvsY/YsHvmC047JLpvT6xW2eKJE6+Vi58
         8EO5gQ/TRnyPis3/ZxM3wqkq128AmYRh4vlWKvL9mIwog7DKrSUljXfKwWlmweaahNI3
         XBhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bqs+hfJb;
       spf=pass (google.com: domain of 3ic6uxwckeeqoxumkxymuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ic6uXwcKEeQOXUMKXYMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7V75wwpt/5+XhVS8HgSXUqS4oD1BawNVR7rww3Plf74=;
        b=jhsG5GQZ+6fDrA93eXzxoVymWssCz8iqDSLAGCL4iWBFBuNXrHoGtRAYjTwqAhMcde
         NFzMJIk35BBDb08QWvZrc4VhopNklmPW6SVLPAcqXfK0puv2SNMM4tNxfvfJxRD73MDF
         jRA14tmqhOust0HY870bSTlyd5T8e+oyQzUTCBBh1BsSP1KQ5gwwAO6rRUkg30iYokHC
         4GsKK7YMXVy0t+xyFYvj5CZpmBF+uZ73Sw4GnbzAjeG3pcZIcRQgZ9Pa5Fdb9A53uQF/
         WxyY4rqNSMnBU4IW+sIBTOLn+mVaqpdjZkLZTsRU7NQR5xAdfne4nCJhWMm0B0n4V6BN
         0c+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7V75wwpt/5+XhVS8HgSXUqS4oD1BawNVR7rww3Plf74=;
        b=ebte0X7caGW8b67Rz+hsaKu6C9bIga7GB3Q7wwRJYUk4uQ18jKfcMGYnCOGBOWaaFs
         NTRskDESWgHx6eEZwRxgSShQJ75/O05W4ThzoVzcROWfXSiq5edek8hm6NUptjA7OfZT
         7Cc9fBkjCPeLwOhLlNcTXmPUIraefSms/1C8Y56Q0NkbfXaodSopfkOsHarI6VNGZwnk
         +ocJxTCD+/teEJQsGcB8oZvjj5xd8GIc+7d3SGN2ZGDL/Trl4ulKfASDJ32s9EOV6lDO
         mWXw5rHj69e5IrCFg/YfSHQKpU638x7twZJcg0gkzXTzolnxmc/SMIzHf2G/ciEheD3I
         G38A==
X-Gm-Message-State: AOAM5315MfZZxB6/Kz7YV6kcmRg5zEA5xisfX8g3dftGD4w76wjBI8Ob
	6UF0XGDljCAkwoHAK/dd93Y=
X-Google-Smtp-Source: ABdhPJxgAeEKfXg3lBO+79mTgkjp7HjdBIcmM80GjfAI26qQL5m9hUHSx+IyCFHJxi+tjwrqa2LmtQ==
X-Received: by 2002:a37:7304:: with SMTP id o4mr3394620qkc.351.1605291658666;
        Fri, 13 Nov 2020 10:20:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:572:: with SMTP id p18ls3279900qkp.0.gmail; Fri, 13
 Nov 2020 10:20:58 -0800 (PST)
X-Received: by 2002:a05:620a:140d:: with SMTP id d13mr3379100qkj.470.1605291658117;
        Fri, 13 Nov 2020 10:20:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605291658; cv=none;
        d=google.com; s=arc-20160816;
        b=1DTE1aUYADG7T7R2YNDJ11qgWg847qq0YoSRRUqMTkJbNbr8V+SeXebfrF6+ipydDa
         lbF6tYR1848k2OJs481N+AX+mv+uG/ZRp29EfLJAqF153AGrvZBnkWJ7c5DZd5jw1tGY
         p6wRUmZXsgMqQqh5LyxNxlSHRCuKQXI72vy/OoI3xnKAYLwB49/N1EyUUW9hHB5THUUn
         F5WfBTRDAG+LFcF8i2rXwDRjij3N8qkZSlGSlNmrSIyB6vq+J75UHSK5isNTcRmuLjA6
         G3tKVAf0OSeS5Qz9qMLxXHFhB57leBOLkv/d6+GWerPkyPKaHIpIf03YcUnUSAjQGTL/
         ToQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=UN5KOEvN+JZYIPsHe3DM/FFg3ACm2oVCE2QnOg7sgbM=;
        b=JAUyhArhxFae2ca/aKXBNbeZQP80ZcN/fQn829FUcJ1rYCdLAFrKof6t2jN8YPhLaA
         E6rjhmZ1My88yyvBcHaeKmPlfp3HsflrQn2gcWlwzaHNXhvYUJ4DEDZ+o0TD+Ei5JwB/
         /lOrk2RDkvEmCvTgWi2F+OvgbxdqzdS415T9iRBwPWVYe+GAEdV99mBQlfVro2WiaHQ6
         lnWYeZ05C0jiAte29fc371H9Ge+Rxm38D2a9mv/VOW8Zqj1j+VkIygPEI3QYVUXawcsn
         5NqSYYDDXHexRq8bM368OcHcbvxBbqq4/QkyHhgaOB2OCnLUctUMRXH+HGE3VENPKWp0
         Luwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bqs+hfJb;
       spf=pass (google.com: domain of 3ic6uxwckeeqoxumkxymuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ic6uXwcKEeQOXUMKXYMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id g6si571709qtr.5.2020.11.13.10.20.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 10:20:58 -0800 (PST)
Received-SPF: pass (google.com: domain of 3ic6uxwckeeqoxumkxymuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id i184so11629319ybg.7
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 10:20:58 -0800 (PST)
Sender: "irogers via sendgmr" <irogers@irogers.svl.corp.google.com>
X-Received: from irogers.svl.corp.google.com ([2620:15c:2cd:2:f693:9fff:fef4:4583])
 (user=irogers job=sendgmr) by 2002:a25:774c:: with SMTP id
 s73mr7508141ybc.262.1605291657714; Fri, 13 Nov 2020 10:20:57 -0800 (PST)
Date: Fri, 13 Nov 2020 10:20:53 -0800
Message-Id: <20201113182053.754625-1-irogers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.299.gdc1121823c-goog
Subject: [PATCH] perf test: Avoid an msan warning in a copied stack.
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Sandeep Dasgupta <sdasgup@google.com>, 
	Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bqs+hfJb;       spf=pass
 (google.com: domain of 3ic6uxwckeeqoxumkxymuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ic6uXwcKEeQOXUMKXYMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--irogers.bounces.google.com;
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

This fix is for a failure that occurred in the DWARF unwind perf test.
Stack unwinders may probe memory when looking for frames. Memory
sanitizer will poison and track uninitialized memory on the stack, and
on the heap if the value is copied to the heap. This can lead to false
memory sanitizer failures for the use of an uninitialized value. Avoid
this problem by removing the poison on the copied stack.

The full msan failure with track origins looks like:

==2168==WARNING: MemorySanitizer: use-of-uninitialized-value
    #0 0x559ceb10755b in handle_cfi elfutils/libdwfl/frame_unwind.c:648:8
    #1 0x559ceb105448 in __libdwfl_frame_unwind elfutils/libdwfl/frame_unwind.c:741:4
    #2 0x559ceb0ece90 in dwfl_thread_getframes elfutils/libdwfl/dwfl_frame.c:435:7
    #3 0x559ceb0ec6b7 in get_one_thread_frames_cb elfutils/libdwfl/dwfl_frame.c:379:10
    #4 0x559ceb0ec6b7 in get_one_thread_cb elfutils/libdwfl/dwfl_frame.c:308:17
    #5 0x559ceb0ec6b7 in dwfl_getthreads elfutils/libdwfl/dwfl_frame.c:283:17
    #6 0x559ceb0ec6b7 in getthread elfutils/libdwfl/dwfl_frame.c:354:14
    #7 0x559ceb0ec6b7 in dwfl_getthread_frames elfutils/libdwfl/dwfl_frame.c:388:10
    #8 0x559ceaff6ae6 in unwind__get_entries tools/perf/util/unwind-libdw.c:236:8
    #9 0x559ceabc9dbc in test_dwarf_unwind__thread tools/perf/tests/dwarf-unwind.c:111:8
    #10 0x559ceabca5cf in test_dwarf_unwind__compare tools/perf/tests/dwarf-unwind.c:138:26
    #11 0x7f812a6865b0 in bsearch (libc.so.6+0x4e5b0)
    #12 0x559ceabca871 in test_dwarf_unwind__krava_3 tools/perf/tests/dwarf-unwind.c:162:2
    #13 0x559ceabca926 in test_dwarf_unwind__krava_2 tools/perf/tests/dwarf-unwind.c:169:9
    #14 0x559ceabca946 in test_dwarf_unwind__krava_1 tools/perf/tests/dwarf-unwind.c:174:9
    #15 0x559ceabcae12 in test__dwarf_unwind tools/perf/tests/dwarf-unwind.c:211:8
    #16 0x559ceabbc4ab in run_test tools/perf/tests/builtin-test.c:418:9
    #17 0x559ceabbc4ab in test_and_print tools/perf/tests/builtin-test.c:448:9
    #18 0x559ceabbac70 in __cmd_test tools/perf/tests/builtin-test.c:669:4
    #19 0x559ceabbac70 in cmd_test tools/perf/tests/builtin-test.c:815:9
    #20 0x559cea960e30 in run_builtin tools/perf/perf.c:313:11
    #21 0x559cea95fbce in handle_internal_command tools/perf/perf.c:365:8
    #22 0x559cea95fbce in run_argv tools/perf/perf.c:409:2
    #23 0x559cea95fbce in main tools/perf/perf.c:539:3

  Uninitialized value was stored to memory at
    #0 0x559ceb106acf in __libdwfl_frame_reg_set elfutils/libdwfl/frame_unwind.c:77:22
    #1 0x559ceb106acf in handle_cfi elfutils/libdwfl/frame_unwind.c:627:13
    #2 0x559ceb105448 in __libdwfl_frame_unwind elfutils/libdwfl/frame_unwind.c:741:4
    #3 0x559ceb0ece90 in dwfl_thread_getframes elfutils/libdwfl/dwfl_frame.c:435:7
    #4 0x559ceb0ec6b7 in get_one_thread_frames_cb elfutils/libdwfl/dwfl_frame.c:379:10
    #5 0x559ceb0ec6b7 in get_one_thread_cb elfutils/libdwfl/dwfl_frame.c:308:17
    #6 0x559ceb0ec6b7 in dwfl_getthreads elfutils/libdwfl/dwfl_frame.c:283:17
    #7 0x559ceb0ec6b7 in getthread elfutils/libdwfl/dwfl_frame.c:354:14
    #8 0x559ceb0ec6b7 in dwfl_getthread_frames elfutils/libdwfl/dwfl_frame.c:388:10
    #9 0x559ceaff6ae6 in unwind__get_entries tools/perf/util/unwind-libdw.c:236:8
    #10 0x559ceabc9dbc in test_dwarf_unwind__thread tools/perf/tests/dwarf-unwind.c:111:8
    #11 0x559ceabca5cf in test_dwarf_unwind__compare tools/perf/tests/dwarf-unwind.c:138:26
    #12 0x7f812a6865b0 in bsearch (libc.so.6+0x4e5b0)
    #13 0x559ceabca871 in test_dwarf_unwind__krava_3 tools/perf/tests/dwarf-unwind.c:162:2
    #14 0x559ceabca926 in test_dwarf_unwind__krava_2 tools/perf/tests/dwarf-unwind.c:169:9
    #15 0x559ceabca946 in test_dwarf_unwind__krava_1 tools/perf/tests/dwarf-unwind.c:174:9
    #16 0x559ceabcae12 in test__dwarf_unwind tools/perf/tests/dwarf-unwind.c:211:8
    #17 0x559ceabbc4ab in run_test tools/perf/tests/builtin-test.c:418:9
    #18 0x559ceabbc4ab in test_and_print tools/perf/tests/builtin-test.c:448:9
    #19 0x559ceabbac70 in __cmd_test tools/perf/tests/builtin-test.c:669:4
    #20 0x559ceabbac70 in cmd_test tools/perf/tests/builtin-test.c:815:9
    #21 0x559cea960e30 in run_builtin tools/perf/perf.c:313:11
    #22 0x559cea95fbce in handle_internal_command tools/perf/perf.c:365:8
    #23 0x559cea95fbce in run_argv tools/perf/perf.c:409:2
    #24 0x559cea95fbce in main tools/perf/perf.c:539:3

  Uninitialized value was stored to memory at
    #0 0x559ceb106a54 in handle_cfi elfutils/libdwfl/frame_unwind.c:613:9
    #1 0x559ceb105448 in __libdwfl_frame_unwind elfutils/libdwfl/frame_unwind.c:741:4
    #2 0x559ceb0ece90 in dwfl_thread_getframes elfutils/libdwfl/dwfl_frame.c:435:7
    #3 0x559ceb0ec6b7 in get_one_thread_frames_cb elfutils/libdwfl/dwfl_frame.c:379:10
    #4 0x559ceb0ec6b7 in get_one_thread_cb elfutils/libdwfl/dwfl_frame.c:308:17
    #5 0x559ceb0ec6b7 in dwfl_getthreads elfutils/libdwfl/dwfl_frame.c:283:17
    #6 0x559ceb0ec6b7 in getthread elfutils/libdwfl/dwfl_frame.c:354:14
    #7 0x559ceb0ec6b7 in dwfl_getthread_frames elfutils/libdwfl/dwfl_frame.c:388:10
    #8 0x559ceaff6ae6 in unwind__get_entries tools/perf/util/unwind-libdw.c:236:8
    #9 0x559ceabc9dbc in test_dwarf_unwind__thread tools/perf/tests/dwarf-unwind.c:111:8
    #10 0x559ceabca5cf in test_dwarf_unwind__compare tools/perf/tests/dwarf-unwind.c:138:26
    #11 0x7f812a6865b0 in bsearch (libc.so.6+0x4e5b0)
    #12 0x559ceabca871 in test_dwarf_unwind__krava_3 tools/perf/tests/dwarf-unwind.c:162:2
    #13 0x559ceabca926 in test_dwarf_unwind__krava_2 tools/perf/tests/dwarf-unwind.c:169:9
    #14 0x559ceabca946 in test_dwarf_unwind__krava_1 tools/perf/tests/dwarf-unwind.c:174:9
    #15 0x559ceabcae12 in test__dwarf_unwind tools/perf/tests/dwarf-unwind.c:211:8
    #16 0x559ceabbc4ab in run_test tools/perf/tests/builtin-test.c:418:9
    #17 0x559ceabbc4ab in test_and_print tools/perf/tests/builtin-test.c:448:9
    #18 0x559ceabbac70 in __cmd_test tools/perf/tests/builtin-test.c:669:4
    #19 0x559ceabbac70 in cmd_test tools/perf/tests/builtin-test.c:815:9
    #20 0x559cea960e30 in run_builtin tools/perf/perf.c:313:11
    #21 0x559cea95fbce in handle_internal_command tools/perf/perf.c:365:8
    #22 0x559cea95fbce in run_argv tools/perf/perf.c:409:2
    #23 0x559cea95fbce in main tools/perf/perf.c:539:3

  Uninitialized value was stored to memory at
    #0 0x559ceaff8800 in memory_read tools/perf/util/unwind-libdw.c:156:10
    #1 0x559ceb10f053 in expr_eval elfutils/libdwfl/frame_unwind.c:501:13
    #2 0x559ceb1060cc in handle_cfi elfutils/libdwfl/frame_unwind.c:603:18
    #3 0x559ceb105448 in __libdwfl_frame_unwind elfutils/libdwfl/frame_unwind.c:741:4
    #4 0x559ceb0ece90 in dwfl_thread_getframes elfutils/libdwfl/dwfl_frame.c:435:7
    #5 0x559ceb0ec6b7 in get_one_thread_frames_cb elfutils/libdwfl/dwfl_frame.c:379:10
    #6 0x559ceb0ec6b7 in get_one_thread_cb elfutils/libdwfl/dwfl_frame.c:308:17
    #7 0x559ceb0ec6b7 in dwfl_getthreads elfutils/libdwfl/dwfl_frame.c:283:17
    #8 0x559ceb0ec6b7 in getthread elfutils/libdwfl/dwfl_frame.c:354:14
    #9 0x559ceb0ec6b7 in dwfl_getthread_frames elfutils/libdwfl/dwfl_frame.c:388:10
    #10 0x559ceaff6ae6 in unwind__get_entries tools/perf/util/unwind-libdw.c:236:8
    #11 0x559ceabc9dbc in test_dwarf_unwind__thread tools/perf/tests/dwarf-unwind.c:111:8
    #12 0x559ceabca5cf in test_dwarf_unwind__compare tools/perf/tests/dwarf-unwind.c:138:26
    #13 0x7f812a6865b0 in bsearch (libc.so.6+0x4e5b0)
    #14 0x559ceabca871 in test_dwarf_unwind__krava_3 tools/perf/tests/dwarf-unwind.c:162:2
    #15 0x559ceabca926 in test_dwarf_unwind__krava_2 tools/perf/tests/dwarf-unwind.c:169:9
    #16 0x559ceabca946 in test_dwarf_unwind__krava_1 tools/perf/tests/dwarf-unwind.c:174:9
    #17 0x559ceabcae12 in test__dwarf_unwind tools/perf/tests/dwarf-unwind.c:211:8
    #18 0x559ceabbc4ab in run_test tools/perf/tests/builtin-test.c:418:9
    #19 0x559ceabbc4ab in test_and_print tools/perf/tests/builtin-test.c:448:9
    #20 0x559ceabbac70 in __cmd_test tools/perf/tests/builtin-test.c:669:4
    #21 0x559ceabbac70 in cmd_test tools/perf/tests/builtin-test.c:815:9
    #22 0x559cea960e30 in run_builtin tools/perf/perf.c:313:11
    #23 0x559cea95fbce in handle_internal_command tools/perf/perf.c:365:8
    #24 0x559cea95fbce in run_argv tools/perf/perf.c:409:2
    #25 0x559cea95fbce in main tools/perf/perf.c:539:3

  Uninitialized value was stored to memory at
    #0 0x559cea9027d9 in __msan_memcpy llvm/llvm-project/compiler-rt/lib/msan/msan_interceptors.cpp:1558:3
    #1 0x559cea9d2185 in sample_ustack tools/perf/arch/x86/tests/dwarf-unwind.c:41:2
    #2 0x559cea9d202c in test__arch_unwind_sample tools/perf/arch/x86/tests/dwarf-unwind.c:72:9
    #3 0x559ceabc9cbd in test_dwarf_unwind__thread tools/perf/tests/dwarf-unwind.c:106:6
    #4 0x559ceabca5cf in test_dwarf_unwind__compare tools/perf/tests/dwarf-unwind.c:138:26
    #5 0x7f812a6865b0 in bsearch (libc.so.6+0x4e5b0)
    #6 0x559ceabca871 in test_dwarf_unwind__krava_3 tools/perf/tests/dwarf-unwind.c:162:2
    #7 0x559ceabca926 in test_dwarf_unwind__krava_2 tools/perf/tests/dwarf-unwind.c:169:9
    #8 0x559ceabca946 in test_dwarf_unwind__krava_1 tools/perf/tests/dwarf-unwind.c:174:9
    #9 0x559ceabcae12 in test__dwarf_unwind tools/perf/tests/dwarf-unwind.c:211:8
    #10 0x559ceabbc4ab in run_test tools/perf/tests/builtin-test.c:418:9
    #11 0x559ceabbc4ab in test_and_print tools/perf/tests/builtin-test.c:448:9
    #12 0x559ceabbac70 in __cmd_test tools/perf/tests/builtin-test.c:669:4
    #13 0x559ceabbac70 in cmd_test tools/perf/tests/builtin-test.c:815:9
    #14 0x559cea960e30 in run_builtin tools/perf/perf.c:313:11
    #15 0x559cea95fbce in handle_internal_command tools/perf/perf.c:365:8
    #16 0x559cea95fbce in run_argv tools/perf/perf.c:409:2
    #17 0x559cea95fbce in main tools/perf/perf.c:539:3

  Uninitialized value was created by an allocation of 'bf' in the stack frame of function 'perf_event__synthesize_mmap_events'
    #0 0x559ceafc5f60 in perf_event__synthesize_mmap_events tools/perf/util/synthetic-events.c:445

SUMMARY: MemorySanitizer: use-of-uninitialized-value elfutils/libdwfl/frame_unwind.c:648:8 in handle_cfi
Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/arch/x86/tests/dwarf-unwind.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/tools/perf/arch/x86/tests/dwarf-unwind.c b/tools/perf/arch/x86/tests/dwarf-unwind.c
index 4e40402a4f81..478078fb0f22 100644
--- a/tools/perf/arch/x86/tests/dwarf-unwind.c
+++ b/tools/perf/arch/x86/tests/dwarf-unwind.c
@@ -38,6 +38,13 @@ static int sample_ustack(struct perf_sample *sample,
 	stack_size = stack_size > STACK_SIZE ? STACK_SIZE : stack_size;
 
 	memcpy(buf, (void *) sp, stack_size);
+#ifdef MEMORY_SANITIZER
+	/*
+	 * Copying the stack may copy msan poison, avoid false positives in the
+	 * unwinder by removing the poison here.
+	 */
+	__msan_unpoison(buf, stack_size);
+#endif
 	stack->data = (char *) buf;
 	stack->size = stack_size;
 	return 0;
-- 
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201113182053.754625-1-irogers%40google.com.
