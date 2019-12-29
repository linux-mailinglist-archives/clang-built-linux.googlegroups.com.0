Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB3WCUPYAKGQEG22NALI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A7812C3CD
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Dec 2019 18:25:03 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id i123sf7992082vkg.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Dec 2019 09:25:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577640302; cv=pass;
        d=google.com; s=arc-20160816;
        b=rud6e1L9A7QMQBTiMy3jLXH3vnpdCdMvxrSwkzoP1aY1HxDoOhspZncJ3UfZfk5Eb1
         yuigXsJb+fqxnSUtALOlhCuQtVBjtLQw8aNxLQ6z/55ucwImotDfpDQpBmv3aQCx61yo
         9Pzhn7+HyKhaPtfQ60X04t7LTAGerhNaKO+CU/WzD9zqLpva6wdrEzQLW2k5/LgbhCOy
         qDdbnqgxBh46mR9VJHiDTXlIzdqKEyokRpDrFiu30e2yxce81Ljm1Y9ddKuEUtbyx2w3
         NRQRLBIgB8k0ilFFkOAJr2Xt5SUY5bujkponkf5bJfaqQfVtX6tb0+7it5QX2/rhsRxR
         PW+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=TVF8KExIWb/RitMaeqjFIhTADx2i/2lleG2uGShZih4=;
        b=yfG75TrV1WP0P9VjFNwPFkSNs+v9slie9DMKnPHovO/QMl2iFvQUJ0Kw1k4EUkSYWr
         LXOPyDiFub7v1WdyLqhFl1OBXW8bkH/WnEateVLkA4qNEoHbgtzLLuz40Q5O+y6hQ/i8
         NQgNoPdQCy+XLebKXcBY4va8V67U4cCnsQmJF8beoPYdUnA+jJ8pzDu8sIftzVHm8DBv
         SM0/3Bgo5mXysjQziJqeVOa8xD/GhQ2QZRXGIVk7RqA7bpDE7HipMs/NMX3wXoqBQfhM
         cpb+xIZvdSOVrHyOHB1xzPXsn3LH91D/s98INokW3bdDn69tYg/SeHIYv8UgZTakgThO
         Kt3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1fREwNGf;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TVF8KExIWb/RitMaeqjFIhTADx2i/2lleG2uGShZih4=;
        b=h8JbXx/kckQUL0xyXvf4yUN/Y+ENMNA9PJS6/MapU+P+b87QyC4UqH3sz14eQghz2q
         wOzhrVhiiYz1+zB5k/LHpZVXvhhGH1nk5IUHrqQKNLuiSUe2D6+gmxOxLOHXLuqNVnUt
         9GPGi/zcC7iXTDZvUv8vf/ZtMpf5LXPK+8Sjyk9Jlmljb+LMb0OQ8HFUHNeVfvOlYdZQ
         VDik9bTMF6jPonqQMiJVpjjj0tU1H6QSkIiwiSRabrIZtXXutQV7GKpprMfskIOm05kp
         VNfQI09E6kNmF2XY46EF580D2K1sfan4GyQusKUadjMZjPbFVfcxmic1iowh/NXFf/d5
         an7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TVF8KExIWb/RitMaeqjFIhTADx2i/2lleG2uGShZih4=;
        b=dsgqAVMw9jPxfqooXRA2T/PTqZwACDQXQ5beF79CadxbGaWJiYe9u7ymofbdHGT5it
         o99GkQgt/SxS1+SlyDG7yZnYTf7L8VV1TK+/qnNoL+iGh9AnVSMtrrNOj04yMfOJYH8e
         1RYIEU5bchEt+DhjMouA3/ZJTkiNLSlYUdvdbHDfeDC1uvbGGk9RTTjuW3C6USXMpy+Y
         rzeCG4n7U1o6O2oUNYetgDhXITqaAS7lWXqmvZyWLikRZzGhNiSAo19bFnEPfPp5L36r
         5yTompyQMXR257FNTMhGKBHeVnz80bTYFUMMoCL7n82Cw3vMegXIUDbrWuBoHwLrkz1s
         Nu+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWjZOcJNRHUxyQL0zwKP3lxhukDBhyVnMnLYdyWGY2QcB6l/rKj
	xPfcgaZIDtnm4Hy9Y/H59A8=
X-Google-Smtp-Source: APXvYqxFvIzcuKr4ZPNKVgXH6aPs7vzpDGxUQEnRq70WI3duSuZvuGmSVwUv9ogA79lbFEMfDdneVw==
X-Received: by 2002:a1f:fe45:: with SMTP id l66mr37029553vki.9.1577640302560;
        Sun, 29 Dec 2019 09:25:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:60ca:: with SMTP id u193ls1212740vkb.6.gmail; Sun, 29
 Dec 2019 09:25:02 -0800 (PST)
X-Received: by 2002:a1f:3ac9:: with SMTP id h192mr36929459vka.55.1577640302117;
        Sun, 29 Dec 2019 09:25:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577640302; cv=none;
        d=google.com; s=arc-20160816;
        b=rEJaq0g/UYoazInANhLf5ZhsOPUvgUfCtwA9rLqDYCGJGJjftsxlVp/6o4thMxQoYR
         OjKKbK7fGOmnGPSbAuSMgyOG6MoZiVmHz9CsCCSeR+OuouUL1bLUoUzcmTnQcL3DXyO0
         noNgHthHw5MBVf3TXmsuAkPUGXqoJ0Kb1euenCfDjT9Atychkqso/cqnJM0OZghElyfz
         ojv+Foy9CPBlFsteGfKXFD7zKG9iCzGAkp6xywdXv5Vtajf+2im6pG4GDdBEWrNbecqD
         0uGmhqzuYPTDJCmu03IiJniU72ZRLbh4gPFYxVnIbK8uR7PG8lh93caQEL+AFbCEM7/h
         nn4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Et4rCWQXhmYQ5T2h6oMJsMSca+D6jKDg6ilvNMof6p8=;
        b=es+YGf/acAhTJmojGoOn41QW4hZ0amsSo8NVvwoxF7LvqrEoesFd0UEHs/AuqUKljO
         pHc4bvfAnlMy5Qte8nxpjoD9AbZXoLePDNAhjS2tLBLWW4dMhXhs0w6OXUOEK+kbGyRF
         TxiAby1RFr7H5iIB1S+AIeuAXPTejnTcZRmp05Mysh8TRkrHoj5Xh+IvVaq6DG735uCs
         P8P0UKi2Ws1mIdVQg4BfeB5hMmpKkzlQenrvFxPNwgAvtyh9x1Jw/yIvdOD+z3SR7bH5
         J7jqdiB9E1+eg0qbV+Vj4/xl9jF6q5O5yXKiJfruW/7FqQNH9wfB/TOrUPNKNUNjlgmF
         cOGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1fREwNGf;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x127si1623944vkc.0.2019.12.29.09.25.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Dec 2019 09:25:02 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A1A92207FF;
	Sun, 29 Dec 2019 17:25:00 +0000 (UTC)
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
Subject: [PATCH 4.14 101/161] perf parse: If pmu configuration fails free terms
Date: Sun, 29 Dec 2019 18:19:09 +0100
Message-Id: <20191229162427.034921434@linuxfoundation.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191229162355.500086350@linuxfoundation.org>
References: <20191229162355.500086350@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=1fREwNGf;       spf=pass
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
index 29e2bb304168..096c52f296d7 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1253,8 +1253,15 @@ static int __parse_events_add_pmu(struct parse_events_state *parse_state,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191229162427.034921434%40linuxfoundation.org.
