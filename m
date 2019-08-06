Return-Path: <clang-built-linux+bncBAABBROQU7VAKGQERWFKC4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C3F83AA6
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 22:51:18 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id e32sf79977119qtc.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 13:51:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565124677; cv=pass;
        d=google.com; s=arc-20160816;
        b=ij/JROYxmc7m4g0RfcbqKZZXcm/221DreyFjYm5socsjToiRCiuzGltv9cSiolM1Q1
         bFTavsuNn7qWWj538uX/fPuLLgXntHBcDssQ5IgIAmbgjykUbTD0ex1Ci/Q+Q2ER2AdF
         rLXg/5/aEj0jpJGHNSyte660TgymflVjuCJEQNzUE9b/ISsQybgnORByQ+DIII5umnCU
         V4EPJ8GC+rVTsXm6qFIeS6Gl2BA77nVpk4qUYYmOgvOS5fOqdJlfxjR9oEVS+fp20ioJ
         KA7NhhcwWGFKJ0a97vNDYqJYdbnX37hkZ1Svw8daP8traYhbgxEKULnjvExu+zv23pZM
         Bymg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=4rpO3EYUXtccf2Nwf9V6H0ofAkwHJKDpXhio8OcqMh0=;
        b=hC+QDwY9G9SHOqlQAqVMcyX4Csj+YMb3q+Z9Cmoedi7BCoz8vuMvLj4IDWPGdUU0mh
         XFMOqg7xbt2cn7Boe/NnXG4c50GcbR0yNwaVyMclZDF2gR+M5khP22AAUEDewJEMqOof
         HNf3Ca+1bdMW2btE4EqoHfXH+9HhmoP69pSrhZLe7kcLloqFni7G2K3n5mXq/bfS30W+
         BvOLWuI+63t/9VuJnHV8dgbkICsfJ4CfllK1s73qVkvCQsJdGpEDLIGUZDdr0yCpVNGY
         3ihOTKnJ2KSlokkC3ks7gdRKgRw8UrQ7/7OneGwDbhbUvzjcS+F1jO5C7rdWR4V1QJd+
         Udaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=vu5okr7c;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4rpO3EYUXtccf2Nwf9V6H0ofAkwHJKDpXhio8OcqMh0=;
        b=E3QKxdUbdQnigoXrg0J40WTbRKkd2OvdNmoGK0CassX5+u8vdvCFmDTtnvWC8D4Iye
         Mb/mC3QlJIhuAPbAnbGdS/AIOy6HQ++nAtX/ah5hhJwi3GVUblDszCunrdjeP65/7F8T
         uvw0VwLTZDW5hNfvknxpBE+vAnx7g0u/9L7H+Ro7tw09r237Omy+ecCRemOk2oZBLuxb
         FLSuIDJXeVTD/4w5Dk24R7GSYo7/txotrX5gnD3Tq6F6hCRkDTJmHQBpjP08eUzg6x6s
         zIO4ZZTqevMLX+8rIjmJTmIb+scTbUtA5teCYm0+sdAG0MpxL2joWYtEflRkLgKam9c/
         IO4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4rpO3EYUXtccf2Nwf9V6H0ofAkwHJKDpXhio8OcqMh0=;
        b=MNk63YV/4CWIa16tPHCeDgTPSBw7sOXIJcirqOCloAf3YLltLtQnLIQTlcXenJEqtR
         GZRkJoAAatwUaI7TQAaE501ed/BjIlmW8r1oEhPP/EdSyCR4gbAuEFrMald0En3I3z7m
         pcTG7EvmOkj8In807rf5PtS+Z+Jzs3eFW+vY3pLSD9VKYM72s4Dxk7UAAl1rhw+m4cTH
         OvPL99mq+JHS0v7/ZEcF7AvAVJvq71xFHwvx4H+o8G568VJ2VNXlrXFkEAIwybLmZ3ak
         51DCgc5e70wFLxGCC+1XFL5Q0V9DJ719HnVPfwLMzXAezlsjWm7WEUxFzxtl9LzFb3wK
         azgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX6dcrfNQnvUCa1o62LuxUE7XeRGEVfNgMUM9L93veeiBqsdVZr
	9GfRp7A1dgOY62EUyaLDkl4=
