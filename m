Return-Path: <clang-built-linux+bncBDSIZNM7U4BRB7WT7XVQKGQEDHLRUAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C78B38B4
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 12:54:54 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id c23sf22189432edb.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 03:54:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568631294; cv=pass;
        d=google.com; s=arc-20160816;
        b=DkBasND5rW8B7QRGwCFxwYTeFVtN7KrW6x8KmjWdL0L2pNJy5yk+2TaK4TpRo/9/8x
         C+nC0VEByz13M4pt0/7M+lT50a5a0Cl2IAhS2MmPJLHeub3BzqgdWMsNR2Q0sBz7X4T5
         BcDjCrzM3IdYreTTgv35G6G7Qf6BzAd7Gr+SUryZaL0pOl2jTjqzYCT4aLmYgb4Q1FCQ
         bLcaQJVYkrwJ2uMQwNeh1LeIMMjcj4FDkM7ObItJlFu6lZ0/PB+o9tt5gXRUXlxbbFNo
         Gvsn2VtgMkFLQ9yudwPcB36dvaJFbntA871LVr+G18M9kmPXRhCSmNfASRaiPvfzTe7I
         y3ZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=TwlCljEm2P5HpavA/NRbP1d5xTfHlVSV6ZRCINBzjrQ=;
        b=RnNn/Ws+2K5CLzfUTXrTl1IG3/FmqDo0Q3hXmhMXkLYcYQxtbduDX9whM0wiBuD3wh
         9uv+qTdikEonD7CayyMcq8paZMgT9rFfGAcbOcdFhUDvtJhvxfa4UYMj8WCGX7bx6Lw4
         Y4E2G+5wVcujGtPMQtzYpoL0danbfGPPUej5vqlj+xYHtTlcdqd4hpZUB2qHOy9YmSXx
         49y1rFmtPd29422coGWfFcCknlGeig7jKutdYbcKwLYyytywDYGP7M0MamnoG28GRg/9
         UjIzNpwl2mu0teeSsUiMzL8yHrUGYD4Tg4dsCQ9DOSrvaNSskvqdu5JKQICjGvPNFUTk
         r3jA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=cgMjU9Vg;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TwlCljEm2P5HpavA/NRbP1d5xTfHlVSV6ZRCINBzjrQ=;
        b=HVz81awmB55nKIkCxswsgw83QiYH+Pylad3mIbeGJG9m3/2ms8ActmdAPTIrk6HTl2
         JOq/bg6sTT5d4tYN2LqBdhyPW68THrq8MdS5Bf1Bq8KusMHcqqsYZTTSAPqc/3tp+0ki
         TezLx5d5k7ALGXx6LZ3H/BceuXeIL1tnMIBFKX4WBQ+nYV3njiu1TqU2+wm11ah28eU4
         vKgk4uJVTgKS5SgBhfcFIMvkzNWIRlLTjHJ6jHUjz71l4q01b59eaB2/iEYtQuAxpYNe
         yCKO4k8o+AJ8PLbm0Qrn2C8UqcHGdRpeQpBz6MbvqQLRCJEJudZHouPbQjYWfKl+MXXI
         T1gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TwlCljEm2P5HpavA/NRbP1d5xTfHlVSV6ZRCINBzjrQ=;
        b=Zd6u3GyNUh79I8ucspeZRIpxNiZgkB7CJD60ib9l/miphm4++sGMFvAQSAZYiPlmfL
         FUeJrf9d/HRJI3YLilQP3S7TS0RHq87dIVWK8S9R5+ZnSMd/t5sf+4+f/krJLSKN66Q1
         yVxL5uydITbDk3pEnSedovZ8L5KhNotMPtibakatifIOsIVkvu8hK9B2TyY6FsFRGQQ1
         XBbiouAthlwtUduCDFAqcsFtFErr89C4l7U9qRum0kkVGtSMdGS2W+G6Krrfk1PEaL9F
         Gf1pqK3PyUBG+HelH8yfmpobQHmV1bzn7+VbWBMGkNkz/c/35PO9RlX7npp+aCTl9ahf
         5Iqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX1RwyHyffveeCPbisv3dtycZiq4jQpm9q/szonnd3b8kABXvkZ
	2UbvEz/zojOVRcTj6CHAOJs=
X-Google-Smtp-Source: APXvYqy6LNiQN5kEEHeGwWvDbxCl6RmPvDDOOJnoypl1ghg7EhAMMvTNgZxCCYs44tFIf7k91ZM7zw==
X-Received: by 2002:a17:906:7ac6:: with SMTP id k6mr46154098ejo.243.1568631294272;
        Mon, 16 Sep 2019 03:54:54 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:ac7b:: with SMTP id w56ls3475224edc.16.gmail; Mon, 16
 Sep 2019 03:54:53 -0700 (PDT)
