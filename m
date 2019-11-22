Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBGHP37XAKGQEGEE3FPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 71947107465
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Nov 2019 15:58:34 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id z2sf4485631pfg.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Nov 2019 06:58:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574434713; cv=pass;
        d=google.com; s=arc-20160816;
        b=BWHmCuFwxCchV1KQnj/kO6EVLA8cWLod4zelwbQFPgcTBWkqpiX/2ZwiJ/xZ6tZKiv
         DzyN8XTBNzfYkBvu88m1oerW2NSib0z0e9WFqC2u6kYLtNkGxhEyrbUGYa0ogg4TAk9j
         LP5LRWHQZlewp4JZxyhDv7UuBCemmmOhAzwt1tGqBcqyd9TDYdfRDxyQJpAMvmEa1UBK
         gyUreAqK89FmwaLfNHlvU+DnhJ++9GXYUaF8xRCa2B0C4flSK4CA1m5W6aq0/Y50kBzZ
         U5ebcKklqPFFTRoF9v4c66jC7IcXYbc3D/oW5TOvZicdJBlHqzHf9oUcf1E6di9vZRlc
         VYig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=jH/jAb+TCE+oXXA40adthrQl4CsHszEnERQwHfFJMTY=;
        b=0fk09oPkgjM2tDbZPoVpTu8IEB43RT5gusWMhA5XZp8IB1HIMVpBx3XlPFl+Nq/5rQ
         uUKwrNMUSTiQZrVgfcXiaHdQpMesK8Wu20GjMqarWmtwn6JaNVT6G4tfR8vI2hgywYJJ
         cB2BPlZ8AM5Uwfmqoz86uDjT1uG/uOZdSWVWW74rgTZaG6VTjxCDFeRcs+jtR1V3vpEo
         ax1d34FP7mUfOHBdzKJWkqWJ17yecmFYkjVfxIVirNrm+DLbMEtNDuowwAR3rRvqxA/o
         WEGi1F/Ed5iV70JvCMhnkQgM5Q7LuFvhgDtxM8+31A1IBpWSQgTgspsme9y1RMz1KTSN
         J0LQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EfWc1Hpo;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jH/jAb+TCE+oXXA40adthrQl4CsHszEnERQwHfFJMTY=;
        b=oZzVm4Yh1R2gXyPZUThRe/aF+PX3kfYVyiym1xw/KJykIMfqrrRmJckOIjmvfmhqcn
         cmQDwycSayuBc/Mv5ihizsnB1RQGq6i7pct8Bnvf/Fayc/mN/20Zlk+EER+/tpPOlYg9
         nDGphKZWdxG4ZRYJ8J5bj9WZu67oTJgRqFySjOmezurNcf/d9R79n7jWf6F6GwKZYnfw
         ztCvPtwc3aw+ZOw0Xw5fGpYq+bU60oX9NQkC/jXY9lN8DQ5EIYkUZ4Z5C1I8a5uhj5OP
         1pRLyuzYG/NGFyomYAH4jm2IQMG8GQPQ1KTLHtnpLbxkoOQpbaWR3S7ZeNEFlwbA3Z/8
         uihg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jH/jAb+TCE+oXXA40adthrQl4CsHszEnERQwHfFJMTY=;
        b=smZmrsy5bXpiebSzDPSpcoQFGq7RIYzjqUyTscY9Aed5XuumCmFqlR6xTT+mfku3pq
         4y8UpR/o+i7Pv9+tpuN8cGuMNoRiwsTbt/babWQbAyDSBhwI0s+Uvf6yCQu2z6nP7YNV
         BlgJ/bGJNmWMAdLxbkF2dJYC40BMInhJQSCgeHz009Q9GYCCJ2UGfPMCM46m8J417Zli
         y/5OwxVXNLzkqL57kFm6OddjnYn6n10FQlTZHZSzmd0pbB5uW33DaDi6CrLgEJT8BTVN
         HdhcmgZLvSgzKUGc0O0iF0F6aTNdPg45EGT2l1N54VyHfKO6cm3Cm1ts7Cl1agdG6yRR
         hSKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWS2HxGRfax/irqzn02Cji0yM4kzgwOIWjxBAUziHvhWMN1yYRI
	viD2mm75YfY4UxqR2V5cSDI=
X-Google-Smtp-Source: APXvYqxePXsU/2ltXUsIQGCWiDASSTVUy6u3JjvJS511FrhqBxt3b5GUSyg4170mQOBdUh96aJiqKw==
X-Received: by 2002:a17:902:8e87:: with SMTP id bg7mr14499027plb.186.1574434713058;
        Fri, 22 Nov 2019 06:58:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:a10:: with SMTP id 16ls2219670pgk.1.gmail; Fri, 22 Nov
 2019 06:58:32 -0800 (PST)
