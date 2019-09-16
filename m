Return-Path: <clang-built-linux+bncBDSIZNM7U4BRB56T7XVQKGQEDK4OTRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id B26B3B38AB
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 12:54:47 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id m8sf6875722eds.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 03:54:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568631287; cv=pass;
        d=google.com; s=arc-20160816;
        b=q5N32Hoiga5sMKxoyisaXOovmJTc3lLCYknWkbwrwLfSdDczIPNs/z59Tn2naoELuN
         fEfmwCdKtGn79otW/2CB1xEmrfYYlyw8Cf404cRo/uv5bY2SOa4FDhMpbEHRRw38uPe/
         Gr9xyFUK9ps/LI3SuYBC8ZogWTR8bXeAs/uyRwlfxDRm13m4xG3z2LqeKyZmTvZOCP5v
         Tm3zXNq1KjwWfg89O5PWb1nfOwe4npqfVFRYXUKf2OZmnwn8RSYN8S/WWiabyWiKIFML
         CzSNOdGEowu2CDYkF9nGePc55YoRQcnTBPnjgFTdUpRcUPh6lqK2BhLYzgTzre4yJ7mp
         UMkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=HbOS6K8uZYY6Ghi5Yw+mgpKRZMe7QlBpPDbph++dW0o=;
        b=BuTvYha5XhC14uBw11JUHwWGx/ljbKGMt9HHY6tmtiPpl+UCelfFhF36IwQQap1ZhW
         GJlt48cYwbIp5VWAWlRcpzIHqxuN3Trg7r8wkRiKHobIDwePR7VxWXn8omnOWXclY00s
         vEZ0tvBrJA8q6GS2I5qkYRVahmziYg+LhDtunbWsvVGjPVijYyE14bIj83AaE2dR79Dk
         yOixB8WSBZmj5BEODew6oNta7OQjU8e2/KUWSM8XPh88p3s1uahhK/EIYdHiBHunlO+9
         JlfkFMWfy7DTbTFZ/FG24wRG8Bv+ZJZMndaI994OVLbYvhcN6fm2aTq17o3OVnym53aX
         D8jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=UrB84xhN;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HbOS6K8uZYY6Ghi5Yw+mgpKRZMe7QlBpPDbph++dW0o=;
        b=bZlS6DaP7cP6zw9gMvhdW4Knf1SAxzVzixeB3KcZCCoeNhlqeHUj0g26UDVzUYkTek
         mVpa4ZVMQ1aubrNC/sZYom5ieUkVUdrY08mArjCwgbAp5fc7SJlGOi9DP/mDhSaZYgRj
         /Kap7TBz6sgsZOomCtXSR1YF7ddetvzmT5scER1tWBVCv2XUPjVtn5YyZ9IpqyUlf0Xl
         1tD5VpR42SR+qh5yt6SV3aFAJMges2ckqRNFEb3xdlj+dGRKK22kI+ecQ7BU0iI+jOxV
         +wcv5cttAUAc6YS4AgGF7Bg4FiiQp31lLB77NHT3Qa3r1DJuUmUX9dcokoxV4mGHX7gI
         PkPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HbOS6K8uZYY6Ghi5Yw+mgpKRZMe7QlBpPDbph++dW0o=;
        b=pUaBC3Lqc2aBvT54Iz+AWG8L1Y9XDUSvFLresCWKLVZJ01QbDk/slFMKWb1CpxassD
         wh4T7h1KaAel43VS3Zw/Bl9nVqudLC0gCXWQtXbBmmknXzrg0ozWj20sHl1mMQWnPr2r
         tXH4AWBfGJjKXiT6T5aORIyO0PO7j/scuQnjslViNWlWVzroAUd66N4CBVuVUajupEi/
         p7O9sq0nhdqCm+Vi+0IzgUBLT3c7V7WVhgFMyfceYCKUk0Eqi34jdBq3DU/LRbwgSYR/
         C7KrNvhmcbXE2WeuSRTCGw/xzfBQLsaOHwu8dd5ia/MksAligDAg5E6vv2+QqfVCIicG
         i97A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXMn8FOY4hEcvaeNNUafY3Gafp4cVhI0Gxta7SdjGigziXU/WJD
	5Ejt+1jx/aD+Vmny2i9RtHg=
X-Google-Smtp-Source: APXvYqxcu1THRhcYVM4PDA/QU4m/2Ko3PmxZuE2LJzwS4+IHyh+IxrONnUe3UXd6nx6pP3TAnr2aWA==
X-Received: by 2002:aa7:ce89:: with SMTP id y9mr59786030edv.255.1568631287440;
        Mon, 16 Sep 2019 03:54:47 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:cfc3:: with SMTP id i3ls8285364edk.9.gmail; Mon, 16 Sep
 2019 03:54:47 -0700 (PDT)
