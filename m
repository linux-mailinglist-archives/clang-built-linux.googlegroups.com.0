Return-Path: <clang-built-linux+bncBDPPFIEASMFBBN5VVTZQKGQETQG4OVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 07647184093
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 06:31:37 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id z8sf3291721pfj.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Mar 2020 22:31:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584077495; cv=pass;
        d=google.com; s=arc-20160816;
        b=qNkL8de+yzlzyNtfb7eAyuafRZQ1f5JTCyOXEn3IcYYTuzlPO4xkWpvBdlerNyQ/+n
         y9I0JZPMnjXCNbqbUN9Q0xsrqnJhsDj8AtnFWiwIcFSr1CPiLZGRWlaZ9braj7GGANBr
         S2O+531egw+1d4lvVEL3YVPeBMsnMTcGb+W+vzkvPTVaWzdTczcUxX4He50ht/1/nXas
         eBOhzJEluMYNSwq38SpAzk9Y6P5H6aDRvGtN/6Mi296Exg59HIkqW/xtwRjgqMQo/GHF
         X6YULpKOwkbo9XIw5Sl6LIw13waqNF8mPemTn+k6JUiiGhjamF7vJ+tacSJcP6cfymt3
         76Pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=Gqfffk29cScbJ5RNhwmQnNFfM0LcomrrzuFuXvC66m0=;
        b=qCoyc171m8jpF0h0YPJiz9tgVcWJKljoPNlJGVXDMwJpqRCEdvBisov1K7xPEcPY+T
         OLkqCLzztxmgmHK0jjQvEbWD8sTFxcI9/kyAbkE7BvzJ0TLbiCJtp/zVZJAinlethv4w
         8Dc4Lmj/A4bGAzZ9GzXvcTeowZ/G12GMRL2Wq8SLz4p9Jc2L5Gv7mS+GCN4e3svrXd+K
         pAl0eSxJKq/hjFNwkgq0tUTklsDkx8DoCdc2rVzklX77nvChatOwiGPLxlZzPL2OEnRI
         gSBVz28o5kktMtfhrt/OnuuqIg0uMOxu2oqzeRGCfg02RIW/OGszSAoLESsXqPHl6ymw
         PSCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GjMfjdxS;
       spf=pass (google.com: domain of 3trprxgckeza2b80ybc08805y.w86w5u70-ve25d-527eh08805y0b8e9c.w86@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=3tRprXgcKEZA2B80yBC08805y.w86w5u70-vE25D-527EH08805y0B8E9C.w86@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Gqfffk29cScbJ5RNhwmQnNFfM0LcomrrzuFuXvC66m0=;
        b=G7d75Hp9/u5BrjvMlwHRm4P6ruXrcOyoTh/ouDiSOFAVJbuF3ogjVR77HSEl7p5KLs
         CfloowZSw1hSiNjH1nQsu3MgLMxZsOmfJgMz/tJ9ciChRyTSzTtIFAyOfnhG8cFIPlPx
         zAHgA9iWlLK23dZW4PeW7lsUbl7sbLRN9akAayaPtGHKieCtr+MaZwaNxen0iorbIUCY
         1gHkoWd0bj2YlGlsIdmhZKCw0r+TjGt5NgpqcUfR8ynyVOGw4IkeH3/qsk63634y2QH2
         mOU+DZop9kxxD/MEN8eSkRUuetqn26jzUI4+MglD6U4pMu30wHUW665TxAZyjbnTZUjg
         5nYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gqfffk29cScbJ5RNhwmQnNFfM0LcomrrzuFuXvC66m0=;
        b=MJgYvirMs2Mf3ObfIMPVRbK4XTFYrezTazxkHoAJCdo89OTDTQn51GCmaLfM6Z3rKs
         gPhh1OBHT0rSShlGa5M5nPCIcuxKcLYNueG0DkGaQ2rWqoUrQacfz/SvxjbbYwivjwrd
         gJRyjodl8zZ195p0KJequBvp4Q/SR7tkq/nfdLfVCUpPCTCpSeyL1EWMxnPUpfqBSb45
         Lg6KY3ZIf6deyI710I3oPg2UwaDhWqfst3UEJ16R2V9rClB3I7OT+vUsbwaKqKvi8/xs
         9rkmQ1h6Bchnnevj5I8bNHlcdNfsKciRUWMSjrt8XBOs5/UOAKcKvMZZjCTGczKwvYSU
         tzYQ==
X-Gm-Message-State: ANhLgQ1jHdBUdWJcdsUa3OQBuRdy9pCwcLVEShswIbyc4eA9Qje7Ooyq
	qNMo9kL8QZF4XK4lMBpkuDU=
X-Google-Smtp-Source: ADFU+vvxnfbB++QWJfcdfvptJI0O+WrErMAWh7mzPTqpxkz/29aQQ1YjKlpZCjUmO9W09Uvj0q85PA==
X-Received: by 2002:a17:90a:c385:: with SMTP id h5mr5066970pjt.131.1584077495443;
        Thu, 12 Mar 2020 22:31:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9708:: with SMTP id a8ls3516158pfg.9.gmail; Thu, 12 Mar
 2020 22:31:35 -0700 (PDT)
X-Received: by 2002:a63:4808:: with SMTP id v8mr5125423pga.128.1584077494944;
        Thu, 12 Mar 2020 22:31:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584077494; cv=none;
        d=google.com; s=arc-20160816;
        b=AmLGYNAXcSE7fxDFe1/tTlLc05lXOwerPx0dFUVFHLCfiYPuDWh1rIswiHOOSKGsXg
         b8VbGPzqqbnAmPFP0Q+njcJT8/+ojtZgvv178edBmNj6eKnFFlX5kQfiOGK2/B9gm/PM
         t6tdwo1XTsUYZk9IyZ3pH0tatlIdWSsdySMG45tZkWvKtQAYK0wsUrI99w0aXp02t+4N
         TRjDJtalId/JypGD4NjgeM0QJ8348RktTY/4UBlh/NSz9UNFhABvEsrnOBNCaBrjHB2L
         qNoIq7UuXbZrY3VgDWmJ9Rl/htAsL5TF4bsZpX7ssHB9Qz8ygGg9EWQNY2LfyGjr7zw5
         648Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=DD2ddA0wLFjdW9dxphGyMtPdvjHnr0KNfIw80V+0cfw=;
        b=rmRaXzwoDSh1iOstdzKsyiNtPj84yj3bDjfdX7p80IKbdur/xiQPGTggIaZzS9pL/N
         EUdUIsXQ0wHII4W35wNP2yMsbzrS6xk1hUg9GPbzClioYYyZPTeNfHDiAeVZMFC/qqdQ
         Et4q0kpLrfe7eSrJskCqh50wm+6BffGq7FIcxkD6g/MI+NStAhlgVeCVdh74gacEVQLx
         UJVLmvdVEXwDeFZkhSOm6zs8t7UmnV6WeVY3BtAvdsXRpp0qVZhDKIOlGceEpHkIPwEy
         S3OUzn4asRojbSjTA+Mrh3jdUrsmmIICgamMi4ChWR45VQNw4ThDL8aM7674wssKx64t
         Vdcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GjMfjdxS;
       spf=pass (google.com: domain of 3trprxgckeza2b80ybc08805y.w86w5u70-ve25d-527eh08805y0b8e9c.w86@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=3tRprXgcKEZA2B80yBC08805y.w86w5u70-vE25D-527EH08805y0B8E9C.w86@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa4a.google.com (mail-vk1-xa4a.google.com. [2607:f8b0:4864:20::a4a])
        by gmr-mx.google.com with ESMTPS id q197si529834pfc.5.2020.03.12.22.31.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 22:31:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3trprxgckeza2b80ybc08805y.w86w5u70-ve25d-527eh08805y0b8e9c.w86@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) client-ip=2607:f8b0:4864:20::a4a;
Received: by mail-vk1-xa4a.google.com with SMTP id b136so3328002vkf.20
        for <clang-built-linux@googlegroups.com>; Thu, 12 Mar 2020 22:31:34 -0700 (PDT)
X-Received: by 2002:a1f:f2ce:: with SMTP id q197mr7390125vkh.49.1584077493880;
 Thu, 12 Mar 2020 22:31:33 -0700 (PDT)
Date: Thu, 12 Mar 2020 22:31:29 -0700
Message-Id: <20200313053129.131264-1-irogers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
Subject: [PATCH] perf tools: give synthetic mmap events an inode generation
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GjMfjdxS;       spf=pass
 (google.com: domain of 3trprxgckeza2b80ybc08805y.w86w5u70-ve25d-527eh08805y0b8e9c.w86@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=3tRprXgcKEZA2B80yBC08805y.w86w5u70-vE25D-527EH08805y0B8E9C.w86@flex--irogers.bounces.google.com;
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
Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/synthetic-events.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tools/perf/util/synthetic-events.c b/tools/perf/util/synthetic-events.c
index dd3e6f43fb86..5fddb64ec8c7 100644
--- a/tools/perf/util/synthetic-events.c
+++ b/tools/perf/util/synthetic-events.c
@@ -345,6 +345,7 @@ int perf_event__synthesize_mmap_events(struct perf_tool *tool,
 			continue;
 
 		event->mmap2.ino = (u64)ino;
+                event->mmap2.ino_generation = 0;
 
 		/*
 		 * Just like the kernel, see __perf_event_mmap in kernel/perf_event.c
-- 
2.25.1.481.gfbce0eb801-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313053129.131264-1-irogers%40google.com.
