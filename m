Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB6WWYPWAKGQEUZFSJRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C10C1717
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 19:35:55 +0200 (CEST)
Received: by mail-yw1-xc38.google.com with SMTP id i199sf6980266ywe.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 10:35:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569778554; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wsdbm6uIu5qhS/pqn1Pt72Y61YwFkRPsyywSWwgXDE/UF5TJty1ZxouXj8/OIQg2wr
         XM6dcJyeA2Xwzaf2P6J2EMlYLdwzOln/2rkSQOB5jGG9BS+VaKqc4Jr8WuP49Rbbyn9w
         6Hoi9frobqErd0+rVz4Q3fCUam/rAgZ0dpq6tGeOuBRSL+rmjVtrmh1WjvmOQRE357nP
         0/FG4iTt2hEs4tUrmx4a4TOMyQblBJ+IIPGrPeSWmQ8PzkcAfBwv8l7akOCdC3cChlzR
         IyeXuAknmz1v5lCKX3HEh3ynbt3ROV380+fS3dU/ZWcT7lUYdbU8mgbUb+WlUYG5N7yn
         V7Jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8FjpPnJtVNMQFQvZx20lGhaMwV/3HAd1zqhz6XG6fV0=;
        b=XWedJV3OyTBodmqEtlLO8P2IWID6pZnJ9Ck/cgLd8IRmOroZz6R2S6Sq3SkBP4h2g/
         zhIMrzVLQm/6a2ewDuiGDVrnsXzPJLb+rnzU3JoJuauN58E2awZMFLtDLOC2XUT5Muks
         ZROfteneNlgPdRLJNqHe+uK3E4wMlMSysDT1FjJi9qO+TJ5fWnnJC69awxtY9LbwOyYw
         PshYymzYJxisJnJiL8S1tXwgwId5N6TL3MdTM69mQlTsz3d8/vRlyPplRX8opbc2Dazn
         Nrv7XzQRgNoLl6H2sG5+KtArbsE+Rc/Wd1hJg08IW1zdFZJRD3gBy3/T10VV+nTpsN6Z
         wnzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="xFp/E4sf";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8FjpPnJtVNMQFQvZx20lGhaMwV/3HAd1zqhz6XG6fV0=;
        b=bx3gjN1mwvCUNmn2LoIHFll9Ee09P9D4AQvZQHG/S3yKVyL6zw2XXbJung1jcvqMC4
         pnZ4GzbqKHGiyyMw/iqZAbi0aPn765gpT7bpVH/M8tbfu0Jo7NsxXJ5/nOTN1WjXye5x
         VEc8LgPKJpzlw+Q6aGZmNfnGzMP5F/gGGL+Ah7vCXO3MEwWL74lsn/NI5eSjtC8gWoW7
         e81M6x0nMT0FL5VKWaiqJsQgsItDmGzUlOMZ/LGvnjZabjVjgY2XgihYruvMDIBD8Rbo
         oDezdof8C06VjBWdDnwZTR8V/MEoJaL1FkBfyq0laj2t3RcUJ9v8AaRvobkoC0xa52eU
         YeuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8FjpPnJtVNMQFQvZx20lGhaMwV/3HAd1zqhz6XG6fV0=;
        b=swsUtHPV464qlz7OdOy8oh6J5H09U90t6oUH2irpRu5gMV1w8SJlAOA4/n1KDjM9Nc
         ZsRGCpWaOKMFMb1/32kknm8u4V4f+58AqahYJ5S7y+7jCqdXoUK/Q8CyjqqWOyoCB277
         9hZruRmySmdFUeLBxq1NIEc6cBLrUaHyaNrTcx4Ur3PiAKtsBkC/lnnsckWdRmkoGCkw
         A1X4V23hlcj0iQl/MylABv1z2MVfNaoFNmA7cndKJL+2F9ZXTD+L3bgxV14LEV3nf8fb
         Xms/M3FOk0LAryYDpVoLHpTCGVEowRwp/64j/hgoz9ywoNqOWxWh1VOnEPPGYx2t88jn
         Kicw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV9u6z7KXZLKE1Bn51V9IjODX2fII65cm4SSjaSia8chJ0MSYN4
	PYKuP0TsAT01+ndh9ZiyDf0=
X-Google-Smtp-Source: APXvYqx2tNvsGx3aLjNho2KuIMiZRhknPhFiKZMx5tilM8hQXGRwbroJqDuVbT5NMOQQbhmBYVa8WA==
X-Received: by 2002:a25:a185:: with SMTP id a5mr3103288ybi.311.1569778554205;
        Sun, 29 Sep 2019 10:35:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:ed08:: with SMTP id k8ls1287796ywm.10.gmail; Sun, 29 Sep
 2019 10:35:53 -0700 (PDT)
