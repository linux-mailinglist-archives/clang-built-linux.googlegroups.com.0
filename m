Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB2EIWLUQKGQE24LNFCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6691068C17
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 15:49:29 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id z1sf10255711pfb.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 06:49:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563198568; cv=pass;
        d=google.com; s=arc-20160816;
        b=HmWyoMpM1/r7o1dU4ZYQlLVe96kvegFJDEEL9BpZnkgo8Igb09BQTFSdYrOlK5lTu1
         XNSygmIsS79yoUmf3RWAlyBPWMaMpvu3tEWw8E9MSpVoJqffcDKyt6EeZijkSNNTGlKY
         EMdUtCw3IjpFlh1wEeLKNhjePgxXLVukGOmyK1xybTCXFOF8NthrHvNv6k1ISvc5U4kq
         AhNuKbUO5Op3y4H5oFl/OLK4zIIQyATzTiH2tMsslN/7Jy5iReS8Q6+xxahOk2979Wex
         6cDl+p2zWKAZEULX+YC5sv7FV6p8MUrzmvKbjr1lPtH1AbGDdfAg3d/8J2tJFKCeaDZx
         FPhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ZgMPoOpwybA7P8CHHzOk6LqFnTONtyJUK6daH5iHYXM=;
        b=gWAe3+dE191aXIHcQd0X1VJiLDmPJwEI4Mgk9dN1LoWrImEuzT+C5MPR8c0t66chXg
         avepjYDZdZEMnpeh2T3SKfEqTTwxt+lMhVsSN1vz7IzTs0fIp881U6kkWoux3GY9M98h
         mpt9SSyToG4Jlhr3hV7uztNAnVCaOyuqwVD712WmZwfKXjcVG49Z15EH/Xpcq73o2/T0
         3CFNqZnPWiDrfxQJSFG93siQNaKl2ewvILvw7/c2refygOWetU7pWIAxSFZcOHM8Z7is
         GTs3YLbJlhiItAw514wRdF8x4lyK+RyokdzQtA4HXUBCRbSS8pXTVEGuI86JDdNFn+H0
         VPTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hhRCwox5;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZgMPoOpwybA7P8CHHzOk6LqFnTONtyJUK6daH5iHYXM=;
        b=HO47rJJm9WL152c/cm+vFkzp7iWcGHlf4j1ViwksPVlt4c9yxRBlRsCQ5NIHiPdv6j
         qvWCHd91wUgpvn3qGDWg9wsVuHPkHcBksbeZQWFt7JSFokYALSeu1Og35obbZDNWiyuK
         3OfmyOfUYX2CEqTA8iKm0BZyW5D8OKSi/rpDhawLSXjzotDjmeLcsl/hA50LK4f8yt4d
         Jso/GtorHqUDmnfoELm4kzU1XVkVLWoOM7YYCeLVhr3YZJL2ENLQ5DKgPDD1L6XOhug7
         ZgJzNQIrQg8WAsCmEz89iN+zlLKVp0XdEPbqWf+FyWxq+poOKTTcwoJ1tPZn4BSw3/3S
         A8xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZgMPoOpwybA7P8CHHzOk6LqFnTONtyJUK6daH5iHYXM=;
        b=RqXiSgAjKtNDz8JIwY7CBgDir1Nc220veoa0zObic56scyd70OyNNnofW8CU1hhL73
         sKcCd/flOTJdqAKaBIESwg/IBY5tYAjrpb0uPQfhaTXMiu9YmGrspIUvYN6OcRaD/PoH
         aO9H4PxGzcE/e7GrS4OlajKCjGXRxScT6FOe6DcyIyMJp6zDs7uy+lgdTITi6gmPmEwv
         1sfzdSxTODLf85x2MveWJYR48+0ImgiYmQQDdscU0cSKYrjvJ7SPCXxeHNj47Ia9+sdn
         5Z17MrJUt3UO9xj+e5SU7YYrOT14v+LM+9CPE9zSJ9oNqTQt0+PHiJlvQBX+NX6dxAEJ
         yo1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU2WLdRfjs/iHGbvbZWm64vHvLIfVfGdjTFDlkdPCDhc3qaCwyH
	NdJOPo9KBMVTYHxxVni9eNY=
X-Google-Smtp-Source: APXvYqwL1rHkeIlNalaoYWCv1CNhheAch1X2wyGjcQV3NQAnsbVMIGLChjAnUeRgXNrKGcjxAZTfhQ==
X-Received: by 2002:a17:902:aa03:: with SMTP id be3mr28443038plb.240.1563198568055;
        Mon, 15 Jul 2019 06:49:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:800d:: with SMTP id j13ls2884237pfi.12.gmail; Mon, 15
 Jul 2019 06:49:27 -0700 (PDT)
