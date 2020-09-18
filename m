Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB5VPSD5QKGQEYD5OM6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AAEB26EC5C
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 04:14:16 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id r22sf2559682pgk.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 19:14:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600395255; cv=pass;
        d=google.com; s=arc-20160816;
        b=RrmXj5ujZlC9iA3FWp+mA3LdCGz5XNA4yMepBOHpZB/kaN1+tH8zmzCmWDgOzgRZVw
         tRfgVbE1prDq4SIrDkXFeKttkIr58nBrzOgBd1vjH6eBmsO+PejC0oz/GMd4Sw7w2a52
         nIWHTHDHV4SG2ymoW36GiW7mnC9sX5rQ3kJ0QovJg01NrEGGFZBv4vdAey5ZH2kDxm1W
         g1gqr02900bQPYGdUKzLYAPEK7NiKcMBGQkqt4jGKHN+0qrNBVHjEvxeS/bSXW0MEdvw
         b1O06m6ntAnpbwFSxdqG97LDE441JQe5NDv7b03e976o9b+CZlrR3TnDHbYnrKDVMYNA
         fQ0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XXYDWj+nFFU4D5hTOFHVx13UxSF4LOzASBeXXH3hujE=;
        b=t7mkk7X+UI7PgwfBhXKSjodez2zFw7xO4BRxoULd2KPFR/bwjBTIkKAG0Y7TbN6NnK
         sMSgjiaSJjQZOSUR4hQca9QpgplEAMBEbeBbo7tpB7toiCJbAi5uXurWkNVgRtVEG1aS
         rRwnsU+9Up+NUyppzsFaIbShQjFUNnN+wU95bsktLxBZMLp5c+d8pc55VxmR5+ZpmQOG
         zBkdW0lY/n2FQ65zm/SG3p6nXlFwFkCUvv5ZeslIvp0ss/WmhB17drJtanF9Z3m/w0Ro
         0p36F7ePceYW74mfsm5wq1Fx+qTYg30n8D6Wf8c55c7xaK6oguKM8xBolGmTN1N1CJaQ
         zf3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DGsUuKeW;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XXYDWj+nFFU4D5hTOFHVx13UxSF4LOzASBeXXH3hujE=;
        b=tbnkn3T/p13/HWQ9J5WZx7pSZKW6Y1O+16jOwSw3E8GQXPwICa4VfUk9XMcj1/Uld5
         pGH1Oa4lOrVqgi+oqlYbQMHAFTiu295NuEhKDnKK05wpjzG9WAXMX7uwm/9RbbAZlmgg
         J6ka1jFyFiJMYkYItp0N8L65NmIeJy/D8th+zTBZT5w0w2s1knnN0IRNjTyItcVOq0uz
         1C6PBBHL4OcFDvzSmJuV7TrTyNfXbdWwvw32Uvg9A4vCwDMZbkcn2XdVxDTT/UQgGRwG
         B9iLi6rg2yIz/B2OzjteirTenY4VTunC3t4hCreMyK7d3t7HCbgpgDGAW2YCZ/v2JYBf
         t0sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XXYDWj+nFFU4D5hTOFHVx13UxSF4LOzASBeXXH3hujE=;
        b=t+/mZhlRQEeHulyXDN25KVQRwmgx5zXfHjCN2ii6MmqkLoRhET2Gzlm8rpi8vGRJTe
         /WDFLpJmg3lFRyumxcQWRrrTUONYKSny/ekfjOF+z6g84VVd3er5px2b/HPbML+/d75n
         A+FI6sov5ehaxTPwevQpUmlHs633ThW96jwjt3UaY5GH7ZgK/uSn7Us5e+Be7VsfcIwk
         5Z0x9ZhQJ9/MuPWRONycgSNDDKDz0DIwfQrJPFIPRo11ynx2HeNCr3mY247w/U41QPMt
         P8BfayCtZ+0m7CjlrKkfE1g1Dh7wNUov87eg55vhB3Q8EpKIE5ro/HQYCvswJH4chjqS
         rafA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533eD8VneYg3c8YK8aw1cBqlALoqVBXmMXBOszUIJ0cEv7g58Zmr
	AwgyJkzxetap5wPs098h3l4=
