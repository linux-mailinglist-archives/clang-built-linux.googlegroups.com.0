Return-Path: <clang-built-linux+bncBAABB35T52FQMGQELYUHMSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4AD43F77E
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Oct 2021 08:51:29 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id 1-20020a9f2581000000b002cb26764ce0sf4743366uaf.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Oct 2021 23:51:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1635490288; cv=pass;
        d=google.com; s=arc-20160816;
        b=ucf3LGGYJtnF9HADwtlBDxGRbye0txsCU4vc9nwAm312x6KbsvyBaI5wJq9wB2jcM5
         SuuxApLundHdo/EGw4OO9tOPA0RLS3iAtUtyuyC1af1ySpyO/8HGDIGINsqmJdNYWqkx
         Qaqz6N8ih1sAwv5gdOvVcLQK7ib3jwi90KmZ8iQjbXp7QM+Bg9KxwviRI5jyE1QqF+aF
         mGL+MGV+1b4HqnxdDBjbnF0Tf91ew3lT8h/h1EvvdnEdDHddxgk/9rpp3wVBuMLwnIro
         MbgSnvCTi6E29sV6Erw4TLguR1SA0sALHBfM1JPGMdEWKvgaETtLU8dwabscqfemePBy
         kKlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=TpIZ0C4bFPLDLakG/tX0SGwX256uvfP6AOP/KhS67bg=;
        b=shMALw4wGwPkeEqkOEYQYMlulpZbV4BStQC51L7cLpKq0EU8gTvdaDW3nq46EWiLTZ
         vqQ6q7aZiSGcWhvSiXdHKGQVOP5PG+2icI260lUGda1uxINxDgj1rn1DehUdf2WtFrWl
         F0dB8uQoNilNeKd2TAzRJTmw3zU0287pO97XrnfItvNcWh/SS5pzcMmF9Abd3Lp08n0U
         eysmWf5y1cAcZyDNOCilrgKlXDNrroEe0oLqh2jV/vHBifHsrBNtfCXtMgxrxyUeFyLl
         WuorWYQKzrgGWHBM1A/QW6AOVYAfBgoobJPm0BonPcU3nvjKjak1V9H8NPDcFKnHTGFj
         w/oQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of shaolexi@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=shaolexi@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TpIZ0C4bFPLDLakG/tX0SGwX256uvfP6AOP/KhS67bg=;
        b=DRM79Ym8kEyx23tOOhyTCAg2SyI2jlTqEYyq2CJ/c8qIgVePOiunF0pTOOlp4CYYP4
         FueH7+NgbK6SWBwG3ROGHgU4Om2/1EUXqKhrY/Yxp7AJRd4zeCHmq0e/CM6JiuoV/8U3
         2Q9aOIcjV98ezIeTFoahI90LB0T0F7NtV+rKWlbIQcyXSDxQcB8qdqQZxGsnqmRBR4Jc
         BMwgKZViOeFpqBn12utmQwOj7PGL+2iMLrZv3TqfA10KOrgsqZMmErJMDh6qfBOOZ8S3
         NrgIzHzuKnXVQSMibrn3SS9zdtHDk3ApJlCP8iWUBZ8Fw3hMajNJSX1TEHTtJKDJ1fpK
         cAAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TpIZ0C4bFPLDLakG/tX0SGwX256uvfP6AOP/KhS67bg=;
        b=1+kT23qwPqiZHQJT8U7SatUOodV+yrwL8RQxMQjk4V0x+Y98KtZiqHmhpJ81zJmImU
         b/Agg8oaEFgCGe5NkWCaehaGK3GGbmXSIhio358E97IRedfIH63gfRQqNDen6Kl7E3W3
         Mt9vZI3xp92uXxdgl2/x+NCHk4W67OqIctDBvnjiOgaA4N2e19FGJT9i28QFTAxjSJpi
         JCtTIl0NUGqajrTci42X6dMDfmnrc3VnL7iF8Hgk/AzIjjBeXXd/3SRuS0aQeV5O9dIC
         I9Z0CIrpjyUgKhRm6XJcFUro2IdcpZ4dD/A8ms8OiQN/RHDDdWO5Ec+K+h1fXZBkt5R3
         4Ndw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530l8wp/ehHdTpr7a+y1dGqr3h7BtbmWOB+kNYlPw2ctBUPPZnco
	JCjQ7+W/EAxRb8lS6u2UVek=
X-Google-Smtp-Source: ABdhPJxGjCr+zsbt4i7fqB/7zn3SogMrIuT58ADnFwBBwuESTzlOS4PQa7l1SdZnQ3fZkQvP+WZy0A==
X-Received: by 2002:ab0:1623:: with SMTP id k32mr9913955uae.71.1635490288071;
        Thu, 28 Oct 2021 23:51:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a88c:: with SMTP id r134ls680286vke.1.gmail; Thu, 28 Oct
 2021 23:51:27 -0700 (PDT)
