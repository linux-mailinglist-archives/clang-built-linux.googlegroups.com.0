Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBNUZ77WAKGQEOVRQOJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC3DD35D1
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 02:28:38 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id j125sf3328901wmj.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 17:28:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570753718; cv=pass;
        d=google.com; s=arc-20160816;
        b=cjdNjPFMlzMv0XUF5EKAj6v7q6qh0F1VkO02I/iihGuIBmjQHAlkgWW38M5EDtyFBE
         Xy68Y47eplKQZ1oOjsC5nHK6zoYdiu9a1qJ8yjrO2Ii9pguUqxCx6fcIxTL0rL5A2Y9O
         4y+7LR4plYZli++o2TaTfDDJU6tQJozyuBzpaL1RSV8FUsiupQGDolsNGSIYWWjpmhyg
         hZTU5ft0v+G23ENjt+IeWK3rH4jLIPRnO/HX3domNIkQjMOgnYoXGHkeOVYDQuw/z2Xy
         mqbfSwT92sqt2WOO58uSRIlggPSFCBfJER/Ma/IPW1fCwqTuJBVJuvWfo76q1t4dxOCo
         BPnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=S/3b/LP0beiWBzB+4zWVZLNrXvA5/v1yQXlejLXi6w4=;
        b=SXjLEVGsgEWtqKkTwwl3f2k6DoCYlpKUB7ym/VFFl5RzDrG5/h11CLEiHUTAg/A7fZ
         81h1ztes2llqGLPVotOUKbjqlkbQWoaoRVBcHXZqRAG+SAXZYrj/h1HtN65tKi0w+pyK
         nB7U2/3HLCkUjayO+JOHYTmwEvaCRuirp8UO7TL5x0IcCaxw/xKzD8HstKmRsBlXBzH2
         luz4Fo0icY0Jh4O6bA8fzcb8S89XikLhGsjuNgd8PdulpKUezVSmV35a25U9sjVQYsdM
         6bwkPprgeY4tLFBQ3RYeJWa/y+Q3pqlnWHhCP+dxR0gtTMjaJatX6mPmxfsbXc6nknxe
         g4Ig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=t3MFZlp7;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S/3b/LP0beiWBzB+4zWVZLNrXvA5/v1yQXlejLXi6w4=;
        b=c0ND2INHb+Uz1i1vy7FoalnV6RwX0nBbs7ixh6BNeFGr6pIQems5wluvVKMV4iFPyZ
         ps1ri7rtdEOPLTbNemP5Ir2ymwrZmYvr+WUFmOMWer4MS12D6FT/kn+4N5P6NtAvCxq6
         e1ZEqH75xiDKnzxD/othvnEZgrOM1YTpTSyOdHjBN2YwP3XViMR0tF+wF0U9Sf9nJgr/
         Rqfh1Lz3EU7fP+sQS3J0rQrbdqEcxMDeqlfQQu7tfwFrMRtuEw7s0aQpXzTXK4ddOqWH
         ZLau3S9GvEb8AtFIXMBICBH6EiM4NK+v6HTluBKEdtq4aOdOkuC6Fn9kiHvSOHLTX46K
         Sx5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S/3b/LP0beiWBzB+4zWVZLNrXvA5/v1yQXlejLXi6w4=;
        b=VbcHHk2iWGfLJlHT6D/yUrmk5/u9luVT4aD1sopCgECbWZSgeSmvQTIOmV4H5vaFvm
         YGrnTMR8NOKVz9YAIdZ0CvgEpkrX5+v8HuqtTKohDabYbvMIoGkkeD/SAyNNC91ZkRX9
         cQlMPe0lm272GJQMTQn3i3zZVksjb4rWzchUvYUg297MeY45M2EImD63dThgcvAT0Be5
         Lke2HvrVM+TVadK4G1jXvSV5QifVQnZphzAEiVJQguuG4mbcK38KBtiH7Cuj4cVHScg8
         v9sRxxrRifzDGCQ0Rlx6BMlfE3kgbE8AlUBHBfW1r1VwOY3jheClokj8HJalQovWo7vS
         9xpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWA/Tet81NYhAspA98zray7X8b4bpSyzuHYSnXeeTcagq4SAvNY
	KZoCibREMEYO0VUGZ5F5glk=
X-Google-Smtp-Source: APXvYqyI9tKcdTsXYFHiRWX6yBYT95f25RVfV07hrNVd3eGgO0I+mK+YtPdTN86rLiW6syoHtRbOQQ==
X-Received: by 2002:a7b:c444:: with SMTP id l4mr825739wmi.49.1570753718130;
        Thu, 10 Oct 2019 17:28:38 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1a96:: with SMTP id a144ls2135951wma.3.gmail; Thu, 10
 Oct 2019 17:28:37 -0700 (PDT)
