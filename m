Return-Path: <clang-built-linux+bncBDJKZSEQ3YKRBY72ZXZQKGQEE7IB32Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-f58.google.com (mail-lf1-f58.google.com [209.85.167.58])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1A718B8B9
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 15:10:44 +0100 (CET)
Received: by mail-lf1-f58.google.com with SMTP id u3sf964505lfg.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 07:10:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584627044; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mm8g1nwYc3F/ydTFSe+E7ydRCyIg8xPYGmWuCN1BjnSnndA+M4JkJpOE9EPMlOcQUF
         NxyyaF+eKCz5JZ6YF2Y5N2HAaFB5qokN9OuRPVdcNL9FmZ1t1JOjxLuLs0ExprPQ6ywP
         8/nDyemFe7hbfQ65kjbtpOMPQoA78XZcZjmzBEOlBtrh4fBbxoIZqJ5HVKOdw31ZezVJ
         fBXB56h3heTatE0TAz7iTWUDmybRBT7+I5tFcWVqipbnkLvkKOUKpgVwo9VQU8uukzM9
         C6YBivRu80ie4MS+sZtAmPlTkhDvXfzCdxN6hQxQXOAlzq0/7dmXr6lSmmvWD3Q0Vmcj
         BoPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=F4IkAHCFo+RHQ6a21EGaAwU2NADWaCxsU4UCHXrbMnk=;
        b=TdtZ5gMm5aeuUlj6fruk483GuYxW0gbWfop7xRgEDUK6lFp8zi5bXTO2kICcGr01Km
         CVnUcXNkC+lHWCPz+H3nu5IcSGcKYoz4DewVgF6BBmaAe7dsfKCbXibOr60RG4BfWgsY
         yii3WqCSgPa+FS2a2F0sH9FK7ohR25VnZIHzpglOi2ddKf2x7lxrUN9BUtv/y0zQa/lW
         U9rbMfQB5yWi/bnSg5G7/P8ydI59ffJgJGWVvezo/+KOYSGCOrQw7IHRRWW5KDG6dmDB
         I6X2WNSkGLQHIbal9tKkxHhjSM6E3q3XeVHLSAtrHxTWNDDR1X9WKiLglFlUa0mdcu9l
         EEzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:sender:reply-to:to:subject:cc
         :in-reply-to:references:mime-version:message-id:robot-id
         :robot-unsubscribe:precedence:x-original-sender
         :x-original-authentication-results:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F4IkAHCFo+RHQ6a21EGaAwU2NADWaCxsU4UCHXrbMnk=;
        b=Ev64kzrN6iT/5Za2EsoLy9pfGIa+F0/txF2M4quw8CNWHqn60OGeWy6I2aHd3toe8k
         G8M1GptXgFx5ScN99utRqNtzop5TXfGRgokIgnamIbgkq8oYZltHBZOiZJw77efhQTXI
         LIfuWWNAudgrDb/hc+dY7YlqzLkA3J/vklZ8Al0gcIZtZJECkZRP0gBNI8B4HNk+k+kz
         wTIV40ZyBDV2HjX0lX4ZdgpriVxNveyRhDMijnFHY8AbV9F5PKbre1CSjpmpXkIlHEpb
         sebCvxCsYkL3gvp5Q4OxxPuwB0xNK0PQ4zz4CFd5Berpp3n1b8oTRHn7EvXTo/Wam90T
         bw4Q==
X-Gm-Message-State: ANhLgQ2k8eeySnglPWgrR5rIzeFgdNjckHeQjv3awpimUj6Qrwq6o1X1
	HKmMVH3/jUwDOYAechMcRJA=
X-Google-Smtp-Source: ADFU+vvFsXuyJV8ZZ7AxjAjP/bVdsNiRayKqLmX3kWfdC84auyHFFe+aMt1QmOMQlEfmC4VdPvLVWw==
X-Received: by 2002:ac2:4c0f:: with SMTP id t15mr1455736lfq.143.1584627044079;
        Thu, 19 Mar 2020 07:10:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:96:: with SMTP id 22ls575396ljq.0.gmail; Thu, 19
 Mar 2020 07:10:43 -0700 (PDT)
