Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBGHGU7VAKGQEQJBZJTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B3B83BAF
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 23:37:29 +0200 (CEST)
Received: by mail-yw1-xc3d.google.com with SMTP id k21sf65273673ywk.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 14:37:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565127448; cv=pass;
        d=google.com; s=arc-20160816;
        b=jEgcShtMnNKjT8BhkL2g0nP7CVCyZSaMJ+5FaTx14ZDUkTtHRl8f4A2MDYDTWNFeZJ
         t1pKDZTUIPtpIQYyyOQcJevj1FFLl+bMBUWWuUM6Ea8vFkDnthuDpSfxtnT8obLdNTST
         MnM2LyQao6P9hv1/xdA0Rsr6YVDA3od74KBEvM//+KpaPGzDkcUZVj+EGKQ7lwzDGw/Z
         0RmB9HaodSWua0hBG8RL+1HOORP1TzTF55dIkJuN/puCJ2SKZBHuH6sD2lzch4k1FTvn
         q52ZvE7jhsrtFwo2IH/OXCEUx1H7G4dYTFZxZ9xj4z9hjZ1h0YfXqDI9CPj8RhJcpYbk
         vKGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=OWEpvkRikXYaRmGP6JlQeJiHnO/XuLIqnTWM80XAm1Y=;
        b=heQdyxe4hDNe2CExJqKpOEm9Sq87X0vhzWp4tQy+vDoS+JJsaB43PeazP5XaXK0uhs
         gIsA/W7ZXijlgHD6TeomT6OoyaZJ7fcKn21AW7gbzdfpdFrYv2xZItVLueUbpByKvwrV
         UFDqkmIUiYeNXDhPagIYEvrH1HqK5DHcfmpgpba8c6x7rSc9bvGdPVIvkYrLBUJauuom
         uTO4BfhLAXneG1PwHgObpm9zPloR0HGsXiGUiVLNDaSaWRWhwbswK9lfhbnwZbM0cYA4
         0BHb2p9rpL5U7898rOez6Bo5xhmBwXnW6T7lWjmx3sfqat1G2mFOfaBZHCnh7BXQ3bYJ
         C5cw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zkJXA5jj;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OWEpvkRikXYaRmGP6JlQeJiHnO/XuLIqnTWM80XAm1Y=;
        b=pCfxcJUaeBAc+4rwn10V8Fglmh7eILmpGIMSvfy92QEtGu+Ea69P5tyqnUpNdl/RBj
         cXj1UdjNiOfLe+Xr2tvyYgIdkCoXvYyn2zRgVRYfzAUAYFg+G2Gev/mi3u5NaBCBRLle
         Uu/6p3W0zcxncP2tOv9hmWqca1gR2hR+bSnj1Ion4mD6X909880pIQRjH5NU4TooBGLx
         RINYNMB7Y0sJtSW84B2rqskDoAtvEgCL7A9et4s7iJd/hr4Bo+pwiXBG35sH5vZl3k2X
         4zK/9mt6Z1IFNQ6YjzHoaCja05aHZTSguMN9ghiWFTRu1WFTXj8uVJ8Z0n7gmA8Lxjjl
         4ieA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OWEpvkRikXYaRmGP6JlQeJiHnO/XuLIqnTWM80XAm1Y=;
        b=JqH0Jy8axJwy6bPetmnxNCtxECfzoyKWPZEjrJ4GZn4/nykJtX8CxofHpJJdgDm7oT
         J6cDdhDzd7N/jlwbCH93LzKpU6LtXoENS9Oel87iATMVRDxE/DHFqFKOGpmpSWTHIhen
         8xGmpXOuJ986kHkS9KuktnzAFSbD7jVXIHEOctwsZcphDwJkJJGLLSf161Clv0KreVC6
         KvvmPa3OXthixxa22ZSMMPyjnnVa2Uyr7adxNCD/e+Wotx5Dnwl8xqtWhnbYTIPrqfiv
         Kri/ME3WE2tOypIItzyaeKbvY5A0NhzCq1nZphTxxMnH4aKsnBj+/2yUSGW7LGUgNU6e
         fPDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUkkecgENU8ifi2TNGhsptGxHSsmP//3wh54Vp/Q1BEO4WkQFmp
	ZnVn1V9CpeQRCtGJcSJGGlc=
X-Google-Smtp-Source: APXvYqwEi5sbF9xFZqDDADGjkwYLELfozHvOk1e1B7Kjb+rI7uNZ+9ywycKbAVcx9n6NRA1wuM5Agg==
X-Received: by 2002:a25:76cb:: with SMTP id r194mr4068085ybc.45.1565127448590;
        Tue, 06 Aug 2019 14:37:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:23c9:: with SMTP id j192ls16854352ybj.6.gmail; Tue, 06
 Aug 2019 14:37:28 -0700 (PDT)