X-Received: by 2002:a05:6122:48e:: with SMTP id o14mr10049563vkn.18.1635490287571;
        Thu, 28 Oct 2021 23:51:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635490287; cv=none;
        d=google.com; s=arc-20160816;
        b=XAqqOfjv2p4ZZHaQD9Kxr4tH3CPCSI/B51nGZZ3MzWx/0Znf6dvDKk2owsMJjgUh84
         VWiOcsoQ/h+gCuku2T9nr1uc5wKwBOxOxixnkPev61jjAG3BDPh748jYKUcJgHzyXEC1
         KNpoe8zENm6T43amohLxuXRkSjne1z8uzLoPGztRRIc8Q55zTPeM7/tfa0ZZPjwYcdGo
         mxU6cCWb4VwtDrjE0mcR4Fy5Nhtiscsz+PJUG3kSAZ17NL6ituOmUmmD/8LPYx8VQVzS
         6xPTHroiCM0zLc6lA6YBC03muV0w5RRTtbUKYiTGcs5N3zFnxyhWQb3Ul661ohEySTJ5
         mgGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=gTeWsIJkJ1LRmr4jFrVITDwG5IX/lqRAW6O2na/WCwc=;
        b=yXb1pdjssyPJk4PoX8ahqJsi/m6L4SzWirJSjtOclYPyjBGqfw5j9ZAqfe8IoWZY4X
         EOFsZfTiExah84Gax0xLGm9tnF7hEwsHvzigYXGb6Ba15Aw/5miSra8Ztk1zVYy4AYaz
         FLirykGCNZowAGg/fTJfupbDR6KsTLqEyA5L0Ccljc4Kqp2ZJDC4YptCLj3iSQTQ06/i
         bWJ6fSauLolh9UqIS7YcNRYJcoSzj5lgzD3j4Dj5mSILCxjFmUfXWBnYJCEkJV7R+nrl
         pIzfMw5gVlxat7J3yg4z1yoAFzuIxwXWIDp1qtZroZtN9j7uGGsBMEMZOPTBSjfNHew1
         NMyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of shaolexi@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=shaolexi@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id az35si579104uab.1.2021.10.28.23.51.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Oct 2021 23:51:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of shaolexi@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggeme762-chm.china.huawei.com (unknown [172.30.72.57])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4HgY3Y6l10z90CJ;
	Fri, 29 Oct 2021 14:50:49 +0800 (CST)
Received: from huawei.com (10.67.189.2) by dggeme762-chm.china.huawei.com
 (10.3.19.108) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.15; Fri, 29
 Oct 2021 14:50:54 +0800
From: Lexi Shao <shaolexi@huawei.com>
To: <linux-kernel@vger.kernel.org>, <linux-perf-users@vger.kernel.org>
CC: <james.clark@arm.com>, <acme@kernel.org>,
	<alexander.shishkin@linux.intel.com>, <jolsa@redhat.com>,
	<mark.rutland@arm.com>, <mingo@redhat.com>, <namhyung@kernel.org>,
	<nixiaoming@huawei.com>, <peterz@infradead.org>, <qiuxi1@huawei.com>,
	<shaolexi@huawei.com>, <wangbing6@huawei.com>, <jeyu@kernel.org>,
	<ast@kernel.org>, <daniel@iogearbox.net>, <andrii@kernel.org>,
	<kafai@fb.com>, <songliubraving@fb.com>, <yhs@fb.com>,
	<john.fastabend@gmail.com>, <kpsingh@kernel.org>, <natechancellor@gmail.com>,
	<ndesaulniers@google.com>, <bpf@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>
Subject: [PATCH v2 1/2] perf symbol: ignore $a/$d symbols for ARM modules
Date: Fri, 29 Oct 2021 14:50:37 +0800
Message-ID: <20211029065038.39449-2-shaolexi@huawei.com>
X-Mailer: git-send-email 2.12.3
In-Reply-To: <20211029065038.39449-1-shaolexi@huawei.com>
References: <cb7e9ef7-eda4-b197-df8a-0b54f9b56181@arm.com>
 <20211029065038.39449-1-shaolexi@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.67.189.2]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggeme762-chm.china.huawei.com (10.3.19.108)
X-CFilter-Loop: Reflected
X-Original-Sender: shaolexi@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of shaolexi@huawei.com designates 45.249.212.188 as
 permitted sender) smtp.mailfrom=shaolexi@huawei.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=huawei.com
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

On ARM machine, kernel symbols from modules can be resolved to $a
instead of printing the actual symbol name. Ignore symbols starting with
"$" when building kallsyms rbtree.

A sample stacktrace is shown as follows:

c0f2e39c schedule_hrtimeout+0x14 ([kernel.kallsyms])
bf4a66d8 $a+0x78 ([test_module])
c0a4f5f4 kthread+0x15c ([kernel.kallsyms])
c0a001f8 ret_from_fork+0x14 ([kernel.kallsyms])

On ARM machine, $a/$d symbols are used by the compiler to mark the
beginning of code/data part in code section. These symbols are filtered
out when linking vmlinux(see scripts/kallsyms.c ignored_prefixes), but
are left on modules. So there are $a symbols in /proc/kallsyms which
share the same addresses with the actual module symbols and confuses perf
when resolving symbols.

After this patch, the module symbol name is printed:

c0f2e39c schedule_hrtimeout+0x14 ([kernel.kallsyms])
bf4a66d8 test_func+0x78 ([test_module])
c0a4f5f4 kthread+0x15c ([kernel.kallsyms])
c0a001f8 ret_from_fork+0x14 ([kernel.kallsyms])

Signed-off-by: Lexi Shao <shaolexi@huawei.com>
Reviewed-by: James Clark <james.clark@arm.com>
---
 tools/perf/util/symbol.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/tools/perf/util/symbol.c b/tools/perf/util/symbol.c
index 0fc9a5410739..35116aed74eb 100644
--- a/tools/perf/util/symbol.c
+++ b/tools/perf/util/symbol.c
@@ -702,6 +702,10 @@ static int map__process_kallsym_symbol(void *arg, const char *name,
 	if (!symbol_type__filter(type))
 		return 0;
 
+	/* Ignore local symbols for ARM modules */
+	if (name[0] == '$')
+		return 0;
+
 	/*
 	 * module symbols are not sorted so we add all
 	 * symbols, setting length to 0, and rely on
-- 
2.12.3

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211029065038.39449-2-shaolexi%40huawei.com.
