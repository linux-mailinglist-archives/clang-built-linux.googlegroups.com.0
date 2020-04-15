Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB3HI3P2AKGQEBTCBG2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 3664A1A9DBC
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 13:47:58 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id u15sf2515841pgg.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 04:47:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586951277; cv=pass;
        d=google.com; s=arc-20160816;
        b=z0IGeOpTXUMP/B6dTJF5Z26gdJBh4DbdID/ZaywP2Rwcb6R0wG2+vanGEHDIc0ngem
         ud03NYLDZN90d7F4AA67wiWY+UZlZy/kREU1AdFuAlAvHp6LJaK8/MJzeZ7lIh4ex9A+
         0fohHuKQUrKpxSTavLS+FsGUpSpHhwrwobZ4Dm+qcpYI++0lJGs1shCiY3bNU2v6EdiR
         4OkUAOvat7F9yEfryVFsOfqIzB2RstEkPzd03w3lqh0RqPFRLEhkPHZVxKlARmiygu8/
         c1fvK1s7UrkHn6lZHLf8Df+pH8VOnw3dZ12VtrV2FahsoZu8xOuppmaeqvy3e1qUj6aC
         vbHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=n1jcsHIIebf3GJEusB5rMDhEtqgjkzwIjM4ZqM9Hv24=;
        b=M4JgPmye3Jnz2Sa4Vy/ka8CTAn4pC/+kZ/2/M5r5VsQY8FX6WWpD5LHRTEpn8B9n1c
         8Ib8TWor3/gxzhhG5gvEdqn/JVj71fFLIyynD0F2WxXMZ6H7q4ReAoUf1FPLwsd/4hc8
         huXoLnM2+pZkl57JktH5ky3wWm6n+OCWi/YD1xkny9DfVcuAz0qtbXwipkmq737RgmXy
         hpzJdVecqljEEoggLrK0U53QdQaAbo6XnHRW1DZOk4BHsqg/Sdcq8SP+JndebF80qYoe
         yweUZ4owFb835Wz1Luati2tRdaVsPLQrcT5972s1gIBBzr7M573aXW/v/4Aw2iwm3Yjy
         is3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NQ5HqyQt;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n1jcsHIIebf3GJEusB5rMDhEtqgjkzwIjM4ZqM9Hv24=;
        b=LftjbKKVUqxtsByZ6vy0cSBfnnWpwrhEtspICkTBzVjDzSnR3veHgXMrdd766qOqwi
         Rq/cpOoq/lwbTS2rxP+pjTa9SnRPJupvGqmQSt5SICsoE4QA3JhPqYfJvYrdJu+3Y3RJ
         sezxi9+IAj8Rf5HEU+rKV3T8XXRoNlGCrMqlW02vejA816bou3JKUWUCtImj2sh7t32j
         3YCNS8dQmdX4J0pQMAERNwgnrpriezXJ8HTTC1YYyTeu+dJwR2Oi0GAQh2b2eA69pnPM
         RNv/+QB9qcMf4dyo6SMWXzmXQF0CBxo2HS8WJQsVwBganxQetVpsFzpmcOiHMWSGB+BN
         uyvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n1jcsHIIebf3GJEusB5rMDhEtqgjkzwIjM4ZqM9Hv24=;
        b=BeBQobF0ML8SMzAO2oVAkzWo/83JPTcV9IIW7QQa+yElqNuDiT/dwu+8rGOF2dkFBT
         0tF98/UdofKBkY9L5PgtdPhaDnhDPzIAZaZKK8BtEHAF2SFP/baJ22TaSwfxfpZEnvWr
         odceE6czmZdTcNJ6CHmGwY2Tle+Myw69M+DFl7/rouQG3D8U6rh6uT6swCyX3Hls/E8O
         8Khk4I1Yw4I58zDVEkrosyBuV+plXZgQp14hbbheO5IRx17qaToh9yVk+Y+5vttZmMCi
         +vWMY0IYXD5z0Fo+mGfvWBdshAHXmEp6fCJZF2NsJDSBOT25ZLxi1IeN4q9VIFuWtj6r
         ukWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuY8vgavB1CdV8gbg1MBVOXuNhGQ1vCA+/ekC+hXCOiMHc0AuzMG
	Pdxi8W+wdl/5knLPfZsb+SA=
X-Google-Smtp-Source: APiQypIDLyc2P429ZdpJtWnm1zz9GQ0ruvPRjo/7Q07je7l5uIsC3Pio0VUF7VTP6jx3GFYMEqUFXw==
X-Received: by 2002:a63:140c:: with SMTP id u12mr19740099pgl.243.1586951276901;
        Wed, 15 Apr 2020 04:47:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f1a:: with SMTP id e26ls753911pgl.10.gmail; Wed, 15 Apr
 2020 04:47:56 -0700 (PDT)
