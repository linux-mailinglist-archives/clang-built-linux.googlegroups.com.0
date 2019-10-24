Return-Path: <clang-built-linux+bncBDPPFIEASMFBBNPKY7WQKGQEF2WXQQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A996E3B91
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 21:02:15 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id m185sf7507362pfb.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 12:02:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571943734; cv=pass;
        d=google.com; s=arc-20160816;
        b=zZHFQiD6fb5P1kytgagm45Z4Oy7N5RnLpLhhL2aEySLWzrLpSw5TsKTyRwb7UB7pTF
         YO/UjeJo+qm94PPgg4lYZAqTT33tsBVzBDKz/8GOE6LTOaf4sUB+SVp56UdXrH27sepC
         qLKlSxzlcBk29XR/gAJJk1LviwAuK8FHoz9ZPcmhLZJhftBKBu8+eqfXipA/RxIzW2sk
         UizdUsaz5PJqgbQDkwK6P43561EFBMRQDNF5HgyxdVORXzEtQYxTAOFkwgk7V9YJL0Tl
         5OFtg9EOq3SOgBKGI9SqwZEIL1rRAJfnIMCFAkfu+Zf/3ZH+7Tf7Aqm9gjNjCWQpteRk
         rfUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=NLWy0IDMqz1WmkJPmYF2uRP6Gns56MowFtOAf3DnNeM=;
        b=xLhufH2OTT71pslnCnkoLBKi4hvRvqY1NCVJFHTyslEa7sffFwJGqsN4LR7mR3p5Sw
         I+zgR+75aHZ7/MZBx9mO9j4cHeH9qRNNVKlKOyru/bv80p+xZvuCSARyqL/eRYvJqsGP
         iPimfOhuCu6RBnhosnIcYpW0JuM+FkgLXat85+S/RM4glYLzqayfNprETR8Y1bCL4Ijb
         QeTOaDX17gIB8GTNHNX85HrwIt/mK2bLn2Yh2LUYNEpnMB+rkyrc5J1O6mF3T9pIzXaw
         KQv9RnPdLzW+dJ3kG/DmmRS1iQCm6jTaG/BpLT+MTP8eAkhWxCtFkbGYho0dYIfo4O+s
         Tkmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wkf8kLJ4;
       spf=pass (google.com: domain of 3npwxxqckedkdmjb9mnbjjbg9.7jh7g5ib-6pdgo-gdipsbjjbg9bmjpkn.7jh@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3NPWxXQcKEdkDMJB9MNBJJBG9.7JH7G5IB-6PDGO-GDIPSBJJBG9BMJPKN.7JH@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NLWy0IDMqz1WmkJPmYF2uRP6Gns56MowFtOAf3DnNeM=;
        b=St1kN1fd7VO+MHseecUSERRl4WrsNhO8h2aE9yPRxQivvUk4vGX3Zj4CTT7YYK6OQT
         pRC71PMJ54nApyOwRUxNosZCj6O3YBfAg06xczAGmP0BroyJ1FJ1Vl/sty1vnEj4dweH
         rcaYbpNO4hR6ehnF3iGL60rtjCxGxESPjibZ08MX07Iz+nOjGqJobV9UtyD1Cv1vSFHR
         lXdxtQada/QxJzF3rAERnvB0VszmHaNhcFcUtUfQC1UzcFak2dUqGf2YrRGVLHcfOOF+
         tjMlY9jNngMf2SmOE0fvtmddA0+4bKs4E/gvmS+xw66ujrfxUZQHYkeLS10jwBAfQFTp
         KFRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NLWy0IDMqz1WmkJPmYF2uRP6Gns56MowFtOAf3DnNeM=;
        b=Bjp4FS2N1IsvjZPEhLtUK7vNmQOPNVU2sxg8hVcjZmZw/NAuNz9qdpwMnyJJXIYl0N
         MKBDhyieWlmcTyoPkOb1jHW6usauvqMANvxPgsFIfaiYvhR7AREgzV5r5z49Eo2ooHoK
         cH7p/sYv5EQOzUFn3uWfkUhFbWvUeo/ijHkaTYlP+THXsvcncnzBoZt7036wjcf5Pv5x
         JDN6rkCWyVS1O2gcLL9DFque3ngRvjvQWszz3nUp5jPP5s5MO4g8Z2BsGCKc9dct3vjJ
         2KXMT86AYYJ2tc3Wds6rkiq6WGsUtqctAvvDGwzN7jDtk5kNb8IZPvO94UUHm+TuDzK3
         ipyA==
X-Gm-Message-State: APjAAAV6AzcYnRpIZUv/ostCQq9hsRRYa5fbHK3Ob2ZEEFuR96lVTTy2
	B1jTSuCw+HESKVV+pLFMUuQ=
X-Google-Smtp-Source: APXvYqzvrSHbG4ig+Q3PAW+x+37jqaMJiL7x1FLGaFj9Y3auswWxdxL81pP9pHMgkfOdflu48N12IQ==
X-Received: by 2002:a65:4608:: with SMTP id v8mr17950565pgq.366.1571943733715;
        Thu, 24 Oct 2019 12:02:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:bd03:: with SMTP id a3ls2135758pff.10.gmail; Thu, 24 Oct
 2019 12:02:13 -0700 (PDT)
X-Received: by 2002:a63:6782:: with SMTP id b124mr18923069pgc.220.1571943733279;
        Thu, 24 Oct 2019 12:02:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571943733; cv=none;
        d=google.com; s=arc-20160816;
        b=u4Oa3PtQB+sFGmWZ1tamEygqZs+TGng+75OY2cIQwrpv34pE3/SjrEa+nlSbg/sMoz
         UJ49NimH//Fu3FMSZfNQiD4jRQ0eO42kK2pCO34hBNP5/Frr6QmkOU2MXFygMvlf3/OI
         Rf5sW+QeAq6KLJWdTAoTztZyuXd/JAhaEwgBrgjwS40B+ARPlz31dpAE8njtgoSrnKYL
         2B2ZoxUScqXvNbVYD3nf1c7Vqn12XlsWs/sS83uQimnAwFpk0u+iVjMmGV8Ch9XvRMXa
         RVn0Qlm3nHs8qv0DDE0NIXV+HoIcWDHLsmR2yexsE3Ayav3KrX1uh6aaxg+XYqbWg4aQ
         fzrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Suz77OvPj2zse3ACt5ant97LgHIFhYaDbP1x2fdJ/qM=;
        b=eQ+Ey5ripmpibuw6vcw2j625MQGw2rpiByHtCzRA+XRkLFnCge16roR8QtLP92V93m
         8qq4/oNhQ4vzkrRaXxhQjlsuhh7+WD1lDcQQXTni5mpK2OxzBlI4l1aAWCr7I3jUqKRM
         TLxVy/HWjrEabsACvMHGVdtuPGfMTroEOR0jyALF8TUh2uEhykT0MxC2VBRyqCUZKzka
         yD2t0ZzItpwMX+bV47NC8FhPn4WRPRzGzDQRTc8C/7cHiOtFkscoYX5qOLElDUx9mNGF
         CCmvHG5SqOtv6SIPeI2RKDX1G9VALyvRsjGc7nhneBCwYctefUVSAPKLMkhW7FhCHsW6
         GSwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wkf8kLJ4;
       spf=pass (google.com: domain of 3npwxxqckedkdmjb9mnbjjbg9.7jh7g5ib-6pdgo-gdipsbjjbg9bmjpkn.7jh@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3NPWxXQcKEdkDMJB9MNBJJBG9.7JH7G5IB-6PDGO-GDIPSBJJBG9BMJPKN.7JH@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id p9si104520pjo.0.2019.10.24.12.02.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 12:02:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3npwxxqckedkdmjb9mnbjjbg9.7jh7g5ib-6pdgo-gdipsbjjbg9bmjpkn.7jh@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id b128so6956042pga.21
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 12:02:13 -0700 (PDT)
X-Received: by 2002:a63:748:: with SMTP id 69mr18596734pgh.109.1571943732499;
 Thu, 24 Oct 2019 12:02:12 -0700 (PDT)
Date: Thu, 24 Oct 2019 12:01:55 -0700
In-Reply-To: <20191024190202.109403-1-irogers@google.com>
Message-Id: <20191024190202.109403-3-irogers@google.com>
Mime-Version: 1.0
References: <20191023005337.196160-1-irogers@google.com> <20191024190202.109403-1-irogers@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH v3 2/9] perf tools: splice events onto evlist even on error
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
 header.i=@google.com header.s=20161025 header.b=Wkf8kLJ4;       spf=pass
 (google.com: domain of 3npwxxqckedkdmjb9mnbjjbg9.7jh7g5ib-6pdgo-gdipsbjjbg9bmjpkn.7jh@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3NPWxXQcKEdkDMJB9MNBJJBG9.7JH7G5IB-6PDGO-GDIPSBJJBG9BMJPKN.7JH@flex--irogers.bounces.google.com;
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

If event parsing fails the event list is leaked, instead splice the list
onto the out result and let the caller cleanup.

An example input for parse_events found by libFuzzer that reproduces
this memory leak is 'm{'.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index edb3ae76777d..f0d50f079d2f 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1968,15 +1968,20 @@ int parse_events(struct evlist *evlist, const char *str,
 
 	ret = parse_events__scanner(str, &parse_state, PE_START_EVENTS);
 	perf_pmu__parse_cleanup();
+
+	if (!ret && list_empty(&parse_state.list)) {
+		WARN_ONCE(true, "WARNING: event parser found nothing\n");
+		return -1;
+	}
+
+	/*
+	 * Add list to the evlist even with errors to allow callers to clean up.
+	 */
+	perf_evlist__splice_list_tail(evlist, &parse_state.list);
+
 	if (!ret) {
 		struct evsel *last;
 
-		if (list_empty(&parse_state.list)) {
-			WARN_ONCE(true, "WARNING: event parser found nothing\n");
-			return -1;
-		}
-
-		perf_evlist__splice_list_tail(evlist, &parse_state.list);
 		evlist->nr_groups += parse_state.nr_groups;
 		last = evlist__last(evlist);
 		last->cmdline_group_boundary = true;
-- 
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024190202.109403-3-irogers%40google.com.
