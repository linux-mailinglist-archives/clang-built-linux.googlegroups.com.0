Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBBOXSHXAKGQEP2FT7RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDB5F3814
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 20:07:51 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id c17sf2632478ioh.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 11:07:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573153670; cv=pass;
        d=google.com; s=arc-20160816;
        b=qsB/ddJu6cOQfeuIf4Ng51uaohlpJt8RMeTUuFTmpZGdiY1igwLGFZ6If3c1O0jTgk
         UTQ8IRST6BEw6UcHmLHcoIhD2REwFdZQAauNfMYnXv+vBYvJRYeT8EKe7AG3Inv5BlBV
         gZcawcDhKyexqYEWOzqMA1NM8QxH4BPsuvMOC38EE5A8ACQyXCEsdIfQIpCcLmRdpcwf
         89b8nVYmXWviOj/cu03UX2RCpH16PGSzP5pplswkjuFG7xRD9i4kKVzYHFiHpb1iDs7e
         Ce3MVBnFeuhxqIDUdq7kZ1sFBl2nR4i11NM35rSIzJbsgAEeuIKHsPGVFbfoU35QVsYr
         vr2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=JEHk+hfgR8xPI9eeZ/WWoWj6IncSX/wMaOZTYQiRPng=;
        b=JBskjCZz20PzT7Bb18mPo99R7ihHeSsIMgrB19RiZUKeBDcmdssQB+IhfmWfxIfTnI
         HRMP5w3jO4X8iYBcDHA1oprhJKx+zZY8jm5eSzSHWgjlVkZRzFRpzBxNByT1f5QOheTN
         zFt0XjAuGS2A6f+3IELBBagSpPuSuLyUzcglBxK9e6XiNa6T/3vAe05yqJO7G+WisO/K
         Oet4jgdh4SwjJ7LknUN/0NH6kKu0Z5Z+gduSs2WUc5sMs/Br2cuMIALfdQC7u6VCSwQ3
         6OdJDRmEWsywNRg6neSa74z/BG61jnQP618xGg68WGWdSanPtYUTXZQcxpK/Zjdo7zhL
         OBdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HUTTWo5v;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JEHk+hfgR8xPI9eeZ/WWoWj6IncSX/wMaOZTYQiRPng=;
        b=D4NFzsr/iIW3zmjn6KrT1aEbRRcUs2XT/AoDgVCKEMmXfvDGsxpe7EFvSMQfSbbbk2
         htVVNX/p/5JDVU7IHSxE3sPo7tOgRPC5OI5LgNJlxCc2hyldDzcICjO2Lcjs7RlF3QxQ
         FskOo7zrMFtFT8XU5x2pPhwABCywFNPLV8VFv7knkczk9GuGcLmz8vsW3CVpOA09c7v1
         ZyidrTTS1PK7T2rGJGVucwVFKnOn7CFRbYTXsJcyr2TlOU3/zp9IP9dpTdg/b8zWEM44
         N+mF4+nJk8VtxIIdjpcYVvpV+BfgG8miImcT9SdD3yviGXNLWamFGXpVjCby0S5VD5Vb
         D2+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JEHk+hfgR8xPI9eeZ/WWoWj6IncSX/wMaOZTYQiRPng=;
        b=bzApryVw8FmstKcTiNFAt1yvINGSXxL3fNf7On8Fd4pcO6U8r4NkKUkG9OyyBa7T1c
         6+wRI7AMHhtdBnSedhHogu+VQiq3fWxZblq5+wY9/eKyvukW4JbdNuQaoR/Ln0UHavOx
         sin7/Oe50n852ysn9Rkc0+CfRGJE6miJkFDAg13el/bY6Z0fnv8LAS2CEWB79Dq1YCOs
         EXD7TyjzP13RcY0Gxq4POMqSPgGC/m86zLO5b39u46vCpjMeiHmpatcPAh5v3ygqEhis
         tbS6bYsyOBLxOIKIvTjMcz+UTH+/zJezAjKt/o6S3+tOi+9kTkgOKVX+mAUTU0KXnALa
         DcIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW9cWjnkg49TzIh2iqkP5FAAdNB2ewHVKnjYFaMComDKKqh4RlZ
	lQ0/0e/qlkuFC6ALTQLF+N0=
X-Google-Smtp-Source: APXvYqxvwyP0vMWuf80VKiVX/Wenn1U9TCjOUdCJ/IGrcNZqvyDi3gDipC4TeGZqWUwWV3A/JLEBWA==
X-Received: by 2002:a92:9a17:: with SMTP id t23mr6710687ili.40.1573153670045;
        Thu, 07 Nov 2019 11:07:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:b104:: with SMTP id t4ls72564ilh.1.gmail; Thu, 07 Nov
 2019 11:07:49 -0800 (PST)
