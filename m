Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBWXG3P2AKGQEZD2Z6BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C5E1A9D23
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 13:43:23 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id a187sf6155559qkg.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 04:43:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586951002; cv=pass;
        d=google.com; s=arc-20160816;
        b=UFDX/tNk7vA3g67/DYkTpjW0aY0ceiDuHlh3T30rVg56fwgVXJApv2hMPTcluDXFrg
         35uKt73qBx+FPZnEo1N6faNqiLQ3aS9NKEUheIU0U0tTg6y6PfJPv6tM02WJo/p/aWHQ
         3ZLENIZ/8hcPA3DYy3+XnH0YuLMRPCTDPfCAFG31vQgMoQeLODXL3fWRdA0jt39XJ25r
         cB8u4BejNe3U5OEC04In41KhfRCRB/hHIS6MXfJ9Y/T8yHZSitjqeFckZtysD0RajTps
         R1+KhvQlRmT5FfdmVtADBNWSdsg+13Wa2iynHK/DEOweLZHMBf7XiJAlWR2nAqiRixcD
         LckQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Sqri/vigCzbq995VnoqNZj9iwi1LGEJu8T+zg+/IeuI=;
        b=NESGBOLr18HGMFlRci5mBcFRyWitI+my9ZH4HJLFDcLwg9IoH4cALIvq8sf5S0TUpM
         OUE+1ErJek3bJPKVQAS7dFKuCZdmFAiLMq63bFTRWOmkx+CQpNJy+z559J9KnsNvxxXo
         8azjUGl2LlC+3M0ZCLlAGDLWeqDn90RX7Jf0RPSB+cwNL42Scd6pl52qLRj9qFTal2iV
         mVx2CbUYC7Hnsyiyn4vcCogStuZuPtw3bYYXFq8paeebLym0vFwZM9S38Q0omwj9HS6B
         x3Ju+Dhhk6YB59CfOsRyr8DZE24JN83i3OIUneVTMlWkfvrAowf0aUq8wNJ27actwK9Q
         IlHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="o/Mw9USW";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sqri/vigCzbq995VnoqNZj9iwi1LGEJu8T+zg+/IeuI=;
        b=Stlmnq9/ASeOasKKKfTsWS8lus2SoP5D+u2fUb2rVQpppdtC/wYgcGGfzRbAU3nYKp
         dEkRTAeqT2gnNTZsxFZhYktjOkIHcxQET4OfxC7saR0XoWOKoD/ztDatJY3yb6jDACHt
         4V0GnxLs10PEXtV2Vwy0fLTTUUxacLO2EwqzQuJqtos5eI98wxs/clKATZEumMZHM6mA
         ooV4HBaytOesciglT9hdBaX9MNY9jJhx2RRUJKA9jFXmxQJXwI2HqAdFnmvSDsFRptES
         NeqjKv+yoIUM6NvlNg/OrCuyZlu2LlnHaM1Kversjg3MtJS88uv5Ps6kiZiRqUMWwJjx
         Uv/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sqri/vigCzbq995VnoqNZj9iwi1LGEJu8T+zg+/IeuI=;
        b=RW58oCla4Tv+l7N+vMWVO39vuieGcM/MF1+Fh18xm5+LGgIIKyboKs6ZZXBiQjY7vb
         2YV6CwMRobzx/Iex/PsmO/TZ/OsZ73DL6INg98Oed2CpKYo6UODj28E9NoTgh+RLc4ho
         PUBo+qnYWT1gT4nsM6RHEL+1a7wxtyr9eUcQvpQ6LorE/T0sOguUPcmOxLd1ai9SbJtg
         8hetEIk6VOTEK0bhu3BlWECaqKSCN2iQKRx4xSgcLfQOguQowg+/CmgjlVjB+Ad+td4i
         KKcqAVSwC/cArEyFOeTMMRdoq/pDKESsb+v8AoBgsjOxS1PVIxR2K4S7QPC0SVhCwTtZ
         wPLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubxZLrsGjusEPJvOLKgXY+HQxC9LMiLyV+Rqpii7OsXJGML7ev8
	v5ki6tfH+LrPUXnM7eI0BOk=
X-Google-Smtp-Source: APiQypIPtChTa4VfIKdVz0ZXZkaZVCXDOu8fzieTzIuMtv5oAQ5YRjLmtG1cmm7tDEA55Wt+GIMBUg==
X-Received: by 2002:a37:8bc5:: with SMTP id n188mr26519032qkd.415.1586951002627;
        Wed, 15 Apr 2020 04:43:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:4b2:: with SMTP id w18ls2183709qvz.2.gmail; Wed, 15
 Apr 2020 04:43:22 -0700 (PDT)
X-Received: by 2002:ad4:4f86:: with SMTP id em6mr4593990qvb.218.1586951002289;
        Wed, 15 Apr 2020 04:43:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586951002; cv=none;
        d=google.com; s=arc-20160816;
        b=gskRYaGYwRFRGUoLE5JEbKbwNSWP1H/Xawuo7ydDyLX6CUa8Y2Odhw/Effwy1wA4X6
         OrA328cK9DWt7rcWCrc5Iq/AWUcKc+rTGadlGqbRUA3dMUVkJZLtRzcn24FAYLf8FVNk
         KvRbak78uuNb1dZV999c3zT0+JKA13J7uGfGzufIC3GyC7EkqSJ5hpMFQh1qTFHraato
         xmgbhBd4F0+spsNIM1gNBJWP0bMKnnjCNem+kGcQpxyyihZeA5bMFhjkv0pPSRqzZmuw
         MF4T3lYyUQ0dppDnzRpJkEEE5PSffjRmY3FVD26UqD8tBzVjPIxl16lXNE4guOdBH2fM
         2ikw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=OrECa1i7nWUzaaIdjSk5L14b7MZ8Rd2FN439Tp6q5GU=;
        b=gFtvpRlLV1JIe0xQ6QiBoZFnjkdrrI697i+ZJRIjxVi3QFkAVny+1JsFO6egxDkB2V
         24bEF/Ox1s96MKqnP9nW/NOTdphSkhH8TQmnr45YZzxqIDuqDMXtf+xyuiBUmAxgR315
         V3X8xurWwpy6+PNQcSZg9TJuaaPpHBju81HuqXBEuqlN6qHxrL21FijITZ0qYDGA8dH6
         cRJCQtxrxA7Iq0z2UmWMhBXplFOIiVcJgpsOBvGxpE8NTAsmCSMf3/+1cwpAhBXozXto
         rxhbXxu2dqkioW84cBVrUEdnK8/vuTupJOQ/WqKd4d/b3nVbIejO/6i/S0cOwszMpE1S
         eUbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="o/Mw9USW";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o3si877934qtm.0.2020.04.15.04.43.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Apr 2020 04:43:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 28307214D8;
	Wed, 15 Apr 2020 11:43:20 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.5 046/106] powerpc/maple: Fix declaration made after definition
Date: Wed, 15 Apr 2020 07:41:26 -0400
Message-Id: <20200415114226.13103-46-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415114226.13103-1-sashal@kernel.org>
References: <20200415114226.13103-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="o/Mw9USW";       spf=pass
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
index 9cd6f3e1000b3..09a0594350b69 100644
--- a/arch/powerpc/platforms/maple/setup.c
+++ b/arch/powerpc/platforms/maple/setup.c
@@ -294,23 +294,6 @@ static int __init maple_probe(void)
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
@@ -367,3 +350,20 @@ static int __init maple_cpc925_edac_setup(void)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200415114226.13103-46-sashal%40kernel.org.
