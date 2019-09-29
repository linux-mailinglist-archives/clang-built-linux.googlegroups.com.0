Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBOGWYPWAKGQEFQLTEVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 048C9C16D1
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 19:34:50 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id h10sf11530910qtq.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 10:34:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569778489; cv=pass;
        d=google.com; s=arc-20160816;
        b=dxpA2qN8U1gDRTTbCCS6vEoA4B6+BoAJhlKjDqKM/PJe9a5eqjQWqDwVRzznWARe2I
         sBIWV3gK97RQ1yxmfsPhlpJWQAerXpNrrNnID5p3xWzVPWliWwIj/CGasNxHEjXcENDL
         EUqll6YhzDU6k00pxIocneokubz9OW6OiU0HR76cpgryxMNTlVx9jgi/1A2lCJb+cI7K
         ep6J0/QoJIJ7dvgD226+ZeiCT8I6HFYvlW2e9EzkdYajRCBoe1dgDBGfz1yjUEzIb2Lw
         Ih1QFHfw1aW3wyuZ3aphuHldnhbKWcwO3hfC3wQv7WNT8P6bpbuffmwk/eUgrFNj8RWa
         vkxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Xxk8tZDlQ/HwWp2T7rsD+v+FfCugAYOR8+JzwqhUmR0=;
        b=jeO/P2eIRgPrFSfFxw+tAXrVLLy1rw2VaawmXiMj5qstqctUNXV0Z6ckZgA/WQVRf6
         hH+N3BXOjZdOJ56BD0zzOEflgrKwA0GmC1mjz3exDOq7olnqSwegpSyIaEheDL7/FoFN
         MYmcfvyorQuPqt19Mo7LhqeYBHSCso7bYmE9OYC3PYMbsR3F2EdbJ0folp0zL8HTJ3DG
         6TI6rY9dLUXHaozSrgKT65r2Oddr9AcntBA0LbvcXve6nSwV9CgOuqPafY3aNQ4C1iFs
         4OwPU8TWIBv1rDT7wYT8xw9ZUQOK5VfonjJRbr28EfI0bN1zbgK3qeKC7KXUauYXEdS0
         SZyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Du8iy/6G";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xxk8tZDlQ/HwWp2T7rsD+v+FfCugAYOR8+JzwqhUmR0=;
        b=jJQ4LOUJVzACZNeFrYDwGU92WeZvqEw6YqfsfBoJDJl8V991amwVfrWVEF6Zc0IpsU
         hGl6oo+HyMLBbBxz3t+9J54dXb1g9WZPvm/J6yWypcOIPnbOgInZQsYMpNb/rvVqDFNd
         1JouRD9/XZKNeXrOMRDUIXAFCCfdBVYMByYH8uGhiCxPRDHy1NQ8d5ZYaamaxXMjI5z0
         H3Y6xjPSb8pNBBnsHJQRNNf194ZrvGgq3VOQFM/H+CtYs6gD2XaGA78d6S9GGnPr6UpP
         uUrbJnzOJk437Z+J/XG6Ug7Q951V5OxaX6/0rS1EaDTg3Npy8tgGf0qalYF+rRqt0C+G
         ittA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xxk8tZDlQ/HwWp2T7rsD+v+FfCugAYOR8+JzwqhUmR0=;
        b=AedyEYKm9gaQ9AwEkB0Nf/GSHcuwxdsYHbqMCPCMctXNcD45iMEDx2tiEeHMNg+0yf
         MlNpfbo+/Bjhv+bWhRD6p7HN6sOnzTkidY3oqBqtQREhaow+hpx7yMoBnaF3Rhtq7Do5
         j3gojB4g589HWN4WF/MnZBBZN+ULRf9QMx9utFP1A198Ir/9a7Ir3UCCy1zkX7ITNmrq
         07FzMz+7xwclYrnQehjBOy5D3WdHuSEIb1vQh3nlUTDX5AkNltgN4pT6AbrqEPnN/Qrc
         kFPoIgOdCM0LBbPFRtWhsXdPZ89IlvgM0rFk7IT45Src/21eJoUFiV6WGPV/+T9TkUil
         ErVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXDLl/eBFfxmJxxGrHyEVwFwO9b7U9NbdyltGKhN5zOvflJFpd3
	5GGDziahQBNM9WTbxF96wAI=
X-Google-Smtp-Source: APXvYqyl4gZAnASQ52SBn5etPpokwWVzmyeIgch99X9nYUTGTbqaxN2+psZWMps9lndr7rKy41TntA==
X-Received: by 2002:ac8:42c9:: with SMTP id g9mr20639194qtm.74.1569778488371;
        Sun, 29 Sep 2019 10:34:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:ba2c:: with SMTP id w44ls2041621qvf.13.gmail; Sun, 29
 Sep 2019 10:34:48 -0700 (PDT)
X-Received: by 2002:a05:6214:11b4:: with SMTP id u20mr14857992qvv.200.1569778487996;
        Sun, 29 Sep 2019 10:34:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569778487; cv=none;
        d=google.com; s=arc-20160816;
        b=QAR0Y2dGl1jXb9EChv9xWu0N2ayrNFNyFRabPG8+/3z7cxiWu/kgsVuAYW4vYzpuYc
         UzRcxn9kp0XaczChI8h/SyDFDvy7TXO3m7WCo0pl3tWVGnICJz86wbPDMDfzpQlOE13N
         e+hvfCoUPBGvGl/yXUps3YXEB43dn9Y6gF2K0QfMG8O7BbLlYPixaDmUQS3tg9VhAKVv
         WRbOgJhaMouxXYm+r9K554YgeQsdaZhXZMDcluSrby8IpPkVcXt7PtGNI8L4+EzxWvy2
         R8Jkx7MSn/QHjhGp+Q/D9/SRD4xfhjbZSw9BL849Dbv00eM+R/rZxkYy/sCi2s7NlkRB
         b/PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kjfhxqC/dT0l6TqRCFJyDtDMrACA8UIZnr/wjEwhfpo=;
        b=Qrwp6+pnRp0e4Yb4B8tpBiNt8kXa4Wwpq8QVj9E1q1SKReE2QmClhWsIX4kQKbjv4T
         cmqYm8NDYiGL0j9NDrbKkNVaJj5Y3gYsvhvPjz0FWn5SXnbpXw4QghXCz6cs5cPGVbBe
         5uS+bPY8BDsU4ZiGn/13CiwUiXW4XUwDxldmwYSKhoOyRbiaF4H1Ig1nlIPXEF8h5mZq
         BI8QJRq/KNwY2wjjxO1EARL/wg/b67ZIkLPOcSU24s9KGPubJJ2dmvOeK3HVczDdxrYY
         FAkUPd90YR5zOUObKKfLv/Scyp7ESqVFRCiZAEhwJgFJvNhF80kz62IpvSTdCwCSYzOU
         QZbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Du8iy/6G";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v7si388240qkf.5.2019.09.29.10.34.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Sep 2019 10:34:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 28D2F21906;
	Sun, 29 Sep 2019 17:34:46 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 11/33] ARM: 8875/1: Kconfig: default to AEABI w/ Clang
Date: Sun, 29 Sep 2019 13:33:59 -0400
Message-Id: <20190929173424.9361-11-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190929173424.9361-1-sashal@kernel.org>
References: <20190929173424.9361-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="Du8iy/6G";       spf=pass
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
index 51794c7fa6d5b..185e552f14610 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1586,8 +1586,9 @@ config ARM_PATCH_IDIV
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190929173424.9361-11-sashal%40kernel.org.
