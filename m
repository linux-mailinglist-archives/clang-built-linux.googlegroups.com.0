Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBSNNZP2QKGQERSBVX4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0921C7449
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 17:24:58 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id m67sf1881587ioa.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 08:24:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588778697; cv=pass;
        d=google.com; s=arc-20160816;
        b=IA4jN/AQdXcx/KAWziAxMTRPPAfD9GHq0sXCVKRW85NnWzvfi8lWD61L7GXpqbeE0D
         94LLzRtpVmIUUJuhknI7GdOCx0Vlbq6/JHn2g/ijVUGzP61jUCmi+Qs/yRP1NP8VMer1
         AwHLEVTj/NDUJcHuYczOQJNYm0D+n8okngFA78FEipzOhGV37j1nDm2bTk4X3+TqmWwA
         ZazYE+g9Legc2k8FolL14XZ1WXGJIST/oDFlrUGsua8pvkXG7pHrtglpgauGy02JXcEZ
         FrFzLii+f5UZJr7egxR/y5Ma6CQXy9z2wdddv5eSWj/sitznQMMkCfcyJuyuH2iVneWC
         dLgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=FS/ShtFoKe6GYZJkjoRmgJrkosHHa0s9SYO83johSaI=;
        b=aA+LK1vQI1BUbbae9P+OjL9siYVokoyAddPD5ALUz1cBOyUvfscc3KgIICIiuCbB9Y
         w/mq5STpUmi3x5fIb18m7szbiFDK+FLL8aFhsQV1JM/kFHpD151T+PehiMNUawjDxu+u
         i4RfIO4Tu+joieth3sZfIxta3TfXYe1VEe/H8BwDY8gAFc0uwqZY8HXqfwYn3fk4ldt0
         8w8qyC/ydi6Xjapt0CuokUziw9e6MyWc+oycGOrMTMshvfiaonMGnKMcgmreMAByy/dQ
         9KQDSYcRch1fieuxszprVMcFAuvrLK4w+ht0XVY9g8WO0OjVgu93FmG3kD1endFD+I8p
         yaYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="CDnkrol/";
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FS/ShtFoKe6GYZJkjoRmgJrkosHHa0s9SYO83johSaI=;
        b=s3YtHVJYpGAPsuViPryc1sYz8q3YbozjIYAZZNdvh0M3WSdZjcuAw2WXg++GYtz7Tz
         QqbIY4ER9+2nIVsGjicJOY2LnaQDTF5kjfNzSb6U1iouXymOqqxDyohkOfeLZO3SEYXq
         /KvTyhnYiaWbYFYT4iEKzNAa/jfiZBg7vnAjx4C2RcsQRBYpJ9pVqjdqdhwt58UWPvau
         V2leSN/S7i4wan07XEhqUExdSa1gr26rExI6jgT6Q/MRVyCmt05KyVKP4RXf830lWssI
         lAXbVn4/KpHnDDf+8Udsk6tdhFgvHkglSz9f90kFgOo5dxBUdOmMVPA0VRApPVQIzXgs
         gaoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FS/ShtFoKe6GYZJkjoRmgJrkosHHa0s9SYO83johSaI=;
        b=EtpGwGIiPjrdYvoGW6tR8ThNxdxSoi88uZqeXy7VJ6MR5wveKHSdKf7qmqePY+6zaL
         uJafi5UBhlADkkULNX8ytY24FwmMleV/UhmQtDILa0QfMJcSDzqjihWxd0QXQqOWJV8P
         k8LC/BSR8Yjp2NfNMJdrTrgpQ7Nf2jcNBSKkjIBYSnM8RL9eDnjcPKUD1qG99AQ2Ec3I
         WxqDzM5mNazt5V6DA0FDRT4fDlEL7+vrmBXJkfG4s9HuskFEYRynhFJTzJwB2p55v6Y/
         lhqP1xTqeMnPQ42vsxW5bYgiUp+u68y4UUkaFjlPrL22maqYHRG5vc9zw9pQSqBtk66J
         KFxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Puam1WKPjt32ofQ7bVb/86DyJ8Jac/VPO3P4t9beHVfhobKMB6kZ
	MBBu5qX56KHvUTfPaJB+rhs=