X-Received: by 2002:a50:baa5:: with SMTP id x34mr63644689ede.148.1568631293879;
        Mon, 16 Sep 2019 03:54:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568631293; cv=none;
        d=google.com; s=arc-20160816;
        b=RYL5FBJuH/Mz1/PfCUkPVClXUZKjv3Kh+l2ngbOeLOSRWi57nfYbozJMyeqrItZUVR
         nwncE2VDv4mPQ1dGaI0z3p9yJFiluEaPcsHgM8JOTLPePE7z0t2FhOfvnWyCv+Iep1qB
         B6xmQui72kHdSQuTDi1jf5sESAuFn0sJgOZTpX0AMdyy7Kl6vrQQL9Tah/XGeHvwTmfb
         VE1ZrAntatQBRhFssZ4fd84CuEuRgaAFYuvcMEv9uZ1LLGBkG6BryhxSfgmOvZFd58SE
         Wt+sYUNoySUZoC+w7xmVqYoleY3jE5H0pKFhaSy5o0bzd6//zOGa+EQhmLPcRpY6qSwH
         ZwaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=9NLfs5AbYJF7ESK5xuIslXoD/IqVsX2Fckqfe1g6VEo=;
        b=nVWGsP+kda19Sr7ZHkBA8sSyQ+bc0kxvuvhZb8B79jdbqN3bvXQ3d2F1kh6AJUpU/v
         OPm4GG4xEhdB8pmFdiDpHXc0aXEWehY/TG0iirnqkrnrDiSi94HGzGQHraal6um2EVZS
         m6dDvMOUpAd/D/jr/8rsLNnSnsC49iZYhAuU7e6WUVkRR+AiROEebVsiIfHHApUacVOs
         rP3plLbBLd6BN/vdnAeVQgwzqMxPXJ/W2Jo4t+Bit3Ap2eQjEVV9TZ1e/ooNPwZ3kplk
         jfIkX2FwFprvfaq9PnZwsDqpuC6atHBiw2gCxR4us5vG6rUewSjcaQUtqDGAG2+ds1bs
         daMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=cgMjU9Vg;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id v25si2365682edw.5.2019.09.16.03.54.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 03:54:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id u28so6301844lfc.5
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 03:54:53 -0700 (PDT)
X-Received: by 2002:ac2:5a19:: with SMTP id q25mr15112277lfn.178.1568631293376;
        Mon, 16 Sep 2019 03:54:53 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id v1sm8987737lfq.89.2019.09.16.03.54.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2019 03:54:52 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: ast@kernel.org,
	daniel@iogearbox.net,
	yhs@fb.com,
	davem@davemloft.net,
	jakub.kicinski@netronome.com,
	hawk@kernel.org,
	john.fastabend@gmail.com
Cc: linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	sergei.shtylyov@cogentembedded.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH v3 bpf-next 10/14] samples: bpf: makefile: use target CC environment for HDR_PROBE
Date: Mon, 16 Sep 2019 13:54:29 +0300
Message-Id: <20190916105433.11404-11-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=cgMjU9Vg;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

No need in hacking HOSTCC to be cross-compiler any more, so drop
this trick and use target CC for HDR_PROBE.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index b5c87a8b8b51..18ec22e7b444 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -214,15 +214,14 @@ BTF_PAHOLE ?= pahole
 
 # Detect that we're cross compiling and use the cross compiler
 ifdef CROSS_COMPILE
-HOSTCC = $(CROSS_COMPILE)gcc
 CLANG_ARCH_ARGS = --target=$(notdir $(CROSS_COMPILE:%-=%))
 endif
 
 # Don't evaluate probes and warnings if we need to run make recursively
 ifneq ($(src),)
 HDR_PROBE := $(shell printf "\#include <linux/types.h>\n struct list_head { int a; }; int main() { return 0; }" | \
-	$(HOSTCC) $(KBUILD_HOSTCFLAGS) -x c - -o /dev/null 2>/dev/null && \
-	echo okay)
+	$(CC) $(TPROGS_CFLAGS) $(TPROGS_LDFLAGS) -x c - \
+	-o /dev/null 2>/dev/null && echo okay)
 
 ifeq ($(HDR_PROBE),)
 $(warning WARNING: Detected possible issues with include path.)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190916105433.11404-11-ivan.khoronzhuk%40linaro.org.