X-Received: by 2002:a63:c0a:: with SMTP id b10mr16828247pgl.168.1574434712606;
        Fri, 22 Nov 2019 06:58:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574434712; cv=none;
        d=google.com; s=arc-20160816;
        b=naAkNRW3VaXjcJXFyEUsO4mPUvth5/n37G/sErI7qItq2OsXCkS/F4atEC8z7719+Z
         6zW1xmMAQuUN2ZF79yH2BCJuoXONX2dDwc9z7pKaU1RMrp5bibuq19aEnGuaTIqg3Tcd
         WOT0K2vGvQwhWof0XZh2Hf//Gp9cy5bFqMh71FN2cenE5yfFm+yeQoG5tinrIk0GJqPo
         apO8p0jP1tV4qQwc7828o/2uhpo9kzm7/j7eI4RylosyA85+r4EtKbQ46imjmY0cc3yI
         MV9/GFI84mjLhB6vDVypEFF0UBj8Qrf9GEXDSaenFKVGQNgXU7yLCya7ew1maKFYCn8h
         iybg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KfYPKw20hAnaXvYks8qYuMAv9N3CfB4uQ1/gkLWx7iU=;
        b=qOhX1OLbH6OV1hHeCxfojdhWcT/qBCMN/5hbcaLDtc4R1qzO0DpAPijYfMKhjBa1kJ
         QrBCBHjOhN1aKE43pTGJVp5z5IcgNM1vV0k/14dq95ylI+q57Z1vRfiNqMvTZOzZfKR/
         /goePO2Wzby0aEG5ESGaQQ6WCpPqzys3L52Dhwe6n+yIsdPZgFR+3wgsz5Hj5AvmhxpP
         8lPExTY9TmEJl+q/ytw/JS8ffwnvoe/CHqHCUhEzKMTpx7vgpulEpSRrlxLDbXM7Kycf
         jkIslsX6454fdc2cptEPzR5ZtiDD4lLWFkqYsAINOvxI2fkqRny++bi+B2ELuGKVcwBJ
         ViSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EfWc1Hpo;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l7si87992pjy.0.2019.11.22.06.58.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Nov 2019 06:58:32 -0800 (PST)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.35.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DF12C2071F;
	Fri, 22 Nov 2019 14:58:28 +0000 (UTC)
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Jiri Olsa <jolsa@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Clark Williams <williams@redhat.com>,
	linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Andi Kleen <ak@linux.intel.com>,
	Jin Yao <yao.jin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Stephane Eranian <eranian@google.com>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>
Subject: [PATCH 26/26] perf parse: Fix potential memory leak when handling tracepoint errors
Date: Fri, 22 Nov 2019 11:57:11 -0300
Message-Id: <20191122145711.3171-27-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191122145711.3171-1-acme@kernel.org>
References: <20191122145711.3171-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=EfWc1Hpo;       spf=pass
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

An error may be in place when tracepoint_error is called, use
parse_events__handle_error to avoid a memory leak and to capture the
first and last error. Error detected by LLVM's libFuzzer using the
following event:

$ perf stat -e 'msr/event/,f:e'
event syntax error: 'msr/event/,f:e'
                     \___ can't access trace events

Error:  No permissions to read /sys/kernel/debug/tracing/events/f/e
Hint:   Try 'sudo mount -o remount,mode=755 /sys/kernel/debug/tracing/'

Initial error:
event syntax error: 'msr/event/,f:e'
                                \___ no value assigned for term
Run 'perf list' for a list of valid events

 Usage: perf stat [<options>] [<command>]

    -e, --event <event>   event selector. use 'perf list' to list available events

Signed-off-by: Ian Rogers <irogers@google.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Jin Yao <yao.jin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20191120180925.21787-1-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/parse-events.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 6c313c4087ed..ed7c008b9c8b 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -511,6 +511,7 @@ int parse_events_add_cache(struct list_head *list, int *idx,
 static void tracepoint_error(struct parse_events_error *e, int err,
 			     const char *sys, const char *name)
 {
+	const char *str;
 	char help[BUFSIZ];
 
 	if (!e)
@@ -524,18 +525,18 @@ static void tracepoint_error(struct parse_events_error *e, int err,
 
 	switch (err) {
 	case EACCES:
-		e->str = strdup("can't access trace events");
+		str = "can't access trace events";
 		break;
 	case ENOENT:
-		e->str = strdup("unknown tracepoint");
+		str = "unknown tracepoint";
 		break;
 	default:
-		e->str = strdup("failed to add tracepoint");
+		str = "failed to add tracepoint";
 		break;
 	}
 
 	tracing_path__strerror_open_tp(err, help, sizeof(help), sys, name);
-	e->help = strdup(help);
+	parse_events__handle_error(e, 0, strdup(str), strdup(help));
 }
 
 static int add_tracepoint(struct list_head *list, int *idx,
-- 
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191122145711.3171-27-acme%40kernel.org.
