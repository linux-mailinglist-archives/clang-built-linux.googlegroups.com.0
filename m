Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBAWU7XVQKGQEBLUS46A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDDAB38B7
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 12:54:58 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id q10sf2620597wro.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 03:54:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568631298; cv=pass;
        d=google.com; s=arc-20160816;
        b=pdpeDWusckZl5Ru/cbKtMn23hntWE+vKmujedZ/yZASE6LVqmJR8hthR2ILi74Q2ND
         LIaLSi02K6ndkLNyNK4wcN6va/q9pmm4/EiiZ5nvngRxyFKLA7TP6AFS8okskTLJF8Ji
         AfI4iVWh0S0mPaTl2svEFlQ2cNO+V2FIqjaTTbIPV87vcQLKlCeUtzoQpKp7Fcqdwqgu
         2E4wLk+KZ7BmTb8r6PMI85pWAoDq+nDpzDCQKhrklONU+t2sBtGDUb1AVm5wmwma6LtJ
         S2hIV1uDsOlFuGP8mG9kAvVb9N6FMKMIdxYRXba46RnOoCb1JWuqLhIo/sgmf7J3ueAG
         hThA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=NSxXkikVdbf9YGZ2v22F+7Q1mlDGFp1V4jvlO8fNLhw=;
        b=Wfp8o/Q/LVf/aQ+JprcZJXskQqR5E4JZOuxZ9eD2vXRCviHI0PfNgtpEQtQuZY+Ugt
         H5LsK04QB9ThTWRDwCtuyy6sxMxySHLJR+zaLi4F0qxzr7nLcY8o4ZroxX1J6Xr77ZGM
         M65rBK9BHsPrGXQRbb3baTz2HP6JAa3XAUfjrhieCYkiLiqNlMN0c4rcANkX1KOtdc8G
         fPcJChDWpj9ePswK/9t9K/G2PbIdG5M5ezmCpR5+TkPILs1vN9kFJRmZoBqIX5VXBXTO
         /pT9g7qrjAB27c9hdUq3Kcbru0zvzDXPsgbZi8h931rcO6X4t2lIdnUcmpSJf5pZ0wBy
         Sinw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=o+zzeQpt;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NSxXkikVdbf9YGZ2v22F+7Q1mlDGFp1V4jvlO8fNLhw=;
        b=PE+qdxL7azPkAZii4hXjGLBXDYew+jZ2Vi/EIRzVPWZYKsdRi1rrRRwJwzhSUXmKBg
         mb7rdtkOMyRqAzUjN53O94nIlWnBk76CjBdlE5Z6f1Wa0IcOGK9iAyxNdtINdPesMRcY
         quwuOd6ogOmkXr0uE52+C34xXP1RmYsoMknLtbquaGv4u81ggjeDsMk1xlgInmhH/Tog
         oeHDTD8DyagudDkG+W90MW0PzboWnH1tM74mbk9sgEJOQfjRRPXJ+tOdZcI5Zwg/4HUz
         LnCks3yBKRyaYyAA2fIacaB9B9zLai2Vr8qO3AVa9oC5DKlK5e9iHdKACQZYdrQkNum2
         prGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NSxXkikVdbf9YGZ2v22F+7Q1mlDGFp1V4jvlO8fNLhw=;
        b=PIZTnWjmDdZ/PDcAV/3TuFfj3tfmsqUbCrNfiThRFgZ9pqVVOxqrjX715wYpBO5pS6
         r+KbYqvf4rDWHssqmc0B03e9H2VH6wFV+s1JUz0CkeGuEFPwxCe2TyAaCqc74ABUwxbe
         MW5BixK/UmqZ7SYA0OnJqvNFq2opTQejE8RK3ehjHUNWbss4fAIzxebNhlmG6yhgMuRj
         kjXDltkJSgPMx/BWT5tXDIF0hcLGpaljmDPGo+UB0nt8O/SoBkF3M2zvMGtVM2uO6WTB
         rEdEqbAZmZ55i+56oUaYFQa1NtteIJWLGvifAylNo/iQRhqwus//uIPXoyUaQXAKFr06
         rTRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW9DObVcW1EPtPCg2yTypdOmD1WMbQAK6vOXQbho87OksorsZlO
	SbiaEjruoZSw0pUsTmEdcpU=
