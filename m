Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBTFMSD5QKGQEKUFWHYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id B18E126EBAC
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 04:07:09 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id w16sf570645uau.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 19:07:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600394828; cv=pass;
        d=google.com; s=arc-20160816;
        b=OV4FeR7OGPBC1bijQSqkn1fttV8Bca3MYD+tWU17oIO1ZlrqcpGcmDDMghM23lM6l4
         NG5H6E5Bq4g2YCPKnUrgzCJfWhou7eArSdsqtY4z5Ybbb8zkJlF25R+vSrYWOJEBM/iN
         /QFcrA1dcPhshgLwO5Q3GxQ7uxoPKwCx8X/o/o+zeTTYTPUscEdIdJ8DQC92zyXOoXsP
         yD96wPPTWThVMWnpG9NvECPxEF5G1QSKQIAuw8lw7wkNRpViH0C4EsNExZ41lCStnV1m
         rwkIt379pM/GU8jJpmo3V1U4MQ+rrrKqNqXO0HJLg1RmKkLmEZd+nEke4XGXWT4ar91N
         3rrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=pMOn8yQS2tUDJ06ygEfVC6OLyrZ4lJxD/MZmlkJOSpY=;
        b=mddCaaUmdWg4ZhsLwrTlGWHwMYpGoYjuHXfhHk4pFUgHKLv0HO6tJ5sNrY6qEtIiT2
         d/HqGZHJqPh4sIBcolzVXdR0tOHZPRTqjiVHVICSEf0ta3hpklUlSm1cg5Z2wFlXGqbw
         lNkkeiUG23BDK5sOABoGUxTubixB9hqq2rbDaYH0SG7t60MxIKX7p3qAtpUIjoZBPJrB
         aPksYQp6vQbom45SEb0WCWnfUIbG+bmG42xM8caUywEpU+GGr9iM3vELq42AuA3G7uI0
         CtqcSST3nFqV1RFjWJ87MTnjLyrxkk+YACZBBaM3SHkStGdMWnDpIL/1hjR9l+Ka7S3Z
         V4/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lbVdn7DA;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pMOn8yQS2tUDJ06ygEfVC6OLyrZ4lJxD/MZmlkJOSpY=;
        b=hjxj8w0vREedzmn2Bbm6qheCTtKH/WPsyM07jwj89E6wrUprhJ9pKbrTMBLg5fo3G1
         fWlKo1Su8zgDP+KskHdQ30GjslGiKyvr/Mpwk02q4nlPRWU6rtow6VeCarRAJ2GvSVXH
         +N8nX8iDR2AQrU915gCuL16AQrhWgG2/mdJhzq6SqKfHmE2rgFid9SS/staiGGPWd1Cr
         bO8JccdFSDh2bq3wlyP0GPx/alZ/L+EPZcAGhTn+k2H9/weSN1B/EuECcgnq022qxGvT
         5FZrjIeO2VeEi6ST4TN9uYjgnHaLgEtQI5xn4tLdOsRaW4/KP5E5+17JFGWBXu0ag3U+
         7rHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pMOn8yQS2tUDJ06ygEfVC6OLyrZ4lJxD/MZmlkJOSpY=;
        b=Caw1aLXjukT7YuoiRcHYf+Hs0oda64QQRtT7zptd3hxeRD8EQz8DJjwLmCOTjSmW02
         pT94CkZXFFjvSUsg8o5q4WyRRDxW3HOTCFGzKQEDmZH9oM1RTu7wLmdABJUrxqM/zkXI
         YxAia0NhcMqNiSvzFm0+mpxJo72O49kOamcjPV9Vw8ooKIsEWjKATAD88n8fs866oEOY
         PNFMYVMiaV9QQcLFbyJVQpDzudOPLxcN4uPHEuMQ7YjMY1zmI7zPIUWVR6Vwvg4fbhAg
         nW5pXFFUgjl+RMqrfvXEy6dCSgyWAwdab9jSnN0hvG6G2BbhcuDub59wik66j9fUXNT+
         cTlQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533xWyeLZHW28343w3BGFDzic6TmlPT1XcFcc4VthRY30eCLgfeI
	PT7nVWopsMkeYQv9XCt1a2I=
X-Google-Smtp-Source: ABdhPJx9iSTfoUI/+aoIx70ndOXEgJKYAp2QPuYVL3hGIJbXWjn2DjpO2wCvs2tsgvaIhlEcjvw8IA==
X-Received: by 2002:ab0:a85:: with SMTP id d5mr17620494uak.45.1600394828635;
        Thu, 17 Sep 2020 19:07:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2e6:: with SMTP id j6ls511139vsj.1.gmail; Thu, 17
 Sep 2020 19:07:08 -0700 (PDT)
