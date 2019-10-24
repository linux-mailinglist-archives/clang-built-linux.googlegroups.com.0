Return-Path: <clang-built-linux+bncBDPPFIEASMFBBPPKY7WQKGQEGX77CQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B73E3B98
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 21:02:23 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id 74sf14946903oie.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 12:02:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571943742; cv=pass;
        d=google.com; s=arc-20160816;
        b=YB13jZF0kEQnHw4pv74WpxUvvFvwrP0vBQEsaOwCZMxjNLohQkQiWLrGeiXmOXAIl0
         CJnxSyVGLgH5dy4REzVga6T33ny73Ww7Hzhz4jVYji/FWVNwBMEHPIPWBvjBUp5n8Pxo
         BrbA3XHE5VlPDDyH5igGkk1ic1k4Rr3jqe5TT0aFQtbZogQpTC6obFgKs4isGDtxviEe
         u1shjlq1hADgmJIYX/gfM9uDrOuEOrq/e2BPuw+cADSfRZ7ipOKRmAG6RpIVn1BoPKGd
         09blk4YlU50kOqj01eMo8sahUEacioguB3tjJVE0gEjRxXbu185hmXiktZHyirA4Udzk
         wi1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=RDwsz167pZBFDlGqpA9Tw8sM4gPhZ/zD8DxnoyqXgL8=;
        b=kckuzwpnrH/O9pqxwuNrIFKC1fpIpZ3SAXKsZgQpAvprg+yl17s6iePZpwpKgV5z8z
         VGYq9Sn3q0ma+zMPD8GFSTBxezb6HZ+lLtgSpC0TNkODGiU+A8x2F0krc8DCOx3EeIch
         xZrLfZQe+attO09KM7XKVw8JsiFG9dgTp8h90DlMjl6Rn4eIj1PCm9rI3XlpUl/7apWU
         2Pn9TgJPrExV7p61nX08YcgdvWC8wdsSITP770rtc4DJN9dsWctyxXL7Sn82MmpvMy4m
         V95sys1g/IaFbs7CzDfa5wMIF7ybBmK7pYxDkcwZIhYlh6tQhSDU2fn0N1HjgAjmQHuK
         OQ+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZDhWZ5D7;
       spf=pass (google.com: domain of 3ppwxxqckeeelurjhuvjrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3PPWxXQcKEeELURJHUVJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RDwsz167pZBFDlGqpA9Tw8sM4gPhZ/zD8DxnoyqXgL8=;
        b=qWC05/icPN/0xZMKReRj8Ud8WyNomjOLh9EB0paZ2IsFy/wDaj3mqN3cTugcZy3sp+
         WTD2kw6s2wOUUCrp4ZYxEdnNaI+n2EtF81FjyWsuQ4dPBxWLzI5u7PliHa9Jg811iClo
         U/LFeYX+BKuodlGkWvgWafeYy0vYEXr8J/8qDNQIc4ghKkc62kIG08F5bE1aMUrBFqWe
         11i4SwTKVT7sMbMoL/M2z89Mluz1s28g+XK3hOu/EW4VQLTzKlZyX2F/EZTJ8Ii/ov0M
         l//i7lBaNVdFf8mts8s55iR7kMrOfkxr7/osMYVgyRVD1UhNBUWLOzo6J9OXCVOyA+lw
         Y6AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RDwsz167pZBFDlGqpA9Tw8sM4gPhZ/zD8DxnoyqXgL8=;
        b=HODIqxSQvdxCawP0CHaDfot9jMAIB54Suods1L8So/cpjbVlc+R8eHgB4+jIW9f7g6
         C2Y8qIWkLZ8xIDFiIy15bXherTmYFso3Qi9lcfshWOT/CMJOnvayl0YaqyenFTuAkvZy
         n5fgw93dr1UmYtY1Of+nvJ+i0UoNCo4wjmMIQs3A5trGgzFcLbgDgV3+NAJyjZdajdFI
         IhbP7I6lngkqeK6fJfFJ60lHZU0NMVspJFyElRRiaBKuU4cokRyKMjXgu4U9KOLzOEzy
         bpSD7j2SL/KM1rixcUHRb6S+LqPKVbdLO0v/WzdaxLCK6+fpTm+cbruZAWVHnP3S0EfY
         ETWg==
X-Gm-Message-State: APjAAAUae88kKt/dxfSxZuerqWBRsq6PAsNyEBUbpilB2mLIB0cdgcJx
	ePqQtgfhix4bR8TiuFyWRoI=
X-Google-Smtp-Source: APXvYqylYTRRhA+FtOr5rOWDXjIZSS6hETzmNkDsHFPvgtQSvWHOcJcB2Fju9TrnNUq6OPa0s3r6Rw==
X-Received: by 2002:a54:4797:: with SMTP id o23mr5706127oic.50.1571943741765;
        Thu, 24 Oct 2019 12:02:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:688:: with SMTP id 8ls1862824otx.9.gmail; Thu, 24 Oct
 2019 12:02:21 -0700 (PDT)
X-Received: by 2002:a05:6830:13c9:: with SMTP id e9mr8874524otq.288.1571943741355;
        Thu, 24 Oct 2019 12:02:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571943741; cv=none;
        d=google.com; s=arc-20160816;
        b=0IZ6D2E0Zknxsmo81OwZsq/JL66GWdrgrWMolsFT5QNWchH6oIbfMDj77QdBbhn3AU
         Asbvs3VsGdD2nixceibZrk9TNG7nokAYqoys2Xk/Yf/h/O/B0OQ0GgTtV+xmyi8U2sPd
         klgwAsp872UseTdiQtLvU3/BXHJ7TAkvPqYgd4wLgGPa3SdqQWvFtFD2Fno7J9H38WGx
         nDsZ9uHaiVtDR3Fj+0qmKBlPDrMs2RdoNMcd602LDqvuT3lxleSAS9nKR9gomTH+zliU
         m2CAjXZ28yBAa9nYNatg5LzZM4/RUdMvFixt7t2D31rKmXBVVRRvvTLbWmVRJSOk3Jmg
         V+Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=98x/ZBLRTnMz91JDf+r9eCkgM4R/aoJz7oABA29poQw=;
        b=wHHIRDeK/lqyZMy8Y51EuaW1GQJJ5ugFT00tsLj7XMPmp2mYYGCBChMZswgubmIWoV
         b7qGB8Em73s9B5liivseIb6BHU+9uELI2M5PVacjGTGlpeGHc8Yqxc0Q5TCVaWoItKpj
         wjB+azVvZZKSMY6rFWfT5nwXhIaOTjnT5Xu1dOM821VtraUWvqzWaoJlHd4IErAa9st+
         QwB6pRJZZuYG/MLurxFejVT+EpOJ+eaVWobchYjmphWoJd0ZoB1QPgtAAC9o0WeGe5PV
         VLWibXQPXUY1+Fo72OrTP2NCnyoRXdNzq/ZoxwdzRhuWm5OMMTe8jfSbF3paL3LO+wtD
         vPXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZDhWZ5D7;
       spf=pass (google.com: domain of 3ppwxxqckeeelurjhuvjrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3PPWxXQcKEeELURJHUVJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id n63si1364750oib.3.2019.10.24.12.02.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 12:02:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ppwxxqckeeelurjhuvjrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id r191so10714043ybc.16
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 12:02:21 -0700 (PDT)
X-Received: by 2002:a81:58d6:: with SMTP id m205mr8304346ywb.293.1571943740635;
 Thu, 24 Oct 2019 12:02:20 -0700 (PDT)
Date: Thu, 24 Oct 2019 12:01:58 -0700
In-Reply-To: <20191024190202.109403-1-irogers@google.com>
Message-Id: <20191024190202.109403-6-irogers@google.com>
Mime-Version: 1.0
References: <20191023005337.196160-1-irogers@google.com> <20191024190202.109403-1-irogers@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH v3 5/9] perf tools: avoid a malloc for array events
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, Andi Kleen <ak@linux.intel.com>, Jin Yao <yao.jin@linux.intel.com>, 
	Adrian Hunter <adrian.hunter@intel.com>, Kan Liang <kan.liang@linux.intel.com>, 
	John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org, bpf@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZDhWZ5D7;       spf=pass
 (google.com: domain of 3ppwxxqckeeelurjhuvjrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3PPWxXQcKEeELURJHUVJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ian Rogers <irogers@google.com>
Reply-To: Ian Rogers <irogers@google.com>
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

Use realloc rather than malloc+memcpy to possibly avoid a memory
allocation when appending array elements.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.y | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 26cb65798522..545ab7cefc20 100644
--- a/tools/perf/util/parse-events.y
+++ b/tools/perf/util/parse-events.y
@@ -691,14 +691,12 @@ array_terms ',' array_term
 	struct parse_events_array new_array;
 
 	new_array.nr_ranges = $1.nr_ranges + $3.nr_ranges;
-	new_array.ranges = malloc(sizeof(new_array.ranges[0]) *
-				  new_array.nr_ranges);
+	new_array.ranges = realloc($1.ranges,
+				sizeof(new_array.ranges[0]) *
+				new_array.nr_ranges);
 	ABORT_ON(!new_array.ranges);
-	memcpy(&new_array.ranges[0], $1.ranges,
-	       $1.nr_ranges * sizeof(new_array.ranges[0]));
 	memcpy(&new_array.ranges[$1.nr_ranges], $3.ranges,
 	       $3.nr_ranges * sizeof(new_array.ranges[0]));
-	free($1.ranges);
 	free($3.ranges);
 	$$ = new_array;
 }
-- 
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024190202.109403-6-irogers%40google.com.
