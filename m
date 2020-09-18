Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBIFMSD5QKGQELGDKZ6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id C370D26EB4E
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 04:06:25 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id m186sf2572231qkf.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 19:06:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600394784; cv=pass;
        d=google.com; s=arc-20160816;
        b=RPMvV9JkXg3x3J5JdIG6So0UWO7Yxa9Tf/fM0OV6UaiZb2b/UTkJGLeYEQVOHep5Fd
         zY66Mnuus9Zwz13hyhFwY1479jvo8gMu0MioipFUsq2WfM0DXVLkHmZxDD9jwPCdQzOa
         ydaHywrBlJe8AfW82VVwgy3ONmzoMs1TaLn8lOwt+ymLmlNkex+J8v4A6iJsiAERbHUe
         h28elCvLzsUEVOKKPU/wc3jpsiJ7IPKEkgQgvIOBmW6WjqmETTiClQtZPlvwbGv2lg1Y
         9cQJ4PV6QgNC2vX7pneEo/53yLaFKvrkr9/86R6sdJ3T6gPWwPFDDL+S1vtxqraM7bzQ
         dAWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=b/Z5kLdqbhpllHMtDWWEH59qEOeZj9NlyM/nshfZgO0=;
        b=jFUk5RG05qJF/maMXs0Y1RmgWfyLOuTYqM+arfhZBzyUQnXE89G9ZOb/PtKQuY6sKp
         KH10OVp4BoBBoVvJXw5T/RiLUEwlwXP9oVOhQ8qGZOneuCN/uDWhc5tFrqClZRrJXx3C
         ADHdPImVommhWoPmSZJHWASijH0Kuzg9hdCLNNvsoY8ktWl+7nElZD95jguiWvGSh4Zz
         eFG4EsLd88DNDh/4qS5u7Bkau/+UL76NP6NWOEv5BK+Mv9a7d/gtn/uIJnKjv0ZEq+hk
         oDZbWJdIJNuBvZKKT0/9QBIJ3imkJMpQFx6ZWztHs4a5+VbiVpTiSpMqi6v/ubdmECEH
         MERg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Fzuem9H6;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b/Z5kLdqbhpllHMtDWWEH59qEOeZj9NlyM/nshfZgO0=;
        b=UPXrURyZk+x5KblD2HXl9PRoBVsNrQkc/WgD322gdukTJgJC7wZ7tCtLwGoPD/BV2o
         42NdHZrBtkXqNzReBNw/YH+dj1vM17qfhD6J08ELHGJNwWACb9ZpWDFXqEi5YNtw6GO4
         A7ifW2Shr4M+KmJ3jBFHu/5nfKlFYjJ0WI2ZfkTficOpTjaAHxGhe38X+1VuLObfZZw7
         TJOtbMoefTSkJvPUk5lx+I9X64Bo6plPh3Gf2L3dLIyJA5Il1i70nhQa6izgfPIhjnv6
         bzSJxvL2tuTToE3wW379lBRDjH4A44IOrSWhJLdfRqbBk9eqhqPlL/DX4D69SfuXY/LP
         6K3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b/Z5kLdqbhpllHMtDWWEH59qEOeZj9NlyM/nshfZgO0=;
        b=sNOWBgo0rOvE2xw+PRNqSNYjFOlqH8cvIzIffZuuiYhSuQsrsRVTYIBbKHJ1Qk0/u5
         5uxp1JMncYEqmxVhjPjZZhhH5crrwKdzUVqCXmvQkcLUTJ6N7PNTknOXcCsIujiB5tkG
         5denV2HvKaxzieZjz9uek0b+H8/HoizwBy95f6V5yLhFDKcWfHp4zZCUq1tIAf2hRex8
         NZTeCe8P4ruDWOkwrLXCqxzYsLq5yhOdjmCySUgupt6qeMi7fN2pIMxkM+vB+E5Y+yu4
         07bMzLtqMfyYGU/gklFJm7vpl4YzHrsLLRvFG52dBphM5LtdA7Y2SEGjxEZS63AkDRsl
         G+nQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532HKkwmp0+Fi0Cv1C86NDEKAUDNA5Hd7YmB3Wt9Vtct2Eu+wABR
	oddLawWUPyLOAopQ8QTln7s=
X-Google-Smtp-Source: ABdhPJxGavq/LuCkRnCpzXB9w7idm2gyh/INGK5qxs18Zov3ZiM5x6hvb0xOImMmhuYtqfv5pZWOQQ==
X-Received: by 2002:a0c:b902:: with SMTP id u2mr30352185qvf.7.1600394784512;
        Thu, 17 Sep 2020 19:06:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:16c4:: with SMTP id d4ls1033662qvz.5.gmail; Thu, 17
 Sep 2020 19:06:24 -0700 (PDT)
X-Received: by 2002:a0c:e904:: with SMTP id a4mr31964480qvo.28.1600394784056;
        Thu, 17 Sep 2020 19:06:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600394784; cv=none;
        d=google.com; s=arc-20160816;
        b=eRMl58GLD7nTiV1tuwU9nYtA8KI9FIAT9bXDSMOejZ7OUworA8U+SbeRmF/GtOyS/Q
         3cLe6la6VsbiHARXlGHYPCGpViAnR8yqJIbVaBltazJOSEOfrkEf+Ekh3fAzMRYwu4me
         rhASN2BY8VAVBeUgVp3AQLIkA4E/YJOhnDyHDxbIkDuwyxRSjBK5B4BYFBLqXJL4IEIt
         1EGf3Q0/HZYMeXcn+W0eKG7rlP/QiJvRIOt66YWQ5CLR0v1sQ03Xd/5wbNHN5ZcZkbDQ
         CnTM3ZdgFX36hGuBp9p9yUKaa2H6n7n+sxzuLHHz0MMjJsZQyq9ua1DNB3HpxsHslPQv
         cCAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KWqSG4Pwiufe8wyhkofvAg0RcCwcA65fVqj6mTIlCbE=;
        b=AmeUxhvJUXZIvyiXQtCKl+GhWp3STrrZlD/8P+qq/p3GgnJA+vBWsbOfNWad+NQBMR
         5seCLVvuoRw+hlFFiQ/2rHqbBTWgRcA9PQ7yIfZsoyDibRuuxv5gLb0GQhk6FHMsbAz1
         vWFi4gzq2cvKPlj0XvX2o39yUByJNMiMtzkF7Bh713qKlKEvdl3XJ6Nl0xg0bHPwIneI
         NTL026c4byOi+fG7BjvisoI2YfwdYXEYpI0XQbaOljPFdg1m/MVh0RB4spuluOmwgEVe
         sWlUy2UJKeweFE/eftu9TgctX52nbGfwFN4M60nGCSQkZW5UOxx4Gh9IBtYXUBAfc3Oe
         Aq4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Fzuem9H6;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y6si67058qtd.1.2020.09.17.19.06.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 19:06:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5AD7E2376F;
	Fri, 18 Sep 2020 02:06:21 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 255/330] perf parse-events: Fix memory leaks found on parse_events
Date: Thu, 17 Sep 2020 21:59:55 -0400
Message-Id: <20200918020110.2063155-255-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200918020110.2063155-1-sashal@kernel.org>
References: <20200918020110.2063155-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Fzuem9H6;       spf=pass
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
index 2a97a5e3aa91e..5fadad158db59 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1370,6 +1370,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918020110.2063155-255-sashal%40kernel.org.