X-Received: by 2002:a5b:302:: with SMTP id j2mr4062208ybp.469.1565127448355;
        Tue, 06 Aug 2019 14:37:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565127448; cv=none;
        d=google.com; s=arc-20160816;
        b=QclxsYMz/jXGQEHEaK4wTEBQHWXgDN4aF9XF3f6mAy2hnOqJO3atv4nAgkk8agD6Oh
         rzD8p6Qchl8Q/YEhkXOEH6TWFw28lfX7Tkt22sKElWpw9IKmhpP0M37IJJZxryNcZPZ6
         5oeF98ErccQSbqr1+CEfddSaAr7t32D8BIR34gYEh2+5MunMctWSWwbOQ4Xp/bUMbpfS
         twwP0BrV70W88Z5HBEqbzlX+suMTrzXSH4UcTc2qb/DCRtbNcK8p9EG2vusc6DzJUy7u
         /AqzoJRa7Yd55l40Bjh8BeGbAQBE0x9i78HEbX6pOG+m30JtqDkqwMCxDSvMwCrGFQP1
         g57Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Eg08sH/3fyjx8/Udo0WrwYiUdpI3PooZrQZxb7+kgE4=;
        b=wA82/J7v5/6FECUAGbpjgzsDryuXBpI5xR77JllMxrxg6y8I4am3MfdlWkSAJNPBI2
         5d8PqaRKQqMMce/xWrkCytK6brkgTQ3KqoFVji8xYp4FX//MwOjlbafOXl+Ra3NetoZK
         itF8VQYuish7JqiPc+qklF6Qo3FoW+qxoPJCFGw9x4Bo2mpeh3YQeJt2FiGECVM52OOe
         +io1rEUGIeWA/ibPP2TBI4i2ZaQ/oquLQHaM3BM5E77VGU+l8jGfimFqqCc+Wm9yUCjr
         2hxrRco/cRYcTVeEnxlIBMRMOhP2+K/JBUkzZ+p9vshLjHSFuh6xVQ5Bzs/uJgJYPgJ7
         qrrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zkJXA5jj;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g15si919004ybq.0.2019.08.06.14.37.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 14:37:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1E00121881;
	Tue,  6 Aug 2019 21:37:26 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Numfor Mbiziwo-Tiapo <nums@google.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Ian Rogers <irogers@google.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Mark Drayton <mbd@fb.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Song Liu <songliubraving@fb.com>,
	Stephane Eranian <eranian@google.com>,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 05/17] perf header: Fix use of unitialized value warning
Date: Tue,  6 Aug 2019 17:37:02 -0400
Message-Id: <20190806213715.20487-5-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806213715.20487-1-sashal@kernel.org>
References: <20190806213715.20487-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=zkJXA5jj;       spf=pass
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

From: Numfor Mbiziwo-Tiapo <nums@google.com>

[ Upstream commit 20f9781f491360e7459c589705a2e4b1f136bee9 ]

When building our local version of perf with MSAN (Memory Sanitizer) and
running the perf record command, MSAN throws a use of uninitialized
value warning in "tools/perf/util/util.c:333:6".

This warning stems from the "buf" variable being passed into "write".
It originated as the variable "ev" with the type union perf_event*
defined in the "perf_event__synthesize_attr" function in
"tools/perf/util/header.c".

In the "perf_event__synthesize_attr" function they allocate space with a malloc
call using ev, then go on to only assign some of the member variables before
passing "ev" on as a parameter to the "process" function therefore "ev"
contains uninitialized memory. Changing the malloc call to zalloc to initialize
all the members of "ev" which gets rid of the warning.

To reproduce this warning, build perf by running:
make -C tools/perf CLANG=1 CC=clang EXTRA_CFLAGS="-fsanitize=memory\
 -fsanitize-memory-track-origins"

(Additionally, llvm might have to be installed and clang might have to
be specified as the compiler - export CC=/usr/bin/clang)

then running:
tools/perf/perf record -o - ls / | tools/perf/perf --no-pager annotate\
 -i - --stdio

Please see the cover letter for why false positive warnings may be
generated.

Signed-off-by: Numfor Mbiziwo-Tiapo <nums@google.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Ian Rogers <irogers@google.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Mark Drayton <mbd@fb.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Song Liu <songliubraving@fb.com>
Cc: Stephane Eranian <eranian@google.com>
Link: http://lkml.kernel.org/r/20190724234500.253358-2-nums@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/util/header.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/perf/util/header.c b/tools/perf/util/header.c
index 693dcd4ea6a38..61e3c482935ad 100644
--- a/tools/perf/util/header.c
+++ b/tools/perf/util/header.c
@@ -2943,7 +2943,7 @@ int perf_event__synthesize_attr(struct perf_tool *tool,
 	size += sizeof(struct perf_event_header);
 	size += ids * sizeof(u64);
 
-	ev = malloc(size);
+	ev = zalloc(size);
 
 	if (ev == NULL)
 		return -ENOMEM;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190806213715.20487-5-sashal%40kernel.org.
