Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBNUSYDXQKGQEWYYXMOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C4911930B
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 22:08:08 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id 202sf14241644iou.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 13:08:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576012086; cv=pass;
        d=google.com; s=arc-20160816;
        b=PrAZsDWtFveubDEJq9MORblXu4+Vk6wbynIyIILHgRGX3jmO9wnVMoQtrPavaWAlk9
         FVSFmLrg+KeObKUDMU6vnro84JqJc/r4rNgXnM+37yeb3M1Xk3P9iWhHZuKxwo56YuDo
         Sc9d+qy/otHIheysiVj0eFIjeuel+SuCU9O3Jbx8o/wqOp4XxyMgvPq89EzSHaFxvj6K
         DSovn5E9cVa/Y8xShfL5BmwXYSouyAtXrFA+BzS7HoVyk1DIh9p6x3AE3p27WoTWdOnD
         nbY3C7cYxfI7HeIQ/hqtx+Ov1KEZjnPQCOJ1QcpXnb4KBS3QhjqhczYTQRHQTrG55O1h
         EHjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UVM5TnrdRZtAiblCf9JQhlFPeJXJPPZgXC3EOARI0A0=;
        b=SFaZn8llZFDb0+rT35WQjc3XRSzslK/Y+RGPVqjZeACFxLBK6NH6efwHK6j4G+oiVl
         oG16OrNfdy9Vm2tOL8JS94+G1YAgD6aQQ+t9hq1hLmTW0lIqBR5BSZM/Un0FGZrm6mN+
         oL9eaOq79+okgXz3GDYISHtcBfeOxM6+2Je+6yJwH/3SgX4X3MM+SCcWikDAJLTd6k6t
         EqCvbqEipO7OInDdYrAnfkkOMK5ou2WV5SX7ga+qOcbZM7nZ8yR5MtaYfXzgVEvlpv0+
         ibIxqLWJDnPG9mv4oQ8Y/LeFAeAZxvzbnm0huHj0nNRM294xLTNlSh4a9IwsL/UxmKuB
         dLyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dV4vJDoP;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UVM5TnrdRZtAiblCf9JQhlFPeJXJPPZgXC3EOARI0A0=;
        b=Nj8Qb/BilGGBhJDTzq/xQznfpJkY6qihPpxFDb0pWUZZs4T/4JmwyJzhMLyYDpzCAj
         wXOr6kwfNXEV+ayv+NL87t1elqtiickCPuiDj4omEzR+FSFzCtJctC5/t979zzYnDX2X
         GiuQgOsjqjBsOuR7QqVb76TJH0uPwZwZFoiMFrpf9eUNgkPPulqZa8ISVkMJtakalLi8
         EHzVChBxkm1o5Xbk7Ii1uNL828zNP6jxf2poXmneizQkWt/JhpWgUbRi9mErhQWPJxrM
         2//AcCI1zPTeFq1Tdi6ukWaKDhJmT38igPTvg35rpjaQEXTiEanRkEzW2a9ruf40g5nk
         6vQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UVM5TnrdRZtAiblCf9JQhlFPeJXJPPZgXC3EOARI0A0=;
        b=WPMUhndRAkRQGVI+rcl8F9mMnCOQpjhyPpulJjvW2CFP9R9T0e9V/7Z4kmQEvgv/17
         6Y6W5/DjAkcLubQI9oZH00EAhn+QdA8/w5K2+WRaOEkZeSU44a3gcXV7Y28EowQNvaSO
         rhEfq6nC2552zZmdhagDjRHbtSMZ6zrluDw+5WAiWbNnSPsR137E7fWwnmFGZgfh9CGV
         HXu7PBHu+7H2Ao8wpxD53o9Znn5ObIMrQeTgIB5WwigdXeHzg5937rp2MkL8WtuegY2u
         b3RTxvAgycjwr1IAmpCpYTOv+GTbX9S20XOAIN4d3H/tFt5Kl8tl9pVXHbSNBttaJwPG
         09xQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX4g7wzqCglruVKclWCK1ndNwKwQClcaqopHh4l+e/UazJDMtyz
	cxley83hNbbO3RnFioT26CE=
X-Google-Smtp-Source: APXvYqw/R58E5LRySymJng0WRJyBl4bkKSkIzS49bFe8J36wKwmXJnzW25MqQ5+bHZOulouXVGGiSg==
X-Received: by 2002:a5d:9bd0:: with SMTP id d16mr97373ion.78.1576012086662;
        Tue, 10 Dec 2019 13:08:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:19:: with SMTP id z25ls1483768jao.12.gmail; Tue, 10
 Dec 2019 13:08:04 -0800 (PST)
