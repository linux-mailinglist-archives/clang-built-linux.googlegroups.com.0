Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBQFBTLZQKGQEXZ5LGYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF2C17E798
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Mar 2020 19:53:53 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id u129sf6161358oia.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Mar 2020 11:53:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583780032; cv=pass;
        d=google.com; s=arc-20160816;
        b=OKsI10IvW95/TCZijOb5XUPSa3sTB/YdCZntPCPNZixUsrCREQwg1FmeSVXNKEkQzU
         j47tZdEwyYXQvIlwYsdqTyQK8euazYrrk66+JPPT2HhdctgG8J5TxtkDfU57CisMKy+3
         RNin9RTvXO5cnJWHF4iUXAoRikpY/amBCqSvve4il2efPAppQ37VmzoNYhg2rLiYL/kq
         8FOg9dNmatIz7jqsfTS3jKpe8adOqa9xki/wj0eSAhimMkhBeRIAk8daQenXgwkq3DmT
         mvllKR2xA2vpOuo+O5u4HAWO04jTQ/QPH27C4b6/AKw79Jmx+O2hfrHY4X6+mfvWRfvT
         0LDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=DK/ylClMQw1mI7Gj4xwCaXvGIr+yb8qEtpmZ72V75Mk=;
        b=D5sp7c/+zsUhF+x40TU3KniEgkkyjEIDpvMn298ZTmi0Nw5MY4GZa4woCMA6bQyQJm
         NcqSPx+2NnDkPKJyRAp3MwgbYbf1WhAhKD5SegVbiWw4I1EVH6L7BeQwD69/+eWfUoB+
         wjH17uEvbu7m5ZMV9qbmE2lP7uBqCElBVfWh2CSVqYkro38J1i7ba1ZoLmsOgBdFv/4n
         ydTuUyTLWMferbjnbXh8gOUbOQkCl85JGPpisnCdYonvmvFVljy+G5PuDcbNrVMNsqbD
         o1ofPzcSaTpy2TT5fM7ZjB0Z+gdo8ENT89CHlV2wn5Fp60KCdVs6i3Z2fyXtxmkr0t2E
         viKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RUJjk4XD;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DK/ylClMQw1mI7Gj4xwCaXvGIr+yb8qEtpmZ72V75Mk=;
        b=Xiuq+L4ALwpeyOECR3tB29pRdqw5v6sS0rkzlcD7OmXukT9HX/0sqTwYK2fvsK4/8a
         b1MN+mfugfWCz6ooR5va4bEwXu49czuPQzqJXGCyBsduTR+agYkWRs6ebQxpBiOWTPn+
         Qvg94Qhdb4djIpcumVv0SequnUeOU4xlsvIbDCx/B3lFaKlGj2mxOkIr6nnjiwgifAMD
         XpL5XI3Hoz6PqEyna2XuhboXWTA6oMhPwG8zPks2A9MfECyeXyQzLo0rspCGNMMj16gl
         bS3g0avVE6+0F5Mf2ML1AwfU55g1/nvz3E4JcDEXUCqeAExKcsp05hogu6TtbzRM8YYr
         LTzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DK/ylClMQw1mI7Gj4xwCaXvGIr+yb8qEtpmZ72V75Mk=;
        b=Pm3E8mTDPQGZRoeYrQntk0XZW2wHJ5p+T7fylradvmFuhxyXE/4prIuj9eNbZMdLsZ
         XtjKngUcoYoMi37C+kPDTy6JcOtTF3QUFfF89jtEZs4cC8Ye17a/V2F50Nzy1NWTNBzP
         vP1/aYhIiEbRSfAg6/EaHsYBGRCJ4V6Vx0syYAxhMmtesUh0g/Yfo0dIFtmhbslZ2rXa
         yf0cY+w3487tFN9G+PUMyo5pxPxVO7d9q9Mi3gyRiPFUDXTUf9clgFrYeOgx5F+Ks1b5
         UEuqky640qOuKld2OlZ3y5rvKAJ8j8AbIjJXPAMUY4VW9mqyjX1+eWxPC6a103NL9GCW
         Yu2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2e+xHijXtKvRKr/f3EkM28nMaUNkjadRS5o6vuGAl1H8/8yxTL
	x3GLDr2j3vN6qdyUIHBxuyo=
X-Google-Smtp-Source: ADFU+vvEuCqnfFpD3LfwXyPJJI/UE9uJnKyEvc/hjNBnUy8nhDJnpdRVoMZtP07/eJGx3gXz63h7Rw==
X-Received: by 2002:a9d:2028:: with SMTP id n37mr14619530ota.127.1583780032225;
        Mon, 09 Mar 2020 11:53:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:164e:: with SMTP id h14ls3560957otr.2.gmail; Mon,
 09 Mar 2020 11:53:51 -0700 (PDT)
