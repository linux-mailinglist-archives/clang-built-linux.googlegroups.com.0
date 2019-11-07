Return-Path: <clang-built-linux+bncBDPPFIEASMFBBWVOSLXAKGQEEDR4E4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 65415F3B05
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 23:14:52 +0100 (CET)
Received: by mail-yw1-xc3f.google.com with SMTP id t188sf2992658ywc.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 14:14:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573164891; cv=pass;
        d=google.com; s=arc-20160816;
        b=dIuDLZG+RVUk4rnepjeo9aKivym4mGo8berkACA/LlTF4vRMikTu51ng2YM0etb13e
         lt9V9s68VdfQtKHTMLUQsZ4WvMWBhIZ4nsDNyKmQZeu0/0BWfW2VIFFanc9wWcb1y7Pp
         pM18qHJ96gT1cmAMJjAhHV9aXVx93pzy1kEK1Yiq/1O7TH4f6a/30/6YA/UV0TNLXqJS
         shGtSx9Fl6s3t8EYsk+nQpw0UeJg2ekK+mxjOGd7GWuBG4+nQgkxbNgnN/MuU6cHf+W9
         TzK8rAUzi9BEYbZr65BqC3hVQ7UiIX/RcNhe+jivdrvjW5VwuW5vps+Ql5+FGGwv7glZ
         TQzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=6c4I6BFwLOxHMvYJb1eIKYxNw3ZBcV+8a0pLuURrRm4=;
        b=id4EShdNxY48agUTFuWsKNdF/vcSRsEHiuK/bGeHpB5JgfaIkJpNTKpE1pv8MDmxI8
         58iMaoRS1BOdAt1PXHIdfM3ySfjPqbeqaXV/ihezGEF40V1teMzBgFRw5dejdDNLxrZ+
         ykqKPi4niqSRBm3Qe6xRJ8mNJ039w6K1+5xKMs9iTWZjrACut9lOCRlx/JQymogmhOTn
         njKvMYelNOWjcD4fDQ8m0zcxtbSftL1CUk7F7LsSaC1AFTCxhdySB/Ri2CFOWyO1V4a9
         1WlEO1sby6fi8ZA3VTnD5Ild+PZTB94U21p+F2fnBIPa/zyZGc1gvaKt8W1+fMs2EkB2
         PSgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bgQrPYHr;
       spf=pass (google.com: domain of 3wzfexqckey4096yw9ay66y3w.u64u3s5y-tc03b-305cfy66y3wy96c7a.u64@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::94a as permitted sender) smtp.mailfrom=3WZfEXQcKEY4096yw9Ay66y3w.u64u3s5y-tC03B-305CFy66y3wy96C7A.u64@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6c4I6BFwLOxHMvYJb1eIKYxNw3ZBcV+8a0pLuURrRm4=;
        b=DTn4YZL0em6xNKl65I+ago5iUj3Wq4q+rvDUXTu1O0Bhe1AHzPcB6HJgRYLeyY0R1t
         +f/l03Ee6rywnt6zG8CZz3VEyYZZS3oBrSg1HnczsAZOcBrOTTRoeCz3oZ/EeeWSUoY8
         MVGxZrUSo7BzPZhJ00VTHT59usZhJcfZTPe2nMgr6jyOy480/h6OsqBxo18GDfqlrwb3
         M5lzOlHvWmVO0h3MLXx9UsoWPwH2wqgoDtDXnxGWXPd8jqfUxx8xKIOZwZaEVMCVkmbd
         UA20e2SWCOwBRPfAOqC9XZAGFQkt3t/Tj3IU1OLSM7dPTuyduXoxVZTiqz1Af8SMngKt
         0w7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6c4I6BFwLOxHMvYJb1eIKYxNw3ZBcV+8a0pLuURrRm4=;
        b=VI1HN3nbGsqfYgcZWsTUnqnk+/SZDUMMLilE0cgUdLQMU+wzulsZTEAumPZD6GkXHo
         AePQAqPH7jDZVd25ykVB1MXPwCm3s6XyI7a0NOUxTtV1KndBYnOeVqglfPPQzo1UTGIG
         PslFlYASCA5Uojt5yGOWX+KrH0QjCID1tAKDeHtFhYPVBRtulOVnF6kQx2zvmUOS5vXS
         AKiTuR5lElwvWObQNEVQkRJm0gUzdVEDf7DMyB9AjEySN7UIeCqiKsFByPqHvqG6954/
         /Kr2VCcME8lmIHbxmR5xBRtuXvu2suQrvZIslW6G21crb8/RWZ50AG6oJ1YYTG3hi7pb
         bquA==
X-Gm-Message-State: APjAAAW2UG+4Nov+eX8mVCeyfPJ0TUl0mGXx+AhYJUyPZDLwMc4Td5Fh
	3xtR8GE/vk8O0krmpsSurKw=
X-Google-Smtp-Source: APXvYqw5Exq0LZCB2vB65SXP9QvpWsrPZdTDdEogGc2SeAwrY4yQg5Pd3bloJvMS8+uSm+DPJOfcRw==
X-Received: by 2002:a81:1b03:: with SMTP id b3mr4528797ywb.39.1573164890873;
        Thu, 07 Nov 2019 14:14:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:adcd:: with SMTP id d13ls1377736ybe.10.gmail; Thu, 07
 Nov 2019 14:14:50 -0800 (PST)