X-Received: by 2002:a81:7dc6:: with SMTP id y189mr8558241ywc.274.1569778553877;
        Sun, 29 Sep 2019 10:35:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569778553; cv=none;
        d=google.com; s=arc-20160816;
        b=Hr1Wn9s1pipI3O7dKeW+EKkMIYYlyS2I23quz9mZe4Tvft0oLxwjEttTTkpI4yQElb
         u58b4Eams6ofqkYUg9oohgO4lZ1Xd4Qjc6w/5YMenU4RYfr2Ew/rFmgodzejwMHuTaVq
         vWUdeMeAHv2Wnj5AnvAS0MLzDtt+guMLQJ6cG+nrXJadm4+rxwnxo+SdKzTk4dpQM0Js
         orcc7/+YrisB13pLiWN6dfzGj3mR6p7CSmkNSnqWFAnS5uR4+kcVawGVraX4DOVXZw/R
         O/+3gMSVm32wdAehUtk0okhqq788eJFCqAvQsgKr3FpNf4fO9E8dTxcGr1hp9omjiWHd
         Y3mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PR5GDk6TFVivkhlni5Nh+v2Xaabcfq4DD3Shw9Cud+8=;
        b=eCT8AgcQ/p7gobS5BjrwmLJuvgr+r6xqKdl4kqY2b7UWTl4ZnAa9/HdTSvO2TvTr5H
         7Wle7tWtW4uZNE7CXrxEw1jvbKa08D0c/T4ySkpc7DMPIEnCnEHevh9ERhK8AJfqM8ZA
         ifZNfRbt1LKCM7WKqysNmhcutX0fe8ouPdWdDock/L5zOTZEJicJqqPRbOhEficpTvx4
         NscV20nvM9BplhnZv2OcN/Q4SFQH/PeYRQ8ezwr0ojftJZS4+OKK00Ww4+UZISdXHs73
         7xkWpZiAy/ROPnMYXCgvV9b+XkCR2Txfz39D/Pz3p6N1RagynHJG6yB3NIp/JiGpL0kl
         G9Cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="xFp/E4sf";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p140si378592ywg.4.2019.09.29.10.35.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Sep 2019 10:35:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 21BEE2196E;
	Sun, 29 Sep 2019 17:35:52 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 08/23] ARM: 8875/1: Kconfig: default to AEABI w/ Clang
Date: Sun, 29 Sep 2019 13:35:18 -0400
Message-Id: <20190929173535.9744-8-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190929173535.9744-1-sashal@kernel.org>
References: <20190929173535.9744-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="xFp/E4sf";       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Nick Desaulniers <ndesaulniers@google.com>

[ Upstream commit a05b9608456e0d4464c6f7ca8572324ace57a3f4 ]

Clang produces references to __aeabi_uidivmod and __aeabi_idivmod for
arm-linux-gnueabi and arm-linux-gnueabihf targets incorrectly when AEABI
is not selected (such as when OABI_COMPAT is selected).

While this means that OABI userspaces wont be able to upgraded to
kernels built with Clang, it means that boards that don't enable AEABI
like s3c2410_defconfig will stop failing to link in KernelCI when built
with Clang.

Link: https://github.com/ClangBuiltLinux/linux/issues/482
Link: https://groups.google.com/forum/#!msg/clang-built-linux/yydsAAux5hk/GxjqJSW-AQAJ

Suggested-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/Kconfig | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index cf69aab648fbd..f0080864b9ce8 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1595,8 +1595,9 @@ config ARM_PATCH_IDIV
 	  code to do integer division.
 
 config AEABI
-	bool "Use the ARM EABI to compile the kernel" if !CPU_V7 && !CPU_V7M && !CPU_V6 && !CPU_V6K
-	default CPU_V7 || CPU_V7M || CPU_V6 || CPU_V6K
+	bool "Use the ARM EABI to compile the kernel" if !CPU_V7 && \
+		!CPU_V7M && !CPU_V6 && !CPU_V6K && !CC_IS_CLANG
+	default CPU_V7 || CPU_V7M || CPU_V6 || CPU_V6K || CC_IS_CLANG
 	help
 	  This option allows for the kernel to be compiled using the latest
 	  ARM ABI (aka EABI).  This is only useful if you are using a user
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190929173535.9744-8-sashal%40kernel.org.
