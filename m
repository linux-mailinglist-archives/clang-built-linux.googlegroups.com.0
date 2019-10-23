Return-Path: <clang-built-linux+bncBDPPFIEASMFBBNGJX3WQKGQEYQQ57KY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D85E0F5C
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 02:54:14 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id 62sf7821095plb.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 17:54:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571792053; cv=pass;
        d=google.com; s=arc-20160816;
        b=EnL9l34jodHxBfPDnPG1/P6iJGERHCjFooMtzrjrT44RVAzAomVntTusr+rMnUhUCe
         KJl1aIEIE4CiqhWe2womOrFygUFYuhsmIvJPI8yYFbKc/ZN3QXPhnBHp9Up7/A6sJNKh
         SWzrRxfomApGmL/o3YZzlKum8C0s/j/bwi0Q9K6ZjSFWbKd7x709ddvhLBflPWla0Uke
         JawnnA8qenbgdl/wGre3fw7txSDD4PBcQvfRHAJ0p1RQXoSfwFBXpbyNdwbDeRfGl+0G
         xiPmmVFoaMUOjjMhL1tgF30lcb92AI4DNMKckptEQMjsODnBowu33gaUGZV1YlNK4KST
         QHDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=iBcISBtSLc4FIkzzyeC7g8tO5CUAzzO2K03lDLDQu/4=;
        b=AveYKXurHzHnD/p9/Spb9hEkdiB0LykJUY2ESev8/eTnz//ZtSqH0bIXOgbivft/Bc
         vX2nZH9VvBBhYZMF/7xWXUD3OzA+qTzrO38zrAKGqqudGaXVJ05orx0P7DCyTPhaFzsM
         V6krLXJUlQe1dQvHLCXWMoRn7Cp9HtY2TqiZtJ99CJHvbePvcCOzPB8s8HsVXhd7ha2e
         WjPyVebwKWLsGh3VwonkcFkr9CiMD7LUbeG7Xkq4heoCLuxCVxd1/HmrFAVBSd8v4D2A
         Rli7IrEvOu9j7vea8FDmyV6hj1Zco2YXw85S311tKjIzIv49r8/7SP1s/r37Dz1X1cbR
         7DHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BL8dfNYw;
       spf=pass (google.com: domain of 3s6svxqckea4wfcusfguccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3s6SvXQcKEa4WfcUSfgUccUZS.QcaQZObU-PiWZh-ZWbilUccUZSUfcidg.Qca@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iBcISBtSLc4FIkzzyeC7g8tO5CUAzzO2K03lDLDQu/4=;
        b=Prlt6UnqH2IzrYSGvKqg1Uu9aQzkNTxeXxKWWQKGR3lyuxVrkTk7TNZ5f1mUh35sQh
         AbQi2ZZfSNGw0zv5+iXMuMwAeFnHrBTsXcz+0CrBsWb92/8Qm/e581oRBbV+l8vqsR2T
         Kd/DMgmIu1xSZqZwVcYA01roOa4rYD8wP2uJVPmaoQbmglOmtq/QVw8Mlmwa/npgNS7f
         x18Uo9GaCHGyO0vHm4rCR9Ors5+1jclbJq3H9sZ3VMoDyTZS3rvtMAiU9ZTfXmVhb/Fp
         UNjP0icTFJ+NFIfB+xGYiil22KByWVMwFX/MhTiIQtEi15IxcMs8KI8vU4aF/ncinhqx
         41oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iBcISBtSLc4FIkzzyeC7g8tO5CUAzzO2K03lDLDQu/4=;
        b=D+76SYJKfBtQbExbORxLi9K5YXKOJQaozGcG8CFYz+zQZQffZE4kPtZMv9JwTbUqN4
         opnLSHrtyCHQK8LlNh23NuVdnWrLE5D4j3UWeWDwtLiqQnXqgJEwQ1LCZVrJOjQIFikX
         Cj7ORtDZ48wcwa4ZbcKonKUo1+apQDi0IB3h/+uXn35gJtA8iZiRNoJn6XIbZy/xHJNN
         3excPMxz3X5fgu7s2+Dbp8swF9+KukXfjSw+BrFctJOD6sW4TFnbfdjtn9wl9YnOgz8f
         D10Q2lZoimpCTdRSC1eCEPlIUEET0XO2yTttRtHsaqbqsjHbfPK3eF95dXYtRG/xSYbv
         Wbew==
X-Gm-Message-State: APjAAAXg0NxhzSwjnINMeUsEvBThUs5cLH+zWA2p5wVWEcvx3SUwQ7ev
	uA4XW7P9PKf6DC0mFIdgTEk=
X-Google-Smtp-Source: APXvYqwduuBFkNwym6ZgAVbslLJPGxiwSE5zn/5Z7xOxYy4OdLfdOLLMQF39Z0KVBB6UAGwUftrctw==
X-Received: by 2002:a63:c509:: with SMTP id f9mr6881781pgd.79.1571792052910;
        Tue, 22 Oct 2019 17:54:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6947:: with SMTP id e68ls163882pgc.6.gmail; Tue, 22 Oct
 2019 17:54:12 -0700 (PDT)
X-Received: by 2002:a63:c045:: with SMTP id z5mr1685024pgi.69.1571792052390;
        Tue, 22 Oct 2019 17:54:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571792052; cv=none;
        d=google.com; s=arc-20160816;
        b=HbLhL22AboS62BYJBviSr19KdRaRWPrAXnz+TrLH6lWPZGTkFeSgm6IYJIIQ1ViLpC
         jaQoS22eA5jXF1MHEC14Bt0cT/R0bJCv6Z0BLQwZq3JYzqu6VwnSG2bsp6LXGLkPFLMJ
         4F1OXlHnnMFC8VpbEH82IMcgysNKn+iMDEcUITp0ppFGYJZYNu0HKaQNL4B2yqW1JL9O
         dp2y6anZPO/cO+DO70/H0EmhYQv0PUCxJbQVjAr0VA5wM/limzQQWJYQD2yEK+OV7cQi
         Ay/M+Pu+8uxqj+GaHK75NRILQJzFJCRNmvqFp22jRmiPWPmjgVMnPVdaoh+LW6hiJSd9
         wkGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=98x/ZBLRTnMz91JDf+r9eCkgM4R/aoJz7oABA29poQw=;
        b=nfzAvK/z6q//gz0oLjR4WDaWKLbzJ+rX9rNbfeuxCMcK9g6PniGbzGGK7pnzgMd96V
         Yj4i0uzs9WQV/4zivWZJGyY0O0YJsgON7QupMSWKScSK04JmpCwvXiBzXyzbulhexBXW
         e35f0lFgayu0qarQhCrvnbq3q+A2hKRU9wBpQoTL1e/QxpoZWsF0uUaKRJpUJvZ5t4bA
         bZyDfrrNtsoGpPB/dtwNwk6ZomE83smAZrUORY3fKVqLB/81DwMKAydLRiRA6v5pefqJ
         xVp09MFK6MvY0m8lKEvVRVRoi5U4A33bIiVyb43gUa42WBZ6vmfsrgawdAogHQ8Vt1Vg
         cZxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BL8dfNYw;
       spf=pass (google.com: domain of 3s6svxqckea4wfcusfguccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3s6SvXQcKEa4WfcUSfgUccUZS.QcaQZObU-PiWZh-ZWbilUccUZSUfcidg.Qca@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id x2si1101879pfq.3.2019.10.22.17.54.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2019 17:54:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3s6svxqckea4wfcusfguccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id m185so2514453pfb.11
        for <clang-built-linux@googlegroups.com>; Tue, 22 Oct 2019 17:54:12 -0700 (PDT)
X-Received: by 2002:a63:1666:: with SMTP id 38mr2072471pgw.93.1571792051528;
 Tue, 22 Oct 2019 17:54:11 -0700 (PDT)
Date: Tue, 22 Oct 2019 17:53:33 -0700
In-Reply-To: <20191023005337.196160-1-irogers@google.com>
Message-Id: <20191023005337.196160-6-irogers@google.com>
Mime-Version: 1.0
References: <20191017170531.171244-1-irogers@google.com> <20191023005337.196160-1-irogers@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH v2 5/9] perf tools: avoid a malloc for array events
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
 header.i=@google.com header.s=20161025 header.b=BL8dfNYw;       spf=pass
 (google.com: domain of 3s6svxqckea4wfcusfguccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3s6SvXQcKEa4WfcUSfgUccUZS.QcaQZObU-PiWZh-ZWbilUccUZSUfcidg.Qca@flex--irogers.bounces.google.com;
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

Use realloc rather than malloc+memcpy to possibly avoid a memory
allocation when appending array elements.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.y | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 26cb65798522..545ab7cefc20 100644
--- a/tools/perf/util/parse-events.y
+++ b/tools/perf/util/parse-events.y
@@ -691,14 +691,12 @@ array_terms ',' array_term
 	struct parse_events_array new_array;
 
 	new_array.nr_ranges = $1.nr_ranges + $3.nr_ranges;
-	new_array.ranges = malloc(sizeof(new_array.ranges[0]) *
-				  new_array.nr_ranges);
+	new_array.ranges = realloc($1.ranges,
+				sizeof(new_array.ranges[0]) *
+				new_array.nr_ranges);
 	ABORT_ON(!new_array.ranges);
-	memcpy(&new_array.ranges[0], $1.ranges,
-	       $1.nr_ranges * sizeof(new_array.ranges[0]));
 	memcpy(&new_array.ranges[$1.nr_ranges], $3.ranges,
 	       $3.nr_ranges * sizeof(new_array.ranges[0]));
-	free($1.ranges);
 	free($3.ranges);
 	$$ = new_array;
 }
-- 
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023005337.196160-6-irogers%40google.com.