X-Google-Smtp-Source: APXvYqwWJE5b1a3RvFQBcwTxRtui3V1qAd7F1cBlnLw12YFGyN/CdcMfWqWC/CnZTDgIQOL7NRkldA==
X-Received: by 2002:a05:620a:12ef:: with SMTP id f15mr5041525qkl.340.1565124677529;
        Tue, 06 Aug 2019 13:51:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:56a4:: with SMTP id bd4ls3068439qvb.13.gmail; Tue, 06
 Aug 2019 13:51:17 -0700 (PDT)
X-Received: by 2002:a0c:eecf:: with SMTP id h15mr4884588qvs.125.1565124677434;
        Tue, 06 Aug 2019 13:51:17 -0700 (PDT)
Received: by 2002:a37:4bce:0:0:0:0:0 with SMTP id y197msqka;
        Tue, 6 Aug 2019 11:39:53 -0700 (PDT)
X-Received: by 2002:a05:6402:1351:: with SMTP id y17mr5367925edw.18.1565116792861;
        Tue, 06 Aug 2019 11:39:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565116792; cv=none;
        d=google.com; s=arc-20160816;
        b=MmJ0o1Uk7QoLrkxgMVjdyXVBd0pax/m8VnjWU/88oN72vz8VNl9QCmiR1m0KPRfERS
         uMZDR/JAWvjQdmbz/F/5nibmbLkjMqnfYybfgrWadQawEq7I8OSZSieTMDkxzI/CgFXN
         5Tnn6gNQ5tbhJH/CRiWv1yJJjHrtqwuixex55Y2qIS06MC2/GKx+3WEZVsDv3K8gnMm4
         h1bSsZDWh4uq0xvX74fr9Bft1iJAs8bJggt4MQs2kT4a/AEkDezeM6jzUvU4uVBqMhFZ
         hHWJ3ifow4R4NWMBlfnzW9G4f3kccs4OxGWUDVxaKSCis1nq85Othz53jf9lQua5oFvn
         G++A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=cpKSMr3aMRit+OTK++cxQ0+sv+8y10M4RTKYQmUROXc=;
        b=woM6fcEh0UFKNty92xjPKTPu/cEnmFUDMFX/m9nej0P2zcEHGoibzRbrBPxkuu/EMB
         Znl+A2PJVXPfjUOanXmdcss9Cps/5iIAj7TaFHeUHN+Eduvdng5Zsk2Lul9lM93UWNjT
         2aa8IOJHAZspjsy0uByJZBL5t496duBJe1wbzuHOgekab70VBniKJXQyDJivk8GqzQ4m
         /ZSWWLyS7dwhPlJ72hqIrlxriKmrEr3Qh98vwRN/mDF32YB8/7bn28/g+g1DfBKsfN7T
         J81SQOFi+SD98OiErw9MgN/zpdRCyq0YH3hN5fvzrKs/pEXOaWvWMeoK5+GdErq9RgIF
         DM4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=vu5okr7c;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [2a01:7e01::f03c:91ff:fed4:a3b6])
        by gmr-mx.google.com with ESMTPS id jz14si4017995ejb.0.2019.08.06.11.39.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 06 Aug 2019 11:39:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) client-ip=2a01:7e01::f03c:91ff:fed4:a3b6;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=ypsilon.sirena.org.uk)
	by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <broonie@sirena.co.uk>)
	id 1hv4NB-0005Rn-EJ; Tue, 06 Aug 2019 18:39:49 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
	id 9C4B02742B68; Tue,  6 Aug 2019 19:39:48 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Tri Vo <trong@google.com>
Cc: linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com,
	Mark Brown <broonie@kernel.org>
Subject: [PATCH] arm64: Disable big endian builds with clang
Date: Tue,  6 Aug 2019 19:39:18 +0100
Message-Id: <20190806183918.41078-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=vu5okr7c;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates
 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Current boot tests with clang built big endian kernels in KernelCI are
showing problems with the kernel being unable to interpret big endian
userspace. This is a bug and should be fixed but for now let's prevent
these kernels being built, we may end up needing to add a version
dependency on the compiler anyway.

Signed-off-by: Mark Brown <broonie@kernel.org>
---

The clang people (CCed) are aware and looking into this.

 arch/arm64/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 990fdcbf05c7..1c32d9889e0f 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -813,6 +813,7 @@ config ARM64_PA_BITS
 
 config CPU_BIG_ENDIAN
        bool "Build big-endian kernel"
+       depends on !CC_IS_CLANG
        help
          Say Y if you plan on running a kernel in big-endian mode.
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190806183918.41078-1-broonie%40kernel.org.
