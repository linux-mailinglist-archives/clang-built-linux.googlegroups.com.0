Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBEWXSHXAKGQEJ7XZM2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D95FF3816
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 20:08:04 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id h7sf2299284pll.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 11:08:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573153682; cv=pass;
        d=google.com; s=arc-20160816;
        b=XRBksm2PZdJppCL2h/SYNxQbqnKXxYR8TAjQ6qOJ4tLfE/Omf+0oKbw+gk9Za3jAgn
         qCjxIXRGZPaovWlpYi72glW7aNQDYH/7S3ENtyV+jsS80nugOVN4VBexJbljCBnj9brA
         JRpa52gQxBxBhHRWxErNImEKGpzNUDAxqXn1Ie2i+bpk1mDXFvJYCmtjVx2dt0TqpE2S
         kpx2IDCm968OIzuk5p9gS2mXIJ0ghudXY1JvekWW2VVJM1cD24JGK0l85gWMqjL/2VtX
         YabxUjdi4uVwcGv5Z88ME/EpKzeNPabk0LrhuGWRrt5DV5RYgewt7slQd7bVayRCX83E
         2nBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=CJtOQ/JWmG5MR/5w/jw4ISFz1a3K5orXZkjWoixuuW0=;
        b=bXD1D12udG+srXPLY7luLyfQ1RDTnrspLxHJvhI17Jd3ywb0ON9uxt3nIB9aj2q+mf
         9s1bHtTv+SodVqkOPyOIeXYd+Fa1qH8lLDVjfrS5qhJUn6YRIWw201yNIhh0snOzb0Of
         J0hYxGqVrW+zXrJuz5aT1Tfim31RFHpbSgpW5u6Id9LF+q26QTZTaAJvLJNKm5yj4716
         2yk86SzaS+ofI4lrJWWsefBLkdf6DdL72PoYsjLpYmkhYbFjDhUEVkC/o11Owkbo7fbn
         Phme8uthv3wwaaUXVExTEDM7Ev2vx3SxmY4dJykhw4hLg/+0nIE+/aTJPbw5R+wfuQh2
         haVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BF0KSk+c;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CJtOQ/JWmG5MR/5w/jw4ISFz1a3K5orXZkjWoixuuW0=;
        b=mRMLjpkb0/uLCjHEc60JgUk7lpszR6uwFEGoXe1NzNT1bpsjjLydO9kSBbwSmp558/
         3AZRq19k1H4CkvpNPqT1OFQ/ttZLifXi7c6vLxEjpkfPGTdJDdXbLxkBzeNehsvBzJxi
         bBOz6Ms9M1ZTp1sN8fkSdhUDp4n9JcwK2Ym7YeFr5hemlUUiHzKRj9TsaNr56s1OrQ5Z
         hImRPHZ8GoFoVUKnPzpFeRjspn+mHmkU0dX77zA22iJuUlYyI3Ph+5Tn4ZrVOww053Io
         e6/a1E5jEDuRPIMLu9kaYR9h1woNECsaP9XmNaTL13rWlW9UyK+SlVZgCRLBYCMvptk8
         8QUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CJtOQ/JWmG5MR/5w/jw4ISFz1a3K5orXZkjWoixuuW0=;
        b=n4wboni1f96hFneZ07gQ15Z9y5tX0WKS9FbD5T7RgAku+9U9nVG6T54A4r8UVkBlf7
         WbpU8sUn9EBey9MKwT6J2/spNfd5PRPpkPKVupwqF21bimIGDopMs07LomHX5qGw63tN
         DgKvNppGLoVAE+37rIFk60+CF8WZinMpB2aKk4n9PzTTrHZo5GltEHiHOAniq6GJsuCS
         fe4IX6gu+3RhiJwKWKco5/svDDTWKzPzgby9L/54fm0z8tsi8GHaCicbSPKGpF5hnMJB
         woBlw/4VUihvvfrdrDGJU6lW5cTdH81F0kBy9mFUk6lLO+nlLc8xAC54ja2cMlcYMxwf
         eBIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVGvgVpasGCwY8FaHttewwOJ+iKuJ+VV54tvPLumWavQFlvgwVq
	skmtvgHmYMjIMwlTaA40gd8=
X-Google-Smtp-Source: APXvYqz+6wVz7405yvzNxfCIrHtwG7jwdSakT2pK94qQhVFT7zVwsZpqKdI33hyjoFB5haSeXv2YKQ==
X-Received: by 2002:a17:902:6a88:: with SMTP id n8mr723288plk.226.1573153682735;
        Thu, 07 Nov 2019 11:08:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b042:: with SMTP id z2ls1582719pgo.16.gmail; Thu, 07 Nov
 2019 11:08:02 -0800 (PST)
