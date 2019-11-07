Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBP6USHXAKGQEIOPGWWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 39629F37CB
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 20:02:25 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id 198sf2515617pfz.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 11:02:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573153343; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jm8/lH8K6NFRCoe2JzVoi3kiYc1A8UHpNNxLzTemPVuj52y0ppgpc5k5DBpXpGRKuq
         qEK5R4dHwuuaSo1V9US+dJcPCT7jrfYEIkxHtF9gF+q/C4Zcn+9zntKzoegHlxmKYqwo
         srhVd4y5v82mtgZpp7QcuLxW8btqmOsdjK3bWmJ2J1L373xqnxPgqzhm91zVWhfqnpHO
         m+vRQv3PtRduU4Qpg40wYzHGtvuTfd3wblWAbe9xMlR3CayYft8Ebfpprfd7Ri98rn2X
         JkQ9HqP4p7ndX4q06+lvk+xv4ocws1Z/y4Pdy8TGuo1JElsVGuwS12SyqJs+NWiGQlBq
         41HQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=L9l2W3in+21hmUIYIvxh8OIY/1vIUnljsRhX4a1XJXE=;
        b=CBtLj1yVkA8R8k2G3GoWPyCBDI1O37u6SmCt5H1CfxUNFMfM/1Q5VxeeRTUnRPNo2l
         ixiK5+zGd0ABPQv7KhguyJF7v8+DCBaNhRyUc0br6e1La0ZRWl40d2qF7gSOzTr4qU2k
         nxYiEKTKoQeZDU+7U01cmXKJAPVIhd95grL4s9hUXA0qg5hGLCwkf35nLWIV6i/qtgXe
         9ot5LKsQzYFVlZOVMSgIcn2N+T336voFXONuFrBbQY7TNhZwr/frjpwCz9LVCOwTuQbN
         MdRpRFvFiMw2Izqe3Ov2XGbbTteT+UFeEdUnpVoitFE6hMEGWCDiLWXLOTDjwvBUx8h4
         5dQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qpvOzCsS;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L9l2W3in+21hmUIYIvxh8OIY/1vIUnljsRhX4a1XJXE=;
        b=qpANKZ1r70rq8oW4IoQ0/gnUuQO0eVQSA4ligCKW7mtqo+jZJX2D9a7zREvQvFojGo
         2OgEUAe4RM18HQm6ikKNyPC/bCisIbOPjkfK4JkzEWH2odUaq8WTdFRXaxUj9WslTzI2
         yMIgiln8dHvFPUk6Fn3hd/OktLDsEDYZerZUeFnHWecG2wAq35h81xRNGT50sD146eEV
         +tUTPW3EdhRSdsqkF/kNNAnpUln7OBtXc/KeJGmWCVSLcs3p4Ae/SfNxCauHPRP838d2
         JLmfChfofPbHzKS2DM8qXNSx4u7rbkLh5SEUUhhMxA+KijKsZqYJtpJk5Hu/VDfcz8Bl
         dNOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L9l2W3in+21hmUIYIvxh8OIY/1vIUnljsRhX4a1XJXE=;
        b=Z7dXvwas60clID5Mp/0XvMNlEZqvS3qsZnd12QmL8KYEL2cYggC4vaKrnZ04kYio66
         JejqmrPz5dU6/rR7vs06e5EeNBhldrl59tF47IAUCgjkYz9iOgW5w8jNtLG6K/1jtffg
         JE5dQiVKdQ5+b4w0ieLzAa/oJ8vZpzbzqn/TAPBw+YCuiHzOOnngd8FHqDeuDfh0iVS4
         rKXxlOrhu2cvpVMs8lh4d0KSsd/nELZrw42icKGijRcnuHM8sQReQA3hzHqifr/Y5R1C
         ZFsQHrG6NBzUAML2JkNXoRvgKwR8cZAinfLP6KPCjjxSmyu89Ys9Txd8BHVnNChx37ah
         8Wmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWexRCKPlRSqCp4sVr/aWLKLHIRdCGAj7DK4QLYERHh7OFOewp7
	w/p+YGdJK5mqHV5nXsT3duk=
X-Google-Smtp-Source: APXvYqw/elXtUlc97fi6vz5djKz7+2G503nA8EST0UFDLaDNuSJxApL6eVLhlB1p3Asmb065mWbpfg==
X-Received: by 2002:a17:90a:de4:: with SMTP id 91mr7336398pjv.113.1573153343749;
        Thu, 07 Nov 2019 11:02:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9b8a:: with SMTP id y10ls1384164plp.12.gmail; Thu,
 07 Nov 2019 11:02:23 -0800 (PST)