X-Google-Smtp-Source: APXvYqz1WH3Eu3Hs0qzGybX13VRyygjew5QB3faOvznDwdDc3gNMNuoEms3vlKLSpV0n5l9XpkWVuw==
X-Received: by 2002:a1c:1dd4:: with SMTP id d203mr370385wmd.45.1568631298145;
        Mon, 16 Sep 2019 03:54:58 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:8bce:: with SMTP id w14ls1847907wra.11.gmail; Mon, 16
 Sep 2019 03:54:57 -0700 (PDT)
X-Received: by 2002:a5d:500b:: with SMTP id e11mr44291905wrt.285.1568631297758;
        Mon, 16 Sep 2019 03:54:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568631297; cv=none;
        d=google.com; s=arc-20160816;
        b=COPO9up4v8qTYaXIayAA9eobsyTeDATWC2lYGPFq4U/fV6kErrLICIubpynbapKSKv
         9gki5nhqojtnZjo3ZrK6bn/VPmkrdp0vnoM7IDSNrcvVLEqSI7LzYuFvJCIN7q7BRbSR
         eo8ZEV2gKtbnhtocr27LAfWdjABfFo7zh/AQxKLDNpiX88BwgXDRn0xU6FkHMeLT7QPg
         n4xYBppfQrmKTZeC/1En4UyaaqH6FcaVwvh466AmNeqyuQB+69KUaNw/wPNXEM1ikHCz
         jDCQw303e1Tk9wgavwsc8ZlhNS1pKHA7hQ1F/PVSAXSJvxcGdX9/W2lFOk1zXEWM0DEe
         AUEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=L1rbvOW+wQJfkI127ZZlgGnuYj2RYmEzxNGLFnF8DNQ=;
        b=lzTAJ6J08I2dYl9VBflZH7w4lBNl3duDvUNGEcPwe/LTDroZ5Xsj9yXsBfbE0j7PRU
         qLotNj/hbSG4QhCqZOjVFyuGbT0DL7Z4+0qBFmVADHVxDe8gKl5qMttH2TlJK6gQpDic
         iTBD0e2emKDex7W4FpnU/CZk8lqpk8bqWDuaJ/S0oOvrGARnVYLKlWaqq+Zoh8KC2N2I
         eaaJVai32HTQ3PITBHFdH0JE1qAuFVE1QS2nVwcCf2mvuyOziObgD2H3/hNaNEP2xSZV
         cCKL6boMq4JIW2uF9S+jE8ba3RpCKg/ShKLWfi511z2SwjR9dwhQzsQ7R9TICDz3KkFf
         21wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=o+zzeQpt;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id n16si712948wrs.4.2019.09.16.03.54.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 03:54:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id y127so3854013lfc.0
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 03:54:57 -0700 (PDT)
X-Received: by 2002:a05:6512:251:: with SMTP id b17mr16802393lfo.35.1568631297220;
        Mon, 16 Sep 2019 03:54:57 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id v1sm8987737lfq.89.2019.09.16.03.54.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2019 03:54:56 -0700 (PDT)
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
Subject: [PATCH v3 bpf-next 13/14] samples: bpf: makefile: add sysroot support
Date: Mon, 16 Sep 2019 13:54:32 +0300
Message-Id: <20190916105433.11404-14-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=o+zzeQpt;       spf=pass
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

Basically it only enables that was added by previous couple fixes.
Sysroot contains correct libs installed and its headers ofc. Useful
when working with NFC or virtual machine.

Usage:

clean (on demand)
    make ARCH=arm -C samples/bpf clean
    make ARCH=arm -C tools clean
    make ARCH=arm clean

configure and install headers:

    make ARCH=arm defconfig
    make ARCH=arm headers_install

build samples/bpf:
    make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- samples/bpf/ \
    SYSROOT="path/to/sysroot"

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 133123d4c7d7..57ddf055d6c3 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -194,6 +194,11 @@ TPROGS_CFLAGS += -I$(srctree)/tools/lib/
 TPROGS_CFLAGS += -I$(srctree)/tools/include
 TPROGS_CFLAGS += -I$(srctree)/tools/perf
 
+ifdef SYSROOT
+TPROGS_CFLAGS += --sysroot=${SYSROOT}
+TPROGS_LDFLAGS := -L${SYSROOT}/usr/lib
+endif
+
 EXTRA_CXXFLAGS := $(TPROGS_CFLAGS)
 
 # options not valid for C++
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190916105433.11404-14-ivan.khoronzhuk%40linaro.org.