X-Received: by 2002:a63:9d0f:: with SMTP id i15mr6542790pgd.286.1573153682197;
        Thu, 07 Nov 2019 11:08:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573153682; cv=none;
        d=google.com; s=arc-20160816;
        b=W++peA/Fpj9awwT+okRQ/pP1Sry3UYaVU8VLd7n0OoHgujna1efrbeFS8r5vqjRiJx
         jbFwTO5cENCoQRVuZCMFS5n+aOQ0xlphME80iFymEgaoLtE9spqQLmTIG2fu42GPAtye
         e0eoqvcfmw8xifIbQDdWE1xFHhdpcFiX+ykxa4PtDUkKkquL2uXsF7hZfGxxhv9OTT6V
         pn6qUu2T52//VTw8AxEIRbqkuI9G4s7BYk1VmPvNpSnx4pSOx58jH3KZ6fftDeihq4HT
         1r6tftU2sh9/YHVWCaPcr931vlXIxv8FY8jtQnrrVC5UN2MXDdtT9cKt8Sv1TTZPeq/U
         vfWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=8UAOaRH7AULCc2t09TdpvjvkLQtfoiF6lmznU1eOtqY=;
        b=IjfdzAdPPsE0pua37nQGsOM/2ccfwgSNYBhhskX4OV2uOawDQyhlHHJLpgqB5Ncodc
         F5mvM9AyGXjuAzPbPzOkTtzv9lPt2UGEAJza0BIa1N6G9RNTO1LXfSV6uAKlejTxcgh5
         Ktb1OeKCKfy7wtGYPWG+pXFhwLX92+jAW1QbqCi1oK0fDQU9NZK1I0N5D+lhWeCIVq6I
         WBFUtynCB/v6SIeY+9VkURHkEeAPbXAAYp4/n/r/ueQu3ZPAQVUpJMpTXV1OXML+krHj
         5/oNb61pZz6NkEHjF4ulGtq0rQrVr96vapf8sCKQgT3xiitBEmKJ5jZNiw4SUAfVkXNO
         zOcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BF0KSk+c;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s4si350740pji.1.2019.11.07.11.08.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Nov 2019 11:08:02 -0800 (PST)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (179-240-172-58.3g.claro.net.br [179.240.172.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 861B12084D;
	Thu,  7 Nov 2019 19:07:49 +0000 (UTC)
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
Subject: [PATCH 46/63] perf parse: Add a deep delete for parse event terms
Date: Thu,  7 Nov 2019 15:59:54 -0300
Message-Id: <20191107190011.23924-47-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191107190011.23924-1-acme@kernel.org>
References: <20191107190011.23924-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=BF0KSk+c;       spf=pass
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

Add a parse_events_term deep delete function so that owned strings and
arrays are freed.

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
Link: http://lore.kernel.org/lkml/20191030223448.12930-10-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/parse-events.c | 16 +++++++++++++---
 tools/perf/util/parse-events.h |  1 +
 tools/perf/util/parse-events.y | 12 ++----------
 tools/perf/util/pmu.c          |  2 +-
 4 files changed, 17 insertions(+), 14 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index a0a80f4e7038..6d18ff9bce49 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -2812,6 +2812,18 @@ int parse_events_term__clone(struct parse_events_term **new,
 	return new_term(new, &temp, str, 0);
 }
 
+void parse_events_term__delete(struct parse_events_term *term)
+{
+	if (term->array.nr_ranges)
+		zfree(&term->array.ranges);
+
+	if (term->type_val != PARSE_EVENTS__TERM_TYPE_NUM)
+		zfree(&term->val.str);
+
+	zfree(&term->config);
+	free(term);
+}
+
 int parse_events_copy_term_list(struct list_head *old,
 				 struct list_head **new)
 {
@@ -2842,10 +2854,8 @@ void parse_events_terms__purge(struct list_head *terms)
 	struct parse_events_term *term, *h;
 
 	list_for_each_entry_safe(term, h, terms, list) {
-		if (term->array.nr_ranges)
-			zfree(&term->array.ranges);
 		list_del_init(&term->list);
-		free(term);
+		parse_events_term__delete(term);
 	}
 }
 
diff --git a/tools/perf/util/parse-events.h b/tools/perf/util/parse-events.h
index 34f58d24a06a..5ee8ac93840c 100644
--- a/tools/perf/util/parse-events.h
+++ b/tools/perf/util/parse-events.h
@@ -139,6 +139,7 @@ int parse_events_term__sym_hw(struct parse_events_term **term,
 			      char *config, unsigned idx);
 int parse_events_term__clone(struct parse_events_term **new,
 			     struct parse_events_term *term);
+void parse_events_term__delete(struct parse_events_term *term);
 void parse_events_terms__delete(struct list_head *terms);
 void parse_events_terms__purge(struct list_head *terms);
 void parse_events__clear_array(struct parse_events_array *a);
diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 376b19855470..4cac830015be 100644
--- a/tools/perf/util/parse-events.y
+++ b/tools/perf/util/parse-events.y
@@ -49,14 +49,6 @@ static void free_list_evsel(struct list_head* list_evsel)
 	free(list_evsel);
 }
 
-static void free_term(struct parse_events_term *term)
-{
-	if (term->type_val == PARSE_EVENTS__TERM_TYPE_STR)
-		free(term->val.str);
-	zfree(&term->array.ranges);
-	free(term);
-}
-
 static void inc_group_count(struct list_head *list,
 		       struct parse_events_state *parse_state)
 {
@@ -99,7 +91,7 @@ static void inc_group_count(struct list_head *list,
 %type <str> PE_DRV_CFG_TERM
 %destructor { free ($$); } <str>
 %type <term> event_term
-%destructor { free_term ($$); } <term>
+%destructor { parse_events_term__delete ($$); } <term>
 %type <list_terms> event_config
 %type <list_terms> opt_event_config
 %type <list_terms> opt_pmu_config
@@ -694,7 +686,7 @@ event_config ',' event_term
 	struct parse_events_term *term = $3;
 
 	if (!head) {
-		free_term(term);
+		parse_events_term__delete(term);
 		YYABORT;
 	}
 	list_add_tail(&term->list, head);
diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
index f9f427d4c313..db1e57113f4b 100644
--- a/tools/perf/util/pmu.c
+++ b/tools/perf/util/pmu.c
@@ -1260,7 +1260,7 @@ int perf_pmu__check_alias(struct perf_pmu *pmu, struct list_head *head_terms,
 		info->metric_name = alias->metric_name;
 
 		list_del_init(&term->list);
-		free(term);
+		parse_events_term__delete(term);
 	}
 
 	/*
-- 
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191107190011.23924-47-acme%40kernel.org.