X-Received: by 2002:a92:7e18:: with SMTP id z24mr6466627ilc.276.1573153669503;
        Thu, 07 Nov 2019 11:07:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573153669; cv=none;
        d=google.com; s=arc-20160816;
        b=hWZLrMmstLk7KE2nnQnGJEEDWqyMZVAxYbaGw+xcidEtG+g5+4pLjLVdL70jw4XVA9
         jvoADZWUZx6/tAeotuXFSGqGrzAV/E2buC5Xvbs0qjQeNJWQa8xS8RgDknkoWf4ftw8D
         o3CdYE3C57h9BPuJNRwq4YvrDXjQ2o3gyxEWOLLbbjzcEZKfB0ridjE7nIxYRaVfl4l0
         JR8FdGC1ui80BCN8nuVLkx0kedJF82/ghLF+HYgLlQXf2mwpQnycRyIip+qXALc+Th5h
         Nwgfy1y4ydDIJctTLhPh7a8UPc1sFsLiDl8vK/LcllnRIVVyB+zMZ6tpOR78jVO2mIgu
         NXQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pjj2Gnd5mtmdOBtETyB6TWx/Ey81NBmE8A2EK+qDBjQ=;
        b=ruAkizsl25RTnxy12y/VTb9qJYVlGWD9WPL1DEfcYS8eFanb99JnktDtvsaIlJRg97
         6LgirvJCuLAY5nSWyuyA15lrMmfUF1gtzBMtbGLr3iogtodPfv35oisPggPiYDVMQ1Hd
         B2NDLelBRQrgrqX2GlXcVe6nQVCzxH563RETMeXgXlJd4HSQ5mqKt1k/DEPAJXr4HWUE
         Gi/1Xcf25AV4gZNlgi2zsKYotb0LFNDQcJ2qKUAzD6TmcHZPTeigGmP3ng8FAimkcLL2
         QNozHIWg7lYZ0l4DD5tcbZVhvqmo1oBALjsJYnm3K/GzomZkoEsu5AdbiyyS1htDuOOP
         hagA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HUTTWo5v;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b74si164739ilb.1.2019.11.07.11.07.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Nov 2019 11:07:49 -0800 (PST)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (179-240-172-58.3g.claro.net.br [179.240.172.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2A25F2166E;
	Thu,  7 Nov 2019 19:07:33 +0000 (UTC)
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Jiri Olsa <jolsa@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Clark Williams <williams@redhat.com>,
	linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Andi Kleen <ak@linux.intel.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Jin Yao <yao.jin@linux.intel.com>,
	John Garry <john.garry@huawei.com>,
	Kan Liang <kan.liang@linux.intel.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Martin KaFai Lau <kafai@fb.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Song Liu <songliubraving@fb.com>,
	Stephane Eranian <eranian@google.com>,
	Yonghong Song <yhs@fb.com>,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	netdev@vger.kernel.org,
	Arnaldo Carvalho de Melo <acme@redhat.com>
Subject: [PATCH 45/63] perf parse: If pmu configuration fails free terms
Date: Thu,  7 Nov 2019 15:59:53 -0300
Message-Id: <20191107190011.23924-46-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191107190011.23924-1-acme@kernel.org>
References: <20191107190011.23924-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=HUTTWo5v;       spf=pass
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

Avoid a memory leak when the configuration fails.

Signed-off-by: Ian Rogers <irogers@google.com>
Acked-by: Jiri Olsa <jolsa@kernel.org>
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Alexei Starovoitov <ast@kernel.org>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Daniel Borkmann <daniel@iogearbox.net>
Cc: Jin Yao <yao.jin@linux.intel.com>
Cc: John Garry <john.garry@huawei.com>
Cc: Kan Liang <kan.liang@linux.intel.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Martin KaFai Lau <kafai@fb.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Song Liu <songliubraving@fb.com>
Cc: Stephane Eranian <eranian@google.com>
Cc: Yonghong Song <yhs@fb.com>
Cc: bpf@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Cc: netdev@vger.kernel.org
Link: http://lore.kernel.org/lkml/20191030223448.12930-9-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/parse-events.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 578288c94d2a..a0a80f4e7038 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1388,8 +1388,15 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 	if (get_config_terms(head_config, &config_terms))
 		return -ENOMEM;
 
-	if (perf_pmu__config(pmu, &attr, head_config, parse_state->error))
+	if (perf_pmu__config(pmu, &attr, head_config, parse_state->error)) {
+		struct perf_evsel_config_term *pos, *tmp;
+
+		list_for_each_entry_safe(pos, tmp, &config_terms, list) {
+			list_del_init(&pos->list);
+			free(pos);
+		}
 		return -EINVAL;
+	}
 
 	evsel = __add_event(list, &parse_state->idx, &attr,
 			    get_config_name(head_config), pmu,
-- 
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191107190011.23924-46-acme%40kernel.org.
