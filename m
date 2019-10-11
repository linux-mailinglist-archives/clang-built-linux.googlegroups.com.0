Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBM4Z77WAKGQEM6ZRJ6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F80D35CF
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 02:28:35 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id 4sf2207714wmj.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 17:28:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570753715; cv=pass;
        d=google.com; s=arc-20160816;
        b=BaziTPnudeFo5h7j8f0anfnFvdlZEmbmgv1lwZl/P4/oa/Fen4Y59L+ciPa2Sn6ZK/
         oukEpH4Gw4QaYt3g6WPl1VHRLAyMCmdeTgdnKS8XCER19AfY+0SVph9Sj8BSpxmfYHPG
         yKMNNwjh2gm21ZDQiMFh94J6OJvSo/pbdvBZqt1KHkziJoryE9nzJ89l0z5oP/iSz+QB
         DeOOZbRCQbjaDPiOR95awjB2rUrE6lna8PQI3dW3/P4wtUG/ayOUlSrZvWqL9vH6AhK+
         FRhDW+HEWibUIZfODsU9DdOsiLk2FstH1RpKH5j1wa1Bf6aPn9FWhvYWerCPOtSwsLDY
         PNbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=vViegv1Tkade0bzIS8o1cY+EjZNmAp34iAoadb1XTcA=;
        b=MuCimP0jTcPqp9RnFM3798fgTP4AO5LFZev4BOIXwyJzR5t/aHi53X36fT38tqty8L
         vbU7cXWbSz7LLA6U8aC1wFWDktQnv/X6KWONqfNM31mSf2pNC9aE9XFetfjpaUI0hZuS
         2GhDnVOJmHeGj7n5/cCLRIsRZV8gTlLao0g58WTrYcxqcMkhTw07CHQ1hgdmjhyhWeyF
         QiaYMAxx3IHpJuh6cmolVM71Jo+FgnWE2VCUW+ER/ys2wR6VPlVAnt617BxPYdyhqr2D
         UBPIniCpFTq1ZrTZixdU1ltw/hSX/OPqPgZ/Y70ycuomuoojCG6eUJ3+F7v6Co3lTJe6
         +nhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=KZ4g7bs4;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vViegv1Tkade0bzIS8o1cY+EjZNmAp34iAoadb1XTcA=;
        b=rKlv+yT0YancQ7JOmyj2sMOwvscPXb6H/tKzf0G4wOA9vQTK/mUTS2p2o8kxv+2uHt
         INxYdo/+IXajVwo2D1wgMSlXbPYCTTiJ3xqbu9H+rw6DJ6jvA3xVMcCCMpN93sIrw+JS
         gCRCx3rxYq14396S0VkVORxfjTRl0Uau3akhawPiMqzuuXS+sa15LAwgMMfm6Svzmlz/
         gPgcg1Us4Qp9tkHdrCzTsAPDGnYguIhx7lgUnxBhw3ZdLIQINX6NBkr1u0P6tbPQzc3J
         4B6aOUZIOH+Yks2qN2742MBgoH9llYqheLQ0CgJxSATSO0VfjboS8L/9jQeOWm1i3Ugy
         yM7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vViegv1Tkade0bzIS8o1cY+EjZNmAp34iAoadb1XTcA=;
        b=BrQFLaVDNX5rIxC78Ts04/V5moKzCsAtDJJTRQi6X+AxMyskPwNhHQG7K3xQHYoz74
         RxdTVCUD3Wlf4+cZlQRwrUe+r0B92sHE0AQ32SXx/YCo8eKBT9e8GgX4899Y1XJC2Yua
         NhmZuf6auvWAeNiJdUhwH7miF07JFEAwCQp4lEm6OeNx0XUZeDGc2Vhd406NjtmNf9kw
         l7Ziohjewvu5GvAk1mWy4m2bOfZnCkdeV1VUg/3gJITehnwijNhKJY8MZzl1/JzccwPO
         FoSVeymGmd9wv/Hu2NVDAQ9lY6MPEEN8S+e+xzseUYXqFLjSlJbtfNY61z4N8NQNY0nE
         pRjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVKjz0+Yaqr6m7yPhe/NmXx2pr+XXC7LPoCy3sdgmMo1T9p8VBf
	EnUyDKofkQIbmXL104Yyex0=