X-Received: by 2002:a9d:4787:: with SMTP id b7mr667183otf.323.1583780031807;
        Mon, 09 Mar 2020 11:53:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583780031; cv=none;
        d=google.com; s=arc-20160816;
        b=AduLEhQSoXc0AvMto4CI5iaR2A1zr73zRiNDZz1hRIWiDTpDf4EA72UFGV7q5dflRD
         1or4AuYXxHf72sHRqypihn9k7ZQxJ6Fb1nVI6YY+flzOUGbzXcElPl0Zo35N5rpogR6R
         V1nKrdfUl7HBF3mmgYgd51XWnBDBUODz92/v5/QDxL1TOZhzyoL2dXd+N5txEKy1c70T
         9rrQ+rQRlv90r/hHKQjKRqa9nZFLMyxrYJGGxrAshCUPcVFzxn6EDFxTsFFQ6QaKuUVn
         7Xz7e9Mzg3T3g0yQ1Z1WMsDZ2nnexYr+pmZrX9wT0UBM8HEXNo/3B4bMrB+r1WMmrigD
         WWuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ojuk2EG7IlJynOwCTUDOT7YPTrNTUjKTt3YGce6yoZw=;
        b=eTOnX1kwAkJP+ZVAEXlal0UGiZZsoJXKTugrmtQyk+epOatyvZpcvWBxZS/i9bVACO
         IjsYuvWUUuJUO6gW2xz8540MJ1xYTUs+xdviuLt6UIBhF+PIRl5ZI3glTxf96chS2SHO
         OGWHnXE2/xWQn/HICqp8/IDfymV7f6XU/afDKPJBfnryYdTW/XAY8f/ijBKwLVyQWZHY
         xDi+ESjOlsgxZgjhZidk1IC8SqhSk2Yuzsp7dRY8NjFcDTjbl6srIQyDXnprai7MsYbV
         Yl7NaJqogUQ1ELVqemkGu0xZeNt/cNbF5Tld3ASW68mUhsEqqSHSm7rmBBgUx0Zsq/Z1
         klJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RUJjk4XD;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m132si260949oig.3.2020.03.09.11.53.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 11:53:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 207FB222C3;
	Mon,  9 Mar 2020 18:53:46 +0000 (UTC)
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
	Andi Kleen <ak@linux.intel.com>,
	Leo Yan <leo.yan@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Stephane Eranian <eranian@google.com>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>
Subject: [PATCH 4/6] perf parse-events: Fix reading of invalid memory in event parsing
Date: Mon,  9 Mar 2020 15:53:21 -0300
Message-Id: <20200309185323.22583-5-acme@kernel.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200309185323.22583-1-acme@kernel.org>
References: <20200309185323.22583-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=RUJjk4XD;       spf=pass
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

ADD_CONFIG_TERM accesses term->weak, however, in get_config_chgs this
value is accessed outside of the list_for_each_entry and references
invalid memory. Add an argument for ADD_CONFIG_TERM for weak and set it
to false in the get_config_chgs case.

This bug was cause by clang's address sanitizer and libfuzzer. It can be
reproduced with a command line of:

  perf stat -a -e i/bs,tsc,L2/o

