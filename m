Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBZGVYPWAKGQEQN3VZDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 68959C1691
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 19:33:26 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id 135sf7305539pgc.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 10:33:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569778405; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZckY2pImnyuY130CUGpDyIq1Q6IxR8piABfJNIOMKcHId5/l/cyE5Gw//Vqe3od3oV
         5y/2LVpJ7A+O0A6hTQcoFyvFv6pIGZ00yF/s7mE4H2iF53XRRoflHzx/4jjk6KjJdh6i
         /JnJRlaTW3iEJSd6VX7ughWqyFhmc2HlD5QsoRo8yk9TsmzMqFJTjztWw63U4OlL63hl
         yYiP8FwY8iRKoCFyTjp4YSP4Teqae8g4uliawo1SGNswn3jWXgeM4lF74SMZJ/LwC26A
         do6xy5MDomoXQPfynJlwRGno7GpLLG6tRXXo7ufSWhoL9DXClZu8XE6qPZ4E4P9ILVzd
         32Og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+lgUKGwqJHFGQlKGjbEJpxoWik4N2RV4bCeO8PYNlUg=;
        b=i/KurUpFm6jxdPpTKfU8TiMQg7vP1HQHCfu9TJoTsceP67TEox3lz9XaLlXl3JfhmH
         mTNMyuh8J8vKQtE1vjygo+mtQD9EKpXycXqhADS7QrebL+DPp5a5Pw1smTFgWV7zSCdo
         5AwecQsAr8a6Y49naPAC6a7N6yAU9tns55/j0SYWlBc2ETbdHNVTHkwC/S5hatD/04fM
         Nx2yBw25VN5FJgtNx/1B9UWvGVenSCH0cHF+W6aGA96e5/gZZWWVRx6S6vutePoFcwAN
         n9ZiubtUAPX+sZOaWDWSXgWlv4GA4fS+Nj0pZJzGBFYWpdrVSBEvqqOQb0l+XEH8TK62
         tmkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aS5Uraf1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+lgUKGwqJHFGQlKGjbEJpxoWik4N2RV4bCeO8PYNlUg=;
        b=tJ2wgBpNpCRmvmWpUhvPF/8xTcIh1evBkKT6hok+HAMgBIaBT/XkiaMTJmase/4aU9
         h6rLUDj+fwxnwzsz7bvUcr978CMCRGiEHcBUwg8dItTHNfgVqqxsn+F4jv4AmYYpsLlc
         d/F7wyTkLMgzrx0I3nBPoxaIOvHChwxpmi+RMVTjuLhrxN3yqDOYuVuqj6We0uOSb7KM
         4eRmYEe74tzio1dtZz8FRxMnnukKGgoaF0qICimfrcL9RZgj+EP7fwV4Oo24zXOqbLoe
         rFwN+HRjdv7QEevzxA9WBzYyxZW3upNhzEDHQ4yypsSSEkhlwAP/FqBH7ELTgM2Z7Tgi
         K/kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+lgUKGwqJHFGQlKGjbEJpxoWik4N2RV4bCeO8PYNlUg=;
        b=Yt1vCL6xs/naG8ZXu4lwXdb42IUAF9QAn8K+LYvtJNKIlLwZUfLMJb5rRx60jmokJh
         IO40gnL74xyY2ZBBAXhnXC6bw0AUi85vsODu8e+K7Lu1zVSn7JLL1KEXlB8q4ILP8HFt
         Qi1T22Xya1CF84srQ1dHjgLkreHjUddv6P9CVa7v6FY0uJr0+6b1NzbpJSBDGaZux3fC
         tQoIzdvQRrKPi8rvvPkTneKxi/CF8/MwIQBaj0LYdS70KPCW0PJbCCERgEaM8/gd+E8i
         bzeqqzn6+/omjSsaJmZcl5RzjE3oOvvvTZXzuUao1sucqPfzhY7d6i/nJJNsTJZJ7OaB
         wh1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUO7V/Gw4VORBOJIQOVDyHMcaMRMUn392v3YNN0+KmH8LoRXkZD
	1gCFEFgBYVj63kg1ReMKmmM=
X-Google-Smtp-Source: APXvYqzKW1fPfsTSSf0CNnRrAVnH471P8ePIFzL2kfzdP4v7LH4H0OPtOyqVAf6Vt6jNEs2pgDO78g==
X-Received: by 2002:a17:902:9a81:: with SMTP id w1mr16223359plp.124.1569778404942;
        Sun, 29 Sep 2019 10:33:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:bd03:: with SMTP id a3ls2141443pff.10.gmail; Sun, 29 Sep
 2019 10:33:24 -0700 (PDT)
X-Received: by 2002:a65:60cd:: with SMTP id r13mr20642772pgv.421.1569778404555;
        Sun, 29 Sep 2019 10:33:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569778404; cv=none;
        d=google.com; s=arc-20160816;
        b=c+7166CVXBG1dsuS+jp5GzJAMSnUKQqARpWlLZxMCB2w7wp9SuzvZKc+E8UKOgKMYa
         oAVjsLJUB/HkWoLEGimJzQQnR3FpcUZIEccLstMJAm4s9Si1OuTsajeU5kU55oUC5KLf
         KUlxXmqLH8KjwHNFCA+JMnc3RopLHZ89qQWmcK95TzzCg77B8ZuttWMPqGTioW5VX46H
         QDvVT02D/NH62I/l6HPOZbJ/cqietAt8tLssQS1UHcPjdCi05XbraZ1lBk06gM2IOIsc
         matrABZOrs2Cl+f1j+amZcLHR4q8F/EzHZaVeH9u0JhShr+iEYig+veSH/pD6sOG1rtK
         Lq7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fch7/u6zIgGuT6tofZ6xfOhNoZawTxgt7+8BfUDy3mE=;
        b=JG5+UtO9rOJ2QRa8k0VxXU3nxjXplGf+gdLkh2EvAK2w1xf5MJF//uEZfzyPAYdrbH
         gQvJ7IbPditGUPFgBW4jfjGVC3FMyt2Ck8IS8S5zjPxZaaUvT9lt6MazVeFqCv4QOjj5
         PBXf+FBMxuIFEufF02u5Hy1595yReH57vj+yf15dLzYoMUo4GxhVvux4g/RiV5+G4Br/
         oeTe48eFecBYumeS2ONadplBV9naTvfovojPtLpui56zcbwfDdgG+AtTXvjv93Rz4jcZ
         teY+mzSyAY/ooguVIOgrefgd69PcycllpGh/BGxmPHokw9/CbmeVVTfhjI9rpMqC9QIw
         Mx7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aS5Uraf1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e6si80932pjp.2.2019.09.29.10.33.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Sep 2019 10:33:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7312521A4C;
	Sun, 29 Sep 2019 17:33:23 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.2 16/42] ARM: 8875/1: Kconfig: default to AEABI w/ Clang
Date: Sun, 29 Sep 2019 13:32:15 -0400
Message-Id: <20190929173244.8918-16-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190929173244.8918-1-sashal@kernel.org>
References: <20190929173244.8918-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=aS5Uraf1;       spf=pass
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
index 8869742a85df1..3539be8700558 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1545,8 +1545,9 @@ config ARM_PATCH_IDIV
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190929173244.8918-16-sashal%40kernel.org.
