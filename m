Return-Path: <clang-built-linux+bncBDPPFIEASMFBBI5A5DWQKGQEFXVF2DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 97825EA649
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 23:35:16 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id b15sf2941722ilr.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 15:35:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572474915; cv=pass;
        d=google.com; s=arc-20160816;
        b=IfDNiw1W5jkFuk3ip7egf2w6gzeMm7AHjNGeF18a3alr+ol8YobOmcnYJctz20Z2dO
         sFYoo4DwEv5GNVDIIcDSnOO11ThgiuidPoexqwMIOWebs4dBfvHUTQN16lrokn51IvWO
         CUs0uTy+zjWSaeCAsERFpWzLySVtSujyNel24fgul4Gjj2/T41qZ9s1dN+8X7TSjJsVc
         WLqzP0pqRPEyWu70nverB9Z1FqHqN3y0ns1+LT+vOqdcKp0+xL9mqCn3h3VpG6kkWIzZ
         U74Kt6vob27TK836J4SIyz1GqQA5iYqpFBHeunidZQo6rN6DRghuuqLuP+jwFVEUfIhf
         ZxGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=LwvsR7ijdDA2gUacGWhBPoTKytrAH7XIan2zoJZeH5Y=;
        b=ODiYBAtuTuXA2pzgltaQrSCuQB/YxWxGg8e3TFtBSiWnqGHY0jTuEabAeDPuJR0C8D
         M+kFyVQPSzV7yrTt+xKF7mDeo5PzgAhZB7WoRnWjsBe+B950h7DbWs9GGp7FCV6il1x/
         Yhf47BoQhPMDeO7HNttJElXlJAZyN4kcdvpSq7LNGZioxxg7Fnwo/gfm7rbFBvweMqLX
         VyZV4qs+boSAyTV8jVzOw63Xi8rPT5x5tDS+DGPPwqmov45MJufJNXkZVLjTd4frXi3c
         8HexzAesbOU9ZKdMxEaAMnUQnL1wGzmJ7fLDwCQj+Sk4W66z9r+CUu4rAB7r0yB+h858
         M82w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=l05WTTft;
       spf=pass (google.com: domain of 3ihc6xqcker8dmjb9mnbjjbg9.7jh7g5ib-6pdgo-gdipsbjjbg9bmjpkn.7jh@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3IhC6XQcKER8DMJB9MNBJJBG9.7JH7G5IB-6PDGO-GDIPSBJJBG9BMJPKN.7JH@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LwvsR7ijdDA2gUacGWhBPoTKytrAH7XIan2zoJZeH5Y=;
        b=CFKIJHpxETOhhKb7dUhaNsCHtKvhY1CMy6b3FbPjVurHiNPGMONPjOJxyRGd2K0pfg
         8WCdjU5gvQlTCpxQ4QLpVOb0+Sv/U7yO3yu/xqD5P6nOcV48mtlj8qXnysjbmgvdDJFB
         QqCh56kPW8RdTwvTfushdtvjcK6k03DlwAcnnlPaVcSsAmb0qNdoNLGpbZp+RVNSyOpr
         Hh39svl0aq8RCgvi3jYHriexMgYmArRwpMbqgWt4YQuVwBVSBjwrQzm6c6T3uI6XPadr
         gkOxX19rxtTAhtEgmOtPfC/zbjfl1Xj8TtYgu0H1iW16qADFc8BBtqpN4tnjoSix3Pzm
         CTuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LwvsR7ijdDA2gUacGWhBPoTKytrAH7XIan2zoJZeH5Y=;
        b=ngvSCiUCaxr9xn8DruGHmw119TF3qpwSHDU5I61w1pXwO7lG6T3st9CJgJ+um2TpiV
         g8tTV1AdY42AZTi/czGzSwjwnIZWeW+OrUyNZMwUxF4UnvRjk7AbuyRg60rW+hReO8rR
         uNqeCTnnhFYBE4rOi8uDuJv/Kh8mIHWiZZILlfsLVy5pPFYJcEGHD28eu/zRmI8IbYGy
         oFCDIvzIh8Xzxg7XVtydzLRFM5/qswVjG51p509dpmqJHeOINNBFNOcsA6UuVQyJy1ai
         YKAu/87az4yS8aWUiYdarIn2lTihVyTze+qkI4c5ELaL5WK2oBzJun3pDze/6wTj9pd+
         Ozsg==
X-Gm-Message-State: APjAAAWdPn3Nd/FQ9mEdCq3y6bGmf8v+9k7y4V4NzvaIJv3znaGDG78k
	A8GHpJ3uaItyYBWzvqkHIGs=
X-Google-Smtp-Source: APXvYqzHeF1FvCuy+3AnrDBfW6TUZGPY/dZ5w4Ou4AI9ag5C8gFU+SAUpTaEsfX2W7RkavQJS8su4g==
X-Received: by 2002:a5e:c649:: with SMTP id s9mr2008604ioo.194.1572474915627;
        Wed, 30 Oct 2019 15:35:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9cd4:: with SMTP id x81ls196288ill.15.gmail; Wed, 30 Oct
 2019 15:35:15 -0700 (PDT)
X-Received: by 2002:a92:8fc6:: with SMTP id r67mr2473524ilk.5.1572474915211;
        Wed, 30 Oct 2019 15:35:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572474915; cv=none;
        d=google.com; s=arc-20160816;
        b=lJxUCo61wCbUNT/4xL1rzGgXZOXxygrlvxnAKJBiPUbv5VRNG7FlQe5zXG4HO/jilz
         kjFzwUtuDLZSgOm5Q3sBw1C9xYCOa1nieNWhdYQfFrS684mDZuKaiHLzm70VXt0fXgng
         L5+eX3qTlmJxxf2fyMSpdq0fx+MG3W+g66N6fWFp/LRf21YJffZb3fLqq9EL5kuDI7O7
         byyDvYL9RztpzZjg6VpkW7KRV0qCRU5cRBL5gRojhTGUnMs0c/XsI4ZALNn7XI99cBOn
         mJLCIgnF3JEcBPCi92qPE7kBoi4nweQZb3AZbx0jrHYx7EPVfBFYFhICKijoGNZBjLP0
         vdVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=n/kunXFB8a17/1SeufduY2AZP1in+T/Iq/GsFxRYzfY=;
        b=vwoRxljZcEjes73a4BpIlG2rlNcEQES++JEM7JIHmykdhxxnDxfCHFGyvscQcGAetn
         LPSV/Zle2ZPa4VL4VE7QsxmIhdl5WinG5iRQxp1Ex2sNlqeSxbeqVvrYkPEzFopNo1Z7
         DmVHdBkeJUYPLkeeheXE7IfmBRLhrZnmO48v5oV3pH0aeKjxAlUXBSKWKsgQoO8PGmjn
         nzRnh8Dxa+yqtX0sTHTsoccfqse5dbNKHX6neUoADxfqdm0Z0WwE/+22QR3Hr/QvD1QB
         Ydft+SbdQvSZgZmXOOOmQlv336VRCA724pWP1Ne97wtyjT03tdQswQGjnZrA0+LDjjrS
         Dvfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=l05WTTft;
       spf=pass (google.com: domain of 3ihc6xqcker8dmjb9mnbjjbg9.7jh7g5ib-6pdgo-gdipsbjjbg9bmjpkn.7jh@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3IhC6XQcKER8DMJB9MNBJJBG9.7JH7G5IB-6PDGO-GDIPSBJJBG9BMJPKN.7JH@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id z130si157015iof.5.2019.10.30.15.35.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 15:35:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ihc6xqcker8dmjb9mnbjjbg9.7jh7g5ib-6pdgo-gdipsbjjbg9bmjpkn.7jh@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id 195so2736446pgc.13
        for <clang-built-linux@googlegroups.com>; Wed, 30 Oct 2019 15:35:15 -0700 (PDT)
X-Received: by 2002:a63:4b52:: with SMTP id k18mr1971001pgl.394.1572474914325;
 Wed, 30 Oct 2019 15:35:14 -0700 (PDT)
Date: Wed, 30 Oct 2019 15:34:46 -0700
In-Reply-To: <20191030223448.12930-1-irogers@google.com>
Message-Id: <20191030223448.12930-9-irogers@google.com>
Mime-Version: 1.0
References: <20191025180827.191916-1-irogers@google.com> <20191030223448.12930-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 08/10] perf tools: if pmu configuration fails free terms
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
 header.i=@google.com header.s=20161025 header.b=l05WTTft;       spf=pass
 (google.com: domain of 3ihc6xqcker8dmjb9mnbjjbg9.7jh7g5ib-6pdgo-gdipsbjjbg9bmjpkn.7jh@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3IhC6XQcKER8DMJB9MNBJJBG9.7JH7G5IB-6PDGO-GDIPSBJJBG9BMJPKN.7JH@flex--irogers.bounces.google.com;
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
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191030223448.12930-9-irogers%40google.com.