X-Google-Smtp-Source: APiQypLHAf8hHQyPOytFyC0lvpb0qizWiHTjRagDPqPYC5gIyvgcK7ZKFEJOrGQvDU99o3ONTAa0jA==
X-Received: by 2002:a05:6638:ece:: with SMTP id q14mr8954419jas.65.1588778697148;
        Wed, 06 May 2020 08:24:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5fd5:: with SMTP id i82ls1507761ill.0.gmail; Wed, 06 May
 2020 08:24:56 -0700 (PDT)
X-Received: by 2002:a92:750b:: with SMTP id q11mr9677951ilc.50.1588778696792;
        Wed, 06 May 2020 08:24:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588778696; cv=none;
        d=google.com; s=arc-20160816;
        b=nrJDrpV/RbRDxZ9lx8T488JSMa96cKgG9H6Q5gFzDCS0NRC3XumBMeHox+n3iq/xvM
         qxVEcSPbr5vkH2m1binSiuBQra7hq4Po9+rWp+eoy/fCK+iVtrbpumZEeCrJv6Q29Aah
         SvCBD2TJr1ci1YFoILgFYJ+ar81/3HCu/Q3vFPGf9jQmejUo6VkrGG1zLNz72WEZhSc2
         uCPMHKPFx7PLtOdoOB98I6L3gnZuP/XnfvqyCDOfneKYG+aSlzPPggxUq5oM9JujUUDI
         O7Ao8fyw33964Idlpi8t3I93Oa+YkLAVoKDWzUe47D41T285e0Fa4jkhgxw4dgtZ4//9
         dt4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=84HczwmMHHj/JmKLg5A0WEpgErYIzvhvZuhZa7J3e+I=;
        b=UxQGQPOAme8q41WZdqiGQPzRQpqRVAJ8r5JowtXXh4/eEjCUqvB0QLr3zoDqTiwVTW
         VQbxP7DxeIW3l2OfGucoqwrRndBcPpnV78LzpeeCuuS1zSyeIxDvPolemleEBUUHVIJz
         pRTKSn0XSaqFCKvv9VDRITxgsjo/KKDJ9/OkawryjAxNnDa7owBNw9WbMX67qNyCWPrH
         rr2Rny6lNueFeEn3T9Q2DSVgP2I+Bbjv/CiCXizodWWL9KxMn8jWpF9FvMVftxSlbLGK
         +qHU8YUNM4LQxArMA0AifVw560Cu2jlpVTo6bJ65cg0E47v55pttoucELWIZpdjrnMYT
         9PHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="CDnkrol/";
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h14si186610iol.1.2020.05.06.08.24.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 May 2020 08:24:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6925F214D8;
	Wed,  6 May 2020 15:24:51 +0000 (UTC)
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Jiri Olsa <jolsa@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Clark Williams <williams@redhat.com>,
	linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Andi Kleen <ak@linux.intel.com>,
	Leo Yan <leo.yan@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Stephane Eranian <eranian@google.com>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>
Subject: [PATCH 35/91] perf parse-events: Fix another memory leaks found on parse_events()
Date: Wed,  6 May 2020 12:21:38 -0300
Message-Id: <20200506152234.21977-36-acme@kernel.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200506152234.21977-1-acme@kernel.org>
References: <20200506152234.21977-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="CDnkrol/";       spf=pass
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

Fix another memory leak found by applying LLVM's libfuzzer on parse_events().

Signed-off-by: Ian Rogers <irogers@google.com>
Acked-by: Jiri Olsa <jolsa@redhat.com>
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Leo Yan <leo.yan@linaro.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20200319023101.82458-1-irogers@google.com
[ split from a larger patch ]
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/parse-events.y | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 6ece67ed244a..c4ca932d092d 100644
--- a/tools/perf/util/parse-events.y
+++ b/tools/perf/util/parse-events.y
@@ -326,6 +326,7 @@ PE_NAME opt_pmu_config
 	}
 	parse_events_terms__delete($2);
 	parse_events_terms__delete(orig_terms);
+	free(pattern);
 	free($1);
 	$$ = list;
 #undef CLEANUP_YYABORT
-- 
2.21.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506152234.21977-36-acme%40kernel.org.