X-Google-Smtp-Source: ABdhPJyWvc2gG5iLOofC4vRtfFPmfMJ8u9nccTrjkhH0adQ/iGRE7Gn1kWH+T6OWXiPKBOqJREXGng==
X-Received: by 2002:a17:90a:6685:: with SMTP id m5mr10649599pjj.235.1600395254993;
        Thu, 17 Sep 2020 19:14:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6883:: with SMTP id d125ls1514413pfc.8.gmail; Thu, 17
 Sep 2020 19:14:14 -0700 (PDT)
X-Received: by 2002:a63:e00a:: with SMTP id e10mr25622114pgh.423.1600395254420;
        Thu, 17 Sep 2020 19:14:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600395254; cv=none;
        d=google.com; s=arc-20160816;
        b=NutqU4Aq0/Ds8Z2yXrjYXIKtZllML9NXpat+MensdwX9pqujwje+ER4JCnIi7gHVP2
         CWDhLA+CNm9BdMtmQiff+nJuKOfn0iSfWwwH7Q5ac/soY5PCD1VhAGt/NyZh/C4RxyWX
         vLhTrIOZQYhjox2qgACXCIxnztmYBekrzLZ+8RWmrQIPACSEOuCS9vwixi3V2vluWgDP
         54B+FE0FBtLqqUedKufSeercL4h7Tgbgf9bGxvtQeiGGER1bG0uaHJ0rXfcA7tG6AcdF
         JkCPDFmXVNvl9cI36nqx76u9y9UHz2sIkdsNVG6MO1ntIZyG/ZzNI0SdZQQ8PbS4u2S3
         ccDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=8zrGPho/OkYgxVK+VFsw4nn2C30zBL4y0DgBMBWaCUI=;
        b=kFZrktxD0p2A/yhlT/B75Uw+SGFFYQu/apYMRlhh/uqIjkhCl5HoPQf2u9TD2hLqzP
         pSjPG7/8hTFweuAID618sTKcywV/lL5uzjC3lZgXowOAbdgmg8evcUUsikCGITezqPp2
         037/NPvTZoQU8bLOyZa/s+Dm/bV+oQnWfGIZnV6d3UPsQeunF5L0zWsXZ/01yZK/vIaE
         4zJMImnWH6sZTrQJyhHQbcRT18yhYc7ueFxKAKYIHFhcCsmDyQ+OAIst7pSf++QbxN6/
         rKyCHXJ9P1nNrWEImLY8yA4AlPcRcGonYx5gtuvZHAu2o3GI7XJXIoq2+oLgzIp67g7k
         gRIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DGsUuKeW;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z13si122871pgl.5.2020.09.17.19.14.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 19:14:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AACF8239E5;
	Fri, 18 Sep 2020 02:14:12 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Ian Rogers <irogers@google.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Andi Kleen <ak@linux.intel.com>,
	Leo Yan <leo.yan@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Stephane Eranian <eranian@google.com>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 4.14 095/127] perf parse-events: Fix memory leaks found on parse_events
Date: Thu, 17 Sep 2020 22:11:48 -0400
Message-Id: <20200918021220.2066485-95-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200918021220.2066485-1-sashal@kernel.org>
References: <20200918021220.2066485-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=DGsUuKeW;       spf=pass
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

From: Ian Rogers <irogers@google.com>

[ Upstream commit e8dfb81838b14f82521968343884665b996646ef ]

Fix a memory leak found by applying LLVM's libfuzzer on parse_events().

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
[ split from a larger patch, use zfree() ]
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/util/parse-events.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 096c52f296d77..2733cdfdf04c6 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1258,6 +1258,7 @@ static int __parse_events_add_pmu(struct parse_events_state *parse_state,
 
 		list_for_each_entry_safe(pos, tmp, &config_terms, list) {
 			list_del_init(&pos->list);
+			zfree(&pos->val.str);
 			free(pos);
 		}
 		return -EINVAL;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918021220.2066485-95-sashal%40kernel.org.
