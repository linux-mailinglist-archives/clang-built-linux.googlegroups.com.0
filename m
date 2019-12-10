Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB7E6YDXQKGQE53TBY2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AC01197AF
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 22:34:53 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id z12sf2963131qts.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 13:34:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576013692; cv=pass;
        d=google.com; s=arc-20160816;
        b=iU7RkN63nN3IhfHsKpRQgkO8ciUvhTIRyWrO+D9uBp6XP859Wr7snnfePRySbW3NoD
         aRYp1W2f9+dtQLeXaJDf4NchLVQwwDZyoUxBfgKalqi/XltEh0VGQll8EEEofi8OrxZ2
         cg1Z3XkPZsuJeRwIDeHseW1R11yfatM+UATQkuzZzOiQqP4QPJl1pHEPVZkMEbzny+WT
         FVQxddeMOwlQlKbJgKzTxttgkgQtsaC0ia0O0p8dvc8c64Qq+YwJAHt3F7KlnGF/xKvF
         6ri7p6jreFFp26MNKkAMrWFOqJTL6ssrQ1dM0Bea5lbMG0/OG9ENaQU7gGbXYbETrAN2
         27fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=W/HhF0OiXJ3k/AZ67O/KFBKlNmO5xkGN3zTGejjuCL8=;
        b=jkJSdCdyToI0Dl5TR9Ucg/5a9SzqeT+q80ahiBjJ7KAuS2AfrV89/AqZcgMDqSg0fC
         v8tSMFCR9UvE+CkCLpKkF9P1q+RTb30Ch+Czlmc0hjOc31Mpfrleb9GBq+lGcjdMGpTc
         yvb5nYiqZWuBvYTa/XERoBU5mzTOOsyUGpg/VzyO3h8gx3deTAClJpy9eWeLQttIZjPt
         rYFanaZD09xC+1fYVsZ1iXUD5Y6NJPeI6NrvG3ZgkQtGr9FTKehVuxdQsBv6FAAGGHGh
         HyAF368H27PiMIGqlWgG063H8G4aTPu8/epH6waBoxaWXZOvveGhJg+Fl3PeeZOFya92
         5Jeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pKWnilAV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W/HhF0OiXJ3k/AZ67O/KFBKlNmO5xkGN3zTGejjuCL8=;
        b=ArY7ElHnJkOAW8orESHsdf8RBbqU/N5T59418AgeiTekvXzkFM/zxo9OJ8o7o+uug5
         /W8vQGRz3Q7qbH1fzW83RSDpWA2K/4Ia65Yf2yU0Eh5iik5x5Q8nZvuJ53jzicGrqySy
         2jDg1bLjOaV/20BgjiZdjZ5vQDRNmFQdErtr/x4ccbrlhKy38SUnjlE5SKMMd3El2Dwb
         9imwrDOAotLpjpqqmkhtywjwAmesca+OJjI5wGoMsGdnQvnYycYrVgsNI3qfNSUxgEAW
         D7GyEiwfcvYAScEMBff1HRhYnppouAxuikjgGhPji4EEmdC8ECOKA4NWl4lxW07yXaFB
         60ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W/HhF0OiXJ3k/AZ67O/KFBKlNmO5xkGN3zTGejjuCL8=;
        b=IxU34vK+wFu6V4P8gV27TwEMKF8yhte06NIGfVZuSekGaAZ1xbymGo9iF609Jcq/dA
         +F/GP8k2NuPjcF5InXTg0GvCpOXo5p+egw9KEMdsko81gCzyZe3YgVkei7w+Y8+n5UG0
         t0N2/PeWqyZmm9HQVajfn7h6wUr7vMHVznxOR80uGejzGH+ck8jm3w0Iy+mMGje+uWnZ
         ONQxC9/wQ1MQ7eXfv5U4MeD1e2XeOHWxC28NQXanpSHvO4zPHIwjPE2YmlSXwL278fgq
         jFiVWFBeuVCLMmoIXzKIDSn1El6IxMEv4E39vhemuam61J0XM5xi4Jcv7WClpWE1eEs5
         4shQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW+6ZwJpaL4WzkM5TNtKXOpL0JhqqSQu3bvMIpnmdxzNB/1sLyB
	atrQ9rcHxZsnmSegoXaqDu4=
