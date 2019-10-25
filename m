Return-Path: <clang-built-linux+bncBDPPFIEASMFBBJHUZTWQKGQE5WTEB7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 434BFE5333
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 20:08:38 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id n81sf2873635ili.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 11:08:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572026917; cv=pass;
        d=google.com; s=arc-20160816;
        b=e63XE4lEWB4mcn5bCI1CNv4e4+MF/IEJgxHzipyG6nRb+S/CDajjGh7B7bPq81dTLg
         lcoWc/WaOQB0kTN73+yWEhZzTZndGf7pdoEP1wyHL/fSeBEx7tc9SRrLKim4W2IuLR9U
         BQwA+f/C0A8m7+9k95VWerYHcbfXBhcvxU02vRzq1iMDIvSU5uXdU5cCpMzQm+uZDYsQ
         4hwouDcKB97op7hoNBLB9CDUbUZ3D0cL2zQy3uhlJoFDE3CFNCNrTlrt2runcWp4I78Z
         o00aPjb4HUCo5J/e7ggCP7N3I7JTvRUKqVQNFe9OMr2n67T4DvCKpY+yFu/2Q3r8MJg6
         7y2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=/g5WXfbw75LWvyuWBj01/FShnMIJI97hKVGF/dtoVWM=;
        b=T28hvpUDSfjHL8zXlrvAJGJfJ1InijfSOaPK/KhxLz85COm6rGZXj9c3tweNsmvlTX
         qZrivYA9TrAVLc6eCaZK36xuuTCf6y1arNic9Fw5jC9V5UMnnU5PauVG7HvC0BcNuUco
         VHLfTRzsilCyOdUIYeA37hYe8oOvo/+DBkR1MZOqPj+eAVkgrg4BReRrAh92VBO6oKB4
         WkQ/qZtAyCxxSX3meAcKmOvKjqszbf+4/88JUm3Hj727iwnxy6LuDkBwFUoqb1GvPRxG
         Nq60U4I3aGC/qYwEX6J1VrwjwvqAJoVQo3qy2SSDR3VjvasCPCdVzvoAtGGQkLx4/8Vl
         ACbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AItMRH1U;
       spf=pass (google.com: domain of 3izqzxqckevg8he64hi6ee6b4.2ec2b0d6-1k8bj-b8dkn6ee6b46hekfi.2ec@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3IzqzXQcKEVg8HE64HI6EE6B4.2EC2B0D6-1K8BJ-B8DKN6EE6B46HEKFI.2EC@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/g5WXfbw75LWvyuWBj01/FShnMIJI97hKVGF/dtoVWM=;
        b=Tr7GgP+xQPpg8dngHJh+ldAT60eDt7iTH5t1EhaCnMKa09NnNOEqfICMysWCftDRud
         wngz01svFnpK82lH+QT3Pm+d++La5DsWyCVxkzQG6jSKnUBDW6kBVroJO+b5s4mpP/0M
         qqwaDMkgO+k9bofv+zmEl/bDZ5a+17euqf3yIfY2N8O97nDB0pFrl98of2FbafeqoLzj
         RaFX2iYJouStCzhQdruKV5ZJZRZhvo2to3ekS8VeXAbD4P3LrCmEYwWQ5nxV6NysOACN
         LbCIhV7SF8+ojx6lpDEhB2aMIBiEarePzNDiSBV383TdeSWeYh/UfzmqA6tGe1293Un4
         fjjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/g5WXfbw75LWvyuWBj01/FShnMIJI97hKVGF/dtoVWM=;
        b=RV9ovZY63m+69hMP7MqhTwKXOXzcXb7ej6LaFM4b7HRaEW7As+HMm9MLX0St0GZGZ5
         V6KXJPbXR/n1iemx/2jSp6IcQKJpy06e7uRiYJOI/0icMIWQw55SFUL/i0oWCoqrZk/t
         5oSWXE4IrhHnGnEutZ6TDW132K6BR8/WvFlg5UDRnWvzgc50VLa7P+j5d33n7sSaKdst
         qyYlIKYceH8EzYa5O/xv9zXDzzmMLsdp3axEPVUFTmp5sPRpm25d1fqdM1fcnEBPzAUm
         eYrKLJgmjxBOQXzGE6tbdUF0hxC4I9ONH74moBE8mQ9V+pIgR9LoVwAFhnhmgiytzBdh
         WVVg==
X-Gm-Message-State: APjAAAW7NWSTq+NBhPkkK2JOixE/B5WxGIFqhRpK0lW76qvm6Pl2gfpi
	2hr5JjTa3arwU9tpAhbFeQc=
X-Google-Smtp-Source: APXvYqxVOfFJD2U0x6aBhX3fyZYGx3Q/BMu/vbdF5rKcsb1i+65M3s07TkEDYY5y8UDu3cJHTlNTVg==
X-Received: by 2002:a92:3b8c:: with SMTP id n12mr5656641ilh.298.1572026916827;
        Fri, 25 Oct 2019 11:08:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:7f8c:: with SMTP id r134ls614776jac.9.gmail; Fri, 25 Oct
 2019 11:08:36 -0700 (PDT)
X-Received: by 2002:a02:b701:: with SMTP id g1mr3160489jam.31.1572026916498;
        Fri, 25 Oct 2019 11:08:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572026916; cv=none;
        d=google.com; s=arc-20160816;
        b=THmI+atvuv6Yc3DC4HXiMHRpR01CGLu9dhg//7Oloo6NS9HZmcnsUVyZdL4S1wqrps
         H9sY3JnATMj0BjlsyOOv5yF0KvMNu0r5vvfZZCxZrj+WWaSfj2sSSv7zVZVoEgoKTAbU
         wzk6e5RHfm/0kIamGmWnymBA8lTKI90jwNtU/vXkIb6dn6o6cYihgaobkRvujbOSZge9
         DdX4Lov24SZr5Dl2mNcrpJAHdXRk2tUrm+JH+joSTay1jj+iD0MQ+MYXHlW53Si/o55y
         2MsDt+e4QD7ZSBx2ZeyRWNqiLMQDaiG7DgguKw76w0FNSSE7bxoiFDxYPlWe6cdau4xL
         yylQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=kVRScVzVdmvaFoKwm7QtsLTFIeCMqlMKNHJqjiwIzwM=;
        b=i7593dZf8/fit/k25kUpTuLanfD4lfH8zfLQqJZ4xDaUHc8uGosVNBZGD5hkUpNb9b
         RqU5QikICniYCQ7ds87buoSzWdJpujHaahI/QqGCg/OffCkyezmMLXbYQ9+6k5g4YM8a
         STz19zLUNwiSHp+irARFch2pVVkNRxygzHaddeQ2WASxQS6zN+p+4Q1n86oTZ+NoEAve
         2Kqas6Pf3iRhxkHraaSDcBhPAABw5ZLqBxV3ltWNyDk70LvOTlmGXvDNCLeu48iwTvV7
         YWBa7s/dlCqA4yvnR0B2IqUMkM8SiUCO/wtP73zng4sCr77lEJ75lAzzQVcj2xfezjHw
         xeSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AItMRH1U;
       spf=pass (google.com: domain of 3izqzxqckevg8he64hi6ee6b4.2ec2b0d6-1k8bj-b8dkn6ee6b46hekfi.2ec@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3IzqzXQcKEVg8HE64HI6EE6B4.2EC2B0D6-1K8BJ-B8DKN6EE6B46HEKFI.2EC@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id g1si125724ilh.1.2019.10.25.11.08.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 11:08:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3izqzxqckevg8he64hi6ee6b4.2ec2b0d6-1k8bj-b8dkn6ee6b46hekfi.2ec@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id e5so2356087pgm.7
        for <clang-built-linux@googlegroups.com>; Fri, 25 Oct 2019 11:08:36 -0700 (PDT)
X-Received: by 2002:a65:6456:: with SMTP id s22mr5837656pgv.287.1572026915558;
 Fri, 25 Oct 2019 11:08:35 -0700 (PDT)
Date: Fri, 25 Oct 2019 11:08:18 -0700
In-Reply-To: <20191024190202.109403-1-irogers@google.com>
Message-Id: <20191025180827.191916-1-irogers@google.com>
Mime-Version: 1.0
References: <20191024190202.109403-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v4 0/9] Improvements to memory usage by parse events
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
 header.i=@google.com header.s=20161025 header.b=AItMRH1U;       spf=pass
 (google.com: domain of 3izqzxqckevg8he64hi6ee6b4.2ec2b0d6-1k8bj-b8dkn6ee6b46hekfi.2ec@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3IzqzXQcKEVg8HE64HI6EE6B4.2EC2B0D6-1K8BJ-B8DKN6EE6B46HEKFI.2EC@flex--irogers.bounces.google.com;
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

The v4 patches address review comments from Jiri Olsa, turning a long
error message into a single warning, fixing the data type in a list
iterator and reordering patches.

The v3 patches address review comments from Jiri Olsa improving commit
messages, handling ENOMEM errors from strdup better, and removing a
printed warning if an invalid event is passed.

The v2 patches are preferable to an earlier proposed patch:
   perf tools: avoid reading out of scope array

Ian Rogers (9):
  perf tools: add parse events handle error
  perf tools: move ALLOC_LIST into a function
  perf tools: avoid a malloc for array events
  perf tools: splice events onto evlist even on error
  perf tools: ensure config and str in terms are unique
  perf tools: add destructors for parse event terms
  perf tools: before yyabort-ing free components
  perf tools: if pmu configuration fails free terms
  perf tools: add a deep delete for parse event terms

 tools/perf/util/parse-events.c | 177 ++++++++++-----
 tools/perf/util/parse-events.h |   3 +
 tools/perf/util/parse-events.y | 388 ++++++++++++++++++++++++---------
 tools/perf/util/pmu.c          |  32 +--
 4 files changed, 433 insertions(+), 167 deletions(-)

-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191025180827.191916-1-irogers%40google.com.