X-Received: by 2002:a50:ac0d:: with SMTP id v13mr17007913edc.189.1568631287077;
        Mon, 16 Sep 2019 03:54:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568631287; cv=none;
        d=google.com; s=arc-20160816;
        b=H87QlrqDCsGb6IzPgqwXWClCCOa2MQiDKH91ZjdNnrE6eFk1HAu/BfXZWIAcdmSVw8
         CnzYfTEyKtmKrdpipw2bnNkssNAFXly33yoWyxeRuEj4l9koE0Zq40VaZJt6MBN+TYIA
         CIz6Gk04gV6yDBymXaWOECUiUhiyWQiVJibwbTUzoTCOdVz1cIvsR1XNGt52FHQmcWyO
         4l2Bxda0wYPlZphNiO9S8vPGlyVDr0rqxLOVqtByE8ZAnpfPVCHyr15xkQOb5nFaM6B8
         e3Aym8mtGCHFFIRo9vCP/Zn82niqdGvfKp8cbYveEfX7Br9BU1l9p/VllpXPOzPD1Gbw
         ncxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=H+Oq4KltqpOb9wzu+L9OzY4bSDO7cEMe/MUjYdSZoPU=;
        b=CU8Ov51h8ThB0bODS1n8jiZcgnI6vJMO94JNivoaowA/7TLZRNsH8CkiKOrsdvX8HU
         wVr35J1ywUJoWT9meiO6FIudWtocd3fJr/pXvePfLl0A/iD7oTPGNGEyCX24KeozgV/Q
         pB/fNWt/P2yt4at+CQhg7OU+5vFY3EjdsgmAni1Jgi5dxum8CoWTr4tXuSS1sOqvg3Rg
         biUmpb2I5uNKAIgK/nkpaif7OZ/K5lrPZpo5EmkLuUJYKoxrgpKO2PhVMsTuOLB/RVWz
         RM15b7yAgn+6RMOn/IwpJLjlITl3ya7Bx8vI6at3WqcPxW3mWeOZ2hmVV02bGMUnXaHs
         W/tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=UrB84xhN;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id d14si2297643edb.4.2019.09.16.03.54.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 03:54:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id q64so22747120ljb.12
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 03:54:47 -0700 (PDT)
X-Received: by 2002:a2e:2bdb:: with SMTP id r88mr36236050ljr.82.1568631286844;
        Mon, 16 Sep 2019 03:54:46 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id v1sm8987737lfq.89.2019.09.16.03.54.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2019 03:54:46 -0700 (PDT)
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
Subject: [PATCH v3 bpf-next 05/14] samples: bpf: makefile: use __LINUX_ARM_ARCH__ selector for arm
Date: Mon, 16 Sep 2019 13:54:24 +0300
Message-Id: <20190916105433.11404-6-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=UrB84xhN;       spf=pass
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

For arm, -D__LINUX_ARM_ARCH__=X is min version used as instruction
set selector and is absolutely required while parsing some parts of
headers. It's present in KBUILD_CFLAGS but not in autoconf.h, so let's
retrieve it from and add to programs cflags. In another case errors
like "SMP is not supported" for armv7 and bunch of other errors are
issued resulting to incorrect final object.
---
 samples/bpf/Makefile | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 8ecc5d0c2d5b..d3c8db3df560 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -185,6 +185,16 @@ HOSTLDLIBS_map_perf_test	+= -lrt
 HOSTLDLIBS_test_overhead	+= -lrt
 HOSTLDLIBS_xdpsock		+= -pthread
 
+ifeq ($(ARCH), arm)
+# Strip all except -D__LINUX_ARM_ARCH__ option needed to handle linux
+# headers when arm instruction set identification is requested.
+ARM_ARCH_SELECTOR = $(shell echo "$(KBUILD_CFLAGS) " | \
+		    sed 's/[[:blank:]]/\n/g' | sed '/^-D__LINUX_ARM_ARCH__/!d')
+
+CLANG_EXTRA_CFLAGS := $(ARM_ARCH_SELECTOR)
+KBUILD_HOSTCFLAGS := $(ARM_ARCH_SELECTOR)
+endif
+
 # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
 #  make samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
 LLC ?= llc
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190916105433.11404-6-ivan.khoronzhuk%40linaro.org.