X-Google-Smtp-Source: APXvYqxveB1hVoTnx3TGw2k2zxunqTbfha2JFb9kAoIdoAPnU9TTTLu0VEUIpKPxFz55z22aYHxteg==
X-Received: by 2002:adf:f784:: with SMTP id q4mr11217555wrp.62.1570753715494;
        Thu, 10 Oct 2019 17:28:35 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:99d7:: with SMTP id b206ls2140905wme.2.canary-gmail;
 Thu, 10 Oct 2019 17:28:35 -0700 (PDT)
X-Received: by 2002:a7b:c313:: with SMTP id k19mr906771wmj.6.1570753715070;
        Thu, 10 Oct 2019 17:28:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570753715; cv=none;
        d=google.com; s=arc-20160816;
        b=dvgWnPa7a7OIWZFJxCm2nSSqtdQNb1tJjGCPJNLcMC91MN6fhWYY8mEylHhj6OnIR1
         C0fAbvUfA9KBxL+ELSohBA4aDK78k5c3z8uAfleiGSgF5ga3qNFHg38j7nxweBTj+KQb
         oOkikAGUgRXOeIfwTHM+j1SwpSx3rJM4LEWxkAT29CViWi1JMfLjlPAQ+QJBPLzCr4f+
         sKA4ULi48xSis1UbSsrZnXpnc5mbMWsoR62ti30MyLZLVBl05iAguxVv/E3Z/P2Sgbw4
         OWqJyk4FfOgjmrfLBIMBedBjwH8WO0GOpPR0DXADetw1EJxzTLPIHZLJVRHa23FIWm1P
         rv7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=wbL2nu6acnton90gIbsX5qxq9tLlNkmN4RUryN8fm7M=;
        b=tITm21F7B7g3c99V1D3CSaoaMQV6TuRQffUOWIj2/hoP0S8abSALc7f4lmOUWrk1Df
         WDk0i4mPknAjQ/nSBfLPlOhvaADThWDABNcCk9b24ChBIJaSpG8RKrGcoyW26b/VMG5E
         omADA+nuzGq+ZJWr6WSQYhmCKcz2zHhS1uaAO99QFGHU/EBXcOcvhR1WU5l/PrLpCiUe
         Ec7JngBOo9bVHlp5Puoo7Sw23b73Rqw0kuQywIr0thoBlBu11vvabK6b4CVe2JydyTq2
         iKjnBprXdXdbYgJs/wxL14v6gRmg6FjpIuBQc3eOJOY0rWMB6P0OJL6R64JxpPY2Cmqb
         L7dA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=KZ4g7bs4;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id p5si343418wmg.0.2019.10.10.17.28.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 17:28:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id y23so7996822lje.9
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 17:28:35 -0700 (PDT)
X-Received: by 2002:a2e:89c4:: with SMTP id c4mr7438097ljk.65.1570753714541;
        Thu, 10 Oct 2019 17:28:34 -0700 (PDT)
Received: from localhost.localdomain (88-201-94-178.pool.ukrtel.net. [178.94.201.88])
        by smtp.gmail.com with ESMTPSA id 126sm2367010lfh.45.2019.10.10.17.28.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 17:28:33 -0700 (PDT)
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
	ilias.apalodimas@linaro.org,
	sergei.shtylyov@cogentembedded.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH v5 bpf-next 10/15] samples/bpf: use target CC environment for HDR_PROBE
Date: Fri, 11 Oct 2019 03:28:03 +0300
Message-Id: <20191011002808.28206-11-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=KZ4g7bs4;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

Acked-by: Andrii Nakryiko <andriin@fb.com>
Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 57a15ff938a6..a6c33496e8ca 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -205,15 +205,14 @@ BTF_PAHOLE ?= pahole
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191011002808.28206-11-ivan.khoronzhuk%40linaro.org.
