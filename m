Return-Path: <clang-built-linux+bncBCJP7WOE5UIBBS6S22CAMGQE7MXWJAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AD2376B50
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 May 2021 22:55:41 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id w8-20020a4ae4c80000b02901f88dd1b75dsf5259167oov.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 May 2021 13:55:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620420940; cv=pass;
        d=google.com; s=arc-20160816;
        b=WIiMUQ0t7pGw9PzPux6OpsSAA8hcUl2NBGBCD9r/3c8CgeXo9G7+X+Uej2tOUZt710
         SWUYjmT3KuPaNrncZqbbNW6bbaKV/GDI0cJPUONthr77+xIG3oVhiwrQp9iJKivAQy9G
         D82pFClWeIcspeHAyKWDFh1VhoAVlSOY5t6kwRysov9t+NfdmkTzv1KWht39PFgJk9Bk
         uGkdbVm3sOyf5grMgTi1toKZo7ZySW+TyEGp8UVBA+AdsmPTZ+lgf8Kk8QTAnzu0X41P
         y4VKwBcDwEI6KjgnejhJMQtl/KowOqULjjC8I79C8zQ7gD4RJ5Z4j2EeKlSecwRtRpN6
         haWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=on/20G+nijH8kvhB7FjuStYv00RqzbQEUUYvcA8DFlU=;
        b=aIjSbcV6Nlg10zMs5YWnKAPT9VGiEiLivc/4NnwWSOX+o5JyRotvKNmyXBBIBZVbBh
         2Q7ctFjXR3Ck3QMEzljfJ8/EYst44vk/JVUwQn11ajPAEkoEZleVeZK37AoweZ0JDuDa
         5P1Hp/F031lZBvE9JZ+5S/p0t7RpSU9/BhFbMeoGl0uyshVyFn8xNrktdFLkEWlL8qv3
         hrMhFlMNiZAi/fZVPT58eIYktYG9Gkd1YD7G/nwrQKHN0IovVfzhyMbC9+VppwTyrF2x
         ag9zYbhkG8Y882uYyaiF1dQqYjTNcSsUxCXH4LLO8ETWhzKllAOArH2USj322kqKoktc
         mBLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DFII9SqW;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=on/20G+nijH8kvhB7FjuStYv00RqzbQEUUYvcA8DFlU=;
        b=ZKTwjW1yOVkF/hNXY5ZzmawMHYZ2PrKQUju6mlw2vnFb9BzSm8Yx60aGWkLl37jmF6
         /dcxn71lhyM7f5tkYXl5aM6ynRM3WSOdyjR32NsYvfv4JPDyjwgMJMSN5gwlVYwvc2wB
         FEqgD3o+TF7HLwcfmVFtrt3GRw1PVB69PWMfOwLkg1IzxpVZna1rx722epmFK1w7c44h
         AOKPo8CL3Hq5WUiu+2E/b5NKLF0CWTovW35hiaN0mKQRRCRi15bHUn5fSMNuO2JmOKfD
         L2MTlTzms9XxpL3sdmK6LJhOb/0k2ypiOKOwyr76OMjniv90Zqx0h8B4/LGtenx7DmqY
         piCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=on/20G+nijH8kvhB7FjuStYv00RqzbQEUUYvcA8DFlU=;
        b=rO/kanN4KWhH+JeMJfSwMaoReq25Ml31NZkf6dlG6PRSRiBJsQMyRsghDCkLiE708v
         1gTjM2c9uLBjPc7KDdoGVkmm0yJI+XuvhNHitdsxEud5pRyZk5SklaRsBj8pDabR39kq
         IVY2isbApQ1xDUz0bHeqd9+/HNOLIMTIj5T1nnwwR31lcWIWNm1oOrmhNWvGPDVUbY76
         oO8b8izAYqf/2xY72GUhowH1dXZgV9dRynhM84j/LEOVikl03MHGrF56VYPT1+8Xidf5
         X11hcbralMT6uFcKGqotC0+UuqjV93A3LdQ/LLEJVUQ8GCFV3NZ5GwJt6ntxeYLHrGLH
         WbVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532NBA5Km3LEtfAfqztZ8QanV5FOTEwL3z0igGxwQSWEnJsZoZE3
	7jHXMcCiz+fOPSjq5i4TAg4=
