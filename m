Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBMOPUPYAKGQES2IADAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id D598912C60D
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Dec 2019 18:51:46 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id l4sf12823645vkn.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Dec 2019 09:51:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577641906; cv=pass;
        d=google.com; s=arc-20160816;
        b=B56/i3VZ0D2eLT6IkbYmKO1kdmoG4c8/IctcCWI/JQYA2+o82E3eKypCBzn3GXxSlS
         KANhJsbLg4UgSSEH/BW8/j1bUWaJ7kgbVsywpP/v6Op89ekBVrvcrpRVblgkcRfcjWiL
         SI7moSuGuzO2eosUQyoqsUkicVUFhYxwQfiQyz6Bte6qdrl2ryr9uI6YHSqc/Xcpb0KV
         3NmcyPPjKcNaKTsMlHAWn903PCUlyewYkvXPa/Rm0ChXphT0HgBu7LQp5BdCRoslSU8e
         5gZJ02Zhn9o2MToPfKU5kU97W7v92QYukvEg/qe05S3JkZPgIWSEi4Uma6XSqy0Z7qQT
         e0Hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=yVmi/f9yDg5dBPya+oohXdwArR+Tu0o4wrz3YwQyXOQ=;
        b=cab5x70PctyWSgZDUutfeT+f+uhM5IS5XEqK6IAQxITNTXQO7wMlnpee+3EqN3ClbL
         8EjjyX34ONxMf1nJv3tTDnTX8k+64YaAiCNo1Vu5S/kmdRphjexMev3BM9gWT2isSA3d
         RtNY2TiYeegeXL7H+9FdCzi/jfj2hB+Gd2PFmxAVkD63CajcimKG8i4EioBXD/GEjEIw
         NvSvHVseOLypd/yeiTtcIEigvzksfEMKCJrj+Qji2tiZi9s0VdyWiLsTgU86MGrUQX6b
         perZ4WFiQyLidRibRTyPhNyJpcMun3dJGKZw/+UK6GP+fBxgy7EATV1NlfRdcqnhea6R
         WPhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BVVXO7oh;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yVmi/f9yDg5dBPya+oohXdwArR+Tu0o4wrz3YwQyXOQ=;
        b=GAE1tInKr3VlXQAgfwuXvOmW6lcr0RLYOlvgS5ZPbyMoybV5Hp3YrNTptveYjdZySr
         Dv/tXu9JQRfP513Go3Ym6FgkG9MRXXasi2waAUk6F6ZB+pPrxu86kiAO45fdcrHkAQ1H
         Z+MZJM4mFK2L7Ht1uITldUEbYRgzlQHSOGoHhr9KQitCRdOhcc5jC36FbK7V1XKhqBUT
         hnZhP8GNfvguBLg9gjkPyJc/2BvnUOcOZx15RKgfLzR728V3xANzV2L8xYDeDJW7yNRS
         Y5fZ3DTIEtMQLVNYvnpPc5tRVLHWaNtisvP04arsl+cG65AYe9cDaXhrN24xqRGKe3G8
         cPmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yVmi/f9yDg5dBPya+oohXdwArR+Tu0o4wrz3YwQyXOQ=;
        b=pDzuFmKS9lz1CNnfwhpHexdLewXtkItBPD6mxF3ebWzf9MLKvYkMefdHndZ+QiXBAL
         /v1ZjZ+wp43Lai0CkR34QUgo8c5QkM9dmWM0uZuESFEtw46gw4a/+P30UgHOdLzivJYl
         qxAvDWxXRxmeg88vShbq2fwQrQ8z1V8zpaiUJGU0sarHP5cghr++XUQDUsMglXJBmfzJ
         qaOn5BgDYd+6HHHqYKX3zQKSjC3ZfKE/lD4iGmxE8MRKcW3QBjp6/8MLkB/s9E9+Rs89
         um8sJNRDaNFLMKZa6RJ5dPj7X7kc111xZQil35seVc/2rv6jKH3e4MDdC+I2G8f2aw3p
         Y4ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUywRHZkh9E3NAy/E7dP7gpAZwye3D4noL/AELazxa5aSYVh4Io
	DgRDeHnM9DtvWoyXJiQPsGo=
X-Google-Smtp-Source: APXvYqyfU+JNKPcmDRU6gl4mS8oZ52eF5HtfvnMeB8d5oXclLMAkFDClRdLu2/NcXhhVOJFaB8xuNQ==
X-Received: by 2002:a67:2e47:: with SMTP id u68mr27861936vsu.205.1577641905866;
        Sun, 29 Dec 2019 09:51:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:2883:: with SMTP id d3ls1642220uad.6.gmail; Sun, 29 Dec
 2019 09:51:45 -0800 (PST)
X-Received: by 2002:ab0:66d6:: with SMTP id d22mr35845687uaq.92.1577641905381;
        Sun, 29 Dec 2019 09:51:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577641905; cv=none;
        d=google.com; s=arc-20160816;
        b=UL5+HFNrInjGB8RjJ+KHwjubXbucLHWdP6xnMqKQKpg/jYkIo6fzsw+hLNDHZEiL6y
         1lZbJDeg2Ck6dviGvdv8jvJMT1rnwpeFTx37n3AOJe1iE42oQ9hsp24VyyZj3CXnQcYS
         lh/GdhWAt4fgHU+b3MC9k0ntdZXbxAM2fWYzKfb9CylqHwAbQbkOnKRpkxHWWw2csOgz
         X3t7tASuL1OWm8zQ3QqWibAl287Kt2DbKbWO9RFgDU/QqSz84GZ8NeN9y5N1OdKW2TGg
         pjB4feGlfaXJeSo2ZP1UXTBgMKqwZQOu8ZqDDuRHztkkOOQMY3WDMdQIhnCzNyBkQ2qI
         eZsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=lpiDZUrWKlcFVCDNczj3lCkZ65EXdbJauDDpykar0PQ=;
        b=ec85y8l0brEe0iH0huoO8DGdif6GKNuNA93CD2HS2uZg35q4+8jcpz8P85g2DKUWB0
         IpmxF+JwD56jPikbR5VkVO7ifgn8VzUEpWMjWBfvjk5kYKNgEMM4NfwGUHfx9oqhiLAe
         WXjcOFkl6tACn7TAkvzoAfCrOK4p8X0xvIEkJCF2X1Wp1k53G8F7iwvNsu/TZnaeLhI6
         gW4ZykFlAOTlO+nlysBOpwLyAWH3/7mYV05AaU6u3PJS2NEvPsW+Ew0+rIIQmSRHP9Io
         ErtsPom/PBvxvsuy4R4WnlGKU4iz41Iiz3PBKEu6FOULdvmglWR85rN77Z9OHHOPC+8S
         f3tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BVVXO7oh;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h7si1022008vsm.1.2019.12.29.09.51.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Dec 2019 09:51:45 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CF47A207FF;
	Sun, 29 Dec 2019 17:51:43 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
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
Subject: [PATCH 5.4 260/434] perf parse: If pmu configuration fails free terms
Date: Sun, 29 Dec 2019 18:25:13 +0100
Message-Id: <20191229172719.205964752@linuxfoundation.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191229172702.393141737@linuxfoundation.org>
References: <20191229172702.393141737@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=BVVXO7oh;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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
index d5ea043d3fc4..422ad1888e74 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1365,8 +1365,15 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191229172719.205964752%40linuxfoundation.org.