X-Received: by 2002:a25:4a43:: with SMTP id x64mr5939414yba.37.1573164890401;
        Thu, 07 Nov 2019 14:14:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573164890; cv=none;
        d=google.com; s=arc-20160816;
        b=Q0hU2E4+YBysuBLekcRA5HtlIj/YVa1BUsszX4BEc/6FDDhzeww5N1IFQIAjpi+7t3
         iIxj6TWv9acqObrRZXhkJ17JTVIaEv7jxYeGruIWftDYHRtXgfZ9p79yEZNh45gtxt7M
         bC8ysR7QjOjm6SF2VCjNVLDm2LwBzynVsD5/+yQAVBzxrV3TxFN2Od9cpVcAOLsKZS3h
         zrg6YfKFy0thMK12zpu/iEdFNZ00NNt+Q1dhoN4ArmzyE/C0WwPKGDbwmTUyuTWpw7mg
         vvm6Gb1CW2FxDmJI88xUC+qd74jdHU4G/jveHBAFDbHsMvZ9N6eNJCtte04usxN2Ckqj
         2Q2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Rdpklo87Cbnc0oQfbWbjnhJvVaMXzhYZMl0FgWRkGnU=;
        b=Ujh4L6LvXEPz5wPdtXQqT+/q/YdA8wgk6pCOFG0MV1e86Ip8SokH37BtQpaWXcd4TP
         7Bf9u5qp5DQKt15yhBDu4+QbzVqugBYiy9WMeFv9EbR8q2qnuDfRoqYgiKkmWynrXexm
         CoSE3SxkqHCGBe+hfCjwAuY7RcVs35L7AF4v8tuDjvxbY7S7G5yEcd4V5qzLtzFuiPcY
         G+MGw5vXR+bXkueeayafbg4q4idbV2Bed5EJFsJNlkvA2Izr6kcWZPaCwA8eU+sikzoT
         x/rYAKBUnWotQP1+qSX7DQI/hKvQUrwFDz8jDuklBK49pYX5kPo8H3N2JgsgOaXicL3E
         M+bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bgQrPYHr;
       spf=pass (google.com: domain of 3wzfexqckey4096yw9ay66y3w.u64u3s5y-tc03b-305cfy66y3wy96c7a.u64@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::94a as permitted sender) smtp.mailfrom=3WZfEXQcKEY4096yw9Ay66y3w.u64u3s5y-tC03B-305CFy66y3wy96C7A.u64@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x94a.google.com (mail-ua1-x94a.google.com. [2607:f8b0:4864:20::94a])
        by gmr-mx.google.com with ESMTPS id x9si74433ybd.0.2019.11.07.14.14.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2019 14:14:50 -0800 (PST)
Received-SPF: pass (google.com: domain of 3wzfexqckey4096yw9ay66y3w.u64u3s5y-tc03b-305cfy66y3wy96c7a.u64@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::94a as permitted sender) client-ip=2607:f8b0:4864:20::94a;
Received: by mail-ua1-x94a.google.com with SMTP id b12so1413037uan.10
        for <clang-built-linux@googlegroups.com>; Thu, 07 Nov 2019 14:14:50 -0800 (PST)
X-Received: by 2002:ab0:63:: with SMTP id 90mr4121250uai.91.1573164889634;
 Thu, 07 Nov 2019 14:14:49 -0800 (PST)
Date: Thu,  7 Nov 2019 14:14:21 -0800
In-Reply-To: <20191107221428.168286-1-irogers@google.com>
Message-Id: <20191107221428.168286-4-irogers@google.com>
Mime-Version: 1.0
References: <20191030223448.12930-1-irogers@google.com> <20191107221428.168286-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH v6 03/10] perf tools: avoid a malloc for array events
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
 header.i=@google.com header.s=20161025 header.b=bgQrPYHr;       spf=pass
 (google.com: domain of 3wzfexqckey4096yw9ay66y3w.u64u3s5y-tc03b-305cfy66y3wy96c7a.u64@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::94a as permitted sender) smtp.mailfrom=3WZfEXQcKEY4096yw9Ay66y3w.u64u3s5y-tC03B-305CFy66y3wy96C7A.u64@flex--irogers.bounces.google.com;
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

Use realloc rather than malloc+memcpy to possibly avoid a memory
allocation when appending array elements.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.y | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 5863acb34780..ffa1a1b63796 100644
--- a/tools/perf/util/parse-events.y
+++ b/tools/perf/util/parse-events.y
@@ -689,14 +689,12 @@ array_terms ',' array_term
 	struct parse_events_array new_array;
 
 	new_array.nr_ranges = $1.nr_ranges + $3.nr_ranges;
-	new_array.ranges = malloc(sizeof(new_array.ranges[0]) *
-				  new_array.nr_ranges);
+	new_array.ranges = realloc($1.ranges,
+				sizeof(new_array.ranges[0]) *
+				new_array.nr_ranges);
 	ABORT_ON(!new_array.ranges);
-	memcpy(&new_array.ranges[0], $1.ranges,
-	       $1.nr_ranges * sizeof(new_array.ranges[0]));
 	memcpy(&new_array.ranges[$1.nr_ranges], $3.ranges,
 	       $3.nr_ranges * sizeof(new_array.ranges[0]));
-	free($1.ranges);
 	free($3.ranges);
 	$$ = new_array;
 }
-- 
2.24.0.432.g9d3f5f5b63-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191107221428.168286-4-irogers%40google.com.