X-Google-Smtp-Source: ABdhPJzuB0ffvmc6kQ4pJswVHBrDPNh0C57cx/e4xviK7C4aSoviWyR1uRGGl7PH2GtJwQrXuiGjKg==
X-Received: by 2002:a05:6830:1d5c:: with SMTP id p28mr4807379oth.280.1620420940056;
        Fri, 07 May 2021 13:55:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:4303:: with SMTP id k3ls79982ooj.10.gmail; Fri, 07 May
 2021 13:55:39 -0700 (PDT)
X-Received: by 2002:a4a:b389:: with SMTP id p9mr9140858ooo.71.1620420939716;
        Fri, 07 May 2021 13:55:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620420939; cv=none;
        d=google.com; s=arc-20160816;
        b=fCJGE8U39Xk/GLs4E/H+RJyvXWA6zA7rtIDr7JqheTl3BUbPFYxZnayy0zaof4wfTR
         3F1ehO46OIoa7Rrkj3f6wPPR2YLZKXeO4EXtLQ3Hla49xX2SqIJ4ivd9WJ8aDp/ig985
         nOHySp+xbjivGCDwSDxFunr9sibq3A4eS70WDbJFDzb3iOu80wWG0sv4OPS2wGVgzoOk
         EmPuWsngCCHnF6H3fnhWQ9yxg7wjeAa9nCmv3E8jvfmTxGkvSWkmdlSMhMnwVbXg8cwp
         TX3v2E10KUj0BZlL+2l/vo4D3gzanGWUxdzZIU62y3LBeeL7AQndSC38gc+IChuD9W+Z
         wT9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JjJoLbgf5BX/TlG1bI+Kk/boPZKnP4KZr4LpucGo6G0=;
        b=cjeKcFb441wv+w4OPHIRlP3AYc7tX84cskCzEimZcbwhzGA16oSWHNoielMHruPnNU
         mdpm9PxUh4MknbA3FmC7+URtJcnnj2ahGtL1mt8CTkQ6mw/J1DVE5XVv5y3LIETn2S8C
         bPcs2R0+88azl3RsnLO1ECiGYrBkmbbQIQ6FgAoApCIPC0CCcbPqzewtGH3XoqwUF0fu
         vTfqAjnuUSk1umhLUC0BkqSmyhK89swAfD2FtlWj6EzB62xxHzz141cNpKixv4BEEb2U
         UvdPpumfvaab/qKAMn69XugQ1FAyAlzjjFC2xzLplxmp5zDqGiT+FrPNm2FEZZNiEcOk
         88rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DFII9SqW;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id k4si614639oot.1.2021.05.07.13.55.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 May 2021 13:55:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id gc22-20020a17090b3116b02901558435aec1so6267895pjb.4
        for <clang-built-linux@googlegroups.com>; Fri, 07 May 2021 13:55:39 -0700 (PDT)
X-Received: by 2002:a17:90a:6c62:: with SMTP id x89mr25313809pjj.213.1620420939064;
        Fri, 07 May 2021 13:55:39 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:3c7e:d35:3a19:632f])
        by smtp.gmail.com with ESMTPSA id ge4sm13161565pjb.49.2021.05.07.13.55.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 May 2021 13:55:38 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Seth LaForge <sethml@google.com>,
	Ricky Liang <jcliang@chromium.org>,
	Douglas Anderson <dianders@chromium.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org
