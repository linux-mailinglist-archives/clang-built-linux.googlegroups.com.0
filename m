Return-Path: <clang-built-linux+bncBDPPFIEASMFBBRXKY7WQKGQEFEQFYIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8EBE3BA0
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 21:02:31 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id b141sf3578307vkf.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 12:02:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571943750; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZE/78QcXKbSSXzA4OBGteC2XbyQQrq1t0ka6Yonm5E4eGOojVMGnYtyplFx6OFIYrg
         ZN3f1pSHl+tBhKb8yIeMcp7W6Qy3x78JdAc7eo/SC05e3GhdCILaqs/i5A0tspN4hJ/g
         q66PpDBxOxBQwj8XPBUAUl+l7BRIe96fkD3ddlXaNyYecadvV71GCp7zhkK7sagwavkq
         S8lR9fric04CFPhpOjQ/jODMJvmXtRBdecpVM4RsxEmRHsCi1+NhYCDCRABAETexmIE7
         2yXcfE4sgAz9f+aoaKY9nF7dDTw9FdC+DTbcF66j1+okEVOlyvplKl8futWV2A1w7Tzr
         A0VA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Nb5QUTi/0vjvG+q6D29Dxk/ukvxn85WIJKAExSakLlQ=;
        b=P5sBRD7pG55eR6V2RcAC9Gbk+KhFJbIjnJ85EduMYYJR2LHHLSNLsMwWo5zz9D65ro
         DcXtHxsLfLhv8stSHASIBXtNXGCBLmBvsA+bSBV5C1opWpTcsPUGjx1HUGDbHRu45GM7
         2/pfHv+CMGLsfCKLsb7mn/5ORKm9gETpz/Y+TqfTmm1Nu1NoKBswKp/0anPxfLV2lWnG
         hy3GAfxmVucsmWzKsVVgLeMNK+6jYeMieaoFYBA3fyvb0TXkY10s2fOgJLC75Blw9Ru7
         dSt7Ys/wK/oYF9kSVMCujIvyFfRqZPS/YfFDlZlb+La1ZXuGAnjHv8AltLmJsqzJrfRm
         BOIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RZGqh51Q;
       spf=pass (google.com: domain of 3rpwxxqckeektczrpcdrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3RPWxXQcKEekTcZRPcdRZZRWP.NZXNWLYR-MfTWe-WTYfiRZZRWPRcZfad.NZX@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nb5QUTi/0vjvG+q6D29Dxk/ukvxn85WIJKAExSakLlQ=;
        b=ZrgeswtU2qjIdBz8Wda7GMNnCOq3Z2a2s1rDWDg4wneLW4V0VPE7SjM8EBfy267gzR
         pIneopNgbuhH2w6gerOvL+WMLuA9cdyorAyIXCC7gPj6o2IQbN7TMSQ/RqWG60oB4Ulh
         ZIkssGjb9xlTcvf3vUfbbjzJ7tcPtS1Ups2y/3ncMeynpmdxgomecX6kTv0lLFK74Cg7
         N6urubxtwB6kw5swsIxuxonIAc6EwyZS7EBEOLKqnhbZ6tnMvWJDN8cRiKxtK4zF9FHe
         idJX5rW1CCwW+nI+7RB2hrADoujU7sV8jwZYz4Ahh7s8/yO7iSVMXZ0Dy7wP7/ma9Dym
         fqcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nb5QUTi/0vjvG+q6D29Dxk/ukvxn85WIJKAExSakLlQ=;
        b=sJ1myzGtL+QTMfhtEr7qRSjTkanESXin43YTg5CYluV0q2MN7dHrZwkjTKS81SuIcG
         xANoTPJV+ZO0jzkNc7u7UMeCQw1b9Evef02T8qLqzQWvlgHlRbOIkcJbijyplXBRvgn/
         RWuTjbZs9wyny/LqnerajrkVffDWF7X2rN/aKxe++qP2uJcoaAmt1EYK1hQ3jMa/FCZK
         VwQkBw54qkxvxpq0Yy0U8o69mvsdkfpkVmiPmaQaE829/PGucXxiDPK9urr4/UIlsqWj
         Mke0Bv1BMWR2tPJ7jwzWyoANveME7OlzWIrlJBgBIpskoRs8ytf1Qf3pnpDLEFotjwjZ
         C1jQ==
X-Gm-Message-State: APjAAAUvdgWqc+VjOKZGjN4tS+REzkkJpptjzVEK71ZMOwvWYEh3AYLl
	yklG3E+etfVAgk4nuMWEZJs=
X-Google-Smtp-Source: APXvYqyjTsjGFxujOSLPic2S2hNODph+mqwPhlvjrjmBUYwUcNiKpEVpcpGbeXMbH6Rwa3DLAw0QpA==
X-Received: by 2002:a1f:b40a:: with SMTP id d10mr9852306vkf.29.1571943750153;
        Thu, 24 Oct 2019 12:02:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:cf83:: with SMTP id g3ls700217vsm.9.gmail; Thu, 24 Oct
 2019 12:02:29 -0700 (PDT)
X-Received: by 2002:a05:6102:3d7:: with SMTP id n23mr10599197vsq.28.1571943749732;
        Thu, 24 Oct 2019 12:02:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571943749; cv=none;
        d=google.com; s=arc-20160816;
        b=xDQYiGyUIwYnZTPDI1gputnu7FZAnyj/x0gNTrmUWufvZwlOKhapGLC4EEblEkvuFD
         T2DVUHSgyr2jEYYLB8THUvqwv6GhCtYQAP3OK4Mg3+DYFREYVkQUWNQ78r2dh8HGvHtA
         DDpiZrgCuI6f+NL9TZea5aWZD2tn0gbgRCG9oLp39PT2QTnKmJllKtEl3mgQ0BN7pJyN
         3XOnF4Xqxby+bjc0FURwO/nwubLfjaMuZF/n2zDRRIrreVPXxa3T0KVgsYNmyib25/pw
         oU1O8vCwmfZPxXXXPZDVsxeqk/pgb2SbkB76ITu4L1pLRaihMy2RnMs89hPfAfmTW+iP
         qAyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=gqjRA7utK84t0hFtqZlJ+wiNMJ2M/V0XD0ZpglWruVc=;
        b=GX5UVIw64l+VV/95VLZ7QmcQ0ArW3dgvr5F1tWPYCB+8NttIe04y8WRMn9mCkjJYpF
         tbI1pJULbemwz4GthvbiAMyfof/oOUR/Z6nl76bDve3dwel74WePEVNgEVg2UKnpUWEW
         EMS9NC9BIekLzv4CZq4RgmjQHl7dNFjntkf+fn4lfdLLOWb0guEjyAn28Xl6NOfYsAdH
         mGH7kyb65O6DW+r32mEv+0L7IPW55HYgt6HDWhnfb3Obhwaw50H65yJ+4yi5KsB9pswH
         f48cv3FiXZh4F+U2b4rhc1mBhLWUT+pLEcXs4LjwPYFsBxAIgMPOdC3dktnSqZKNiEUa
         ftTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RZGqh51Q;
       spf=pass (google.com: domain of 3rpwxxqckeektczrpcdrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3RPWxXQcKEekTcZRPcdRZZRWP.NZXNWLYR-MfTWe-WTYfiRZZRWPRcZfad.NZX@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id p78si484572vkf.0.2019.10.24.12.02.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 12:02:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3rpwxxqckeektczrpcdrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id s24so15763912plp.3
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 12:02:29 -0700 (PDT)
X-Received: by 2002:a65:498c:: with SMTP id r12mr16268812pgs.280.1571943748421;
 Thu, 24 Oct 2019 12:02:28 -0700 (PDT)
Date: Thu, 24 Oct 2019 12:02:01 -0700
In-Reply-To: <20191024190202.109403-1-irogers@google.com>
Message-Id: <20191024190202.109403-9-irogers@google.com>
Mime-Version: 1.0
References: <20191023005337.196160-1-irogers@google.com> <20191024190202.109403-1-irogers@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH v3 8/9] perf tools: if pmu configuration fails free terms
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
 header.i=@google.com header.s=20161025 header.b=RZGqh51Q;       spf=pass
 (google.com: domain of 3rpwxxqckeektczrpcdrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3RPWxXQcKEekTcZRPcdRZZRWP.NZXNWLYR-MfTWe-WTYfiRZZRWPRcZfad.NZX@flex--irogers.bounces.google.com;
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

Avoid a memory leak when the configuration fails.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index dc5862a663b5..999ea7378969 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1406,8 +1406,15 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
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
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024190202.109403-9-irogers%40google.com.
