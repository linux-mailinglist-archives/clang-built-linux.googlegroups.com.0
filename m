Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBYMEYXZQKGQEKRII6VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A58189078
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 22:34:26 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id f75sf16518911pfa.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 14:34:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584480865; cv=pass;
        d=google.com; s=arc-20160816;
        b=IqlEHLj5H9T/bvPZZsfIuNf2oNkZQfGfpyFaN4AZpHOZQ3SxthcLM+HF2G1e6H/Tju
         wHvWmpW/mrpGAa7bRbYBl5BdgLdoiXYQEhXqsbQ/7L8a5iHY8spRBqDuhzE/ftyq7wXv
         GQnuODCNTicki4GUuLGuCrnfFbGEnoYYq4VRNvsKn6HG7VdTLqU0wTpcfYDE84jJwsYl
         iKDFCueW4b8HtEKUAyWsLk6ibC1xLjXutRC3yQ830oGr5m7npthK78g+R0fzInuz0tx0
         IuLNWI7gvLit2z4rong8XeohUccfVWDlp83y9/CZ0bY0OaKtJqMq5jlR2Lou91QsxjjF
         AQrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=YAfojKZc8fd4+zqeb4jQBKwA+WIyLf8j8Q+kX+Cvijc=;
        b=QDu8Dihtaad1R53i+L01gRnI4mkqZHtgAVZimjuyT/7V1ODzcGoeZfXlFalZldj0zX
         jQoVinQkHfD6txrKrF3YEfSxMLeGzUikh8jY8fddK1DuuSXG1OQv334yCn+l4jm0poaK
         nW0NOSGe0MEFfcCHqcdN+hBLaj6oBkSFgaQ0GUbPsm5gr2du7Ef/Ec5CTaO3Ctv4/bXf
         JnFrRvBlP06Z1LWtsJJ/t3v5vruHVPxVWEw0iu4Jn/6UgPVLhg5rm6irUPxIXd61Kict
         REd2z2m/0aXUviGET7x8M78uI5+60J5PEaR+URpdio10hvz4Afb/pPkuXFR+5R8VkemF
         SPdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dh3V+HNf;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YAfojKZc8fd4+zqeb4jQBKwA+WIyLf8j8Q+kX+Cvijc=;
        b=M2le7Yq4MVuGF5t5bqyGaLbis3vEp09aU7Fpx0If867wAozxKOZACx7bmOX5lRfrG5
         7oCIWnwKwOzsiZjI/gTwqI76/q495D9O71/lGftn7a4s4LmXkcsMDB20i0thVEqaQWV5
         OePObq22mveoKEu6pk03xBBYhuAloJIep5DQHr2bBD73aQhFSsNguSdDlqa2gmZ8XFE7
         vRpons8YbdxYvsM8mun/TJaZSpX8YoV508o6nhQtfaY0IYGs0YYG7ZuLiM8LLyJsAw8H
         KAeZIS+kJEWahTFjX/MYBtA9+h6pdPbw7H+AFoAbfSGz+Vtecgr9c6khV7bWbj47jven
         8bWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YAfojKZc8fd4+zqeb4jQBKwA+WIyLf8j8Q+kX+Cvijc=;
        b=XT57Yzqgikgo0m37TWLcacGlIIZRe49YRpOP9jcn/gnQFi7l3izME0xsibMzsifcLs
         qdwl83qz3c4elGGajd8sEBQvk8hUhOYiSUepS5W2xzUw4m+sCrI3EpTITJlcuAlyIra1
         PZwDGSRSp5b+/lShCDOiAZor32SO5ldV/vaxZG12ZiaIKqo7CRSz8CWGOst82oJ6LiCO
         ai4KO/lCO2bL/b0sn/svrXVZrmDkt3j5VeO7d4/v6r1lPFgeT4+4RhB7UfhYkqj5NT5F
         m37XLOI7gMSLhojl+6KdXzu18eE+GJHWawdMD/PNeRMi9+tPyULX2Rt4vwusGp6/XqIM
         5R8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0ROjq0+jbtU0djPbqD9sBpCkPyPtp0Id4w8OWctAo3YVwtdz1U
	Qcv1lGnp0CoC1DVPS1/MUfw=
