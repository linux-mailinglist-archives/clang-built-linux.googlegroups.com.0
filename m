Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBAVNYDXQKGQENIZ2R2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 422B9119A9B
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 23:04:52 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id p11sf580619plo.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 14:04:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576015490; cv=pass;
        d=google.com; s=arc-20160816;
        b=dq6f2vPlhj2JWgBQcIywlOv7qmSvxTMsuzif4n5enG8IrhEPTZoTz4MIMJaI+dZH3D
         I2q3x+1be6jZ0FmhDsk9bHFsqdZwZD4cRebpGkMzr5FfAKM1aaMyoQBMtQLEF2lF5p4A
         Z4nMWjoIZXoIR4Hh7yZjIWMaaXtAmpP6r5jlT/8JV8BNX/FjsvKdtOza9MOVDPeyvOTU
         ykZxxQhSsC29PEoO/I7W0LTwD1/gAmzQ60NpK5jUtIit4uYTA1Wqs1Xq2qwMQPNFt9p3
         3XbfXQlJuzxxPZBDTtMIm9EZkEKOd466F3S8FwuixI9KcXh0fLdG5J34Zityuh4Roj+N
         ZJZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=YuFKAFnUQjlQx7vOi4MsjC8wJRyRDwl66c13GLz/UgM=;
        b=TD+UFZ4QMU8LCQ11GOqkrO9xIYixMJgSVlPXs2ph1VAI/HSiQ6WEJSQ094d5AIznFv
         amMw9ssYonwABUXRKp+EJWGsCCAIFxgPHwISpXo5tGGpk8oXLIrlWJoR6tqDJSk9RpH4
         rtiEHxYh0jQB1B62Dg2gotXoW5HlPSkQ3Fn4YKauhjYuGVajHJta0O8YyP2w3frOW/2k
         H4bIOSuICRBgLhgwlU7/UMvh0XvyLo+DZN3BkNaoQYsU1ovAjCSKF6bUc0EtZvkOi8OD
         nD0+fV+9woiADavTE1suwxJEuz9NEKojyKu1mXOCxncIkCtb2iGTOoAMYMYejfMim/g2
         XC9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=okf9ZbQg;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YuFKAFnUQjlQx7vOi4MsjC8wJRyRDwl66c13GLz/UgM=;
        b=dwqQbg3WlnQTJjGcZtaDrRwDRIbiLtMNrPGfx0XL16yi0ic6YgujOxF8OAdLGC/4P0
         IVHuqwDC+9tXpk5WZM8AHnDtFkvkTtf7sCi4npkaVL421fTouIBYebPcZSCwvNl3RgEC
         c8eyxSdG2HViILllDTIJIanIkDXy5u0RWNkO5QCvSssHSmPLeFS+EpGT92sZ2mltKk0q
         vYGUKXI+oiZFYg/okMt9M/sfrLZWzpvUf8G1TIerDykQSoj2nVwZCtxhW2BfTh1oZ+JC
         Jk7RVKe6MzmVD7gXku0lYL9EZQTPzR66iNhQwdQp2rHNK6LCZMfdcHPbVwe66oU76Fby
         m6Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YuFKAFnUQjlQx7vOi4MsjC8wJRyRDwl66c13GLz/UgM=;
        b=h7V0Is2ELZ/2dQVCemGGjBRTdZTUwll282hqfgRrvbpvjt8HwE5PRoeSV4+H1tv03W
         kj8v2snFYNSZ7eDgNsfrBQRGxwx5Hk9BjV+Xdm18bB9EFIfqwQb+E0SxMdoTv1zkxCZ2
         jJ04ULvCzh3LrX3MdqJkg1qyoJhpGwwl5wN6P/C4bgBYZ3KCAq2zTc6em2Y243A+jZBh
         c6q1WGcAy9om8Rww8xPQc2Vpzhts8yWEY8v8x/MM3Rg+yZA03fD0Bp8lJG2xqSaIr7PB
         bHdbihSBrG/KjE/OM1gupz9qc5OAsXPPNREba7FmkPe1H2BFqAyzPWagAlHRRSBXqGCu
         41Sg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVdHCxK0LT4AqEb4Fhzs4ZTKKJNaFfVAjFRVu7EqCFxoyzfpHpH
	s7vEbeymzrrMLLfWeQYrQFc=
