Return-Path: <clang-built-linux+bncBDJKZSEQ3YKRBFFS2X2QKGQEIWGDHTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-f61.google.com (mail-lf1-f61.google.com [209.85.167.61])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE7F1CAD8C
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 15:05:24 +0200 (CEST)
Received: by mail-lf1-f61.google.com with SMTP id c6sf557322lfg.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 06:05:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588943124; cv=pass;
        d=google.com; s=arc-20160816;
        b=bsuXsepUbuf8xIm7ut2AJ12X4n9McC3FPg9JjKmh8h1F/5R6VrOzkdrJGZ4OC6lls/
         B/GCy3hJeqTHa4OdJo87ieKMXfM+JGihSoz4vWsXcbcjx/uBzCm8dfoi8apO3xgLeCf7
         7ASzbNzK4dFB5vEu8egI02p6x+VmTPvnZC4vd5pVteAi+4lqlbmThEkRN4M8+Geaqr0B
         CWgo/rJk3XkGlBQFZog6Ttns6XxTITH3Fg4vUaZ3RYh7HQSdNYj7Q5NGiO3k3rEmnk0t
         rwu/k+qJHDMz2+DOjz6u5J40ZU2FHcJ3fAtgn0J1dry5errzBDM1iDINaR4kRRz1yvev
         jb3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=JYt+7sFPEgsfnf5vmuXjKEHwRdBs3s6tvMR5IWhT5HE=;
        b=TyBCJMd4x7NZYutO/OHulKtLXEOOaPl4HcPJqZ/XQW7ELk2XyjjuwrHpbstMcmoE1y
         qpr6PwW9d6IVCnBY1iGjuoCSxx/US3ml4h8d6mt6gekKxif4HN2DxyfDCc56wnIjntlp
         3Z5KlRuaRMvCfn3QjCm6lyC07rBK2xFuogsdP+GC5AkWQ2VLqebAaIEZ/5oxYJFZ6Y4r
         bWRPWjz9zGUnf8ELT2iJbvsTeIyt+RxJv68dj5MSRVDnTQbUn/3efBUuXDqtFQ5MtGdV
         iIS7BAUaTEjfj/A9OKzNTgTVlVOqLVGJGYxMuUBeVcfVofyrzjy2NBD8laUldPKloMWb
         BbEg==
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
        bh=JYt+7sFPEgsfnf5vmuXjKEHwRdBs3s6tvMR5IWhT5HE=;
        b=Z5+3zKISJ+xs1dnv/wy7xnbfd73whcMLAxrgvCVcDqRg+lnW8A8Ob1u6LYeN+qwPTe
         Un35bH+GDZlRNyMPBNSjOEHEoHV+hiBpxAatxD6U9m3GVs7D0kNg6wbouprOBCL4BlvQ
         udEcrFnvzPVDvU19XATohWPd+xupgbkMn+HLzFo9u1Gsj1tqFD+cFnd4c1ViBL/28O9w
         I9oI9OG7jCV7U74d4eD516ShV9DDPclWNxXUIqLDLVjrVUg/k/F32YUA2QEBO2jY6VYW
         q66jB4ErRdpItwsbHj9WPNf14fPSOo8BP5y7FQMvKMrkZi+tIPqoqtnO/s/HSu1z18uN
         kCAQ==
X-Gm-Message-State: AOAM5338S7kqO0yEaXW+QlNwZXfHC59JbjRXD9Y7SqfVO6gl6lolZCfu
	UNF61LcEXsbP7n7veEpJKD8=
X-Google-Smtp-Source: ABdhPJz0eG4mOJDRrGB8kC+UfXTaT1MXaUUdzSFGv411rLjIyOiLmvUIkjmsFa0wRPqbUBalWMZY6Q==
X-Received: by 2002:a2e:a0cf:: with SMTP id f15mr1571086ljm.165.1588943124456;
        Fri, 08 May 2020 06:05:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ae17:: with SMTP id f23ls230086lfc.9.gmail; Fri, 08 May
 2020 06:05:23 -0700 (PDT)
X-Received: by 2002:a19:c349:: with SMTP id t70mr1788993lff.139.1588943123898;
        Fri, 08 May 2020 06:05:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588943123; cv=none;
        d=google.com; s=arc-20160816;
        b=NkUUpPjEGaWOJeWchYTmlI+64jcg7BL9xL1Y7WWCvFwFkk6QdW0H1tBvVNgYHTI2dC
         XOe17bWrYxpLV/DApj4jUkOsuZHE/fkyQ1D+0jnTDhWtuBm017U1ZL77yY4dTl1w83q1
         xdRKozi5y6YAaFyFovC7TYW1OHo+oFpQPbQbhOF2xDxKEL1LeVe6NSXL5kKXEt3dHcqx
         09Evl++VBFgJHlZ1ff4AasS+Ty6EArlKAXXAAHeVAym+r+RadnBdAiRi3dz8SxHmYZm/
         /HGbgRx30qDDaWtd04/T2WvWspDZeeHHCyqDTstkBdHmNT7pDqZoo50as/VB3/4a9TZV
         tGiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=z4FeIp7PZJJGjRkR6zj+Iyzqf13NwvzxI9Ogoe4sh1o=;
        b=x7FQKDBxH6NlaaiZM3Gg+brVX8aeqUOgVTLXk9EiZeMV93girajIqHGg4Vltb4aAPF
         jaTmL7q7EnBsjy8fDr+W6jR/qtGLSnbYlMGqzWCSDBYAqGFnESpwTVX+oY6TJnMj0cYm
         5FU4ZhHc6XWUcB3gG7kpVTaX5QRLzoQ+hoY4kjRJk5S6lQGu6jlLosIksdV/P3841uFy
         p+64+5XS6f36ES6UnfuQojaPI2S1OlEQ5Kh/+WuTKGOvjxGXLDz9saSfadtBvWkTFp1W
         jZ90UGtXaXBJIV1ytUDoAoOIfhNcSoSJph/SQWkSLcQFQDTOtzup4+E5+YAoW4UR//nR
         rvJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id c16si85769ljk.5.2020.05.08.06.05.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 08 May 2020 06:05:23 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1jX2go-0007bA-Tm; Fri, 08 May 2020 15:05:19 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id F41EB1C03AB;
	Fri,  8 May 2020 15:05:01 +0200 (CEST)
Date: Fri, 08 May 2020 13:05:01 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] perf parse-events: Fix another memory leaks found on
 parse_events()
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
Message-ID: <158894310185.8414.8576705956895517030.tip-bot2@tip-bot2>
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

Commit-ID:     ba08829aace99b23da31b9b71d8ed5d40a44ed49
Gitweb:        https://git.kernel.org/tip/ba08829aace99b23da31b9b71d8ed5d40a44ed49
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Wed, 18 Mar 2020 19:31:00 -07:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Tue, 05 May 2020 16:35:29 -03:00

perf parse-events: Fix another memory leaks found on parse_events()

Fix another memory leak found by applying LLVM's libfuzzer on parse_events().

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
[ split from a larger patch ]
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/parse-events.y | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 6ece67e..c4ca932 100644
--- a/tools/perf/util/parse-events.y
+++ b/tools/perf/util/parse-events.y
@@ -326,6 +326,7 @@ PE_NAME opt_pmu_config
 	}
 	parse_events_terms__delete($2);
 	parse_events_terms__delete(orig_terms);
+	free(pattern);
 	free($1);
 	$$ = list;
 #undef CLEANUP_YYABORT

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/158894310185.8414.8576705956895517030.tip-bot2%40tip-bot2.