Signed-off-by: Ian Rogers <irogers@google.com>
Acked-by: Jiri Olsa <jolsa@kernel.org>
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Leo Yan <leo.yan@linaro.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20200307073121.203816-1-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/parse-events.c | 46 +++++++++++++++++-----------------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index a14995835d85..a7dc0b096974 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1213,7 +1213,7 @@ static int config_attr(struct perf_event_attr *attr,
 static int get_config_terms(struct list_head *head_config,
 			    struct list_head *head_terms __maybe_unused)
 {
-#define ADD_CONFIG_TERM(__type)					\
+#define ADD_CONFIG_TERM(__type, __weak)				\
 	struct perf_evsel_config_term *__t;			\
 								\
 	__t = zalloc(sizeof(*__t));				\
@@ -1222,18 +1222,18 @@ static int get_config_terms(struct list_head *head_config,
 								\
 	INIT_LIST_HEAD(&__t->list);				\
 	__t->type       = PERF_EVSEL__CONFIG_TERM_ ## __type;	\
-	__t->weak	= term->weak;				\
+	__t->weak	= __weak;				\
 	list_add_tail(&__t->list, head_terms)
 
-#define ADD_CONFIG_TERM_VAL(__type, __name, __val)		\
+#define ADD_CONFIG_TERM_VAL(__type, __name, __val, __weak)	\
 do {								\
-	ADD_CONFIG_TERM(__type);				\
+	ADD_CONFIG_TERM(__type, __weak);			\
 	__t->val.__name = __val;				\
 } while (0)
 
-#define ADD_CONFIG_TERM_STR(__type, __val)			\
+#define ADD_CONFIG_TERM_STR(__type, __val, __weak)		\
 do {								\
-	ADD_CONFIG_TERM(__type);				\
+	ADD_CONFIG_TERM(__type, __weak);			\
 	__t->val.str = strdup(__val);				\
 	if (!__t->val.str) {					\
 		zfree(&__t);					\
@@ -1247,62 +1247,62 @@ do {								\
 	list_for_each_entry(term, head_config, list) {
 		switch (term->type_term) {
 		case PARSE_EVENTS__TERM_TYPE_SAMPLE_PERIOD:
-			ADD_CONFIG_TERM_VAL(PERIOD, period, term->val.num);
+			ADD_CONFIG_TERM_VAL(PERIOD, period, term->val.num, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_SAMPLE_FREQ:
-			ADD_CONFIG_TERM_VAL(FREQ, freq, term->val.num);
+			ADD_CONFIG_TERM_VAL(FREQ, freq, term->val.num, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_TIME:
-			ADD_CONFIG_TERM_VAL(TIME, time, term->val.num);
+			ADD_CONFIG_TERM_VAL(TIME, time, term->val.num, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_CALLGRAPH:
-			ADD_CONFIG_TERM_STR(CALLGRAPH, term->val.str);
+			ADD_CONFIG_TERM_STR(CALLGRAPH, term->val.str, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_BRANCH_SAMPLE_TYPE:
-			ADD_CONFIG_TERM_STR(BRANCH, term->val.str);
+			ADD_CONFIG_TERM_STR(BRANCH, term->val.str, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_STACKSIZE:
 			ADD_CONFIG_TERM_VAL(STACK_USER, stack_user,
-					    term->val.num);
+					    term->val.num, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_INHERIT:
 			ADD_CONFIG_TERM_VAL(INHERIT, inherit,
-					    term->val.num ? 1 : 0);
+					    term->val.num ? 1 : 0, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_NOINHERIT:
 			ADD_CONFIG_TERM_VAL(INHERIT, inherit,
-					    term->val.num ? 0 : 1);
+					    term->val.num ? 0 : 1, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_MAX_STACK:
 			ADD_CONFIG_TERM_VAL(MAX_STACK, max_stack,
-					    term->val.num);
+					    term->val.num, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_MAX_EVENTS:
 			ADD_CONFIG_TERM_VAL(MAX_EVENTS, max_events,
-					    term->val.num);
+					    term->val.num, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_OVERWRITE:
 			ADD_CONFIG_TERM_VAL(OVERWRITE, overwrite,
-					    term->val.num ? 1 : 0);
+					    term->val.num ? 1 : 0, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_NOOVERWRITE:
 			ADD_CONFIG_TERM_VAL(OVERWRITE, overwrite,
-					    term->val.num ? 0 : 1);
+					    term->val.num ? 0 : 1, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_DRV_CFG:
-			ADD_CONFIG_TERM_STR(DRV_CFG, term->val.str);
+			ADD_CONFIG_TERM_STR(DRV_CFG, term->val.str, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_PERCORE:
 			ADD_CONFIG_TERM_VAL(PERCORE, percore,
-					    term->val.num ? true : false);
+					    term->val.num ? true : false, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_AUX_OUTPUT:
 			ADD_CONFIG_TERM_VAL(AUX_OUTPUT, aux_output,
-					    term->val.num ? 1 : 0);
+					    term->val.num ? 1 : 0, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_AUX_SAMPLE_SIZE:
 			ADD_CONFIG_TERM_VAL(AUX_SAMPLE_SIZE, aux_sample_size,
-					    term->val.num);
+					    term->val.num, term->weak);
 			break;
 		default:
 			break;
@@ -1339,7 +1339,7 @@ static int get_config_chgs(struct perf_pmu *pmu, struct list_head *head_config,
 	}
 
 	if (bits)
-		ADD_CONFIG_TERM_VAL(CFG_CHG, cfg_chg, bits);
+		ADD_CONFIG_TERM_VAL(CFG_CHG, cfg_chg, bits, false);
 
 #undef ADD_CONFIG_TERM
 	return 0;
-- 
2.21.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200309185323.22583-5-acme%40kernel.org.
