Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBCEM7HWAKGQERWSUSSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB23D19BA
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 22:41:45 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id y66sf2138199ede.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 13:41:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570653704; cv=pass;
        d=google.com; s=arc-20160816;
        b=GS0yBNmsSIv7YkzsWSuCdGXVbsY/DSBUscB2Xrk0y2k/LHHWRSUZlbg36D7Yml6dwA
         hj2th9CIrCRF8ErbF6sqA7yNDZQ3h7Ja4nrkuObUGr4HKSKDAujIfW7hJ9hQolhC/ojc
         vG4bTEzvveoDbm34ApIr1q6Sot3Diaqud40vQT8UNbrBlFlR4XfyBniLXdwgnFqXKWZM
         W4gNfUi4WLi8ICFPIvT7/PBs+qdcOjEoQLa88A0yqA4+fiN7d62Ju2u9hn9SgmsuqeAa
         V68VVX1PaxXHNY4B04y6LWWAJPkVT+uZZIDdDpfkgVukzaO1/lHN6RCfRddPdQ/SoRsX
         N11Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=3Hd+guYl8+emSL6keD3Hu6I77emMtubWgDH8fUxXGBs=;
        b=o8yoDrBbN9zxcHV6576GHtkgVbVfOW+eNVKoLwQMc9qBgUKN4tHpZv8jqoDuff5X7A
         qyatRRgYgjGDMdRYRAdj8KMMQjtChH664NrEclqjbxvNSDz7kPqb10tJLmv/tIdwWL5q
         vbaQnhf9mcEf4NqJz/l7Tt311Kj7I4o+on/1TAhTBCr3CBCAVP6szrzPs9akYCu5EKMe
         SkNvB4O88y97pb+AWTBZykpfvT3xIfYnDDdQAvQWmBrZYnrxW9pXR2lW6aMGQTuA2C/O
         AgLVhHCsv3ZwDO9m8Ckj1grZR/b0OI/tt+iZ3utgOLSdq00aTtGvDNgDMKiPje8iIXI4
         Z7KA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=tfJRZwLz;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Hd+guYl8+emSL6keD3Hu6I77emMtubWgDH8fUxXGBs=;
        b=Hx9HhLR9Bd0rN1jaHJ/13ALSHTrRzy2ksM/q4GJrZ3Z5D6rryzu+vzi5hiXeLS1Zse
         HGJ7iTN/Q73vGjysUSnITIhUVQ/Trz12Yqm9BuPkBh8tR5sc6Z+WKKwqAbMwj4pIsY17
         /EYKyXoaftCnYwrS0bIA19PcZ1g+rUtyUcmbYqiB65w8fBu0zUFHzRh1X6xQGn7nyHDW
         c64bHaokdKYlekYGeREUunIN6qMmYHyNNQE+TFTvve/Etaoe4FfmXci9o5Rc5VsM2Cbi
         H2EyzsPPQ8YOJqJpjOU2yFcYIqRP/RJDltpK2SWD0XuvAEjyB464JtMq9HQciS8kMwKD
         Wtbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Hd+guYl8+emSL6keD3Hu6I77emMtubWgDH8fUxXGBs=;
        b=a3eYewnLI0ZN2tZzucRlIrzkq4EWFU8s9p8wy4f7uZVmqa8gFqCiyfkmN9fpIsWY2s
         lsV9d5FD7PPPVmrPmQpbbZ0AKOcihYxBgZdPt6Z5qq2Zsl9cOnL/KxDktPtt7wuTROot
         hz4nqEU+KQDreMeqUP9rC0mPdU+VnEPuPvAY7FO/SBbKSV9HgHNs7qq4yDaPL90Mzz+J
         CdMS6F0eMTiwyOpe2ZvF26cRGKQbwzqKyvpmrAtaBPOjhP4u7jOxyw3HlGewm2nA+O5v
         HQZuDN7NceN6GywdYli4wdkEIUOWZ+GzY/h/qc1gWsAxWuWwltBs3FgNwRgRBE70TsPn
         IswA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXX+tpYheAbZTmqKa6osSBCC1VKuhdphHC/Eer/Z3kF/VVKVbUT
	J4G+xooD4aHqk342gq9xohw=
