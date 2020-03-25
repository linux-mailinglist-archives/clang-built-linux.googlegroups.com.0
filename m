Return-Path: <clang-built-linux+bncBDPPFIEASMFBBGMT53ZQKGQEOJLWGMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 94599192E68
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 17:40:59 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id a188sf2532766pfa.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 09:40:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585154458; cv=pass;
        d=google.com; s=arc-20160816;
        b=F8T3Q9E8rF3O1PMiKK0RR/JsBZkhhEdAh+tPHbBBqh5v9WWx2cRutU0RyuwfafUYeS
         s8KFpuAkc2Ywd0HX/mrJVoefTEE1fHZ1W3BqqMGlEt9JblYSsT4AkbuXuUFdQ7C+4K8M
         OB8PX0rccti1iWKm4TCTdCZDNDcSlJRW8D+iepm8Wfi9mRRhy0kgo1awADp6gyac1KH6
         ReatCK+0BI7RYi8PotfnkbOAiKm/qSP+6y12hpLH0J03YrX85uBqpp9WNgo16huaV6ja
         RQeWzzhqhf6FqS8wv2oUIQo3zTP/n6KdxX3TGdagBY/DZN7wQFEftS3kunU4MrozD2j5
         OaJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=k4ZE1WR1YfQruRm94QzwDK200fSrD1pOD9a2DBAZDEQ=;
        b=tdqwhTQadjN8R4HESUUsADv6ryG+akxbvXPpZmrdCmUKl0Iq87NToEoyIJ2zYxbfyY
         xpY1MkklbPiafAWekIoI6dOg7bEV55eZeAtOh6MX7N5OHhy/ev25s0qgHKDTUDc/GJF4
         yyn/8alq3KyUKRprxWP+SBif1SQ1vhvWPD/5/ReiZ1b5Vt/tfX3kRPGIUkAhs0Eamo2s
         U0vmPMzmDoW5xLXXnRn1WtTB8Sjl7SMIYYLB1Z3Cs0x9ixBgHOEaxPbYEICu6hVmP5q7
         onYrUqrJP9iEw98EjYlUtieQ9ezWOpiNsi+1BOBUojTS7G0BWu0rdK3/XTo9JcLcsiPc
         bK0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZcDOCz7g;
       spf=pass (google.com: domain of 3mil7xgckezm5eb31ef3bb381.zb9z8xa3-yh58g-85ahk3bb3813ebhcf.zb9@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3mIl7XgcKEZM5EB31EF3BB381.zB9z8xA3-yH58G-85AHK3BB3813EBHCF.zB9@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=k4ZE1WR1YfQruRm94QzwDK200fSrD1pOD9a2DBAZDEQ=;
        b=UrMWLPW4Kwvam3R8n+5tGpX5yyDzFzID3RJy+9w6wM/nmqJBy3lBMX10SoCs0b06nR
         CeKjtr41wDkP+hKpIXd1bZ2SwxBtMkZp1L5q17DuGTk5kFmXc8pLcKzKK0Urx75Tmo0R
         LBOAaVzxVm5HG3rqnhvPXH5hNCiJGzZ4di/wAfrAot7wUtlP1y6EAT5XWrdxLv0/WuFh
         VJnqsW8EXHR281hlhQUqgj7UHCBRHczo5uvhod/UDKV1Fj/SDT0ASp6aChP553M2NJU6
         9d7Ht5o5FP7ocwdvJkpQn381kwPBdk7pzQxB8cv6Y+0l+9hHYMAtshnK7bfAmhFy6HwE
         o6UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=k4ZE1WR1YfQruRm94QzwDK200fSrD1pOD9a2DBAZDEQ=;
        b=rdLotDana76gLHV5gfFqMYZRmsQewVyVHvAzuiZYeZI91BmvVTmwoHENPeAGZpaWgJ
         tC2jSi8HaUGzYTgqmn0LZb13mlo6DbW3lyCGUQhMdF6UmfR5K6mu96QbXUWvGCLI/nNZ
         lqZftSWoMaPrSfQP51gTAeItt6GXPk0rkZr98ZhQvCx6xV0SR5wBGThjIwhY1GyRY2oa
         4BBv3yG4epdEpLHiyMS4Rg7KfMyTqvJBY6msGctvPzgI3F9XME1oqmQm0DDC+8YYMJsE
         Crzya+MvSizaw0GiJ9SH8Dn8NumGUsQfWNFLcKYpU9dW77q6zHrZA3uY9zG/kkSdUvwt
         W9Jg==
X-Gm-Message-State: ANhLgQ3NGGXEl8h1DI53gIorAGnI0skqgqhYohwwzJViZkR3yi7QL6vf
	SISX1GlER3yh83UlYD+gJBg=
X-Google-Smtp-Source: ADFU+vvf1D4xMnJ9TVZ0hkl0Y3Mq0qyI1nToFtYp0cA2v5yD24YDDR51cJSoZClVO1YmuOb6K6sxUA==
X-Received: by 2002:a62:1513:: with SMTP id 19mr4244279pfv.85.1585154457204;
        Wed, 25 Mar 2020 09:40:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:316:: with SMTP id 22ls1723683pgd.5.gmail; Wed, 25 Mar
 2020 09:40:56 -0700 (PDT)
X-Received: by 2002:a62:1b12:: with SMTP id b18mr4334257pfb.258.1585154456640;
        Wed, 25 Mar 2020 09:40:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585154456; cv=none;
        d=google.com; s=arc-20160816;
        b=TwuGRazpizU4tGDUVuFjtHzgtjVLXYzFpg3C+P4A0vWefp+8nhu7nq//98p4dZ/jTs
         uVCZdsoWaGnKasDM+etrIi6eG3gY84+xumlLLttVhXVBAhw0e8cWA16AatoDuaERSkEi
         +YSiALX36Xk2rAyyqAVVx/IQ32Sl8iuwry8xZZyB1vXo18EzXOYVPE7bWi7xkvsshaRI
         1EskBsL342MvRcvsFIowMrzJ8y7l/fVl0C2tE2xJcY0BXiC/x1aDWKxlRO6NKfnzlyCz
         V190RDBxYFwSd5vEclGlks7R+XVoptBpXN4YEZe9DKoqT6NrVavoyIxUT4BomuxU06C6
         JLwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=QQlmwmvyhM5ffUQK0/If9vVW3XeaSkhBNfKa5UWeFk4=;
        b=sV6Rslw4BwFtRSicfNeLaEN2QqQqGoUVdMT5gQ29g+TRDA5KGd+uYudw0Okdr/zPXZ
         JU1ZW5OjQN6mJWp18h/38RiOVVnJMH8Y0Zjw4D5mGqgvpapExQc/VB2cf2L9WIacwozu
         Whokh5YUlyAITtpiCZtfZagh4QKuF+BW4NGDnKXPPaAL/Eo4wQFCS/V/w28eidpWM3D+
         tRjI/olCZgaoiVjKP4qIQybi5yssAoJmRsKuiWDZk+nW8M50tpCiM/2qeZ8I43EG5EV6
         NZBTfoawwOS1NFfItwquTBzyvz1hIz5MCMN81CNFOUkc/sIKqaw7hDfUINpmiWOO+OLn
         ccZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZcDOCz7g;
       spf=pass (google.com: domain of 3mil7xgckezm5eb31ef3bb381.zb9z8xa3-yh58g-85ahk3bb3813ebhcf.zb9@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3mIl7XgcKEZM5EB31EF3BB381.zB9z8xA3-yH58G-85AHK3BB3813EBHCF.zB9@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id j44si312078pje.0.2020.03.25.09.40.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 09:40:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3mil7xgckezm5eb31ef3bb381.zb9z8xa3-yh58g-85ahk3bb3813ebhcf.zb9@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id p25so1979082pli.7
        for <clang-built-linux@googlegroups.com>; Wed, 25 Mar 2020 09:40:56 -0700 (PDT)
X-Received: by 2002:a17:90b:8d2:: with SMTP id ds18mr4280096pjb.186.1585154456219;
 Wed, 25 Mar 2020 09:40:56 -0700 (PDT)
Date: Wed, 25 Mar 2020 09:40:22 -0700
Message-Id: <20200325164022.41385-1-irogers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH] perf parse-events: add defensive null check
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, John Garry <john.garry@huawei.com>, 
	Jin Yao <yao.jin@linux.intel.com>, Andi Kleen <ak@linux.intel.com>, 
	Kan Liang <kan.liang@linux.intel.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZcDOCz7g;       spf=pass
 (google.com: domain of 3mil7xgckezm5eb31ef3bb381.zb9z8xa3-yh58g-85ahk3bb3813ebhcf.zb9@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3mIl7XgcKEZM5EB31EF3BB381.zB9z8xA3-yH58G-85AHK3BB3813EBHCF.zB9@flex--irogers.bounces.google.com;
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

Terms may have a null config in which case a strcmp will segv. This can
be reproduced with:
  perf stat -e '*/event=?,nr/' sleep 1
Add a null check to avoid this. This was caught by LLVM's libfuzzer.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/pmu.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
index 616fbda7c3fc..ef6a63f3d386 100644
--- a/tools/perf/util/pmu.c
+++ b/tools/perf/util/pmu.c
@@ -984,12 +984,11 @@ static int pmu_resolve_param_term(struct parse_events_term *term,
 	struct parse_events_term *t;
 
 	list_for_each_entry(t, head_terms, list) {
-		if (t->type_val == PARSE_EVENTS__TERM_TYPE_NUM) {
-			if (!strcmp(t->config, term->config)) {
-				t->used = true;
-				*value = t->val.num;
-				return 0;
-			}
+		if (t->type_val == PARSE_EVENTS__TERM_TYPE_NUM &&
+		    t->config && !strcmp(t->config, term->config)) {
+			t->used = true;
+			*value = t->val.num;
+			return 0;
 		}
 	}
 
-- 
2.25.1.696.g5e7596f4ac-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200325164022.41385-1-irogers%40google.com.