X-Received: by 2002:a2e:91d9:: with SMTP id u25mr2311094ljg.145.1584627043333;
        Thu, 19 Mar 2020 07:10:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584627043; cv=none;
        d=google.com; s=arc-20160816;
        b=d0UJXuRTYQ/dEYRkopxJT3r3MsdNtyVWbphAZFT4SflmJgYBYD8/U0b/JR8W1oE1A3
         pbGV7qIISK22dpmJfobz4QAKLABX5/7aU42pwsNQIa2vnaeJQgWsKOpe46bgMrm/MHP1
         WWNg+abCdmd2mE9TDldr1isncU0TWeneJAm8UXqdhgK1NS21y4NoMBC9xn82IpJv8n+A
         TA/HAZHTRSWjOnumO2AcEG9SEsA5pM+wK6E+vKPKn0xY2qipW+Udjk2PI0Lk+R3UYLAP
         LL6uJ7vHxV9RyKWi386H2LiLKVVZNKW5dhZgtYG5s/P3lcn7KQNIs1enEBj7xBzwRX03
         T6og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=Ylf/aOHXoCZ9m/RYPjCqqp00KXdl7CH/nu4Wajou18U=;
        b=iWBFf74PhEu5ONCijdbVfrAd0HQiq+dZH4rihieKVONBkjRij3eUEQUr4/NVCgt26R
         v8Yn7BInCheWX1oEgX1IGTtisBgIifuMLqCmr4HJlmFi6I7mKBY3LWijyW/UHGAr1HDv
         fKb61B5Z1F7FrhxmvJLlwh9XfdiDTzNsPZcbhlWNfZO1SeroKFIy0PNK+3e4zw9TW05M
         RTnrPC7XtxL6Jyoztof4WpkfZSAAz+VFLerJwg3akDit9hiJbNG3XhsmD0LNH9IqITO4
         HoCNexuSpu3rMN8EFy+1r3+dqWh/C98PNHXV1CceJm0xhmxVaFsitZcaFr8th5RRGjeF
         i0mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id e4si88829ljn.1.2020.03.19.07.10.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 19 Mar 2020 07:10:43 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1jEvsf-0001zN-5N; Thu, 19 Mar 2020 15:10:41 +0100
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id C982F1C22A3;
	Thu, 19 Mar 2020 15:10:40 +0100 (CET)
Date: Thu, 19 Mar 2020 14:10:40 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] perf tools: Give synthetic mmap events an inode generation
Cc: Ian Rogers <irogers@google.com>, Jiri Olsa <jolsa@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Mark Rutland <mark.rutland@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Stephane Eranian <eranian@google.com>,
 clang-built-linux@googlegroups.com,
 Arnaldo Carvalho de Melo <acme@redhat.com>, x86 <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>
In-Reply-To: <20200313053129.131264-1-irogers@google.com>
References: <20200313053129.131264-1-irogers@google.com>
MIME-Version: 1.0
Message-ID: <158462704053.28353.11934701390002464663.tip-bot2@tip-bot2>
X-Mailer: tip-git-log-daemon
Robot-ID: <tip-bot2.linutronix.de>
Robot-Unsubscribe: Contact <mailto:tglx@linutronix.de> to get blacklisted from these emails
Precedence: list
Content-Type: text/plain; charset="UTF-8"
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tip-bot2@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tip-bot2@linutronix.de
 designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
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

The following commit has been merged into the perf/core branch of tip:

Commit-ID:     3b7a15b0643d42e4dca78c5aed8f1ad209a3d1ab
Gitweb:        https://git.kernel.org/tip/3b7a15b0643d42e4dca78c5aed8f1ad209a3d1ab
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Thu, 12 Mar 2020 22:31:29 -07:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Tue, 17 Mar 2020 18:01:36 -03:00

perf tools: Give synthetic mmap events an inode generation

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
index dd3e6f4..3f28af3 100644
--- a/tools/perf/util/synthetic-events.c
+++ b/tools/perf/util/synthetic-events.c
@@ -345,6 +345,7 @@ int perf_event__synthesize_mmap_events(struct perf_tool *tool,
 			continue;
 
 		event->mmap2.ino = (u64)ino;
+		event->mmap2.ino_generation = 0;
 
 		/*
 		 * Just like the kernel, see __perf_event_mmap in kernel/perf_event.c

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/158462704053.28353.11934701390002464663.tip-bot2%40tip-bot2.