X-Google-Smtp-Source: APXvYqxY3IixskzfpbcOLKiOFkDlDNKMOmPcKzSVzcxyWq/L91w2tnmMaULW6bxoM9zR0MEucBbv5Q==
X-Received: by 2002:a17:902:7885:: with SMTP id q5mr36905821pll.219.1576015490665;
        Tue, 10 Dec 2019 14:04:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6791:: with SMTP id e17ls4628310pgr.14.gmail; Tue, 10
 Dec 2019 14:04:50 -0800 (PST)
X-Received: by 2002:a62:1b4b:: with SMTP id b72mr150808pfb.96.1576015490290;
        Tue, 10 Dec 2019 14:04:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576015490; cv=none;
        d=google.com; s=arc-20160816;
        b=N6mbJcJvXjxqWoOGM/ciJvz83QbkIXFQbUKg5Gs/p21uqJMEuaaBG2Fs+wRWHyIulm
         oRJ8zT6emS77Q+ZFSKEiFKGyfy9X/rVLb2X1brkrvQqBzW2mngspyltVpqK1Z7Q7ud1g
         3qhOm8OL5Ac2Lwgyct8/t2QBebT+MPi8nwfttIFrtbKhhwYt64X6sRDV7Z76c3kRjL81
         80VkTxeTNNbqji/WTaohMWFF0WZsLV9CMFteuBlyx3s0G35oK0XAjC+YVMDLbddmbMf6
         jkYeffLeoMgoVG2NcBPQ33imKWVgfDB2umWUVuFCIZ44MTRPD3VH/WkczBUaAllM6uXY
         6l8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JHeegUj9BF5hGjiWQb4cF3PT7faL/XDHMjQgDLOyJlc=;
        b=X59fqo9lhSqOhM1IDWr+SM1BGwGHIy/rH4cVmW8bONmxFbQOAXYDoN3YKyh6QfsHxd
         BqzLc3Xmc/wL5scpUKoKnqyHM78s4LF4uKq2LP0/s5ahpuzdaj33zLCNllj2Eqj/MRHG
         BSgQch4bmb6bT6uTrOQotNFKQi/ovIvBKPU0deoFHJQIiPIZwwlzxn2AeUEJPdYkgGMu
         4WeqooO8KleRLTWJVH6qVJaySqKU2iE1IhUBPwbf+pBuBpTmpQ4T5rdhYG3xzVZfGvrS
         2j3JkfBepeNnBlKGdCFju0Zk+0BB5KafBZXd3e6C16IpgKLZrEwBfCyak89sygdUmSfb
         RA5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=okf9ZbQg;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r18si3688pfc.2.2019.12.10.14.04.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 14:04:50 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D73472073B;
	Tue, 10 Dec 2019 22:04:47 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Ian Rogers <irogers@google.com>,
	Jiri Olsa <jolsa@kernel.org>,
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
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Song Liu <songliubraving@fb.com>,
	Stephane Eranian <eranian@google.com>,
	Yonghong Song <yhs@fb.com>,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	netdev@vger.kernel.org,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 4.14 091/130] perf parse: If pmu configuration fails free terms
Date: Tue, 10 Dec 2019 17:02:22 -0500
Message-Id: <20191210220301.13262-91-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210220301.13262-1-sashal@kernel.org>
References: <20191210220301.13262-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=okf9ZbQg;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

[ Upstream commit 38f2c4226e6bc3e8c41c318242821ba5dc825aba ]

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
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/util/parse-events.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 29e2bb304168c..096c52f296d77 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1253,8 +1253,15 @@ static int __parse_events_add_pmu(struct parse_events_state *parse_state,
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
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191210220301.13262-91-sashal%40kernel.org.