X-Google-Smtp-Source: APXvYqxL82skExSpv80NYgPTlsG9u4OOg9I0rVphmuPLrgyLLoG1SkyM/jtFLAhHJWQWFFNHZCoMcQ==
X-Received: by 2002:a50:ee12:: with SMTP id g18mr4773688eds.114.1570653704746;
        Wed, 09 Oct 2019 13:41:44 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c44d:: with SMTP id n13ls393245edr.7.gmail; Wed, 09 Oct
 2019 13:41:44 -0700 (PDT)
X-Received: by 2002:a50:98c6:: with SMTP id j64mr4760859edb.295.1570653704321;
        Wed, 09 Oct 2019 13:41:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570653704; cv=none;
        d=google.com; s=arc-20160816;
        b=pO1KuQ8rgC+cYzPe6g5BmxWzm42fdayu01DgOjiQ5u5mJrL7vDETFTDG3tNkfoUaCv
         sLa3EJEmXXRG5+RnmZ8HlpL5wE+Ul6dMnlzrEYqp6gD9bpG5QDzHTsGJRJHCxLlBq0iG
         i8fjY9FlFuZToM5k4SgfoPdkJe+Mcz1hjiOq2nbEtpXSl0wKwlurtqN4ppU5gQtjwpSM
         6VR8h+FI6bd8iKhhQvpuk/enkMjO6LAkUdVxfoTXMkS7/cDtxl9AEVbzra5FShke6BJA
         ftVQcd/ifgngOZA1Q64dyx9+uwtpSRCfMw/Rosl6PK/nlqLWpbaX2kxDW3wkw9pcDtQd
         QWLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=X+OYdLBkIYv08X2eKXt3TCPXQ11so0VYCO7f1mswfR4=;
        b=rihA2YsKC25OjFPZbgMlycq9xQdgbbrq4m4X6UfcOdBP05jByEf8wnV90Zgna5gZ3W
         BpC5tepdg4ZN1/AJSiGSlsOlqkKLFJBFZd3RE5PkcOPU0Laiaohl6QnlCLf6pFOrF0ni
         X+dmArI7n07GXfeGlLFk/rOokdr2zvQ5V8xGhW60z/oG1zxYU9NzsF0E5Ud4fehXU5Zd
         5/Hk8s0n0TC8vjZir/HNIQl5hDhemUa64+EQ9bXtK0NuLV8lZZJkhDdCTAr0JmH2/Ehr
         Q/yZp8crRZhp01DyvGGry9gtv4ja3alNx26oBvGglp9SY1Kzjrgj+fRv8cDVCGVrbRYz
         07nA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=tfJRZwLz;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id q8si250673edn.5.2019.10.09.13.41.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 13:41:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id y127so2689733lfc.0
        for <clang-built-linux@googlegroups.com>; Wed, 09 Oct 2019 13:41:44 -0700 (PDT)
X-Received: by 2002:a19:380b:: with SMTP id f11mr637307lfa.81.1570653703810;
        Wed, 09 Oct 2019 13:41:43 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id h3sm730871ljf.12.2019.10.09.13.41.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 13:41:43 -0700 (PDT)
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
Subject: [PATCH v4 bpf-next 03/15] samples/bpf: use --target from cross-compile
Date: Wed,  9 Oct 2019 23:41:22 +0300
Message-Id: <20191009204134.26960-4-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
References: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=tfJRZwLz;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

For cross compiling the target triple can be inherited from
cross-compile prefix as it's done in CLANG_FLAGS from kernel makefile.
So copy-paste this decision from kernel Makefile.

Acked-by: Andrii Nakryiko <andriin@fb.com>
Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 045fa43842e6..9c8c9872004d 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -195,7 +195,7 @@ BTF_PAHOLE ?= pahole
 # Detect that we're cross compiling and use the cross compiler
 ifdef CROSS_COMPILE
 HOSTCC = $(CROSS_COMPILE)gcc
-CLANG_ARCH_ARGS = -target $(ARCH)
+CLANG_ARCH_ARGS = --target=$(notdir $(CROSS_COMPILE:%-=%))
 endif
 
 # Don't evaluate probes and warnings if we need to run make recursively
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191009204134.26960-4-ivan.khoronzhuk%40linaro.org.
