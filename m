Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBLXFU7VAKGQEHNL7RCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id A544283B7C
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 23:35:43 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id q11sf49030365pll.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 14:35:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565127342; cv=pass;
        d=google.com; s=arc-20160816;
        b=jp7nr1imNF9F+ANC26+kXAKk1KFe622BDOWRi7/72GHUJg32Ru4fA2m3xLsORm1+pS
         MvhKvcsl9HN0y+KKAtBnHhxbLTuyRIJGNOy5TgZ2U9uIwZvvw0cGs5kTx7MYmxQSdLF7
         +htbyFthns44ZNMG15KyZFh0/WF3qtsMbrc1FYisN56TwSuYucdIGxDHq3WhBd0OaLVN
         v+rCEqtKKgCft2IBSnWnal961pFGr2q7SsjR9mSH/aMB/dXOGwGcLP3XMCWt4+PZYfbs
         9iBxEP/EZ2VHKrWWZ7Pthl1C4z9be3eg6+5Xjn93dq4ma10AF4Z3WF+ALVPGZmCLgLgu
         On+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=K5Y0guiZT6onEAbxjqhkPg3MFB+973F7wtEoe8AiLd0=;
        b=bdlPbaPxhg4wJRSlu1pwAJBUsDa7yiNV6zot0oH90QBarkuTKxfIJfSQfwrzwVgfoO
         q8tzRTuKQz2xjj4bfpS4i3AcEjxjiCg2tdGp79hSzEOIH9tn/qtEJ9l3rJkTw0SjaVJh
         WIIowHwavkdVjg7hr/IFMeAtxT/rqmuV51wNg3ehiDERdtmyCQehxbc+ZIH7+F9L6oIZ
         Z1Ee/J+Ti0bKfSbUxE+wUvMMgpJMAKstMp/VP/dzeybvrV1lDqpuTtU2gDuyKftBWCWl
         EHsJgQCcCfBi0PuazaSTCZU8ItM19SqPB9CFD5QFTp2k0I70Og+amrMwEdt1gWdlc870
         jSjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QrxRfgxw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K5Y0guiZT6onEAbxjqhkPg3MFB+973F7wtEoe8AiLd0=;
        b=eHszytguIQqs3uKGOtZMJjTAwgJwQMmxwjH+hQU/l0kMRCZm8OgKt3P3Sxel9McFci
         kL9q/glXm6w89ePWFJ26/ZrBBvgXb4MUt1+p/jIxWIDsq6id2wZUjnevHGRtbCuGr3IP
         K6T70JeWDwyfU1sJJ1W6eIVaMvvGMq8JrHNSorHaR36YnZcb/cBvYuZjSz35R0/nGAG3
         fN/CHfzPBJW8zzNt0yAtnMRCbdF0IexiRZDqKQMnt4ugl69wWSJGO/dlh9jTgPPFWJ7j
         t0fvMvGOEVaKhXQZSlqyBpwMO6fH2DhPSrFMjYzUz/SGISQd/d43qtEirogzaYDzltiC
         eRPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K5Y0guiZT6onEAbxjqhkPg3MFB+973F7wtEoe8AiLd0=;
        b=aGd62w3tdy7nS29J+L7E9F7tLgRNjFa5DzDQzQ5aOoyLyh4usvFLEVc54yAV6gaQyi
         j2lr+YX/bAsXiGtgsGfmEX/fHsUSjcT3HUy4+Rhoim+R7g0MLgNJPO7cnYneVY9DWqrs
         AaU1RmxNJ0uMjy4Xb9M8IR0kaRCVbtaeTRgy4JZXvP2eH4rex6viMppe2Dkhw9LWq8/L
         h4DAfqZPqaHMXzCs+EGGr23v4jpsGAiz6rHsGIjfAHMEbcVvIXM8Pt3hBd80Q9gpko/0
         bf5v3XURMFZD+DixJyTjUFaIi7eiQ4IUthw91HH9Jv76goGjtLTLaxR7ET4jQpEyMNRo
         hEHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWDCa1wBoR4SfwQ9vfXMJq4t1bUrIoSbVBLFFBGu/uDVdORQZQm
	lEpuFp+oHp5PW4imBYKHgb8=
X-Google-Smtp-Source: APXvYqyGRtcPkuB5nKW9GTudX0oiJ0B+wHChoMzPPfnCvn6oTYnYY2GXNXbvuhYbxcHUNXsiSi1NhA==
X-Received: by 2002:a17:902:29e6:: with SMTP id h93mr4849498plb.297.1565127342248;
        Tue, 06 Aug 2019 14:35:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:372f:: with SMTP id u44ls1379371pjb.5.canary-gmail;
 Tue, 06 Aug 2019 14:35:41 -0700 (PDT)
X-Received: by 2002:a17:902:e20c:: with SMTP id ce12mr5289561plb.130.1565127341929;
        Tue, 06 Aug 2019 14:35:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565127341; cv=none;
        d=google.com; s=arc-20160816;
        b=ZAKntFA7+VUwiK8vWBnEcHHdZl2Nc8VbFeWo5rimtijM0GPltIcHYvHWmQMdC54n/G
         1NxAT6TCz+e3blbPjbDfeJMkwmvvX6eXalEtvYuAQtwHPnFCnxx5JeOv4g7uuBWSnGu3
         9hLZGIz7hkFy0rxoBiXxd7pD7leiX/Bf+swilO+EGTcCIJZ00NzKURNNxyIlNiwVKXBW
         G9FyHIcIONdwWtsVGT7QUps+Z6y+ol4gPheftfmIaqSLYyL3OO2ajXH4SCP894dLPdx5
         O1VRMG+QYNEs+M9rE7INMeRMv52jPH/xPaPpAtnqtG3JgKruUAigoNmDM1oAPtQaycLj
         72HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Fb8T2Y4DzNbFYrMHvGcMdDWfvP3hwtzvMG06iWdf3qg=;
        b=DKwwXzxyH9b9/Iu1Pn0jUSaAXzJNRpasblqBvGW2m7xt4vMeWrldwCWvIg0+HJNKuA
         CS1b5pg111Qb6oR5dSpNU/xHtOAVXI8JLZha2814ZAZJYPRJmKywTDdcnOTVA2gWV6yL
         rzNGeqGcwBPAyMuFXczvKLFDdLAIcJ+TxpQ/dUzPfYB5wnE3ulHe7UgbdMYBad0SFhO8
         RT1WRIRuqftDglQr++uYeII9d34xZVKO1R1gUaf4CF5czB9/hXSopAbEk+WtWLi3PhHR
         JNM3RZH8QAuZNpz/HZ1CkNiG+4jWgGnZgWNBPv6S6X5AVdikxS1OtpjeWuzAyk9vT9dQ
         Ztow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QrxRfgxw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r1si786838pjb.1.2019.08.06.14.35.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 14:35:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 51EEB217F5;
	Tue,  6 Aug 2019 21:35:40 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 09/32] perf header: Fix use of unitialized value warning
Date: Tue,  6 Aug 2019 17:34:57 -0400
Message-Id: <20190806213522.19859-9-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806213522.19859-1-sashal@kernel.org>
References: <20190806213522.19859-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=QrxRfgxw;       spf=pass
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
index 94278f914cdca..3a1a1fe8fea3c 100644
--- a/tools/perf/util/header.c
+++ b/tools/perf/util/header.c
@@ -3372,7 +3372,7 @@ int perf_event__synthesize_attr(struct perf_tool *tool,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190806213522.19859-9-sashal%40kernel.org.
