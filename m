Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBCVQSD5QKGQEUFH6S3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 970B726EC60
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 04:14:36 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id s9sf2468652plq.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 19:14:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600395275; cv=pass;
        d=google.com; s=arc-20160816;
        b=OTrIfYwmok3hymepI4c7yt6wB55m39Gt6YqPyf84SvfY+coNAMtfvEAkwFVvgALI5E
         v+GbLdGcmZk2YB3f2vtaQInfcf0LZcEPE9jlZc+OOZSC/GE0a5YcAcpmZ9L7AvTZ/oyp
         782l8RbeMf4Q54qNIJpnaYJ/0IxkSjhOVaz3NP+7VAskYByV2z7aWQUWTZG0HYJFIc7R
         gw5L+JFEaRZb7w0+zttylsNPu4gRwY+4hwu4aThDDeJb4xq1Uxu/WTjzYTdCPceLqRRw
         l5SEj5BVVc0JDVgM0gB7JZDbvJ1tSeEKI2hiNP0QOyVJyoh4u8o24d+I26YMzi9baGmU
         tE0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=dkGd+n4UOzPeotyZhWd/78ukWLN7Zlk5sefZP+ddquc=;
        b=xscXcvjJ86sT7DzRQIwa3lxvwBihEiAJFIkOvJjMKOCWgbZeErvPu3CmX7BzXzxRoR
         lSjIZfRrOrxFA0F+1oJ9vNAMAcC9XqAhIHnvQX5aPF2a3XvSxuI53HGCDa0vOB/ujHzE
         IW//hQ5q7icdQNJXe3390BDXgoq2YCWfv5D2RP2J4Z26NKVefW4PPXsfuDrR4x5587VT
         yPy8TCxCZCbtAqhns9AxFopVd8uwhFi1h3jJheOkEgJXxzW4A4bUr4JKkh2f8QK0JDU4
         CbXt6TL0Ncqz4xk3qqBCm/JmjngqeBHeYZD7FryFgBHnWdiLvMB/WF9Gsncz+lJCv43f
         2wiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=owRycwnc;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dkGd+n4UOzPeotyZhWd/78ukWLN7Zlk5sefZP+ddquc=;
        b=VZHrqkvjmsKHcn/yXc/o3h0GpER2UKl/JoKTs5BcgFU7/8jVjQkUB05wjMDdCy92m7
         iRf4klc8Zn3bogV1XfI6J2I5WM7+vngyISAe3hS0b3yGuIpLafUT5BH4RclvnWErpSC6
         LGShKpZwyaNI37lbof6mKITaaCpBjOP5IwZ/aMQQGdAQO2if2LneSquLC9B4J5dfK06l
         SA3IQCS/NZd8MqH1kgQxpzhc9TPH4Pxlg+3/D7PkQCyLQHMld1RYh34KRbxhAb4JtMk7
         6ibK0jO6YCiBtYZlE8rxePQK0/Z0ggXzkYpGTZjNNZL8Ty2Wf3UcibSiA4745XdHKCD4
         pqow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dkGd+n4UOzPeotyZhWd/78ukWLN7Zlk5sefZP+ddquc=;
        b=h/TTdgseOAZ53LHB6QeErV1lYAap3AMbWP4fsUAqC63GCxE6YrR4UUsBGsalLMsGMb
         efjsDEc6IiiACgv0kpgDH15RmhAFnLHs8LCh2/hqapyaiGsQPixfm+ar2NwY5dKek4mp
         Txigile4J7KM3Avgj316Cq7DomfLypCU62ZgQtvBbc+lM1RR7nGgPtdESA9FUvXAgawi
         QCnsicLNpUQYEAQ5M9XqCtlNwUUMbZGC9jOWOgryy0du8rfnYokIqkWiD3swDVcSpaIX
         0wqpcSJrrqC0sbI4A1OoN6kvuoc+XxHe81oxVbRTQfZlyixqT5EsrrdHSxWATkeJU6eR
         BDAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530bWE18NZy8pFOyeICNTRfFDaFiPjvuKhpkYPpcoMUuNwf3h8h/
	aqhcaHkmFfTY2igcSxV1zRA=
X-Google-Smtp-Source: ABdhPJzZ3Jago5wkRgTAGvuvspyYuxu65LNjbrBHvuM+nDVLsyt1yuNCo66af2j65H6RqGQ0/WMqpA==
X-Received: by 2002:a17:90b:1b52:: with SMTP id nv18mr11248781pjb.149.1600395275131;
        Thu, 17 Sep 2020 19:14:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:45:: with SMTP id 66ls1527145pfa.1.gmail; Thu, 17 Sep
 2020 19:14:34 -0700 (PDT)
X-Received: by 2002:a63:c441:: with SMTP id m1mr23783412pgg.2.1600395274485;
        Thu, 17 Sep 2020 19:14:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600395274; cv=none;
        d=google.com; s=arc-20160816;
        b=fBF/gsYQqQTsBCwcZGfkuh0axAAKOfha1RCMy1AgGCVgu61EF7WmeRCwmQWNUNTzmA
         /rvsetvhhWdQk0xUtLV2OZJ9xDA74mTrvxoHgYaPtTgcKO4RK3TxN7F5Dlj3SfQLE/Ex
         XVDZxelGVNKn+UNoyPWX2aznS6ml+nm61OaIl74TgaAW/UXKZ581ih7Ae2kjrsu5baYc
         R9L3WTad4OJiKEvlYVGmL1AEG6HAH/MS07nMdL9nMjnv7lwYJDCaDKDrg9yMJcrFIXrD
         Lzj+XyKXwGe4HW3fqGP7BCZwoWC/E77ITW+kgsvkg0Ql3vI/gqoZ/Lrh0YMIpG7I331D
         2SVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9nm5FVXEARC/728ZQpKlt7WtWWh59PZu6I7VD9+/lZg=;
        b=lgF9olkay9Ld5glGs46n3QvI65IjB9No7FpR1gEGMKbw0Py0zjnfmNCGBPj0W/zJyd
         ut8Xyj/mD86Mzj3PLqEx7YKl2LW4eC2tiqi1tcxmh380qn9qAWEHxikjA+Gz4RRUOCB4
         K8eEkvh7p3GV5jHoPBTwsB9KY2j1Mbkqb+4X4nnuOkHnU1zZIfK2bTTI/bIsMBH+b6zS
         udSjDRV0WY1wWTW5XE2DBF+02pVMWL2+Qni/jtkSaXONwfT0p7rbJ7bK47YKuLzcxDoD
         GHij5XOShL4DbPYVVls7fwbtA4ceUhdWhHCmObgVSvY5ZwAK9oYUjkZhp1pb1/V9MzVT
         +vSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=owRycwnc;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z13si122941pgl.5.2020.09.17.19.14.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 19:14:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B3E3A235F9;
	Fri, 18 Sep 2020 02:14:32 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 112/127] perf parse-events: Fix incorrect conversion of 'if () free()' to 'zfree()'
Date: Thu, 17 Sep 2020 22:12:05 -0400
Message-Id: <20200918021220.2066485-112-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200918021220.2066485-1-sashal@kernel.org>
References: <20200918021220.2066485-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=owRycwnc;       spf=pass
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
index 2733cdfdf04c6..ba973bdfaa657 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1258,7 +1258,8 @@ static int __parse_events_add_pmu(struct parse_events_state *parse_state,
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918021220.2066485-112-sashal%40kernel.org.