X-Received: by 2002:a67:544:: with SMTP id 65mr10526300vsf.33.1600394828155;
        Thu, 17 Sep 2020 19:07:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600394828; cv=none;
        d=google.com; s=arc-20160816;
        b=X3Moq8dByU9HFxBUf6ZqI31K4LIYkda0tDbI0xa9Pneqd0M8L9TBZrdulBShGGy0s6
         36TjezvOnIEAkvf3I8NIa6WpYS0nrYJWxv66kOHKqTYaK3PGakdJrz5AjeatTqQ2M7MS
         ABRCgVx4FmvjWrik4rxmMpzXI9vr5FHGIQngshtahmYyRv5KKASVOT6F+lbKduKgEB3h
         I1Uwu/lOVWpa5pJn/O8udIiIoo+dnP2aIRbK8+QzrkPSJFWMUMusrNrFTqgQrYRu0ksu
         8CGqT8o2cegU16TNN17btriqQ5r7BQbmaRuIvQHOkxaCn26PxRulZh+0mCVHtJIgT/7b
         sYQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zl6sIfwQmbPzwXVFp0FbEx9z6vI1yws+qUnZkWPESyw=;
        b=xyOFTbzw0TmvL7zCNGMhsDNDTk4njWMwDmeRGjWVrk/4ghgrsBpUpAZUSI3FLie8ft
         GjF8EBJdeO6Bf8SMDJ9GMEL8wM/+XHXysUtp8Kp2PucWJfS8vKzWF2/1rf+k9PeG9Vjw
         FWXh2Uw3EmeVm56PpZM5yu59yV2i+hdD1ywTQUASDD5O6FlcA/HWvbprHd0KeAHJDg/i
         i0fPnGhnYw1DNTqAjSjVaNyBD3gbmPBwkNy9q6lzhG9mRcM2AdDSKG7xR243qUglxjjK
         C1JCmMMubPXhLAsYZlUNET04mIOLFo8ZbXpFFaCA8LX/ftwo2faUYs3RFSt4IxaqZq0n
         o8GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lbVdn7DA;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h9si93746vsh.2.2020.09.17.19.07.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 19:07:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9EB6F2388E;
	Fri, 18 Sep 2020 02:07:05 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnaldo Carvalho de Melo <acme@redhat.com>,
	Ian Rogers <irogers@google.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Andi Kleen <ak@linux.intel.com>,
	clang-built-linux@googlegroups.com,
	Jiri Olsa <jolsa@kernel.org>,
	Leo Yan <leo.yan@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Stephane Eranian <eranian@google.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 5.4 291/330] perf parse-events: Fix incorrect conversion of 'if () free()' to 'zfree()'
Date: Thu, 17 Sep 2020 22:00:31 -0400
Message-Id: <20200918020110.2063155-291-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200918020110.2063155-1-sashal@kernel.org>
References: <20200918020110.2063155-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=lbVdn7DA;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Arnaldo Carvalho de Melo <acme@redhat.com>

[ Upstream commit 7fcdccd4237724931d9773d1e3039bfe053a6f52 ]

When applying a patch by Ian I incorrectly converted to zfree() an
expression that involved testing some other struct member, not the one
being freed, which lead to bugs reproduceable by:

  $ perf stat -e i/bs,tsc,L2/o sleep 1
  WARNING: multiple event parsing errors
  Segmentation fault (core dumped)
  $

Fix it by restoring the test for pos->free_str before freeing
pos->val.str, but continue using zfree(&pos->val.str) to set that member
to NULL after freeing it.

Reported-by: Ian Rogers <irogers@google.com>
Fixes: e8dfb81838b1 ("perf parse-events: Fix memory leaks found on parse_events")
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: clang-built-linux@googlegroups.com
Cc: Jiri Olsa <jolsa@kernel.org>
Cc: Leo Yan <leo.yan@linaro.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/util/parse-events.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 5fadad158db59..f16748cfcb262 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1370,7 +1370,8 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 
 		list_for_each_entry_safe(pos, tmp, &config_terms, list) {
 			list_del_init(&pos->list);
-			zfree(&pos->val.str);
+			if (pos->free_str)
+				zfree(&pos->val.str);
 			free(pos);
 		}
 		return -EINVAL;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918020110.2063155-291-sashal%40kernel.org.