X-Received: by 2002:a02:7fd0:: with SMTP id r199mr35058091jac.126.1576012084905;
        Tue, 10 Dec 2019 13:08:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576012084; cv=none;
        d=google.com; s=arc-20160816;
        b=e5Iskrg4cUCh7VE2YuprJ30ruZL/pK9a3DUMadE/IBjRF8pyJCPcilwD+jV0v6YG9i
         oNqosuWlvpkN3MVdh5dXQ5BmkXqZ6BrzHuUqAH6i1IF2zsVOXocbu4D2DvWB8VFcmfMA
         K4Iomct1T1yF9HFD/luwOmccX4W/O6T4Kk8/BTN7VtqQk1vR+6BRdmYQombScbKT7/Pj
         XSFH7sOQQe/p5unoN1J0iuzF9StpZONo9E0SBTEeLjzexd6R/UhwJxNBKedXwbjdB0jq
         bBQTipXge8uXWfDp3dHcnBlN1hqFZhdMWXpOvjuERYfEn9MB4piQ6pbfs2Dg1d8lHxQr
         UCjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=CfkViM03YMOcA6FSeKgT8rikOXbbLwOAmfZsBDn3Pk8=;
        b=XTSCI3os9k3F7hOdoLDSttVWkZJMmo8FxaK1MpI1skHZfcHiSkx0nlKg0blt6/DyY+
         n1OHZ7bl/NYii37Emc1Mmz+wl0tDZaTQF6kuCMqqM8ecH7stZV6TB55yTzMaY5ggILyE
         wJiMk49l9NdW35bHTdb1T9lVfqLDa1naMsOT/J7Br2teMCbKkxKHI3Xe1oyNwVRt/9hc
         IJgHGl0Po0S9Sc4CXJG8v7bdKvKhBC4ZgGnm4KKBC/qmwyv0uVlvPUHKhoxqFb8lPfiF
         14iVpFD7WeJVNgHT2Cr8XhVLNEzGbvfs1ENN7aNtp9yMzHy5losut50S4SdPoKvpRfDR
         Qmgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dV4vJDoP;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i4si287805ioi.1.2019.12.10.13.08.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 13:08:04 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 85A8320836;
	Tue, 10 Dec 2019 21:08:03 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	linux-crypto@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 062/350] crypto: aegis128-neon - use Clang compatible cflags for ARM
Date: Tue, 10 Dec 2019 16:02:47 -0500
Message-Id: <20191210210735.9077-23-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=dV4vJDoP;       spf=pass
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

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

[ Upstream commit 2eb2d198bd6cd0083a5363ce66272fb34a19928f ]

The next version of Clang will start policing compiler command line
options, and will reject combinations of -march and -mfpu that it
thinks are incompatible.

This results in errors like

  clang-10: warning: ignoring extension 'crypto' because the 'armv7-a'
  architecture does not support it [-Winvalid-command-line-argument]
  /tmp/aegis128-neon-inner-5ee428.s: Assembler messages:
            /tmp/aegis128-neon-inner-5ee428.s:73: Error: selected
  processor does not support `aese.8 q2,q14' in ARM mode

when buiding the SIMD aegis128 code for 32-bit ARM, given that the
'armv7-a' -march argument is considered to be compatible with the
ARM crypto extensions. Instead, we should use armv8-a, which does
allow the crypto extensions to be enabled.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 crypto/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/crypto/Makefile b/crypto/Makefile
index fcb1ee6797822..aa740c8492b9d 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -93,7 +93,7 @@ obj-$(CONFIG_CRYPTO_AEGIS128) += aegis128.o
 aegis128-y := aegis128-core.o
 
 ifeq ($(ARCH),arm)
-CFLAGS_aegis128-neon-inner.o += -ffreestanding -march=armv7-a -mfloat-abi=softfp
+CFLAGS_aegis128-neon-inner.o += -ffreestanding -march=armv8-a -mfloat-abi=softfp
 CFLAGS_aegis128-neon-inner.o += -mfpu=crypto-neon-fp-armv8
 aegis128-$(CONFIG_CRYPTO_AEGIS128_SIMD) += aegis128-neon.o aegis128-neon-inner.o
 endif
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191210210735.9077-23-sashal%40kernel.org.
