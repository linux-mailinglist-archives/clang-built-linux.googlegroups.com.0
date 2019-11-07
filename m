Return-Path: <clang-built-linux+bncBDPPFIEASMFBB3VOSLXAKGQEONUCEZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C50F3B11
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 23:15:11 +0100 (CET)
Received: by mail-yw1-xc38.google.com with SMTP id j3sf3026015ywg.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 14:15:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573164910; cv=pass;
        d=google.com; s=arc-20160816;
        b=firMkv8R/cJQPGFLZr6EXf9tuQmZBOTUohHsp48+IFhLlPDpVW1EhnRc9w9ujCwiMo
         0beIIP1ykjY7heHmNGKIuvNoy4n2RBQIDveomFJxhKMrPHN9DI6+vCAAGP86wPqScx+2
         GJAkk3qIh057IXbLoYX4a05d/2CEoBN7o5wqd330v3Mlq0UHyF8Lt7PGt81G0ZBGfCI8
         tX+qQUnewW8C8nNAhUve9s3X8QidE95HJKw5mM0crxB+vXWpyqFoWt9MO19mbUvybLl5
         FJg6cm6mHPvnMNaXBvLVo39lQZuGY6UcjBf6I8KTT1vLItsN4T3Fx2NAjX0H2OZvud5F
         Zs0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=t+pJ6oSsje7AKakGZqDDMn3OTVcYYhO5hnBb4V1Iu5k=;
        b=CxwGoh3cMy9faxvY1f3KOQTDp/OGCYEpia44i2eyOkjzELpxrtUH9UgaePGBegJiOc
         Lv/1QyroqKh2lBcrIUQcXhL7Pnho7yoJ4gSJFVIme4U3f8HlYKr47jgHJ0AywccQwyIk
         OxWaOk9l6HId8iB30upM09EwX5VUq7DwkD3vhVr8DeTXROqExOx8p00AeVzy4hLzOxoi
         1fTKS0wD1fIYZOtwzxAJBKI8YFdUzGPcVPqfC8UdQhq+c7tZ5nC5rm6oo7TDKwJgr8+V
         0Sk5b7kGKChOK6gnwvGmrpu+GB1rZU5iOeqH0GGnk3smzb5hL2rR+KdBtBhu1d7CK/mn
         dD1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Yd0hw8vR;
       spf=pass (google.com: domain of 3bjfexqckeaejsphfsthpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3bJfEXQcKEaEJSPHFSTHPPHMF.DPNDMBOH-CVJMU-MJOVYHPPHMFHSPVQT.DPN@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t+pJ6oSsje7AKakGZqDDMn3OTVcYYhO5hnBb4V1Iu5k=;
        b=HzyH7ZWi32D7NDHFokdlX6fdXoqTdwFy4Mv4WUVecs6XBfkFbHyT3mRI4MENLVSK0s
         DtiVyVO83aY43/HXBqNLX3ap0IUastNTMYRK6+qs4CUNfPPRl+S9Oba1SSqKb3Q5U7q1
         A3c88r7BZFUcOS5UlWQiVzk7NBTCsYVNiqTezLGwcIWVW/tkgk0Ff+t+CvaUF5tLSTK7
         aAr7iQ5XxtIxSGDabdX3nRil8NDb9EcloKJydbtpFrJVlP44jEj/AAbL60aMAjOk3OIH
         vYs4G6g/eE2lXI1cdV8pgigtaY0tJBV354TeYezmXtt0ZgT4NTDUNUq9iM1e4xrVd9yg
         Op2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t+pJ6oSsje7AKakGZqDDMn3OTVcYYhO5hnBb4V1Iu5k=;
        b=AmJJwv2JsqwVod1ADQqtNFEQrmDlYbxBkaR1XNveWgunuQ96HCK/Ee1e4ZrD6BliDy
         ldWCZ0hhzVi/Kq3gwEgo7y7NgysR8ywG0i9fCZ0OHW2owsytcSEZGqk/IQc8Y1f+Lm8F
         SzvHhbbEcmzytE9PKGkgSYslxfZ8NG553dsaRHhkyBl2ZrFGLON62qlT2t9UHlq7Pf5F
         mkttwYAzFzgO+cdLkUi/MIfWhcr5Ahp0hYEPL1mwEQn9noih404K+gU8pvA/90/UxWFN
         ixj7u8nMKMTa9wxCsYolrxmxy2yBClHGahe3Acwm3Jl15+xAn3Ik9VTrjYuk8H2V/SKb
         rvdw==
X-Gm-Message-State: APjAAAW7o+culiHCU8GgnNrRx2MTZ3c5Iilc4Ofes4Flhk6dBqZtDRdW
	r3a4Rtg9IE50h8NCvEv74Oc=
X-Google-Smtp-Source: APXvYqw/QM5iJWg9KgkNULTwD+NUVkhjegonxqJKry5ntsJQS0xGOxXTFhMugvU08DShZgvVmY6IKg==
X-Received: by 2002:a81:4c8:: with SMTP id 191mr4703763ywe.94.1573164910540;
        Thu, 07 Nov 2019 14:15:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:1f41:: with SMTP id f62ls1392069ybf.1.gmail; Thu, 07 Nov
 2019 14:15:10 -0800 (PST)
X-Received: by 2002:a25:6ec5:: with SMTP id j188mr6177299ybc.207.1573164909969;
        Thu, 07 Nov 2019 14:15:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573164909; cv=none;
        d=google.com; s=arc-20160816;
        b=mXUXK+WypVKP69fpBbWeToCwRiWrwbNZeGVE6YqScojCt00jZKgcX7V5X1g6P8VTn4
         LJjc2O1YAPrecTru8Aw46x44i1Go4k27LTrfMyQEhuwpDo1NNvgIYsVYvPcDKnMiXiOD
         qyt8d9WC29h2uy7bn65SKfe1v1MvXBl5IZM3aElflU+LT7zlToG00S+gGtW0dknEPi3w
         ibCZKGQIuKhnMQ+uWzeVkw1OLPh+H+vW0y2TsoK8fwzUqll2xjBiO5j/5UAC/853wPlh
         HukgCNvfPhtAzcZ1elxuRxFLIxF0iFBfOUJqTJqfqMFs928Cx48RYdhP1b5b9GfQQKzR
         rfGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=58/NaSHItT1fO9PMDMiALzFSxZk8aT8VSBXqv52dueM=;
        b=GgaQtegXetwk81XdHEKD7MzVYmw0jHLMNGvuUHXfyzJFrWzTqip9tdxI6Z0IpNwPR+
         iZwuenHe+WiLPTLKyYNXCz1YIWQ3JMiiWeZAgKKonRuOl3hdT0fhShtAliwLDlt+htXG
         IGYQR01gzvBKR8l4NiDoTOsa8EOzmVEBNzfv/N8WcYzUy/MD7a6JMwEKvVSUPFKJNbCZ
         fmi7keE4q+44qAkNU38cUkQu5KeIJ+zSAgrgQueZXl/3QsK7R8UwoDneVAUGk7Sh8X5q
         w6uc2tEPEtUCQEyDxYSwrudOBShx+JpEChpDglCe9cQfl8Lr91tSbVr62N1lGKY+mCwk
         VmMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Yd0hw8vR;
       spf=pass (google.com: domain of 3bjfexqckeaejsphfsthpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3bJfEXQcKEaEJSPHFSTHPPHMF.DPNDMBOH-CVJMU-MJOVYHPPHMFHSPVQT.DPN@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id c5si177859ywn.5.2019.11.07.14.15.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2019 14:15:09 -0800 (PST)
Received-SPF: pass (google.com: domain of 3bjfexqckeaejsphfsthpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id j2so3003941pfa.8
        for <clang-built-linux@googlegroups.com>; Thu, 07 Nov 2019 14:15:09 -0800 (PST)
X-Received: by 2002:a63:1065:: with SMTP id 37mr7439170pgq.31.1573164908712;
 Thu, 07 Nov 2019 14:15:08 -0800 (PST)
Date: Thu,  7 Nov 2019 14:14:28 -0800
In-Reply-To: <20191107221428.168286-1-irogers@google.com>
Message-Id: <20191107221428.168286-11-irogers@google.com>
Mime-Version: 1.0
References: <20191030223448.12930-1-irogers@google.com> <20191107221428.168286-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH v6 10/10] perf tools: report initial event parsing error
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
 header.i=@google.com header.s=20161025 header.b=Yd0hw8vR;       spf=pass
 (google.com: domain of 3bjfexqckeaejsphfsthpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3bJfEXQcKEaEJSPHFSTHPPHMF.DPNDMBOH-CVJMU-MJOVYHPPHMFHSPVQT.DPN@flex--irogers.bounces.google.com;
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
 tools/perf/util/parse-events.c          | 76 ++++++++++++++++++-------
 tools/perf/util/parse-events.h          |  4 ++
 7 files changed, 84 insertions(+), 28 deletions(-)

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
index 6d18ff9bce49..a369bbc289b2 100644
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
 
@@ -2071,8 +2104,11 @@ int parse_events_option(const struct option *opt, const char *str,
 			int unset __maybe_unused)
 {
 	struct evlist *evlist = *(struct evlist **)opt->value;
-	struct parse_events_error err = { .idx = 0, };
-	int ret = parse_events(evlist, str, &err);
+	struct parse_events_error err;
+	int ret;
+
+	bzero(&err, sizeof(err));
+	ret = parse_events(evlist, str, &err);
 
 	if (ret) {
 		parse_events_print_error(&err, str);
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
2.24.0.432.g9d3f5f5b63-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191107221428.168286-11-irogers%40google.com.
