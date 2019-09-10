Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBMX23XVQKGQEW7ZBBJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A31EAE850
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 12:38:42 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id m9sf561909wrs.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 03:38:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568111922; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xq4O41C7bfeugdSe1mQ0hVk8eA1evN/+L91HIQqi1UEEJD8hfUz02Bi9sAbgDQSuvJ
         cjv09oUd6v8mmY+49xRN109K9Pm+eTPXBgquCws6DV27Bx9GBi5/fX6DVnW4ywdwyKGO
         JBiV2khrConquIPQ+PrZSfHw7qZ7t2r7M8HYcPEJAStP2eI+C7OCVQNuNJpnhAThsIwo
         ASjTifnJWftge7tDRS51vuIip4V8d//n/ErIcXmoG/9ZS208lu/76A4+igYhagdy1+0t
         fU2INZVuUHUjbVVic1djYp3fKYkHZKkvsdhISiN4xob/PJZqTH5QL+J/xqq6ndNYUaOh
         VWWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=X61MgweRs4+91bv1jTZZay1viWv8hTPXcMhXB8rBLyE=;
        b=x89o0RjXqJgcmklqMqILvzQw2W82GBOOy2hgyl/XihSLfPLVCicEDFePqvSwebOQ7B
         lxflUpYUxcPP3Rd262uhFoiHH1j3w7u7Qk7tL6l9vYp57jDh0f69CjYGNzfm3BRllg3a
         DTvtaKWYE1QfCPJGaSyOgumiWUK2x+m9IjmNmIjdRwfy29mo9pSURTAP0vRkcBzHobc5
         /EQ1DRCCDnYX8EhH9sciQRBV3nYsMzsnpEbpMD6bu+GExygxuStI7IVBUCr1GY0bb04O
         66ongaYOiCOPQ8oxOer1g8qmKYiW47Gbf4cvuPNErFklDTqP6SRow5ZMpoHlpPhW5pOv
         b1wQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=BtxKUtJE;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X61MgweRs4+91bv1jTZZay1viWv8hTPXcMhXB8rBLyE=;
        b=PU7jwkRnwv39evVQnoh9HnDmbI55GBrW6J+jsNi1Hdr7g5fT+0ECPxE1cga8wmeMwu
         hNCWOQAqFMzD5UGiZgLPYyWkezFAUpyktGu4nWzNGRYDtH2Of56r2HYZcn4Yi9PLiiWf
         zsFUi60lWTQgkqCD1t7OBV6JFw6lMZOSBDkfxWz+qLPBxYcoFZzeh1L5eH1spD6T2bMa
         s0EEFePlYh5xlVrq7PHmBgHLwRaVPbFuCaFBXRLd/Ft91u6YvJ7gcoMj6s8TEImivapz
         SkpOCG0Rvy22G9kJrxUXctYw4uvF8zpgijztPlQYGBaF8CA+UjltUzMPlTtzLXcPd1RA
         ryYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X61MgweRs4+91bv1jTZZay1viWv8hTPXcMhXB8rBLyE=;
        b=EeIcDp9cX4Kt6gZ30qavWh6hqfAAPBe3kbzKCXMUXQdGxnyKYNuSg05ubJHQycMsdz
         jpU2r0gDCrK/WUL3CKU2wu2Nhr44Pp6HQ2IahBHwkcRC0FtsJX/SWGuhipiC0eK4Weis
         rQjz/JBolQDwcijIsCVHrtq93TQGFN9c7SCuvFTauFd5++Ut1IsVUWWaM/qJuHnjHyhZ
         DJwTeYfnmtu/zFGiyij6w6/rkMuztI8FsRiM2ZqpfkhZqudbLjYwYa8OnUPiOqzL81kv
         6LKY8gpVQg3BSRi7xHxu8rXZPMmErMZReXRGYSpfll4eYkfx/LFJ5piG3RYdomjuGkVb
         J3tw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX8EWYe+mHxepwnETeqcjpAKXRWCC54hhAg851V1VDgTZIWXUNQ
	S7GKK7EuZwBahAjfdtHnJtw=
X-Google-Smtp-Source: APXvYqzYl3yGURmX68s+997hXrlQ6J2zptUiHWBBqqsJ74r/NAcqUxRhun2PoEPNqPHno/6E1OLLDg==
X-Received: by 2002:a5d:68cd:: with SMTP id p13mr23853161wrw.18.1568111922223;
        Tue, 10 Sep 2019 03:38:42 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ec42:: with SMTP id w2ls5199820wrn.14.gmail; Tue, 10 Sep
 2019 03:38:41 -0700 (PDT)
X-Received: by 2002:adf:eb8c:: with SMTP id t12mr26120514wrn.84.1568111921782;
        Tue, 10 Sep 2019 03:38:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568111921; cv=none;
        d=google.com; s=arc-20160816;
        b=gcYo6MCIpy8KKTJL++CfLwdYtQhNLXigANHXQDjSaKc+fD468iu5rrOyQ/lXYug7gA
         Z7nVogbPnfaufFfplEhjpdciBc9zQsbm0tVv4Juz8TJiF+XFuT5HWIGEx7ZHNP4xb1l3
         xT/NLpMrL0oYexzCrCvlUx9kUFFiBRUdrevKZfUT/v6Z9Op5EOFjbMagpnWa11lgWHy3
         3mx2MfyP8qluSDq609Jr7yf0tjkN2dku0K3RYwvKbwwlHCK4CwYZ4sCPK0JhwPl2LnsS
         UXLnBVJnn5kbzAdG93KT2AyJUYrDG1miF2dd2YyZRxpscSrrTg0wo8zeek7f1HcXsnUx
         sl1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=HSB3pC6OCIzwVYGBAJ0R7QI4CKajD+8ovp0KUKhem8g=;
        b=FbFmKp05kA5fdV+ArKSrRkCNsiS7ajtZGKjQdD9dWjme/yDXLqs+7xekhGiwUdexmh
         f5UtBVSIQmHyNRurpNCfpDa9F3Jy4jPfkFRUOnYyYrw62I2cFyjq5ApGISgZr5du6N+P
         wdwSCw/cIw5Hqc6nK80btgj37Ur8Q5faojly7Ya/gHMcViXD5OilxfjKnC0W3DJlKdjX
         Zu8riDYJIVD2Sy2yoVjfg3uGrROd80bFpdPWGMq6Ya4XVa1b1YISgQ9joK2YqeZKRoZP
         4bzbnaJvvws87m+FNiuSrBIsvFUC4ErooVdXd1wZPLJzgFZy7BDPWUemG92iFgJSDIGo
         JU0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=BtxKUtJE;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id s78si81102wme.2.2019.09.10.03.38.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 03:38:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id w6so13060451lfl.2
        for <clang-built-linux@googlegroups.com>; Tue, 10 Sep 2019 03:38:41 -0700 (PDT)
X-Received: by 2002:a19:4f07:: with SMTP id d7mr281498lfb.161.1568111921277;
        Tue, 10 Sep 2019 03:38:41 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id g5sm4005563lfh.2.2019.09.10.03.38.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2019 03:38:40 -0700 (PDT)
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
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH bpf-next 03/11] samples: bpf: makefile: use --target from cross-compile
Date: Tue, 10 Sep 2019 13:38:22 +0300
Message-Id: <20190910103830.20794-4-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
References: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=BtxKUtJE;       spf=pass
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

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 43dee90dffa4..b59e77e2250e 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910103830.20794-4-ivan.khoronzhuk%40linaro.org.