Subject: [PATCH 2/3] arm64: perf: Improve compat perf_callchain_user() for clang leaf functions
Date: Fri,  7 May 2021 13:55:12 -0700
Message-Id: <20210507135509.2.Ib54050e4091679cc31b04d52d7ef200f99faaae5@changeid>
X-Mailer: git-send-email 2.31.1.607.g51e8a6a459-goog
In-Reply-To: <20210507205513.640780-1-dianders@chromium.org>
References: <20210507205513.640780-1-dianders@chromium.org>
MIME-Version: 1.0
X-Original-Sender: dianders@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=DFII9SqW;       spf=pass
 (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::102c
 as permitted sender) smtp.mailfrom=dianders@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

It turns out that even when you compile code with clang with
"-fno-omit-frame-pointer" that it won't generate a frame pointer for
leaf functions (those that don't call any sub-functions). Presumably
clang does this to reduce the overhead of frame pointers. In a leaf
function you don't really need frame pointers since the Link Register
(LR) is guaranteed to always point to the caller.

Clang's optimization here is a bit of a pain for us, though. A human
might have an easy time figuring out if a function is a leaf function
or not and in theory we could have a way to lookup a given PC to find
out if it's in a leaf function. Unfortunately we haven't passed the
Turing test and we don't have any auxiliary data to help us.

If we just ignore this problem then the end result isn't terrible. It
just turns out that the _callers_ of leaf functions won't be logged. I
guess that's OK, but it could lead to some confusing traces.

Another option (the one proposed in this patch) is to always log the
first LR when we're tracing, assuming that we hadn't already decided
to log it for some other reason.

Good things about always logging the LR:
* clang leaf functions are handled better.
* if PC is right at the start of a function (even on non-clang) it's
  handled better.

Bad things about the LR:
* We could log a "bogus" PC in the trace.

I believe that the most common "bogus" PC that would be logged would
be a PC somewhere in the top function being traced. As an example, if
we have this function:

  non_leaf():
    1. Setup the frame pointer
    2. Call example()
    3. Do something slow
    4. Do something else slow
    5. Call example2()
    6. Return

If the PC was in the middle of "Do something else slow" and then we
tried to trace, our stack trace would look like this:
  Top:  a) A PC in the middle of "Do something else slow".
        b) The return address that example() used, probably in "Do
           something slow"
	c) The caller of non_leaf()

Specifically you can see that there would be two PCs logged for
non_leaf().

To me it feels like this is a net-win. It also should be noted that
the consumer of our trace records probably _does_ have more
information than we do. It could fairly easily ignore this info.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm64/kernel/perf_callchain.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/kernel/perf_callchain.c b/arch/arm64/kernel/perf_callchain.c
index e5ce5f7965d1..b3cd9f371469 100644
--- a/arch/arm64/kernel/perf_callchain.c
+++ b/arch/arm64/kernel/perf_callchain.c
@@ -326,6 +326,20 @@ static void compat_perf_callchain_user(struct perf_callchain_entry_ctx *entry,
 	while ((entry->nr < entry->max_stack) && fp && !(fp & 0x3)) {
 		err = compat_perf_trace_1(&fp, &pc, leaf_lr);
 
+		/*
+		 * If this is the first trace and it didn't find the LR then
+		 * let's throw it in the trace first. This isn't perfect but
+		 * is the best we can do for handling clang leaf functions (or
+		 * the case where we're right at the start of the function
+		 * before the new frame has been pushed). In the worst case
+		 * this can cause us to throw an extra entry that will be some
+		 * location in the same function as the PC. That's not
+		 * amazing but shouldn't really hurt. It seems better than
+		 * throwing away the LR.
+		 */
+		if (leaf_lr && leaf_lr != pc)
+			perf_callchain_store(entry, leaf_lr & ~BIT(0));
+
 		/* Bail out on any type of error */
 		if (err)
 			break;
-- 
2.31.1.607.g51e8a6a459-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210507135509.2.Ib54050e4091679cc31b04d52d7ef200f99faaae5%40changeid.
