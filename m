Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB6GUYPWAKGQEU234NFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id C699CC168B
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 19:31:37 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id g20sf8437261ybh.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 10:31:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569778296; cv=pass;
        d=google.com; s=arc-20160816;
        b=qmDQSdWzDk8brEbi8tMdhnp4TNlRu5bZSgcik9Vqb++QInGwYwReD8lQcWleg3qfmn
         M9oW45agOijJvGMFE7FHHIZCacKQRkXo2ohkgESzHpoH83P62u1Dfim4otjJr9rXPSUd
         Xqg9UChx7Ip2R0fQ3pZo9cPMKmZhrK08wcwitKeKWxsTNfYkhSEfDBB1gOJWK6xmPone
         tLiCHTnoKvkEB5AwS99K6Hi0AQFSd6g6qkegcoki1xq7FaTtrgnlfHmZE+f56oAsvdS3
         zrMzpr1uAFg/LSxOiJfxZdST/Oe8kTGEFob7+DxArsvBXRb2qu5kyt02CdhwrLKAAWJE
         G1fA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=u2tkgiREaDX6rAET1r4F4eWSYYJ3GzIFdRDwOeaV91s=;
        b=w2dE/thFGPw8GeuYcV7T/is8p1dRGlrGPhdYmxKDnuTqDdMIYa18xNZQFEnK0kdNJf
         w+/39hsWPoouBGd4fafbjNB7aZwaf9dPkq9/gGFhTQQr7Asnr07Pr0F91EHwnE92X7eF
         KOuAnkviaKC/NRqDMaVC7DXmSOE13TxWJTr+8BXD+LxoE0SOmueBaOYTDgg4CTwY5fXz
         0xiSvSWiy3R40B0OlSGM9RgDQR8E6Xxh2Lm5eTyQHF8ZrcggTpkQizkmOq8qKjm+Enb2
         axmDhXC+OdMT6uNe/T8xIUewp0sMDJyaS7TX9rhyUlL+p+CJyUpDG+L/k4kHzHD6obQl
         EwUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sV1Ain1i;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u2tkgiREaDX6rAET1r4F4eWSYYJ3GzIFdRDwOeaV91s=;
        b=OPG0pNausdm0j+YY+aOnUN7Ym4BGrg85QEHywO9y4l4k7jYJ6bHhtQbx/gd28tB3hF
         HkVe0tVyMKdbWZSV8SvrQt65W2tzBEFSho6xfXP0K0oGgOrgzueCnOxluuVLf3jO97J0
         2dxv1mTlnSfjsf7F1aBwbzAeX4eBj3JrAbMFIzFI6XO2CEQeUo5OA/tpMCkUwtbhagrc
         INUyw/oEZnAh6MiiEFiCyQEgaC4Jx6rXSzu0J0XtWqgcD0yY0FEK0zGJkDUZwTJfTIhX
         kAdPcut4tUaQ1UZ8UELyPzNPiO+ItK4hkZuyt8sOe/2nEz2vsJneiLnPpoGDxwMIjAGd
         Prsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u2tkgiREaDX6rAET1r4F4eWSYYJ3GzIFdRDwOeaV91s=;
        b=GL7CKgYfWe/DG2+tgv+onGo1/RvAAFmsNYNr7MO6gXpwNSYEaU4DXujkEXwUNN6gfy
         1aYjB2mvMHjsCHYyNepWmWmLmvgS1OhcfKB1dmvvOEiTVftRun0ekefNNZIfQgbi9Qc7
         ehXCi/DLolYWy4ntLHHlvG5G0SZzoSXfDwlYvTF31wY0+aZ5PMQ/SQzPZJd+bDjXOgLB
         bVJM+BZMMmsd8+1G/jWp6iNro+5E1AdxCq+LiivX3VISh+EzThnlHqV4QF66Gk9KacRv
         ncDYdrx7brVZef2wGQcs1cgaTVXPDIL6kRInzjofUZAbvfB/ahkuiuKvReJ20SAVz4On
         bFew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVE6O7MH4u/5tckC4mPhHy9hGSNpFegBoJepeMPhYCQF126h1r4
	Z5eV16FavpGe3DjQxFYq3F0=
X-Google-Smtp-Source: APXvYqxBZzzeOPV2sQ6XgAbKPQuRjnpzgc3m4YyJLCm2mzi0NZUs1ZPlw0bR3gQcGqv1rPKbCq6rMQ==
X-Received: by 2002:a0d:d7ca:: with SMTP id z193mr4457424ywd.17.1569778296828;
        Sun, 29 Sep 2019 10:31:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:62c3:: with SMTP id w186ls1286233ywb.5.gmail; Sun, 29
 Sep 2019 10:31:36 -0700 (PDT)
X-Received: by 2002:a0d:e0c1:: with SMTP id j184mr10475415ywe.106.1569778296520;
        Sun, 29 Sep 2019 10:31:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569778296; cv=none;
        d=google.com; s=arc-20160816;
        b=c/g8KVcZx0uTy+z4pCZL0IbQS6hFfpfweJZLbVxABcxquwgaPAV0z0QbA70SaUH8wY
         dvEPx88uviLLOwgiyeimPH80QrNx4MHr3h9DEUOJP+Tn4NgXXLXm8IOaHICeGC870o4b
         JlyvrVDS4etkB1RdCNldAxXbmQXFy4Q2/AbUJFqcjEEdErythuu78snv2T7uVakbwHtk
         gc1Ot0m2XyU6erQG875tCEql6LgBsFfDgMIfzoeOyo7mdKUJslhIsEsMp89o/GfQMm92
         bB4KpjVt8lHyCYwY4HnAn6TCrd9jEzOK9zEwQKCsyNc+xpOP6M95LCUx+VNG22QtcFm6
         u4Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ihzXLtpjhluH503WCuGQwklxBgAd/Mo4z1vEjb3wppI=;
        b=SHuHH/LhH8pera6RrS2kZugLt6I6KtCoRuumXQRqsoiB3LOwcCrruCX7LASnOxyd7X
         l3oq8NSygt+3SGclQ3ieZXY834qGUVyKhF1m7yYCtzbcFHvjZAkNi6SG3lAU01MiaK9k
         IN21LS/0nt5zMG5CANZyFZpzyFPL4R9SBDnNDf2W2Jo+j5pODmpz1Cqgxf6S7i4P/Bzt
         4jjc6bd7n0T/xLXMbzaxCqnyvUs+euT9LGzyiqrn3FsPtDO8ZNL1xrAB9GeP9WitkYGG
         4DO0nrcxTXEFW4Nxc9mym4J28KzPT4g2k0LzeBQENT/C+TKWQwLw9+cUegxYpoVDQQD7
         VExQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sV1Ain1i;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g4si356770ywe.2.2019.09.29.10.31.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Sep 2019 10:31:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A9251218AC;
	Sun, 29 Sep 2019 17:31:34 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.3 18/49] ARM: 8875/1: Kconfig: default to AEABI w/ Clang
Date: Sun, 29 Sep 2019 13:30:18 -0400
Message-Id: <20190929173053.8400-18-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190929173053.8400-1-sashal@kernel.org>
References: <20190929173053.8400-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=sV1Ain1i;       spf=pass
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
index 24360211534ab..5e2c68e9dd6e2 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1572,8 +1572,9 @@ config ARM_PATCH_IDIV
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190929173053.8400-18-sashal%40kernel.org.
