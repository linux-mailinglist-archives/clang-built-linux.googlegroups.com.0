Return-Path: <clang-built-linux+bncBDPPFIEASMFBBHVCWDZQKGQEXATK35Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 010061851FA
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Mar 2020 00:02:55 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id h12sf8066962ils.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:02:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584140574; cv=pass;
        d=google.com; s=arc-20160816;
        b=l0oxN8fy3Z8oYYqFOddc9xgbRlPsu+htu+K+9zT8Na5Td59TwnxsvsgRSrBLcPay8A
         IBCGwiZwuxmQC/sX6KJ8osmNImjB94+YoG6qHwOIrreFwvjBSW+jglDf3Y4+zt1rIQLL
         13bpBGKBZcnPU19X3TLDnlKJirbE/myXpYKxOhOlsZphNq2nNRy/gpyjrL0KpNx27/Cf
         tko0+aXp324qkllRFCLJMRqisH+pwaJQmsLlBiA8La6V0XrjTFPimEzkGTbzqSFAtf/B
         hzF5zMZyrHeVCCvdPmozINEi1mbrNN1CxUjQhmXL8qRcou04S9+v4ptfGvnVcZssDP+w
         FDnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=SGuMNQoobx0AKJKCZPv0LGQBzB1xXbX0y+5yh5jEcCU=;
        b=xYZb8UK1XMimzuK6ir++WCS/yp5MSGA9qHx0R9TpHouFFdeIgHz5JgERcRdaIMxlA8
         ijh6k/RnanmbVCHcbch1x70UDm4SZ3LU1CkqWVQqdogGfJKil4z82fn0TsgtQF5HET8A
         I594+vMtoV8fIUGQLVpqnX3ocrBowznpy8AwrobQR5raxasCW5JFxOs9puWXUZrp9nC8
         SlgSe0tIb9839YSllbwyZFKuCg0Tvj1xlsklybM8TVt7W3TFhb6v4wyB8YW0arIddUt9
         GP1p46Hiuonrdngr+eTUUh/HpP/lwjsUtlJjnhMZ4g6pO6KiGFnbsVQyFFZ7NWlXx5pQ
         kQlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Dle5S5K+;
       spf=pass (google.com: domain of 3hrfsxgckeegsbyqobcqyyqvo.mywmvkxq-lesvd-vsxehqyyqvoqbyezc.myw@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3HRFsXgcKEegSbYQObcQYYQVO.MYWMVKXQ-LeSVd-VSXehQYYQVOQbYeZc.MYW@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=SGuMNQoobx0AKJKCZPv0LGQBzB1xXbX0y+5yh5jEcCU=;
        b=AyHLnBL3JFs3Z5NFsdadKarVOcWtGpxIC/BG5z2YaeFkCVVtJK6VtDWD9ES8fb6gcA
         KFbS1waqPFnbPc32hFLSFXobOdtJViI25KaQObjtZ/08cMeIc4mBf/PTixU+qXJiQ5EF
         MrOlu1xwDPb0AZViqLKr5lf6B2grTYNQrso36skMkedWTLlAELKaSRrYVnTBFqe4hIZ0
         +ogFGN+Ve+hYyOSB4r6NjiL0C95L+Qc/sMFPuajl1v+1jjFCKS/NIUEcQwmlpHpm/uMt
         S1a1b+F8z88lWVlxRpUuwk8++SxF8aQDvKZWWsWUpcb/SN8gJ1coxQM5iDXMkWQaGe8I
         5rmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SGuMNQoobx0AKJKCZPv0LGQBzB1xXbX0y+5yh5jEcCU=;
        b=KPaJsdE5niOk6JRjF+jlW1AYylz/pgzFqD3KfW29cjdBA86kwbhDkl0D2i/f2SOs0Q
         jqHOrZsf9rBq5MJdNWIGEXyBOWxjl5yFfLSnrLs9hg1yUR+PhSkD05txyB7QTpmsbd6d
         rP9rsTrVTwhxxPUqbHNc9fT4UPfEUlKPb2+M5lpSEfejlmfwflNmxv6c6Y4sNGq9/iNG
         Tk97kt+HWjtGGq4NI0xCpg7qmoKlRUlJc9soywZZONGwO9z4FT7dSDvCneTDMIzBEkyD
         CNj3adtBNeCjGeNFajtvkGQAr+xAEdyu17frjbdFnoT4whGaF9K8EP4CzS147LYca4tj
         7DeA==
X-Gm-Message-State: ANhLgQ2eOjeXcYNna7fB4yIcSuzhwg7qDOV5TJQN1MNo4ZsE8W227efK
	yjb2y3RMDI8nKSgZhp/lwbc=
X-Google-Smtp-Source: ADFU+vsLMHKTxdXnRJFKCDZG84WffmtbNNWIYsCWbq3Pp8LgZa53pmc0Ox2uRB8YO8BS0abYdQWGsw==
X-Received: by 2002:a92:79cf:: with SMTP id u198mr1244513ilc.23.1584140574708;
        Fri, 13 Mar 2020 16:02:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6018:: with SMTP id r24ls1973692iog.1.gmail; Fri, 13 Mar
 2020 16:02:54 -0700 (PDT)
X-Received: by 2002:a5d:9157:: with SMTP id y23mr14330668ioq.199.1584140574318;
        Fri, 13 Mar 2020 16:02:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584140574; cv=none;
        d=google.com; s=arc-20160816;
        b=k2RZIE2SdlxMAA68PxKVc31HhOJcF8qkT1LEcEN76PJdwOTiN8X63gSL3ezBULAdM8
         4Zyv0+yuV9AZfYLWsu6kP0FwETm4fgZxVXJeNQOuo1XrMuzif7Hx6s+ktOW+nkoudzUt
         RFJPEGF/1THc95NRqRH6+u45CDGm39a7IfrPB1PCEWFX/Gwhnr9GFN7nRzkbzt1FDHbm
         N8CYVj/QYoGaY3MR4NtX1/eI9eneYawWy8cwjriPQZKd6DW76V2Pb0CTr68fK8SscNvD
         Hau+Na7aHwiQBK4qf+9utVFi3CoPTcT2aLzq/qAXvbEtsoaOVkJN70LJiBa9J38bSUdD
         tRxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=u6W8EPudCxoS1C+Gxr8h5SKLukwTLV40TMQzqhE2icg=;
        b=aUkxK5lXFJUXUuoh6xlVCn3YavFi2BByWyeINAAsnJ0QkAwjs8sDsHaMwjMOr7ZwZq
         hF3Zf+h7AJwiZN/sFjcq012uA73sglLYaXqYWkKSvD1q7WU0baaCwUe/aZAHzw+cQZCJ
         2/J2IpoTKkoTzL3pfAMidW7jwcdiqnJ+0vY2aJ54cFAhlN1fIGrfVqHEIxHprg43fSZN
         qMeWB8EcP9OSatAcx5g8ojPUBtRCGI6g1gKhewh2ixcigm7JRWHeQ3lyqTZcywDb7QJV
         WoyZ41GltuQtmiTQ+66JihkeFVo5he/9u+/DhUyMV3pVWy/gb3yr26QE08bQCwzx7Mwa
         CeLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Dle5S5K+;
       spf=pass (google.com: domain of 3hrfsxgckeegsbyqobcqyyqvo.mywmvkxq-lesvd-vsxehqyyqvoqbyezc.myw@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3HRFsXgcKEegSbYQObcQYYQVO.MYWMVKXQ-LeSVd-VSXehQYYQVOQbYeZc.MYW@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id e7si442886iof.4.2020.03.13.16.02.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 16:02:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hrfsxgckeegsbyqobcqyyqvo.mywmvkxq-lesvd-vsxehqyyqvoqbyezc.myw@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id x25so7547476pfq.18
        for <clang-built-linux@googlegroups.com>; Fri, 13 Mar 2020 16:02:54 -0700 (PDT)
X-Received: by 2002:a65:5306:: with SMTP id m6mr15467704pgq.5.1584140573528;
 Fri, 13 Mar 2020 16:02:53 -0700 (PDT)
Date: Fri, 13 Mar 2020 16:02:49 -0700
Message-Id: <20200313230249.78825-1-irogers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
Subject: [PATCH] perf parse-events: fix 3 use after frees
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Andi Kleen <ak@linux.intel.com>, 
	Adrian Hunter <adrian.hunter@intel.com>, Leo Yan <leo.yan@linaro.org>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Dle5S5K+;       spf=pass
 (google.com: domain of 3hrfsxgckeegsbyqobcqyyqvo.mywmvkxq-lesvd-vsxehqyyqvoqbyezc.myw@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3HRFsXgcKEegSbYQObcQYYQVO.MYWMVKXQ-LeSVd-VSXehQYYQVOQbYeZc.MYW@flex--irogers.bounces.google.com;
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

Reproducible with a clang asan build and then running perf test in
particular 'Parse event definition strings'.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index a14995835d85..593b6b03785d 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1449,7 +1449,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 		evsel = __add_event(list, &parse_state->idx, &attr, NULL, pmu, NULL,
 				    auto_merge_stats, NULL);
 		if (evsel) {
-			evsel->pmu_name = name;
+			evsel->pmu_name = name ? strdup(name) : NULL;
 			evsel->use_uncore_alias = use_uncore_alias;
 			return 0;
 		} else {
@@ -1497,7 +1497,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 		evsel->snapshot = info.snapshot;
 		evsel->metric_expr = info.metric_expr;
 		evsel->metric_name = info.metric_name;
-		evsel->pmu_name = name;
+		evsel->pmu_name = name ? strdup(name) : NULL;
 		evsel->use_uncore_alias = use_uncore_alias;
 		evsel->percore = config_term_percore(&evsel->config_terms);
 	}
@@ -1547,7 +1547,7 @@ int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
 				if (!parse_events_add_pmu(parse_state, list,
 							  pmu->name, head,
 							  true, true)) {
-					pr_debug("%s -> %s/%s/\n", config,
+					pr_debug("%s -> %s/%s/\n", str,
 						 pmu->name, alias->str);
 					ok++;
 				}
-- 
2.25.1.481.gfbce0eb801-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313230249.78825-1-irogers%40google.com.