X-Google-Smtp-Source: APXvYqzm5n6i2DMiDLeYhyExqQ4rKewM940WrXAe00+5ddqMFMCFBZdT1z5b9XflPG1K2T+XLi3KSg==
X-Received: by 2002:a05:620a:1183:: with SMTP id b3mr12315806qkk.316.1576013692617;
        Tue, 10 Dec 2019 13:34:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3443:: with SMTP id w61ls14325qtd.11.gmail; Tue, 10 Dec
 2019 13:34:51 -0800 (PST)
X-Received: by 2002:ac8:c4f:: with SMTP id l15mr32174134qti.177.1576013691432;
        Tue, 10 Dec 2019 13:34:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576013691; cv=none;
        d=google.com; s=arc-20160816;
        b=1LxSSGGcC9k9hGUwPY5tMp90QmKgfRxSy/Btlwggow4n2BNTpzqyiypjyJ5O6I/nW3
         d7GEld1YNVnScAovMrrLly9zUOl2SWirjkLmJ5TH6/UimsWDNyUQ87BxKGq13ClymCRo
         Y8dAUa0DW+tu9r9/Oaw4GwZ2PVrUwBK+DjGNxMKM/5RLt7H8Qj0ekIaLiohUR5L+qwYS
         x4S5tj2nEB0XIEO4CtvWn/FA2enI1SU9THudmdBtIlE4bMaZCNMTUWuhKG7tqPLTVvjA
         56RlC+QqdlhoRmBmTlIPrsaxcqVvqn4EeVzIYfH00ldwoRuQ5ffPWlzueqN2oPGIg4CM
         r22Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wSdYydkLx5tyP4wqEwm5sBKpIwWMLdsgewGXP72Cle8=;
        b=rBM/tsvUEhMCMuX58yfwDeJRwoeBtK87R3jUDMIEY5pBxiTCh1DHkybJGgNxEOPfl+
         ebV8hmKJorsllkgMhtiTo104og6GGIJQz0z+/duWiqMKaGLdN9tymZo8UH45G8QJiLuB
         dQr5E+iD64nw/TR+ZvmhMi7skrVec+76F+X+vY655Wei1Mmoowrjxi6D1fzGmChXdlGJ
         sG9+F8LFlEqXUJ5qTKFfmpEnB1F1kzpB2mAU9Ywy83JfGFcz1QJAUflyAzjEolsE4E//
         M1kbON5BfqkKzghNgiJp7oATafPWjYJz0dGRceWPd0peOhzV0KhcSqHPXkksaOwcMMk5
         E82w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pKWnilAV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t22si202894qkj.6.2019.12.10.13.34.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 13:34:51 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5A404208C3;
	Tue, 10 Dec 2019 21:34:48 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Ian Rogers <irogers@google.com>,
	Jiri Olsa <jolsa@kernel.org>,
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
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Song Liu <songliubraving@fb.com>,
	Stephane Eranian <eranian@google.com>,
	Yonghong Song <yhs@fb.com>,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	netdev@vger.kernel.org,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 4.19 121/177] perf parse: If pmu configuration fails free terms
Date: Tue, 10 Dec 2019 16:31:25 -0500
Message-Id: <20191210213221.11921-121-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210213221.11921-1-sashal@kernel.org>
References: <20191210213221.11921-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=pKWnilAV;       spf=pass
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

[ Upstream commit 38f2c4226e6bc3e8c41c318242821ba5dc825aba ]

Avoid a memory leak when the configuration fails.

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
Link: http://lore.kernel.org/lkml/20191030223448.12930-9-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/util/parse-events.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 7ea1a230e89d0..95043cae57740 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1282,8 +1282,15 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 	if (get_config_terms(head_config, &config_terms))
 		return -ENOMEM;
 
-	if (perf_pmu__config(pmu, &attr, head_config, parse_state->error))
+	if (perf_pmu__config(pmu, &attr, head_config, parse_state->error)) {
+		struct perf_evsel_config_term *pos, *tmp;
+
+		list_for_each_entry_safe(pos, tmp, &config_terms, list) {
+			list_del_init(&pos->list);
+			free(pos);
+		}
 		return -EINVAL;
+	}
 
 	evsel = __add_event(list, &parse_state->idx, &attr,
 			    get_config_name(head_config), pmu,
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191210213221.11921-121-sashal%40kernel.org.
