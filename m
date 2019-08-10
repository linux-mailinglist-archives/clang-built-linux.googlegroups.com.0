Return-Path: <clang-built-linux+bncBC4IFTUFXEFBBIHBXHVAKGQEVWIAWEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3b.google.com (mail-yw1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 588BB88911
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 09:22:09 +0200 (CEST)
Received: by mail-yw1-xc3b.google.com with SMTP id k63sf8672503ywg.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 00:22:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565421728; cv=pass;
        d=google.com; s=arc-20160816;
        b=XdZyhU1oiuNUV8VBrtbDSwEVtIS1L1Kbo/jv44icyzHV3obGrIwSZKpAy42YheFCZl
         PwtIRuGbbrJ4UkrLajEhDxAc5kxbq/Gh9EsORrg7Kr/dPaB8Ayp6t5dS2WB1BpY1rxG1
         XxSSGaIFkB14kiPXuw1idzzfMuYLbRTt7nAD7PfZFc/TKllVUc18Lsrma2TwCae/WRRd
         F4W4AkLk84PANsMFmIsiLm3WHQBopt4IfTwzRP2vQx/Iq7MdOMI5yfW2h0VzxLA0BL1L
         f5oYJL4jpo/jnKFnV2u4WR4alGogZ1PblnhhX6QLuxUdnb8WV9EH4tecm5Qh9uNTF39S
         KQdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=6GgEWGoZMhD6EQ3ogCRO0YGxd4pBEag3nMnxqE8LHXw=;
        b=BWNhWLT+lII86pRjgzf7VvLOGquGCuKcU+9BDUNtHfMe9gKedyQra+MIZ6afPG/zZS
         RmxvU2BM8jizJdH5gRXlSL6hnl+c1Scs++AaHXqlMwd7vBmeukcPFUL8mCy/UdUg1y/k
         aiAYb2tHz0cOp9jqTUs59TDfD1R8YCm5ME5z1aizKyej8aVmrzmxcLzPbMCzkvBtizJb
         R3+mGtcru6YZP2Gv0pp9ZsA6DJgiN+0plR12SZBRdZivPHv2PpFNCqc8lUfwzuMMUK34
         jxmrbreQFlPugfWKY+8TLWE9mmZH/ptLgZByna39orDxCke74XmWKKE/VWsdGau1VZ66
         3cow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="pN/qlGpA";
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6GgEWGoZMhD6EQ3ogCRO0YGxd4pBEag3nMnxqE8LHXw=;
        b=fOY306cCJAKQsacl1OGQFzXOTzXcoi88BNPQm5AXAuyBrmRAosyeZ5/6MCszLOCsdQ
         LYgYLIYlRk47W8tNSzffUSusmtd1A0mPiQ4MaYwUG7NfQrxdfY/TYwCrl1c5NCzEvATA
         L+S4rQHRxsCHSp1Tezn55VrtR5KCWBG4Uki/9qUwUsW2fJjtGv7rhPZyb4KML53orVEb
         jB+1Hki6lqwD9DUUObhGsRvKvYJ+TuoEJX58neOKjXi9jTrrDimrHm8PGI3DMPDKwvu2
         IJKVzHINMarHMo38a1qmDaTJe8FURtLsbUmbfepLlmOVB/SFfsIAFMdiGBbwMggHNedF
         6pEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6GgEWGoZMhD6EQ3ogCRO0YGxd4pBEag3nMnxqE8LHXw=;
        b=nNMkrCv9WMhweYNHn6pYEvx5TgCMuMBNwwLGMe/jQN+L7PWHgD2SjVIEzAVl/H/dQk
         2tLd8bAMRDTdYMvpcMIx+txpy6+n7aOjrpTOslDBsgGCMZe57JM3rUnyY0Ryh543HCyR
         sNMAyQ4xYzfR4WLu5b3Vyy7Nu8Ov3WJohF5EWWO8njV8WZ8Safr848wDcQPN+2YAxCV3
         AZTmA4bgMVZSonMdGjHv7o59BV3socSOtXJtQ1dRR5X+VEYTmrh7D2ZeHLnw0tlNSAbf
         L0kNNPvQzmZgKa/PYR6Ptk3kFnWMSRprHW8fgDDex4ee/OPENQrd9Wl2t/ZvWIu4yfYq
         YUQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWyqp4gJ7xb8i/hhrXjz9l4UDeAYdojLejeam6gCnv6bUCHgc+t
	KKxwPieLUlgfRe2JEWbudrk=
X-Google-Smtp-Source: APXvYqwTsv45cz0Dz2AKmsGTPL6fAwsrm1bCS+UtJJFRM9UVxuY3hpor4PSV9Qc7B9fnXpo3kTesFw==
X-Received: by 2002:a81:352:: with SMTP id 79mr17101612ywd.149.1565421728179;
        Sat, 10 Aug 2019 00:22:08 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bd89:: with SMTP id f9ls125062ybh.2.gmail; Sat, 10 Aug
 2019 00:22:07 -0700 (PDT)
X-Received: by 2002:a25:ad54:: with SMTP id l20mr12759820ybe.125.1565421727919;
        Sat, 10 Aug 2019 00:22:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565421727; cv=none;
        d=google.com; s=arc-20160816;
        b=ze2j/7LktmIswMrHwp7wktLlGH6tFVUo15v+RFXfP/IxIKdt44kVMltd51o3/gNkhS
         cjSfKe9CaDS8DFJx9x+OJI759TUISCAeg8qITY1pQm9JcA7nj8RrzcFJRqHcNqBBpfaI
         J8MozMhe0RCMwLO/RjKn2TPhND3zYvxFU2BDAwhd+8svbhn9jcSJXJB6Ybb06vMBXJ/Y
         069og7nOm5XQPQ7HJmiiwXBQ9WN98MdV9iS4n4Txn8ksgjrWLRZNvOIIyOUU3MZYIkl/
         7TNIKOCJzuwdv8ezJVePIGYZ0yVQxWZRNvBbYBvFy3R/8qO+fdLHk2+N6FfmOKvlSCu4
         dOOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Kqvj5qJEEnuY9tHLIsHKAJCMxbCgSGhB0GQjUNBVzjU=;
        b=o48ygKvoRJkLMJtoMI9ihM5iZ5mTUMG7yNJs9sNBntkmrRUDILbmunj1X0VrBq5bCm
         kR+iadd/1YJo/e928WsHroJW/K3Lrh3bgM47kXU8+UdO8oLL1bMr1Vh3DDwf+kAt42b6
         +m0eIyqknSmkp0F2Hy0oT9GUItqBz0QMp+LjR7P7rRnNCwQx339pTeUYqb5PoYKibDQJ
         /uiLqj+KLVu3p0QsYPGGQ4Ep3HPoc7E4Vg5kQh+egzruLJ4eMFz81eCwuUpSeeLdvKM/
         5la2x5q7qIkCGJ5umSPDfonmSQaW8c5DqglAyw+1A27rVgVr1mx28pINZJ/ma7g74KYC
         p2gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="pN/qlGpA";
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id x65si1089237ybg.3.2019.08.10.00.22.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Aug 2019 00:22:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id w3so9734696pgt.13
        for <clang-built-linux@googlegroups.com>; Sat, 10 Aug 2019 00:22:07 -0700 (PDT)
X-Received: by 2002:a17:90a:9f0b:: with SMTP id n11mr12981206pjp.98.1565421726801;
        Sat, 10 Aug 2019 00:22:06 -0700 (PDT)
Received: from localhost.localdomain (li456-16.members.linode.com. [50.116.10.16])
        by smtp.gmail.com with ESMTPSA id l17sm24872660pgj.44.2019.08.10.00.22.00
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sat, 10 Aug 2019 00:22:05 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	David Miller <davem@davemloft.net>,
	Milian Wolff <milian.wolff@kdab.com>,
	Donald Yandt <donald.yandt@gmail.com>,
	Davidlohr Bueso <dave@stgolabs.net>,
	Wei Li <liwei391@huawei.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Mark Drayton <mbd@fb.com>,
	"Tzvetomir Stoyanov (VMware)" <tz.stoyanov@gmail.com>,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Leo Yan <leo.yan@linaro.org>
Subject: [PATCH v4 0/2] perf: arm/arm64: Improve completeness for kernel address space
Date: Sat, 10 Aug 2019 15:21:33 +0800
Message-Id: <20190810072135.27072-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: leo.yan@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="pN/qlGpA";       spf=pass
 (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

This patch set is to improve completeness for kernel address space for
arm/arm64; it adds architecture specific tweaking for the kernel start
address, thus can include the memory regions which are prior to '_stext'
symbol.  With this change, we can see the eBPF program can be parsed
properly on arm64.

This patch set is a following up version for the old patch "perf cs-etm:
Improve completeness for kernel address space" [1]; the old patch was
only to fix the issue for CoreSight ETM event; but the kernel address space
issue is not only limited to CoreSight event, it should be a common issue
for other events (e.g. PMU events), clock events for profiling eBPF
program.  So this patch set tries to resolve it as a common issue for
arm/arm64 archs.

When implemented related code, I tried to use the API
machine__create_extra_kernel_maps(); but I found the 'perf script' tool
directly calls machine__get_kernel_start() instead of running into
the flow for machine__create_extra_kernel_maps(); this is the reason I
don't use machine__create_extra_kernel_maps() for tweaking kernel start
address and refactor machine__get_kernel_start() alternatively.

If there have better method to resolve this issue, any suggestions and
comments are very welcome!

[1] https://lkml.org/lkml/2019/6/19/1057


Leo Yan (2):
  perf machine: Support arch's specific kernel start address
  perf machine: arm/arm64: Improve completeness for kernel address space

 tools/perf/Makefile.config           | 22 ++++++++++++++++++++++
 tools/perf/arch/arm/util/Build       |  2 ++
 tools/perf/arch/arm/util/machine.c   | 17 +++++++++++++++++
 tools/perf/arch/arm64/util/Build     |  1 +
 tools/perf/arch/arm64/util/machine.c | 17 +++++++++++++++++
 tools/perf/arch/x86/util/machine.c   | 10 ++++++++++
 tools/perf/util/machine.c            | 13 +++++++------
 tools/perf/util/machine.h            |  2 ++
 8 files changed, 78 insertions(+), 6 deletions(-)
 create mode 100644 tools/perf/arch/arm/util/machine.c
 create mode 100644 tools/perf/arch/arm64/util/machine.c

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190810072135.27072-1-leo.yan%40linaro.org.
