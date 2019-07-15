Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB3MWWLUQKGQE43SZB7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 630D669024
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 16:19:26 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id 186sf6229900oid.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 07:19:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563200365; cv=pass;
        d=google.com; s=arc-20160816;
        b=VcrvnSfu9KqFHhIAc+VTOcsWbycnq08RqOEIOQ4lbe1rdr6JHt7yNtR+QS3xjFiEJA
         tZgiSytXtu+p6xzvkPS32UdoHzZvT2hPbZfjCCpxvVN9/P7VrCeiLQ5gTWObIwGgccA2
         IzN02eSpCoHDjJUD9EUISzI/e6T8dYZ5I3cy2D6foIRnKMrGgw6RwhrLePYdjrx3Xr8v
         rOjeMdL+Km90IJvQkmguz309XW1/vpJsJMuDiPPFG6AH5hGNSkOZu6ek9rghNQlWLSvH
         WG4viS/4ovflPFprT0Qqif/TVdf34wldeYWHEqpL3cELiBb4v8KkIoxcxaoYk0hXs/i9
         H8dw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=mxihxGZVNyEHoQM27w6blVKlhpdB3fCmfFre3usi/IA=;
        b=e2YWkiXJ7RXPjRYwcQ1e6+cF4wPtSiUOKw0oacMCfUoBWhWAMWpIYRfnifhGNtT1ep
         AKJ/ReV/vJAD15J6ngMokgbEF5a2IInxGrOy40KlqY03xvTQfcU8u3h9vmB3USYrdkkJ
         JepEHKO0PgFo/q3w0unkRmqp+nlmxpRhAd4DEciWIeUTFICOJLEY0rQi/08yrI5ZcLY3
         SiqZQPkMMT71HE9vB198JXc+VxruN/YTndo7BR+Zsw5JNCLzAdN5+FvSa6Dt1YaENzLc
         g0eH7GYq60fNeftqYuOTYOAg5xvJqh3XunBM9qXxbzWJAwCic2946bpmHJik5NDc3y3Y
         ufug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nbr8u71g;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mxihxGZVNyEHoQM27w6blVKlhpdB3fCmfFre3usi/IA=;
        b=b2EnKVdjsmbry7HXNMfiz4lcYBjqaHwCUADu6VVkoWWqWlfbZ8xu7H6GE1fCf3DNSb
         PSApga+CCmA1NxlP/4uyHs2oUjs/FViGbmaROOUg+fPjbuA4I1nfVLnFjltWx9q6HKfi
         rSdhOMv3FfB0rJWMNwq8N1qqWkjRRomkiqHlIzSBM+sA+D2GXsfQGsL64ZWWdtB6MFYq
         kQK+nQ3uvsoYPhyvo1KgxfANy6T+eRFzmLPN5W6PZUdniS84dMfMtKzNo7FroKRUvyvV
         AlawdiH0XKHBv0mHI7nRKi5JxGVwUkYgcKVPQ/CD1q54Qrqlyl18945gpVJv+zd/9/Bg
         CEkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mxihxGZVNyEHoQM27w6blVKlhpdB3fCmfFre3usi/IA=;
        b=NgN0kPZyketJZ6BK7etvqsROTffYmRyy2vgDx3xMDxGZWY/y3s0SNEO4gDYrYgyY1C
         HuTI8o5nSCupGjZbIaina5KN6zBneVgCkydPHA1cAN7viKO5b5L8m3EYTMslI0Lr9akd
         zQEqHD/vXffYJsZeWtlqxeEJJFOPQTAH79Gt//gd4LfR+PMDJyhTx7U3vtWUThJ+YB2z
         fEUenB1ES2DlA67R6kOI4x7A9lXumZRCgyfusVAX6LXOVmJ4Th9cYZxfSPrMc5pjImXL
         BxEgeW7L4oVgqD5k+yWGxuba2g4txlBbJmJQbfefdY/dzVyiB4+DrwFQ6EZRr2SbDUER
         SL/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV95Ani6wPwouvvV1kHnTcWx5KLAmBNCAQRml65eRKPl+MXRZma
	c9vkhNj8pjqOnSSH/jh4zgI=
X-Google-Smtp-Source: APXvYqyo9E4O/g5R4QBWsOQWRNvRtCgCG71nBcUDxdYGRDjfumuICVOR19htqoZcrJ3+Z944phx8qQ==
X-Received: by 2002:a9d:3f62:: with SMTP id m89mr20867478otc.44.1563200365340;
        Mon, 15 Jul 2019 07:19:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3f62:: with SMTP id m89ls3163262otc.1.gmail; Mon, 15 Jul
 2019 07:19:25 -0700 (PDT)
X-Received: by 2002:a9d:404b:: with SMTP id o11mr21289388oti.155.1563200365019;
        Mon, 15 Jul 2019 07:19:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563200365; cv=none;
        d=google.com; s=arc-20160816;
        b=C7hKsrwLe9qhaxyG2Z8HGJGaSrFUlfqNT/hvWdDtoHaA2Cx5Vtk11M1xZRYjJnCWpY
         rDNivIf/RC5Lt3g7LtF2dXS7uWWq1k+f8OEEIQt3gLdocFtxdxopoLYu6qopNb7DvU1K
         xVE0eNAPsgeGIJij5w2GCqmSoSCg3VG/tiqXU3xLXrIgfAO1Cahr+Sofy3w+P14ENEvO
         bo3lOtt2RK6kQI7U+QVBeaRknkO0Ya4fue7fRAE4h6WubHlz2JQqlUTi8O2RzqiKmkSo
         M2v4cpYywQhEXbkd6qc8Q1YsktxD4N2kfnUj3YbuWGILDJAA+PRrTZNbDrzfloLIe6bx
         pMIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WpOXQU/lBRLDFk7yjRAhHghRotq7hDTVMQ/OAjK1J6o=;
        b=cdIEUZkFFEBY/jCkXZUzCKAoTnVEirr81fqBmx3iUGLG6lZ86gK2Vt3Bu4M6/sieNQ
         EsNvXXQNeAJBkKIh3HguU0Df5cZGPNLpWaN12SFbL1aLYfv6L2ndiiagq6tz52wwfiak
         xlu2UmHrPSZAcFMx8/5CpPc4M076cmGd8Ij65lbF/B+D0IaZJxHBW2Vl144NGdQYYy3J
         b1RW0nZwMiatMce6H0QM1bK3/WOhN35QSfyQ2JLlnYoSbf+na3MtKGhWarY1+vtNhSl1
         BLx9whFKFy/xW+wl+g+HeziQq4X4qkaJ02/kxNti4QZK/ewClYBB0Pzp5n2xy2xkcdEy
         tJxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nbr8u71g;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 21si891148oip.2.2019.07.15.07.19.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 07:19:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2254F20651;
	Mon, 15 Jul 2019 14:19:22 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnaldo Carvalho de Melo <acme@redhat.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Jiri Olsa <jolsa@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 026/158] perf annotate TUI browser: Do not use member from variable within its own initialization
Date: Mon, 15 Jul 2019 10:15:57 -0400
Message-Id: <20190715141809.8445-26-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715141809.8445-1-sashal@kernel.org>
References: <20190715141809.8445-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=nbr8u71g;       spf=pass
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
index 1d00e5ec7906..a3c255228d62 100644
--- a/tools/perf/ui/browsers/annotate.c
+++ b/tools/perf/ui/browsers/annotate.c
@@ -96,11 +96,12 @@ static void annotate_browser__write(struct ui_browser *browser, void *entry, int
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715141809.8445-26-sashal%40kernel.org.
