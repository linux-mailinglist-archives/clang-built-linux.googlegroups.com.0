Return-Path: <clang-built-linux+bncBDPPFIEASMFBB2FOSLXAKGQEEYUG6DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DAFF3B0D
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 23:15:05 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id y64sf3267017ybf.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 14:15:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573164904; cv=pass;
        d=google.com; s=arc-20160816;
        b=WkiOHTqsor0rm3+qiSW7dbnFBrOpRjv7s7R1FhTZTTXlhhWANacCX26ji7hyT2tV+c
         Tdrd0TvBGpNvidgdzhrLnNfbz/rYM+vHPzWakbAmpvDLKhVegFklNAelwLtiX9iM1BCk
         7jf7Mcyx1JjWydMzB5Blyiye5UelJLn2afEU7pMEonedRdkj0f+vO2oVELwL5xDN+wNV
         YU/cFNzBV8aswcm6OokDeKmaxaL5FQQac8uRYjogz0iggogPl4ch3QkehjnSltzf43JQ
         ARDYpds1ROxiq4me4x2a36hCFqW94N+WzIusUI/k0LYudfn+YbExUM6p2wxAnGJy6Nmb
         DdkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=FO54WKvyodhOc1vnWSxMYwi+YxO5n+ymfKB5crl7GwA=;
        b=L+cVcjKD1MEPBA3WPKNjadwXHPziXWnUEYVkCC3PUxsokMQXk6Bj2yXy53CQSXd44N
         ULhGjYt/iw72HNq5uhAyGgXDPgafJKjPDeQYtVr79BbOF1QvIByB5WM3hrsxvvwDTAEz
         T9/MBoerdkwv68q2xmjrb4XkEEwNysu9nLIv81HQPRBsK2CE7XwNurVGQaO/ORtNqarz
         sBzjbDPw76ulprPRBlkKzTRiNwWoJYbuqgvN40x3ZmHBbpbjafmCXAPouFoM77epufA1
         83m0T/BkL3e7eQwiwgPDvo6bCgLO45IAp7EciuWgHmdPFxOFwzbXDsDFwbiRiseNOUKS
         Xnhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jrQORgPz;
       spf=pass (google.com: domain of 3z5fexqckezwenkcanockkcha.8ki8h6jc-7qehp-hejqtckkchacnkqlo.8ki@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3Z5fEXQcKEZwENKCANOCKKCHA.8KI8H6JC-7QEHP-HEJQTCKKCHACNKQLO.8KI@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FO54WKvyodhOc1vnWSxMYwi+YxO5n+ymfKB5crl7GwA=;
        b=V6/sHtSw3f606AV8Ees3gEDIRsBZMDJLZ1T9o7lcdklhcZoYAnLosGpyYgqq2a/wsV
         jczDp5uh9FRsxozXqyCxis+ZBEvBwstbc/KyoHVBcNd7tYhDMUUXsEEXsBZcGaNFLjtq
         FG2Ayn9wOKMVo7Xq11sjbM3+4uiHBOC6SsPueDbjirgqQ5EvPRL7/GA4PcnGNhYZbgHj
         JpuEXiTi5txkR3UE2usgyVd1NxE+J+zKpy/4X+FDfViMwnrGMCIvqitPY0rC9jUEW/7o
         P1t+ZJltdp1KosX7eT6ayssDfCMF0017VeCSwBvMoTAANzlkQl4KlbMxP6Dlz+ErrHtV
         TeXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FO54WKvyodhOc1vnWSxMYwi+YxO5n+ymfKB5crl7GwA=;
        b=iQVSkGSitFBGDlxS8vI+Zx9AS/yOIU+K2Xq17INMCY+zb1xOkniA3C3RqfMfqEYZnb
         jtVpHo5lCBhC1ZTFAJMePSTQ+pcBMRq6aQiDF7zxSgU/0bG/MGzxuzsSl5V13PoAnzZq
         Jp/1lBQCTJzXSbGStmQ+VvZXsciDp2Yi/ZFiQEP1gm9XbqoRGuIZCFRwBi+Tsv31Dm+L
         FuGX7JzkT07o/1QInlQXTak+H6pX+IlYxTbf5My+/eX/M/wUJcbYNOxjsJTJTgBIFGDH
         VLNhPiYv2K6LLEa0s/lZgKUgBwi6dIoK+bqPIX6RrDkItON3nycn5Tm/fyZYEqVVGZju
         xiAQ==
X-Gm-Message-State: APjAAAV9CvnrIueLVOe+FXiT0AzJbkkoncy8yYuwNDcYK3fdpV1P5D+/
	AUMqEciFcaN2lxdv51JHpV8=
X-Google-Smtp-Source: APXvYqzEDVt8zEPtZBPiw2J5M4qpcy+zuVLbdKbtdlw8CdwIAa/7i2sr4YrX/y17n/2g4Ve5u8QStQ==
X-Received: by 2002:a25:c8c6:: with SMTP id y189mr2541619ybf.421.1573164904795;
        Thu, 07 Nov 2019 14:15:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6c89:: with SMTP id h131ls1386481ybc.16.gmail; Thu, 07
 Nov 2019 14:15:04 -0800 (PST)
X-Received: by 2002:a25:cb09:: with SMTP id b9mr5461573ybg.294.1573164903983;
        Thu, 07 Nov 2019 14:15:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573164903; cv=none;
        d=google.com; s=arc-20160816;
        b=fJ+nepzI9ZzO1RF9TcWbS6iY1v4UQRSqsmArw16TaAhlAqXD9XN0khf4H1DltDfQNp
         bNGsvK2Niq0U1fA8k6aPQ+vvLgnHD50VVnoFVZ5Gv1IsXuEmt4qYPWo3S5P8CdGjvW0O
         MEnToFupAdTTlFv+5Njzp6Hon2j9jG/rHUqbnqZ48O5qgvJdx9VLmcfKvYVeIZya5MpA
         v62HS/iKUdK1OEE63clvVJSKA/kRmBYyGKcuFTX8Ab5LxaA2bWFy899jiUyYJHUboIDT
         ILYUE9E12PeBCPwFaavv0CmZ92wEdtIskHxStu9EqeaZ29tgz7KlrR+s8bGO+ahKB8Tx
         gIMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=AdCqemr3Cpf7H//3sUI2jx4nwjMA/tcTnOzbDM/nvC0=;
        b=PwE7NiTOasnXdpm7Hj0ycdrtPO0g9f+BKqM3zCitjJmrxrLU1G4MH/FzmeBz7YbdxJ
         xr5krz1Uv/MgA/TGqByiJ3/aTqhtrHZOCiRrxiJLWxBirpBICB7/KRztojGZlO79qWC4
         xh5thlpuHCwMccXvHxP+KaXbVs2B7h8rHH2x8GbJe3wDXOZlZ8skWU5o90o7yg7fmngI
         MhspQsna3ScjNTpBkj7B7IiqyJKTAqi7gxtwFMVtJTolAyY924mCZ4kBN5Ly0mI23mD9
         JQNg4ApA/VNIwn1kKkTaPb2HOqEdrhyX0bgSJQm6LsAOyVCsWRMazNCtH68RXA8uZtC/
         YOww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jrQORgPz;
       spf=pass (google.com: domain of 3z5fexqckezwenkcanockkcha.8ki8h6jc-7qehp-hejqtckkchacnkqlo.8ki@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3Z5fEXQcKEZwENKCANOCKKCHA.8KI8H6JC-7QEHP-HEJQTCKKCHACNKQLO.8KI@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id 5si244885ybl.1.2019.11.07.14.15.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2019 14:15:03 -0800 (PST)
Received-SPF: pass (google.com: domain of 3z5fexqckezwenkcanockkcha.8ki8h6jc-7qehp-hejqtckkchacnkqlo.8ki@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id g186so2986354pfb.15
        for <clang-built-linux@googlegroups.com>; Thu, 07 Nov 2019 14:15:03 -0800 (PST)
X-Received: by 2002:a63:5848:: with SMTP id i8mr7445484pgm.217.1573164903292;
 Thu, 07 Nov 2019 14:15:03 -0800 (PST)
Date: Thu,  7 Nov 2019 14:14:26 -0800
In-Reply-To: <20191107221428.168286-1-irogers@google.com>
Message-Id: <20191107221428.168286-9-irogers@google.com>
Mime-Version: 1.0
References: <20191030223448.12930-1-irogers@google.com> <20191107221428.168286-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH v6 08/10] perf tools: if pmu configuration fails free terms
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
 header.i=@google.com header.s=20161025 header.b=jrQORgPz;       spf=pass
 (google.com: domain of 3z5fexqckezwenkcanockkcha.8ki8h6jc-7qehp-hejqtckkchacnkqlo.8ki@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3Z5fEXQcKEZwENKCANOCKKCHA.8KI8H6JC-7QEHP-HEJQTCKKCHACNKQLO.8KI@flex--irogers.bounces.google.com;
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

Avoid a memory leak when the configuration fails.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 578288c94d2a..a0a80f4e7038 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1388,8 +1388,15 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
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
2.24.0.432.g9d3f5f5b63-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191107221428.168286-9-irogers%40google.com.