X-Received: by 2002:aa7:9711:: with SMTP id a17mr29404144pfg.143.1586951276443;
        Wed, 15 Apr 2020 04:47:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586951276; cv=none;
        d=google.com; s=arc-20160816;
        b=GR+Dfv0ZgxUDXJGDSNO5Q5aYPSNcQ5nBRGXIfYMqQErKFwLCcrfWIBqlBZpGcn8LXS
         PBGrPDy6YdEZOLmzgPVbL2VeqgPXNgst105V5pnwoAcbsuPj7fxPKQhTwu6UF6PpoGiF
         plrEUKH4H3drSRMPXXnJk6yyvO+cqULIgF1MHNwU6PpNm2ohlNPDvUZGIiOqtrj+wLtK
         EgtRYzzskQjjqpYAm6ckJ2beq6ec4IWTrXW0VeDd75DsdX//fP2QjmqP9mgyPCSqhJ0O
         nfpKoZ36x7ulIU4qoHAZL5RIZqxkx+dyzzC8lnhaUrIXjinX/BsdwaSz2GKb1re5DHFH
         y1ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=P8S6rSwRA4R5Y7ZuWSQClyz1hRgZXJhL/MvOxvrB7gY=;
        b=GcQGn0K8kxGJRp5crgR8ZAatkt06yjFm3sqSmfe9G0o99knXNHUJvjoClAgInHUP/w
         ZVdQHMOOtBEZK4lIx+KpGCn+6isdkR07Jvrk9OtWQPQTIj0Bps01grSJVnXb+9Cakc4W
         SVQbOZEx22TI9si6adVhPy2OlaLGhyyKLeryvfZ79iL0jWXPV8PAwYAtJkKU7psh0OKV
         VP6FLTbfSe0yKdIR0KADJQyMTohjvEjip1Hgipsv4l5IEICJfVx6F+phV8PKRG3xhiew
         61o/3u8LinwmGMpVe1wwwEqPo2xK9EFfje3WJsEH+6h3Z2BXn/3OolSy9mMiJwVNBP3B
         EKQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NQ5HqyQt;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t6si678165pjl.0.2020.04.15.04.47.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Apr 2020 04:47:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2A2492166E;
	Wed, 15 Apr 2020 11:47:55 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Sasha Levin <sashal@kernel.org>,
	linuxppc-dev@lists.ozlabs.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 06/21] powerpc/maple: Fix declaration made after definition
Date: Wed, 15 Apr 2020 07:47:33 -0400
Message-Id: <20200415114748.15713-6-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415114748.15713-1-sashal@kernel.org>
References: <20200415114748.15713-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=NQ5HqyQt;       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit af6cf95c4d003fccd6c2ecc99a598fb854b537e7 ]

When building ppc64 defconfig, Clang errors (trimmed for brevity):

  arch/powerpc/platforms/maple/setup.c:365:1: error: attribute declaration
  must precede definition [-Werror,-Wignored-attributes]
  machine_device_initcall(maple, maple_cpc925_edac_setup);
  ^

machine_device_initcall expands to __define_machine_initcall, which in
turn has the macro machine_is used in it, which declares mach_##name
with an __attribute__((weak)). define_machine actually defines
mach_##name, which in this file happens before the declaration, hence
the warning.

To fix this, move define_machine after machine_device_initcall so that
the declaration occurs before the definition, which matches how
machine_device_initcall and define_machine work throughout
arch/powerpc.

While we're here, remove some spaces before tabs.

Fixes: 8f101a051ef0 ("edac: cpc925 MC platform device setup")
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Suggested-by: Ilie Halip <ilie.halip@gmail.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
Link: https://lore.kernel.org/r/20200323222729.15365-1-natechancellor@gmail.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/powerpc/platforms/maple/setup.c | 34 ++++++++++++++--------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/arch/powerpc/platforms/maple/setup.c b/arch/powerpc/platforms/maple/setup.c
index b7f937563827d..d1fee2d35b49c 100644
--- a/arch/powerpc/platforms/maple/setup.c
+++ b/arch/powerpc/platforms/maple/setup.c
@@ -299,23 +299,6 @@ static int __init maple_probe(void)
 	return 1;
 }
 
-define_machine(maple) {
-	.name			= "Maple",
-	.probe			= maple_probe,
-	.setup_arch		= maple_setup_arch,
-	.init_IRQ		= maple_init_IRQ,
-	.pci_irq_fixup		= maple_pci_irq_fixup,
-	.pci_get_legacy_ide_irq	= maple_pci_get_legacy_ide_irq,
-	.restart		= maple_restart,
-	.halt			= maple_halt,
-       	.get_boot_time		= maple_get_boot_time,
-       	.set_rtc_time		= maple_set_rtc_time,
-       	.get_rtc_time		= maple_get_rtc_time,
-      	.calibrate_decr		= generic_calibrate_decr,
-	.progress		= maple_progress,
-	.power_save		= power4_idle,
-};
-
 #ifdef CONFIG_EDAC
 /*
  * Register a platform device for CPC925 memory controller on
@@ -372,3 +355,20 @@ static int __init maple_cpc925_edac_setup(void)
 }
 machine_device_initcall(maple, maple_cpc925_edac_setup);
 #endif
+
+define_machine(maple) {
+	.name			= "Maple",
+	.probe			= maple_probe,
+	.setup_arch		= maple_setup_arch,
+	.init_IRQ		= maple_init_IRQ,
+	.pci_irq_fixup		= maple_pci_irq_fixup,
+	.pci_get_legacy_ide_irq	= maple_pci_get_legacy_ide_irq,
+	.restart		= maple_restart,
+	.halt			= maple_halt,
+	.get_boot_time		= maple_get_boot_time,
+	.set_rtc_time		= maple_set_rtc_time,
+	.get_rtc_time		= maple_get_rtc_time,
+	.calibrate_decr		= generic_calibrate_decr,
+	.progress		= maple_progress,
+	.power_save		= power4_idle,
+};
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200415114748.15713-6-sashal%40kernel.org.
