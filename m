Return-Path: <clang-built-linux+bncBDJKZSEQ3YKRBDNS2X2QKGQEVDRQKHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-f58.google.com (mail-ed1-f58.google.com [209.85.208.58])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AEFA1CAD8B
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 15:05:17 +0200 (CEST)
Received: by mail-ed1-f58.google.com with SMTP id p12sf678475edi.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 06:05:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588943117; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ly0hkX8E+Q6qU3pXGYhFSHnpTuyhHTVYZ4S4Bevk44KHU+wpa/wmU6bbhsfDfIHxY2
         WG0tCgMjwuDKCVBo6+vvMnfwuXMc6Xr/UejpZCL7fAjeDiND0sk7xfuquGG15rmOHO7m
         g1jo84mOxbJFUV3xoo0tx2tnTuh5DwE+4CTXI3wUKzVid2Ab6Xl7FrvLh0Dh6kgQAakB
         9+onKlQDZePKrEkGQLt+1NCAXHArUcrGkZ8lZWtCaJ1cDJ59eAb1EgIY6D6ZbDZSdDgY
         3WuLleWgpdR+OHUdSRHlaOeuq0F/rQu7Ov8kjnGGYF0F1Po9Za8x3EOcf27D70XB5smi
         60gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=Mb8/dou3qRCWy2MdOUyAQy9cJSMiZl/e9XotIAetg5E=;
        b=snNqz4rVMKa9+TNmk9lNKtNT7dRwgu+bgxySYYCI9MgZY30raHf9XIMeFr08RsjmJl
         WFCxMpZzDxT8i0RgQ1z/beIJp0jhqSvwX31VA5cEedhxW2N9+Bxydx+NgzRGelU6uPhB
         p1Tu0m6nXyqizQlrGakNT2iQvX1JES+WVBl8miiY/s/z/tohpucwnFw2JHWlIkJ9k+Lz
         IJnCRQgmmrUcJTCs5c9xluCOQu39TPDU5Zv/0Tvb5Uq642ax/OhGOmd+mir5Cevb5kdZ
         0tQXpsQXiY63LgPc9XrMJjz9EQhAxhAmQXWbv2UxnQVzFrOizwLB+Llho8kdPa12uW3A
         tEmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:sender:reply-to:to:subject:cc
         :in-reply-to:references:mime-version:message-id:robot-id
         :robot-unsubscribe:precedence:x-original-sender
         :x-original-authentication-results:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mb8/dou3qRCWy2MdOUyAQy9cJSMiZl/e9XotIAetg5E=;
        b=jN+69yxf39XkwMGvJxjACUqdoSXNF8uSNeIB2UW/5D98HrWBkiKxTZ9xgiADFGPzyq
         wvNtkQm073lAd4Er6XlGADWhow9ttjCwu2apJaXhVD44NPlbMr/jVEj+pRtVbm1/KXpC
         JaMMjnKxDnesaUymz/hVlOAlwns4htMEJDlDCKF090JRFQrBKtG+CjykUaUC2f3RHRZP
         sooiJc1jTM9oEAKKxWz2ofNwahlY0Y57pOcyV9MEoV+2u8G3sCQa9kwzTtRPFBS1vQOW
         FMRA8WY94omHZJWgLuEAQorrtaE4IIDE6VKFvPRu1FCse2B45a0cIZNPdnNKHOie6xJk
         LZRA==
X-Gm-Message-State: AGi0PuZf27w24wbVmrtJtgo6ZGklg8BtsEszWJTbn/8yv0dW52c118iR
	Hn6tIegp+6aYFIpw4+dWuxk=
X-Google-Smtp-Source: APiQypLpsyfPCQ6I5aO20FX9lRJOF3+ziNE8mw6fsVHxW+QZAo8G4dYDSDLuzLUso2XcR2fvtU4uHQ==
X-Received: by 2002:a17:906:1199:: with SMTP id n25mr1857682eja.30.1588943117198;
        Fri, 08 May 2020 06:05:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:d511:: with SMTP id u17ls593030edi.3.gmail; Fri, 08 May
 2020 06:05:16 -0700 (PDT)