X-Received: by 2002:a17:902:b215:: with SMTP id t21mr2611705plr.332.1573153343263;
        Thu, 07 Nov 2019 11:02:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573153343; cv=none;
        d=google.com; s=arc-20160816;
        b=DvdMuWmwhsZsTPHiMCJcLt5/EqfTCGIAp/W5kKaqpBwgezcdgLKF7GfCQ90/gQIV+u
         Ifrra1OqZl7fHpBKHdTbemM9Lo8z9dFkEXxceBmLsEI/QKWLHzs4t/rqu5veXKpr7E3D
         3FopC1Q9CgWm5HK7RoQR4mezmmib5W+mxg2dIBPqMNnquQE8Htzs2Q7WzC7q1NSyn8c0
         Uwbng/0vpvZ/dqbPSSTz29IWK0TNDWABOxy5XBkKajXCCvcQ5k8ycTPykOV/hgm/PGqW
         jfpzxueWASM6JGpGO1uHmMpz9+oc+4BlPFa2PxEJLhjCYRjn4tnr8aQXOSIVvqh1Iub5
         mAOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=G20BhhP7scnMHT4lBln9t3wfI9TxhrtwoSH9E5jfhR8=;
        b=l15zywVDMviwPo7IHG2nlvWoBU4KCBkzvWgMGUdtByOshuFQ1yJ1sposU2rDG8LIXu
         s7H56kMVo2UNT0MS3PqJkrYLOlUvBY88FQtV92RbgCjpRN2Q+5x1O55SsfsHoWCcYbXt
         IIWy9VnIrVTovhtUmyPh/JuiZl4/nf0+HYMQwxFhsY6hlh35VqQAa59qAyCfO3M9AZvK
         IGcK9RqvGQPI9Z1eFPOtLtGBirT5jDrOcOEcPVx9w4F/8v8mjoV3cloQSlWfUXi/Neei
         f9UnggBkRIK6MN4vFP65FaV5z+9DQK4LxmI1t9Jotr+pINJLKGCjKyF3VepMnTDQ5U+W
         qXAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qpvOzCsS;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h13si179973plr.2.2019.11.07.11.02.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Nov 2019 11:02:23 -0800 (PST)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (179-240-172-58.3g.claro.net.br [179.240.172.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 696E821882;
	Thu,  7 Nov 2019 19:02:09 +0000 (UTC)
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Jiri Olsa <jolsa@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Clark Williams <williams@redhat.com>,
	linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Andi Kleen <ak@linux.intel.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Jin Yao <yao.jin@linux.intel.com>,
	John Garry <john.garry@huawei.com>,
	Kan Liang <kan.liang@linux.intel.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Martin KaFai Lau <kafai@fb.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Song Liu <songliubraving@fb.com>,
	Stephane Eranian <eranian@google.com>,
	Yonghong Song <yhs@fb.com>,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	netdev@vger.kernel.org,
	Arnaldo Carvalho de Melo <acme@redhat.com>
Subject: [PATCH 12/63] perf tools: Avoid a malloc() for array events
Date: Thu,  7 Nov 2019 15:59:20 -0300
Message-Id: <20191107190011.23924-13-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191107190011.23924-1-acme@kernel.org>
References: <20191107190011.23924-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=qpvOzCsS;       spf=pass
 (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=acme@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Ian Rogers <irogers@google.com>

Use realloc() rather than malloc()+memcpy() to possibly avoid a memory
allocation when appending array elements.

Signed-off-by: Ian Rogers <irogers@google.com>
Acked-by: Jiri Olsa <jolsa@kernel.org>
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Alexei Starovoitov <ast@kernel.org>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Daniel Borkmann <daniel@iogearbox.net>
Cc: Jin Yao <yao.jin@linux.intel.com>
Cc: John Garry <john.garry@huawei.com>
Cc: Kan Liang <kan.liang@linux.intel.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Martin KaFai Lau <kafai@fb.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Song Liu <songliubraving@fb.com>
Cc: Stephane Eranian <eranian@google.com>
Cc: Yonghong Song <yhs@fb.com>
Cc: bpf@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Cc: netdev@vger.kernel.org
Link: http://lore.kernel.org/lkml/20191023005337.196160-6-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/parse-events.y | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 5863acb34780..ffa1a1b63796 100644
--- a/tools/perf/util/parse-events.y
+++ b/tools/perf/util/parse-events.y
@@ -689,14 +689,12 @@ array_terms ',' array_term
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
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191107190011.23924-13-acme%40kernel.org.