X-Received: by 2002:a63:3f84:: with SMTP id m126mr2701730pga.213.1563198567712;
        Mon, 15 Jul 2019 06:49:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563198567; cv=none;
        d=google.com; s=arc-20160816;
        b=s41Ku6CjqJc6ZbPPOqLe7fwaISID9DjOUFqY4MCC11lXb6AInwkohmuAeMAgvb8hzb
         wfWskhoQnSdhG+EyEk+UMN6N6L8Wfj9+jia+yPETzZ1C4EhpOOL2cauvtmDPwxcToFfo
         m7mKOeCa3vLEaYRDK9FPS8+isl8yaR8TKYCLK53Nsb1MTrDyl5BBUr805Q7HfMqel1R8
         Vv2HRuGKMdI/EruERqqRn7dwXps5NuzOUzLFEhgNCSZpTShB3mJJ3fs6IoGbe3Jx1dmJ
         wgxCOblyizejsX3oOe9IexKHSCkDT6YMG2ccdB/NaKRpaQ39GVTYEuOlSut9ytwbQS0K
         SB6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=AYYNk4nIkcwXAvo44vVnkl8E811DgImONh6PbSG48MQ=;
        b=bpOlqrHmOx9o7vs1V0ebZw+reDJFl3UtQZ5zEDyet6oaa35OyiuTLly9pFRSpErVgs
         LmYfl/jWpajBcValAQn1NnPLMtgsUyaryha/kVst8JgCiA6HOjGNNheqR8KL/sobivzL
         PSHUY5sUM38V4Eh8Q9C92YWIOY2fIkOo5qvrpK3IduOgMoTTFFcyeKHcqakH0hAH9u17
         EXLW5nbz6pkzeJXfktNuaMvK2TUR9lI2rkX5SWRJxiUvEXcHWvEYDbY+1jTqD2EJnrxY
         EVz50fpmmmOF6pS32vvn/VNFPIQvI2b5iaQV0+dZ2yz1D7N2IqqdnLmsOhrH8BFXhAB+
         Ukew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hhRCwox5;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l72si724924pge.0.2019.07.15.06.49.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 06:49:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 914942083D;
	Mon, 15 Jul 2019 13:49:22 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnaldo Carvalho de Melo <acme@redhat.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Jiri Olsa <jolsa@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.2 046/249] perf annotate TUI browser: Do not use member from variable within its own initialization
Date: Mon, 15 Jul 2019 09:43:31 -0400
Message-Id: <20190715134655.4076-46-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715134655.4076-1-sashal@kernel.org>
References: <20190715134655.4076-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=hhRCwox5;       spf=pass
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

[ Upstream commit da2019633f0b5c105ce658aada333422d8cb28fe ]

Some compilers will complain when using a member of a struct to
initialize another member, in the same struct initialization.

For instance:

  debian:8      Debian clang version 3.5.0-10 (tags/RELEASE_350/final) (based on LLVM 3.5.0)
  oraclelinux:7 clang version 3.4.2 (tags/RELEASE_34/dot2-final)

Produce:

  ui/browsers/annotate.c:104:12: error: variable 'ops' is uninitialized when used within its own initialization [-Werror,-Wuninitialized]
                                              (!ops.current_entry ||
                                                ^~~
  1 error generated.

So use an extra variable, initialized just before that struct, to have
the value used in the expressions used to init two of the struct
members.

Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Jiri Olsa <jolsa@kernel.org>
Cc: Namhyung Kim <namhyung@kernel.org>
Fixes: c298304bd747 ("perf annotate: Use a ops table for annotation_line__write()")
Link: https://lkml.kernel.org/n/tip-f9nexro58q62l3o9hez8hr0i@git.kernel.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/ui/browsers/annotate.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/tools/perf/ui/browsers/annotate.c b/tools/perf/ui/browsers/annotate.c
index 98d934a36d86..b0d089a95dac 100644
--- a/tools/perf/ui/browsers/annotate.c
+++ b/tools/perf/ui/browsers/annotate.c
@@ -97,11 +97,12 @@ static void annotate_browser__write(struct ui_browser *browser, void *entry, int
 	struct annotate_browser *ab = container_of(browser, struct annotate_browser, b);
 	struct annotation *notes = browser__annotation(browser);
 	struct annotation_line *al = list_entry(entry, struct annotation_line, node);
+	const bool is_current_entry = ui_browser__is_current_entry(browser, row);
 	struct annotation_write_ops ops = {
 		.first_line		 = row == 0,
-		.current_entry		 = ui_browser__is_current_entry(browser, row),
+		.current_entry		 = is_current_entry,
 		.change_color		 = (!notes->options->hide_src_code &&
-					    (!ops.current_entry ||
+					    (!is_current_entry ||
 					     (browser->use_navkeypressed &&
 					      !browser->navkeypressed))),
 		.width			 = browser->width,
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715134655.4076-46-sashal%40kernel.org.