X-Received: by 2002:a05:6402:3047:: with SMTP id bu7mr2067687edb.303.1588943116710;
        Fri, 08 May 2020 06:05:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588943116; cv=none;
        d=google.com; s=arc-20160816;
        b=GJpuouP+aV7DDjvY25bF0slx0G0/degFeen6RVZW3BmJgFJoMS4S0teVOfLBymGrwx
         qj1WX9VxyiVN5Hl6I0pKsxGrh2BwkwtdB7oWcSx56BSgDsLNfQGFyJ1LIrAFDdZ6YH9d
         Pjn+8JM62lz1ofqbfO4SLBSyorTg8UbLRCBVkFsuQCheXNqmk6SYSZZfh6SCBrgZr40j
         Xb+OYQDXxHdyW+L9HWl9fI6eutgj5ZVhCKfX0i92V19q4boXucWybd9x0XtsuPMy+ZpG
         YhfNXwuMamRYrn5FGSvegF2rDSk5anNg+hPi8smPhtPK0w4aGOo2fcja107sMVhYZSjh
         Etbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=kfuUEoW7ukEiJ9SDG4t5UY5Re6gn83lRIYZyxtESaNU=;
        b=jp4KL3VofpuujU3H8B3IaF4TNB4sVFQv8gqVLZFpGzWYH0+eZLD6L9K2LQHsdr834F
         yR2GY4RzWQWplloEaGgQksHwDUCg91OvobrLIF2NAa08YBpaxlrsVM81yT4ToDag8E+R
         A34usnPbEn0ucHlALpSRkTfRdG/iZRYLAG4N+lvZIiwXm2fnRxnqq+VoWsyQGsclRumz
         nIvDAb9CsExwN9+TqHgef5c30BwG35TlfURognbekK5YL+WTeuiKmyVeuTbM0ip1+S/s
         AqYKGiS94nRMNtfF6m5ujNJ+VW1qeU4Lr7u1R3iRKuibrUlcDdEGl/xEt4kob9Y8/fFd
         2mWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id by5si98222ejc.0.2020.05.08.06.05.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 08 May 2020 06:05:16 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1jX2gl-0007cr-CT; Fri, 08 May 2020 15:05:15 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id D12591C0858;
	Fri,  8 May 2020 15:05:02 +0200 (CEST)
Date: Fri, 08 May 2020 13:05:02 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] perf parse-events: Fix memory leaks found on parse_events
Cc: Ian Rogers <irogers@google.com>, Jiri Olsa <jolsa@redhat.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Andi Kleen <ak@linux.intel.com>, Leo Yan <leo.yan@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Stephane Eranian <eranian@google.com>,
 clang-built-linux@googlegroups.com,
 Arnaldo Carvalho de Melo <acme@redhat.com>, x86 <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>
In-Reply-To: <20200319023101.82458-1-irogers@google.com>
References: <20200319023101.82458-1-irogers@google.com>
MIME-Version: 1.0
Message-ID: <158894310274.8414.12032385963685476913.tip-bot2@tip-bot2>
X-Mailer: tip-git-log-daemon
Robot-ID: <tip-bot2.linutronix.de>
Robot-Unsubscribe: Contact <mailto:tglx@linutronix.de> to get blacklisted from these emails
Precedence: list
Content-Type: text/plain; charset="UTF-8"
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tip-bot2@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tip-bot2@linutronix.de
 designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
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

The following commit has been merged into the perf/core branch of tip:

Commit-ID:     e8dfb81838b14f82521968343884665b996646ef
Gitweb:        https://git.kernel.org/tip/e8dfb81838b14f82521968343884665b996646ef
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Wed, 18 Mar 2020 19:31:00 -07:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Tue, 05 May 2020 16:35:29 -03:00

perf parse-events: Fix memory leaks found on parse_events

Fix a memory leak found by applying LLVM's libfuzzer on parse_events().

Signed-off-by: Ian Rogers <irogers@google.com>
Acked-by: Jiri Olsa <jolsa@redhat.com>
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Leo Yan <leo.yan@linaro.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20200319023101.82458-1-irogers@google.com
[ split from a larger patch, use zfree() ]
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/parse-events.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 5795f3a..6dc9e57 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1482,6 +1482,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 
 		list_for_each_entry_safe(pos, tmp, &config_terms, list) {
 			list_del_init(&pos->list);
+			zfree(&pos->val.str);
 			free(pos);
 		}
 		return -EINVAL;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/158894310274.8414.12032385963685476913.tip-bot2%40tip-bot2.