X-Google-Smtp-Source: ADFU+vulKGf0tHnuETZZelJbEpcg0vmki4qvjJaN8+fVkewHcBbxWqNjDCsXYC/zN/f+9NvG7/EU6Q==
X-Received: by 2002:a63:5847:: with SMTP id i7mr1179012pgm.127.1584480865222;
        Tue, 17 Mar 2020 14:34:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3e0c:: with SMTP id l12ls11707365pga.7.gmail; Tue, 17
 Mar 2020 14:34:24 -0700 (PDT)
X-Received: by 2002:a63:fc1c:: with SMTP id j28mr1201827pgi.289.1584480864739;
        Tue, 17 Mar 2020 14:34:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584480864; cv=none;
        d=google.com; s=arc-20160816;
        b=iklQDnhsZ4cs2xb/LGZ8cJyOwl3hLyzcPnV5WmpmihXqnyTpzQzz0wwweo+iJoXLk1
         UUyy71KgdQMzmJxsVgy/6yc5Lk6i9h3a+Bokcvu2ARwZfAcTqNUkrdf2AtFU95YC3zuj
         MOFbG8+W2P8mRoSptpUSU9vbKIReGvT4pZme0UfURdhcUE/tIpbxH3EARqvjvOEdqkee
         FPYl6f1SbpwCZzd9BhwDUox69H8NLNDlQ/gnkOSzvc8/clsyzt+sa0NNlKoAnBTGHbrv
         g6LlCDoRS6QyhOWOXmGlGqsh7WPfs+MUraTnePs8x2ZW51Ic4+CHH8EsvT7oIka8Rxld
         r7vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Vv1D1wCbfw9xgmslooEIV3IxSf9U3aok2R4s7swXIxo=;
        b=MZK7m9Mn1ez1SW65eRZ5SyQf4ozb5w8yEeAVlOxFE9Tf1/rjX+BmA465WE3FSHHE7L
         aGL2mziAdFqFgL5F2O42SzYU/wikoWdodZvyDIa9DVAvDPuNNrmKFGNF1uiBjsrWg+/J
         rW0FMC69zqltBpbt95yWsM4vEgN1faW51USsdkGrTejX99quJLujUo4N7tefEVms0VzF
         QbHmjuw8zRWK6L/xroCc1Tqxb+yGnIBTty0M07mHys5V/j3n0tz3ew3ZmeuuGkBOvtvA
         hsX1i2Dqjgc9Ya0LIeQqja9jaKnKhX1sG3c4jTLCCV4BaeXIAodZtFIJ/FetG4J+ohAe
         NleA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dh3V+HNf;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s63si11909pjb.0.2020.03.17.14.34.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 14:34:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 825292076A;
	Tue, 17 Mar 2020 21:34:21 +0000 (UTC)
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Jiri Olsa <jolsa@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Clark Williams <williams@redhat.com>,
	linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Stephane Eranian <eranian@google.com>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>
Subject: [PATCH 21/23] perf tools: Give synthetic mmap events an inode generation
Date: Tue, 17 Mar 2020 18:32:57 -0300
Message-Id: <20200317213259.15494-22-acme@kernel.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200317213259.15494-1-acme@kernel.org>
References: <20200317213259.15494-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=dh3V+HNf;       spf=pass
 (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=acme@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

When mmap2 events are synthesized the ino_generation field isn't being
set leading to uninitialized memory being compared.

Caught with clang's -fsanitize=memory:

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
Acked-by: Jiri Olsa <jolsa@kernel.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20200313053129.131264-1-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
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
2.21.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317213259.15494-22-acme%40kernel.org.
