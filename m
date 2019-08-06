Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBPPEU7VAKGQELHJO23A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id C791383B32
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 23:33:50 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id q14sf56800729pff.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 14:33:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565127229; cv=pass;
        d=google.com; s=arc-20160816;
        b=jLN51OU1262PCutaSiiqmHr/+N86I7o+EfMdm+oaLRgVR2+pKB9x/D5fqS7tNrvYfX
         dugJm3djX00Ohae39DbuBJjO4hFjx86lp/6MNnHkK2/gab/rOcxd4ymg85PlMVRdck/6
         /RNKalJjAw0IGK/9Izzn5MMUIMUb+83QZUPNnTvS4nMqTOo3zQT2dnUvzONtbfzbwN1h
         HWV/iL7TAmRV0Z3YRfDSRFSFMRbnc85qyMWoxfZ6CYwRIcv+KwoIVkwzTyCRTXpTp9+L
         WTz1FFQqq2v6iVqP4gBzCFBRqt4d1QTb8prS2UQUx/eMYfBUUiw1Md067cQkEQjzjBr3
         CKpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=FWpNv7/npKoDLDAmVlgo+G8Iw+fQEWpNX4t+jMrCFmk=;
        b=V3tiwLgNAoVd7S4HV2KJYyx864Hf5UKEG7FAvvpGA4SFZjRRAhOWY8yN7g9i2vvDb+
         cHUA3NI0B2rfct7ZRgFXRanfijRmHiMVbeGJYa63yO+bwj4Q+RS00R/rthOSdYUVUeXk
         lIGCmcAvKpyq6i2EwH4k1+r8p7KwFmZAe0RmgpXr6qfx/uj4iXu3yIBGpeSd4zCrOcCX
         h6RPxauDSOrS76NQ6BBp2AkwyxPu+tnCdxW9ES0uW2/h+zAGW4vxT0qJIdae4r3iF+Qr
         Jt7noBeVG9zVmzM+aEMXLyLrEBEXETHNzBX7suSr+536gnQ0mvN6F2ltJNTlR6hIq71j
         +qpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=O6IO+vNV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FWpNv7/npKoDLDAmVlgo+G8Iw+fQEWpNX4t+jMrCFmk=;
        b=IWgDuB1HzZOHEPq7/rGHGbyZ72v1zl+vcojO8zbrli+dKwaPj79ZYKxjOLXfZ1yHur
         9sMY+ztKJI858nUS4qes4/Vk/ZY0lzZMlKxnyZzXN0+OQh0K7tQ99wS7eD0l8AMr1eip
         NDSZUnV/4r9HxFAwc4rYGyvVxl6EimmwmxzJ/ieu+n6zmkPjD58B9u79msWpvcVzKGLM
         V6vdS9TcNIaObW8MVnBb1MSDnOSuHqK9HWsmKG3A+bgyRUUvD/DQh7VyULzhEe8+OI8h
         iwmNHFN+JJzr/4BRrjW+yyLaQFJfkfdaJ6i4pFPWzDj8EuzvPMftPJB5Wp+S7584rK+T
         7MQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FWpNv7/npKoDLDAmVlgo+G8Iw+fQEWpNX4t+jMrCFmk=;
        b=LGkaCY/Vrx5ID6ETGKnnak+/jJ7+mRxGwxY/X8gTd+mJI+C5lFuM7V0OHRf7tt2UD6
         n4z67GfAiSwdptNVhhG+TPVaiFY8ZWO9XKdvm1Fc2ppinWT8kiLF6teaUtiIMNsaDHnK
         ZxIQYhR/wg4FwLHgGXSPbSlsKAR6uEd7nB5NrKQ/N0D2hlQe1usTbLIBXGBl55jtpavJ
         2pk/68+olvVhAHY5ATjLKr1jTtL7ZLWMOXxMLohZHXiwlSJ4JLz+ZuzZpOvlIpYdjsc8
         8K2DJF2PdB3LCf5bu/5WT38pBD0hOHxOrX0nS/hsOPUfoT9ZP4kgSZgfxrzbN+imU41c
         6Kbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWQ8SkhY5S593Dxi0P642FxUZamoIzVD1WUCTlXuy1l4WGFVffl
	LIBDm/XuFjJvkZid1p4lUiQ=
X-Google-Smtp-Source: APXvYqxZPEtrQ8Aum/ZWcvcuj/WkF7pDJxm20gBY6avzPS0JlU4vecaxqYhEP8zK2fh+ebW6xAE3ug==
X-Received: by 2002:a17:90a:ba94:: with SMTP id t20mr5239156pjr.8.1565127229531;
        Tue, 06 Aug 2019 14:33:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ea10:: with SMTP id t16ls15492793pfh.5.gmail; Tue, 06
 Aug 2019 14:33:49 -0700 (PDT)
X-Received: by 2002:a63:9e54:: with SMTP id r20mr4999600pgo.64.1565127229113;
        Tue, 06 Aug 2019 14:33:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565127229; cv=none;
        d=google.com; s=arc-20160816;
        b=K209EUvuv/tqkmGImgdkki/F/+M1S00wt04otIZ2CIhSQzmyRtU4r8KWw/oalYc2WO
         rjtj0ZgOnSABGbug+2tTkqQabfb3wZq1hAchtiwEa0X3C6vH6jKSEzUfIIO3WvMR1FlO
         jzruLqC2ByW2xnjmkGpXt8yWILDmGEqXyHKR4UV6qzfe5Ra1PBKNDK+Sox+t8AdKgqmF
         H6x3pa3u2BFqZ1wwxzEfH2X3DIEsHlX75NRPvkMV4y93jRhTuIktWerLKArGAoaHCn85
         0x8u6zBEyPMzAtZvILVSBcyTZ97ryYLaxx1HeKI3qLje0rBy4Dy3WplYVnwrSbl9JtQ0
         xwqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=f41matM5HZBaVz7guzMyt03AWsFaRUXcu0viHHVm+jM=;
        b=kUSruYFKSfEJ5ZFUEb58VzVZS0c0UT5442Fc1RTaqzcDx1ZH8qjSoFj6XbNwdmmVvx
         9cJ1IOn7VGga5IvoH1aanuxNIAc74Zg8vCoF6PGDjq6Y6HmAj8x1dmFC48HF9Cjm9B+e
         quCZdowmp7JSenTlPwyg+OymHLP464yDZ1K+eWL7VzqBILuFXQ0hjpzBd7ymRCiejZkV
         qWfSTHtBYjENjvq5c7DNwXAvvnFvCEm1y0OShGV5JKr328vvwILsWBhxpwSFJv5rl2NN
         pn0wYrilN355lwfiaui9BNdz8urDuWwGCS7et+DpQcZ/BOHzlzMtIUPqTHwcAIAavCyD
         2DNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=O6IO+vNV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o30si669627pjb.0.2019.08.06.14.33.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 14:33:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 858952089E;
	Tue,  6 Aug 2019 21:33:47 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.2 17/59] perf header: Fix use of unitialized value warning
Date: Tue,  6 Aug 2019 17:32:37 -0400
Message-Id: <20190806213319.19203-17-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806213319.19203-1-sashal@kernel.org>
References: <20190806213319.19203-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=O6IO+vNV;       spf=pass
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
index fd543f209bd0a..1156ebda47c3f 100644
--- a/tools/perf/util/header.c
+++ b/tools/perf/util/header.c
@@ -3565,7 +3565,7 @@ int perf_event__synthesize_attr(struct perf_tool *tool,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190806213319.19203-17-sashal%40kernel.org.
