Return-Path: <clang-built-linux+bncBDPPFIEASMFBBKNA5DWQKGQEPMTSF5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id F25D5EA64B
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 23:35:22 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id n190sf2065506oig.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 15:35:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572474921; cv=pass;
        d=google.com; s=arc-20160816;
        b=VcpDzR4uF7UP+GR19Bm84k/kwUX+0X3ntZz/l9jyGebU4KEHd9S2/3k24r9LJHsoQR
         rOwvzDAg0vr4PuGFBaOGxS3GbGZpH+dVLY1i5zomnmNpfxaYFnFvmGVTJa4G/+hjpkOi
         9qv8cpyl+aQHtZAWY0/H8A3ZEg2Biysz4BpiBLID96nGOV5z6aaBSjSbSm9Kr3fuz/eS
         WDBCeywHwhI0dU1Yq/r6i47cqm70z5HMAFy/acMFZpszq7MhxMpCafFPF27GSNsWBUJY
         KvN0Wes8OyMqXngE7ddyxLCspi8JrdFwyS00B+xCQQPiD+d8kYWRLV0czR7o1TfuhGPt
         2bUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=zjlFZqpNaJDsK3hvs91tUCxsKDzhC8tI6l9QYHXPzc0=;
        b=HhORAGhlPRNALTAHZ+T+pY02BHTEIkWroWObMoV39/KglpORQgqqzC/JtKfMFOL/54
         z4zifeKwjxS8z8rK/GlEXUAS2b/xVkPvnmxeJULT3HAjXEASnf0NRRw1YNTWAmr8HZx6
         3+cE6GIh0oc43+ekF9rEr/5x3DaPSqk4bAi1ibGDrpBIQNKhB7fxitnroNU5qpd0Pa15
         B0vvIPQXLQDCDtYHM6h4aYDtzwGbDTOSlLujeRnC9jJ972urVSFo61CkVhbrr8nVcXfj
         NmoaSq4PH9F8jekUqTsabP5zdHU8TTYRPBHs70CHXmoJ9l/mZ+4XsTQdWmXfgfuQ4mk8
         cEaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qs68OdZO;
       spf=pass (google.com: domain of 3kbc6xqckesujsphfsthpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3KBC6XQcKESUJSPHFSTHPPHMF.DPNDMBOH-CVJMU-MJOVYHPPHMFHSPVQT.DPN@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zjlFZqpNaJDsK3hvs91tUCxsKDzhC8tI6l9QYHXPzc0=;
        b=Uu43XTFztyeIR+FbRsR0Ygm3XMb8zdBVAFswRYmhL7EyRksLzgzQAd+xLXFkrR19eh
         1kgkINR7DjSIdsA06dCEj9nYJUGIk+UNp+U6C6aZ/Ge8Gw+CbkXqRILkrzXb5pe8NYzN
         ZpuwolXhps/Gs1+Ymgrf0GGWziYXHlBtO4bY6N6s14YNXdc9DEAm13d46WremJXhz4+J
         xY3bJiRHS0sHXfY6/pKU3JJJgZJIcpFCk0CDIXR1Q15lxCPBI1e2ihvdPRfYblhj5qpT
         nbJ4VP4+IMRt9vP11oq906SnXB0p5OSRd0qkU5tJmHP0UI1fw9GoX4sDKND9IsrnTWM3
         IqQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zjlFZqpNaJDsK3hvs91tUCxsKDzhC8tI6l9QYHXPzc0=;
        b=rwk2L63ZBbpLsfAv7JiOXl08bVnmVyfXB4/+IXIDLP8cxEPgjpnINGv4wonz2Yr4xD
         SFHtgGE1asNNXJnmsSD+WjoqV5PKOz/F9T6DLwpFgqh0SKdg/KZnSCwzHR/5RfCwVmIX
         tDl2KYsHBtfzKMRkmy2duPqH/O/rSnd0XEp6U23rCZ1vSs2qK4mB6iON9HP0Z8vy7B4g
         WfTUsN9pLjsSzJpFaVoJ847osaZDtxhN/CM1cFbwR0BOdWHJExcHQ+RsaOsDOukgYiXb
         ZsxZQ/EU00m5nDRhyLMTKaLEbP7Ysq343Ma8S9Nn0mSdCZ6SZx3m1kNURPb98kIrsAia
         CC4w==
X-Gm-Message-State: APjAAAVLpuu82wgaOWEa0t4w+dfYdYPsWbJEB+zbZYpVLnMMiXwp0qOd
	wpT+RYm4UD/Dv1L5N9soY6E=
X-Google-Smtp-Source: APXvYqzUI+YCCLQulZDxEVNHS6KroNiD25P4/OamenjG7z3LpCzJtBrS2oeGj6OnBV4QVYMRQ2zvbQ==
X-Received: by 2002:a05:6808:8e:: with SMTP id s14mr1365490oic.57.1572474921782;
        Wed, 30 Oct 2019 15:35:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d410:: with SMTP id l16ls99148oig.2.gmail; Wed, 30 Oct
 2019 15:35:21 -0700 (PDT)
X-Received: by 2002:aca:b283:: with SMTP id b125mr1394363oif.166.1572474921374;
        Wed, 30 Oct 2019 15:35:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572474921; cv=none;
        d=google.com; s=arc-20160816;
        b=rEN2zyhA3KvTh9sSFDOxYomU0sCAdAEur1cUo6QMvvCiyfa2qygPQeyBdFiM9A+0uk
         eVHuvZD6eSeKRDNiUt97wQGhxELbwY9Wv6dI43FN57bT46Wjwu9R4tzzTrgjTt60wdNQ
         t7leFiAds8lGfVRi8xd0LbxHrMJZxuCk56jd+1Cvjc5SlyzQrTRqz4nvf3jn9LdD/7L3
         xK70FTcZbwJcYMiDzddzxiPEiuGuOF7C5DbOXmcUPdfgj+7k0EBwk2iqp3eKgoW37LNr
         YeD4tR0ko0QdjqdzGkSs6Kh39Q7BCc2XC+j9dZiiCrsghasj6XgZmQ1cJUFl6PPcML7+
         l4FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=OX6v9W/RwB1FnmAHi/ViJDv088XbC8QO/KsWRubigJ8=;
        b=Ne32S11YJB0F6ejXvMbFqyEKO3ZPiUxmawmVkQH9X1BgkwC4GLONIEzrGxHkWKF7//
         aNBJPQRdH/gwtGtqYzP5rLU/NjI1WzxmTiZD0fYNfH+DUNh5fhfNrda5Va4NLzEArtLX
         OIAnLCdrNZdVWnG54LjV/kgNJ93ESb1mjMu1y8HTyditOb6NwwiAQUGTvZco/1jCYqAz
         RvzYawkszUp3LqUc5N2JJkCqoB7xQaIqougAGIbRqiSf5U2e9E03HbcueGDIA67Kw4qn
         d9DhML982wO6sL5z0A33Jzz6QLVBPZ7o/b4lwFB2P6TNq75m20pQypAiwS2MfOagWCPQ
         nBfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qs68OdZO;
       spf=pass (google.com: domain of 3kbc6xqckesujsphfsthpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3KBC6XQcKESUJSPHFSTHPPHMF.DPNDMBOH-CVJMU-MJOVYHPPHMFHSPVQT.DPN@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id k184si195664oih.0.2019.10.30.15.35.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 15:35:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kbc6xqckesujsphfsthpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id c8so2520749pll.12
        for <clang-built-linux@googlegroups.com>; Wed, 30 Oct 2019 15:35:21 -0700 (PDT)
X-Received: by 2002:a63:5847:: with SMTP id i7mr1868803pgm.387.1572474920146;
 Wed, 30 Oct 2019 15:35:20 -0700 (PDT)
Date: Wed, 30 Oct 2019 15:34:48 -0700
In-Reply-To: <20191030223448.12930-1-irogers@google.com>
Message-Id: <20191030223448.12930-11-irogers@google.com>
Mime-Version: 1.0
References: <20191025180827.191916-1-irogers@google.com> <20191030223448.12930-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 10/10] perf tools: report initial event parsing error
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
 header.i=@google.com header.s=20161025 header.b=qs68OdZO;       spf=pass
 (google.com: domain of 3kbc6xqckesujsphfsthpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3KBC6XQcKESUJSPHFSTHPPHMF.DPNDMBOH-CVJMU-MJOVYHPPHMFHSPVQT.DPN@flex--irogers.bounces.google.com;
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

Record the first event parsing error and report. Implementing feedback
from Jiri Olsa:
https://lkml.org/lkml/2019/10/28/680

An example error is:

$ tools/perf/perf stat -e c/c/
WARNING: multiple event parsing errors
event syntax error: 'c/c/'
                       \___ unknown term

valid terms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_state,filter_nm,config,config1,config2,name,period,percore

Initial error:
event syntax error: 'c/c/'
                    \___ Cannot find PMU `c'. Missing kernel support?
Run 'perf list' for a list of valid events

 Usage: perf stat [<options>] [<command>]

    -e, --event <event>   event selector. use 'perf list' to list available events

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/arch/powerpc/util/kvm-stat.c |  9 ++-
 tools/perf/builtin-stat.c               |  2 +
 tools/perf/builtin-trace.c              | 16 ++++--
 tools/perf/tests/parse-events.c         |  3 +-
 tools/perf/util/metricgroup.c           |  2 +-
 tools/perf/util/parse-events.c          | 73 ++++++++++++++++++-------
 tools/perf/util/parse-events.h          |  4 ++
 7 files changed, 82 insertions(+), 27 deletions(-)

diff --git a/tools/perf/arch/powerpc/util/kvm-stat.c b/tools/perf/arch/powerpc/util/kvm-stat.c
index 9cc1c4a9dec4..30f5310373ca 100644
--- a/tools/perf/arch/powerpc/util/kvm-stat.c
+++ b/tools/perf/arch/powerpc/util/kvm-stat.c
@@ -113,10 +113,15 @@ static int is_tracepoint_available(const char *str, struct evlist *evlist)
 	struct parse_events_error err;
 	int ret;
 
-	err.str = NULL;
+	bzero(&err, sizeof(err));
 	ret = parse_events(evlist, str, &err);
-	if (err.str)
+	if (err.str) {
 		pr_err("%s : %s\n", str, err.str);
+		free(&err->str);
+		free(&err->help);
+		free(&err->first_str);
+		free(&err->first_help);
+	}
 	return ret;
 }
 
diff --git a/tools/perf/builtin-stat.c b/tools/perf/builtin-stat.c
index c88d4e118409..5d2fc8bed5f8 100644
--- a/tools/perf/builtin-stat.c
+++ b/tools/perf/builtin-stat.c
@@ -1260,6 +1260,7 @@ static int add_default_attributes(void)
 	if (stat_config.null_run)
 		return 0;
 
+	bzero(&errinfo, sizeof(errinfo));
 	if (transaction_run) {
 		/* Handle -T as -M transaction. Once platform specific metrics
 		 * support has been added to the json files, all archictures
@@ -1317,6 +1318,7 @@ static int add_default_attributes(void)
 			return -1;
 		}
 		if (err) {
+			parse_events_print_error(&errinfo, smi_cost_attrs);
 			fprintf(stderr, "Cannot set up SMI cost events\n");
 			return -1;
 		}
diff --git a/tools/perf/builtin-trace.c b/tools/perf/builtin-trace.c
index 43c05eae1768..46a72ecac427 100644
--- a/tools/perf/builtin-trace.c
+++ b/tools/perf/builtin-trace.c
@@ -3016,11 +3016,18 @@ static bool evlist__add_vfs_getname(struct evlist *evlist)
 {
 	bool found = false;
 	struct evsel *evsel, *tmp;
-	struct parse_events_error err = { .idx = 0, };
-	int ret = parse_events(evlist, "probe:vfs_getname*", &err);
+	struct parse_events_error err;
+	int ret;
 
-	if (ret)
+	bzero(&err, sizeof(err));
+	ret = parse_events(evlist, "probe:vfs_getname*", &err);
+	if (ret) {
+		free(err.str);
+		free(err.help);
+		free(err.first_str);
+		free(err.first_help);
 		return false;
+	}
 
 	evlist__for_each_entry_safe(evlist, evsel, tmp) {
 		if (!strstarts(perf_evsel__name(evsel), "probe:vfs_getname"))
@@ -4832,8 +4839,9 @@ int cmd_trace(int argc, const char **argv)
 	 * wrong in more detail.
 	 */
 	if (trace.perfconfig_events != NULL) {
-		struct parse_events_error parse_err = { .idx = 0, };
+		struct parse_events_error parse_err;
 
+		bzero(&parse_err, sizeof(parse_err));
 		err = parse_events(trace.evlist, trace.perfconfig_events, &parse_err);
 		if (err) {
 			parse_events_print_error(&parse_err, trace.perfconfig_events);
diff --git a/tools/perf/tests/parse-events.c b/tools/perf/tests/parse-events.c
index 25e0ed2eedfc..091c3aeccc27 100644
--- a/tools/perf/tests/parse-events.c
+++ b/tools/perf/tests/parse-events.c
@@ -1768,10 +1768,11 @@ static struct terms_test test__terms[] = {
 
 static int test_event(struct evlist_test *e)
 {
-	struct parse_events_error err = { .idx = 0, };
+	struct parse_events_error err;
 	struct evlist *evlist;
 	int ret;
 
+	bzero(&err, sizeof(err));
 	if (e->valid && !e->valid()) {
 		pr_debug("... SKIP");
 		return 0;
diff --git a/tools/perf/util/metricgroup.c b/tools/perf/util/metricgroup.c
index a7c0424dbda3..6a4d350d5cdb 100644
--- a/tools/perf/util/metricgroup.c
+++ b/tools/perf/util/metricgroup.c
@@ -523,7 +523,7 @@ int metricgroup__parse_groups(const struct option *opt,
 	if (ret)
 		return ret;
 	pr_debug("adding %s\n", extra_events.buf);
-	memset(&parse_error, 0, sizeof(struct parse_events_error));
+	bzero(&parse_error, sizeof(parse_error));
 	ret = parse_events(perf_evlist, extra_events.buf, &parse_error);
 	if (ret) {
 		parse_events_print_error(&parse_error, extra_events.buf);
diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 6d18ff9bce49..28fa6ec7d2a2 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -189,12 +189,29 @@ void parse_events__handle_error(struct parse_events_error *err, int idx,
 		free(help);
 		return;
 	}
-	WARN_ONCE(err->str, "WARNING: multiple event parsing errors\n");
-	err->idx = idx;
-	free(err->str);
-	err->str = str;
-	free(err->help);
-	err->help = help;
+	switch (err->num_errors) {
+	case 0:
+		err->idx = idx;
+		err->str = str;
+		err->help = help;
+		break;
+	case 1:
+		err->first_idx = err->idx;
+		err->idx = idx;
+		err->first_str = err->str;
+		err->str = str;
+		err->first_help = err->help;
+		err->help = help;
+		break;
+	default:
+		WARN_ONCE(1, "WARNING: multiple event parsing errors\n");
+		free(err->str);
+		err->str = str;
+		free(err->help);
+		err->help = help;
+		break;
+	}
+	err->num_errors++;
 }
 
 struct tracepoint_path *tracepoint_id_to_path(u64 config)
@@ -2007,15 +2024,14 @@ static int get_term_width(void)
 	return ws.ws_col > MAX_WIDTH ? MAX_WIDTH : ws.ws_col;
 }
 
-void parse_events_print_error(struct parse_events_error *err,
-			      const char *event)
+static void __parse_events_print_error(int err_idx, const char *err_str,
+				const char *err_help, const char *event)
 {
 	const char *str = "invalid or unsupported event: ";
 	char _buf[MAX_WIDTH];
 	char *buf = (char *) event;
 	int idx = 0;
-
-	if (err->str) {
+	if (err_str) {
 		/* -2 for extra '' in the final fprintf */
 		int width       = get_term_width() - 2;
 		int len_event   = strlen(event);
@@ -2038,8 +2054,8 @@ void parse_events_print_error(struct parse_events_error *err,
 		buf = _buf;
 
 		/* We're cutting from the beginning. */
-		if (err->idx > max_err_idx)
-			cut = err->idx - max_err_idx;
+		if (err_idx > max_err_idx)
+			cut = err_idx - max_err_idx;
 
 		strncpy(buf, event + cut, max_len);
 
@@ -2052,16 +2068,33 @@ void parse_events_print_error(struct parse_events_error *err,
 			buf[max_len] = 0;
 		}
 
-		idx = len_str + err->idx - cut;
+		idx = len_str + err_idx - cut;
 	}
 
 	fprintf(stderr, "%s'%s'\n", str, buf);
 	if (idx) {
-		fprintf(stderr, "%*s\\___ %s\n", idx + 1, "", err->str);
-		if (err->help)
-			fprintf(stderr, "\n%s\n", err->help);
-		zfree(&err->str);
-		zfree(&err->help);
+		fprintf(stderr, "%*s\\___ %s\n", idx + 1, "", err_str);
+		if (err_help)
+			fprintf(stderr, "\n%s\n", err_help);
+	}
+}
+
+void parse_events_print_error(struct parse_events_error *err,
+			      const char *event)
+{
+	if (!err->num_errors)
+		return;
+
+	__parse_events_print_error(err->idx, err->str, err->help, event);
+	zfree(&err->str);
+	zfree(&err->help);
+
+	if (err->num_errors > 1) {
+		fputs("\nInitial error:\n", stderr);
+		__parse_events_print_error(err->first_idx, err->first_str,
+					err->first_help, event);
+		zfree(&err->first_str);
+		zfree(&err->first_help);
 	}
 }
 
@@ -2071,7 +2104,9 @@ int parse_events_option(const struct option *opt, const char *str,
 			int unset __maybe_unused)
 {
 	struct evlist *evlist = *(struct evlist **)opt->value;
-	struct parse_events_error err = { .idx = 0, };
+	struct parse_events_error err;
+
+	bzero(&err, sizeof(err));
 	int ret = parse_events(evlist, str, &err);
 
 	if (ret) {
diff --git a/tools/perf/util/parse-events.h b/tools/perf/util/parse-events.h
index 5ee8ac93840c..ff367f248fe8 100644
--- a/tools/perf/util/parse-events.h
+++ b/tools/perf/util/parse-events.h
@@ -110,9 +110,13 @@ struct parse_events_term {
 };
 
 struct parse_events_error {
+	int   num_errors;       /* number of errors encountered */
 	int   idx;	/* index in the parsed string */
 	char *str;      /* string to display at the index */
 	char *help;	/* optional help string */
+	int   first_idx;/* as above, but for the first encountered error */
+	char *first_str;
+	char *first_help;
 };
 
 struct parse_events_state {
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191030223448.12930-11-irogers%40google.com.
