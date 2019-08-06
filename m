Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB27FU7VAKGQEICE76RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7023683B85
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 23:36:44 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id i70sf66600924ybg.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 14:36:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565127403; cv=pass;
        d=google.com; s=arc-20160816;
        b=h1gjtQ89EXqV8S62QpbUsKd7VrbhpG2SoTRpiCS7OdyKgGnX6vbXNDNXrSpySBxGkQ
         yBaUdZa6ur8j+NhmeVj5zUh8McuG2i/GZVB6Etynwvb++DDWMZYDK85EdDLY7sL4T1dP
         RnlsRDoaQOIg4bUo9iZ+ozHJ1JfFae6UlAPFZWUNetursOYkDxhk/f7SwvjRybJnLKuG
         sFrLRT8R5wzDdp4mGyp2k9FB5eZRZiMqmZNIHgtb+kFFpzIb/Ztf5v33FkTI27xjhmSh
         V7rqhC1g5kFX9sOBYP02HRFd0kFMzL46k48bPz/fvfiTBX6Pax1WECz3BQjvd/dIS56D
         XliQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=WlkPPX4ULi66Upcuw8cWAuXIOnwexme6ES7j3bexEKc=;
        b=pHiukVdUuJcA+pnaRg9rZUnuNsQSHkAQ7Dovpq/iAXr8szCaRNSKw7wTiG/ZJzkf3Q
         52nYvU2ch+3z0kXmwfnrTJ1UXz1FiSoFn2VFAZ3bpK7G1hXSzClEZuz+IyIJT8UzEeBG
         dkr4G4n7yWyiEdthGzEx2OBeZTscQj9hwtgvnaJn6JfMryTAhYMHAYw3u5GbAgtTnynB
         zsHJu6BJxtBaQTfnP7iDAkQcCyynPMV4yDMvt9Liw82R2vu8FxBgOG2kJS2NYqCqhWdW
         wPkEpklDjkicXhKRygGT5TPfts+XmwjTarvj8xDiRSpRjCwaU1uGLtxWKYRTLV9gY4DU
         tFxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0x02gF6i;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WlkPPX4ULi66Upcuw8cWAuXIOnwexme6ES7j3bexEKc=;
        b=iAlnpEnMmgR0OcUJvW/HLyMMO0TM9CENOuouywUYuFuYmCmtfAcYUlpMI0a8su4BRs
         xlc3jggnjI+ZfJzeuUOhpW+xeno0hU/YrM719CeaWJb204ljoeMt78kfGAZKUqN0zR6D
         rXfz0QpHmkB0v78TlGBvP+08QAhgC+3caK7eDGZKKZQWSN/AsNN1Vgp0wFwXyAsOqtnN
         4fszCKav+NuQhwvGaJP7i7wGFxJJoBtyIqL06+4ANOpBkpbAiaCvmiBQdAkn7k2nm/B4
         Da59XAaVOHFwtI6P4UitX8NnNqy+QYZ83d5Zze2wfkjd34NCmKbD2Ie/HFiisuFGjFx2
         xKaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WlkPPX4ULi66Upcuw8cWAuXIOnwexme6ES7j3bexEKc=;
        b=UkSzQ8NUJnhpXTNnaK6KajPPofgGzdoKENas9A1cRKQzuSBm8sFGz/TJIT9Fj9V36Y
         Py1j/w12nB4mSvdbs3tkyUS9fNdYS/T+75Gn0EYWc6UAbfgsBrJ7AJf4Rn3yRysRlu6Q
         NjIGXidHpEtdJuETl2IC3Hv2w8k+EpmQjEgT3gsoi6PuX0S2eppSF/xSkXvDpIl7xmr+
         WhcLqZeJ7/AJufIBjqet33DP0IWosopGxeyUoM+sSkxU1ROxfb0vBiDAgycN6pxJ/5iO
         mxGrfOkPuxXyNCDiQZ13bTcdAhQ1o0Bqv/bHpb6XNJpJbWaBOOfZzA9+5jstSIhMv3u+
         7IBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUod65ZNoOhoGQFZopgdvj2dUGhaFJrlk4rWm6gxFdjzKPYDl2c
	VrDmfD3s0DMOjLAsNLzZfqI=
X-Google-Smtp-Source: APXvYqzix9TomnBaiYLSGwKgwRD+hj2ypExQj8YbaG1Od/2+HIammIkdUyTSG5LS/wje3/9oBU+UFw==
X-Received: by 2002:a25:d001:: with SMTP id h1mr3025657ybg.493.1565127403530;
        Tue, 06 Aug 2019 14:36:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5f4b:: with SMTP id h11ls18028093ybm.9.gmail; Tue, 06
 Aug 2019 14:36:43 -0700 (PDT)
X-Received: by 2002:a25:7554:: with SMTP id q81mr4386984ybc.236.1565127403274;
        Tue, 06 Aug 2019 14:36:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565127403; cv=none;
        d=google.com; s=arc-20160816;
        b=xD/6xYbMa+s3gdEXuj2d3WwyN5VBOA8PezyD9CGya5IF238up+i+XLFshiZFMyxzHJ
         FzwovB+CNPRHlxcIA/G9JNCkLJjD6lPn/vdP06/ujHKCzAvodAorkYH2tK0Tqpm4w9Fl
         BltA+09bgSlxCMCglblto7JhB89wWr2jH2N1Dqz7XbrUFpmUdVxRCBY6cq/7/9ZgAxj7
         tsKQE+ofKJIjOkmzWM4iudclYJd8ESXhCb0FuPcTibDg0y44hn3RaKL7iguSmA0ep9so
         z4n4fQFxy8spDHZjMrx3Z6m1mq7jfsE4nuzgYSCQDG1W+a2YqOhTHvjysFh0/HuiJM1o
         SYTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=v61A3qMGZRDHOJuDEbOS54svvqCKg2/uGkjh02R8yQk=;
        b=iI/2/4+DTtzwKidDnYNBDahzpLkrNqmNe3rTpbDT+cyGP4paxLCb67Cr0gJS7jmtYL
         MmGD/W5NM6pOdEXYDWnypkU7Eyggw/DppfkJdVddszXh1guSS8DgWumhTorE4s976sAm
         NHTqvSPMoUBucFATQOMPnTmVo4NXGBbHRMspUxeNqHW7AfOLnCoz0ZDCwjGD2QrjPZ7L
         689GOMjnBwwZt1zQaHXCoPld9WCdf6/RryKRb/Zp/jL1fxg3w59w1AeJ51gNTPYEHjqm
         iYvSLgaeuMgbzGJiiJEPpyZcdEmM6k7sPN9F2xrBtCQClI6HGQznM8NdneM/6snFcJ/X
         jKCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0x02gF6i;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p188si4155997ywd.1.2019.08.06.14.36.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 14:36:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E545621874;
	Tue,  6 Aug 2019 21:36:40 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 08/25] perf header: Fix use of unitialized value warning
Date: Tue,  6 Aug 2019 17:36:05 -0400
Message-Id: <20190806213624.20194-8-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806213624.20194-1-sashal@kernel.org>
References: <20190806213624.20194-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=0x02gF6i;       spf=pass
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
index c78c2ed009ea0..cdbc877b79d4e 100644
--- a/tools/perf/util/header.c
+++ b/tools/perf/util/header.c
@@ -2990,7 +2990,7 @@ int perf_event__synthesize_attr(struct perf_tool *tool,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190806213624.20194-8-sashal%40kernel.org.