X-Received: by 2002:a1c:6a0b:: with SMTP id f11mr901402wmc.78.1570753717688;
        Thu, 10 Oct 2019 17:28:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570753717; cv=none;
        d=google.com; s=arc-20160816;
        b=rQSWzQZ15OIFUiJ0BWP/syUmBjMQCn+sn7M1GTsCnGoNTwJmwmAjsMPSCgPyc10xH4
         XwD3dj+H4DjP6NHZSr9posFEgyk3j1ZpmEtm7W4COXb90GzCcbQjsU5Ze5HipOxHINMC
         Q2R9r10DQpyEsN1akgRfV9cSJXw5Dq/zZx9C89UbHhM5Sf59iX+Vf/lR6RpRt3/PRZmn
         /mQgrmCG1ncZO6eoGRz7fg9kq5KSP868O3aAcYVBq6NlacKK7K2MpByAOmOy2Te4EjG0
         c2xuObwf5nWUS10az0Ck5ZRb8i3FfNEGmBgMLOD+F/nyXfsH2e3kGrNsS+ZSnaG46mWr
         u/ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=dPicZ6dKiXggVDaTmZsHbexmmGF0NBX0XkLCl2NE9e8=;
        b=dplodkKfWojtdhxAkngRflvM1jPseDOtG5WdOGVJZiRx2FluJy9GV421WxIQc26/ix
         2Jgu/etOBsn+7nEm0hI5upJ6NNnhUK7t8CRNqFWOUe59fPoCV/TcBDmdv4h5WlpnBjkS
         CGJS+anYPt4dxKbsewt9ggcDKBBVarD434KhpVNeSUuZFZEpStMEqHbMFsBZzgHcbr0H
         Y7JmzG7bwUIcftSiVBaKkwCjemE+QSH6IQq9lmqsKYUD+rZk10Z0D8qGe43lbikGw0P7
         VIOUpeoegcIKWgN+zxdvDwAgt8PdmPiknCCFFKbnXNHeIH4mQrxWejaA6PVcFlXrQKT/
         3pog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=t3MFZlp7;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id x8si549975wmk.2.2019.10.10.17.28.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 17:28:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id u28so5722684lfc.5
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 17:28:37 -0700 (PDT)
X-Received: by 2002:a19:c392:: with SMTP id t140mr7564752lff.156.1570753717149;
        Thu, 10 Oct 2019 17:28:37 -0700 (PDT)
Received: from localhost.localdomain (88-201-94-178.pool.ukrtel.net. [178.94.201.88])
        by smtp.gmail.com with ESMTPSA id 126sm2367010lfh.45.2019.10.10.17.28.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 17:28:36 -0700 (PDT)
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
Subject: [PATCH v5 bpf-next 12/15] libbpf: add C/LDFLAGS to libbpf.so and test_libpf targets
Date: Fri, 11 Oct 2019 03:28:05 +0300
Message-Id: <20191011002808.28206-13-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=t3MFZlp7;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

In case of C/LDFLAGS there is no way to pass them correctly to build
command, for instance when --sysroot is used or external libraries
are used, like -lelf, wich can be absent in toolchain. This can be
used for samples/bpf cross-compiling allowing to get elf lib from
sysroot.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 tools/lib/bpf/Makefile | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/tools/lib/bpf/Makefile b/tools/lib/bpf/Makefile
index 46280b5ad48d..75b538577c17 100644
--- a/tools/lib/bpf/Makefile
+++ b/tools/lib/bpf/Makefile
@@ -174,8 +174,9 @@ bpf_helper_defs.h: $(srctree)/include/uapi/linux/bpf.h
 $(OUTPUT)libbpf.so: $(OUTPUT)libbpf.so.$(LIBBPF_VERSION)
 
 $(OUTPUT)libbpf.so.$(LIBBPF_VERSION): $(BPF_IN)
-	$(QUIET_LINK)$(CC) --shared -Wl,-soname,libbpf.so.$(LIBBPF_MAJOR_VERSION) \
-				    -Wl,--version-script=$(VERSION_SCRIPT) $^ -lelf -o $@
+	$(QUIET_LINK)$(CC) $(LDFLAGS) \
+		--shared -Wl,-soname,libbpf.so.$(LIBBPF_MAJOR_VERSION) \
+		-Wl,--version-script=$(VERSION_SCRIPT) $^ -lelf -o $@
 	@ln -sf $(@F) $(OUTPUT)libbpf.so
 	@ln -sf $(@F) $(OUTPUT)libbpf.so.$(LIBBPF_MAJOR_VERSION)
 
@@ -183,7 +184,7 @@ $(OUTPUT)libbpf.a: $(BPF_IN)
 	$(QUIET_LINK)$(RM) $@; $(AR) rcs $@ $^
 
 $(OUTPUT)test_libbpf: test_libbpf.c $(OUTPUT)libbpf.a
-	$(QUIET_LINK)$(CC) $(INCLUDES) $^ -lelf -o $@
+	$(QUIET_LINK)$(CC) $(CFLAGS) $(LDFLAGS) $(INCLUDES) $^ -lelf -o $@
 
 $(OUTPUT)libbpf.pc:
 	$(QUIET_GEN)sed -e "s|@PREFIX@|$(prefix)|" \
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191011002808.28206-13-ivan.khoronzhuk%40linaro.org.
