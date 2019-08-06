Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBOHGU7VAKGQEGKIPV7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD3D83BB0
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 23:38:02 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id w5sf55696637pgs.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 14:38:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565127481; cv=pass;
        d=google.com; s=arc-20160816;
        b=RWAD1C+aLxPCB1v8CRdAkUAS5C2+DlWV1ZeyX1DbFwZdxLWDxoTw3v1i1zytvgNAzW
         WDAsXUQ1N9610+vbYL/AMTsKy+jlCkUy6X+6QjeE7tmooOcDSiWdZxt0YTzTO9jMQzD8
         /BHfSm5qkGQSCcCH+GcfwwW+tdM59Tnj/L2PSo/WC0c1GPqw7/vtr1Yay45GW9c/JAmi
         zHYcEuYpjRSOmf/gV9Y3aCAvehHmPDRrz6ucgjWcTM7xtxFxwg28zYpet10F+cDNraRV
         ylBYHt7Ql3JY7j9bHtZwI7eDkaTEDSrBYqgdHbn8RDsTqMayPf8fZTD+Q9EHyVCuu6vY
         rIqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=o8ph8us485LeC9WQy7M0+BXxpDo12obtlDrPkCwKSKs=;
        b=oze2FndYImDmmcYuaj0B2AhssPXcO8/svjSc5M87mRmdhqYL1DmkHYDigYj45xeu4G
         2KNyIxh1JSCXLPTe44IPoQFKCC4FPu1FXUDl5Gp518vMdoq7cu5xp+Q8LUytuB63YV+M
         Jn6h1TcS4Qrp3EsFX3GuWGwsp4fzTLD5RleXoTlK0udEMhNcJWci077AmhQoZAacnu1x
         DIbxCVE8bEIFQVkoHY+qTIm0TnFUXzH6p3bhIHxAMjXFtTK8PILSSeqZaNOVEikNl0P/
         P6UxLjGuvhJmmjxOZl/FqMc7/yfOMFtAz2/xF4WTtpBSWkJdg18MWDm5lip8FC4k9/8l
         uK1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iKolr7hQ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o8ph8us485LeC9WQy7M0+BXxpDo12obtlDrPkCwKSKs=;
        b=R7vsVkG0PerLQf7h+Qa8n+SZ08Rj/cfQGgjzAbpSq/po/MpOrfvf0e10S6L83+6tXU
         RclGkdD3GbqY3mNGH3qLmLkQBC7uMgfsqLWgZgYnDwgdRXAbiDFbLjzWJXdBt8gbYU1s
         M9iNbZ5SUO4pSS/MOGMYHoC7x1s2gvpMAB4OPgKxXxYmc54r1FbFJjgFPrAsrW46+PaL
         CdPJY8Ops/sAn5pPDgppXKvhGmlOg1xxtuhSi/dX9ZcuZ+PwBI3tPudfjY39pmyZbdby
         JxiC4teCNlypQ5svhB9va8zwZuTl7kH25fSIYQb71Hv14xo1K5KqvwBoYn2M7BKBRcXF
         PCjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o8ph8us485LeC9WQy7M0+BXxpDo12obtlDrPkCwKSKs=;
        b=pQkwb8TJ7lGIzPMhv3CTsjet8gJ4t3UJoOHz+rhwlVVmY4aD4aBJ2HcnrJw0/9YyyK
         RvWMnvJ5P63BGhdbjqLYPoiU2N/9TNLJQJqoy0xVr2PmwbA3Z1Ck82/PskHEz7Yng4vC
         qbCrzVrE/pQY/MAp1SN90VHbDCzZ8sH1fLXZTyusaPocjVYb9W2wbxzMexVf+b5vXUKr
         5u2pCyTjuqsRr4oKSQy1s/k2yaQID4XKqJPilzH93RWXYmrTDNEYISzN3GvIlG1Hwjlw
         CiRJeIDGhATkeY9saQhEEK8iX2+XlqFGPyZZ1y1e84FQB3iTi8gCfSgJ1V/TYwqfYuTK
         xyBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUbGb7n8ly4f3NWkQ4FUA9LhdnZTk1SwinfghcPLzrgO3r1sNMJ
	sstn6gZRI7/GgjK8aFcDlBw=
X-Google-Smtp-Source: APXvYqxHEDLl0JqGe0mPF+buCN4iTVwIO3VcHY9ywSVNpMyFBwBJR96fNPwQNkwfMoKTESA6jur5jA==
X-Received: by 2002:a17:90a:2486:: with SMTP id i6mr5097619pje.125.1565127480953;
        Tue, 06 Aug 2019 14:38:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a60b:: with SMTP id u11ls24725992plq.8.gmail; Tue,
 06 Aug 2019 14:38:00 -0700 (PDT)
X-Received: by 2002:a17:90a:8591:: with SMTP id m17mr5281232pjn.100.1565127480698;
        Tue, 06 Aug 2019 14:38:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565127480; cv=none;
        d=google.com; s=arc-20160816;
        b=ZsbN0PU3DE3py+89BWW3FpxErOnNAzqyRiksYwnb0h4/M04csYaQxZkfmI4xHyYgR2
         EfMEKwh869JA33MHt5TocWJfPFwotnh4/UaMnVxmMFPIe4j/+lMqpEEtT94/lUkB+Ks2
         sAAVP4UpAjbGv/WeQSRI5CUHiKXlVTp1fnQd5sPGfX8anB/abOJH7AWOZSDeEUTpw3/v
         4i1cv9eSy/nCdweFpZypYo7BZ1GRxNz+emCxe0QzpDjbdA140nRM2EQqBICHMVULtZkA
         aYKpvzJvx/5GGZsbQb0/+fbxOKQOqzbcNnN2npVhJTuQE8fEw9LvwyoFpJJLWVFxzTEv
         igdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1FJFlfDqe+xWn5/qUYaR5uiWTEuvu3ESHUo8rewAAwM=;
        b=rdFInTKlnTbCx645TcqaTfatK7Sz+32uIBNKBIEmMiMZQPBM2lRYXpIlof56RQh7RC
         +J+o1dhIMPRWcnfH+E0bjERvaOBGzWZCgLr826IlxN5QVgtogrsqLLEeoJvzrrdy0F/5
         Wj00yNEvcDX3bnJpIWeq0VmFDLKvh0ur7511zWLJ936yj8EyrhM5Ri0Xb7STRaNlyoyk
         dyeRgoQgtHO2qd/mjIz/pWQU/SMdqxCh+/1HjHaA9pkEPWV7JCIG6RJZRsp1qmDL71u8
         ayoCAdnV7NwEJr1BCgviVMw0+SAChb2yl8nmywS8qTCGWUplilslfJHrWKBtPPcJbZr4
         rhfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iKolr7hQ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b12si2936513pfd.4.2019.08.06.14.38.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 14:38:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 22DB92189D;
	Tue,  6 Aug 2019 21:37:59 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.4 05/14] perf header: Fix use of unitialized value warning
Date: Tue,  6 Aug 2019 17:37:39 -0400
Message-Id: <20190806213749.20689-5-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806213749.20689-1-sashal@kernel.org>
References: <20190806213749.20689-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=iKolr7hQ;       spf=pass
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
index 0102dd46fb6da..bcb8e85a40f90 100644
--- a/tools/perf/util/header.c
+++ b/tools/perf/util/header.c
@@ -2680,7 +2680,7 @@ int perf_event__synthesize_attr(struct perf_tool *tool,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190806213749.20689-5-sashal%40kernel.org.
