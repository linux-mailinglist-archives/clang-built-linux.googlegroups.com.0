Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBT7H3P2AKGQESKQ6HUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 108651A9D4A
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 13:45:21 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id 35sf2537207pgw.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 04:45:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586951119; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mi9veSGQOrMddRCExPags+MHNaA0sH1Za2eCFqQwGyvCyG+Hut+2/HxYwppboLiFeM
         Dxu9buHqylKICLtw6JlfnHaydTSAWwNjYd8MbUH6d/nhfvs6HxuJ6mDD2iHy4ckgnF8U
         iYZIS2OJOUyCvD8Bb1S8iZEA8GKhdJ4BBwQs2ystseAw+sJibpJIju83v14W2qdBHFs9
         URbgddXJJFATxV2vlamF8yqnc7in7hDw0c1Q5sUFq8xS4QnW2LUBNNOXB+WTd1zISr64
         RFqj/7/x8CyK7Aq/VpJVG/yB/hll94ynqRFIo3w2Som1+Wlf29ZV+bVfKTD4LlHpcofJ
         k1eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ddWt8WMze9ZA4oaHgMHxNWPep4Yx0wdBjmdw308v/es=;
        b=rtWewQoqpn4pRNVQz8NStduDEj2Iip6eyvSiizlAzFmERoznx50vigD5ANeG4Vvv+9
         U+I+hgx/a5F3WTx0rWvID5ZRVQ2qco0QuI5sldghN8Jb2mEOfaWElCdocmdJC4ELbw87
         3S9Io7sSmXuOarK3RpO27b5WR33ynxtrlqK98mchKWYVpyjZDYeQsV0hWGSjSjOkessF
         zA2D7Tw4TU8ujfHwKT0fPuhu1iJ7jCHHYbRRKhl9o5tXAlMmLBx7cRuYiMfEIo6XLldj
         O2oUqbcI28SGwzzh2t9aMaK1kyZvawfSLC2BTkD3dguOI3LpDysHDJTci/Na/5Aubuj9
         ssMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Am9O6RjX;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ddWt8WMze9ZA4oaHgMHxNWPep4Yx0wdBjmdw308v/es=;
        b=dMdCkpxk4ZOZFKCxfqs4c55C8I1XPBwoki1XdyGyUAUpRarwlj0AlyKp9m0K10Pvn9
         DJJAGwHzp6j4fE/tihVRBV0hsOim3h8AjwnzsblV12s2buPiaxOhuSl28qWGkC73fceh
         4u4gYXBM7/u3mtmEcprKPgwhUVfEDnlE+7DCRqeQviqz0pq3+25k3N0/VGj0b3DPFFzT
         cyGRLKXLWdx1GZfgDVyYMJhUoVo1LBKKiMW09Hl2wbHJI3B5ajL5HyNHj+/8oybQPRp2
         FQiJl1CqXoOwBQ3HOeVHi4cDFG+cFwGzqQc87CJk2pUSZmg1X31iA9h9t5U3h8GlonKN
         HdNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ddWt8WMze9ZA4oaHgMHxNWPep4Yx0wdBjmdw308v/es=;
        b=ZqmWttMRQkm8qQGK0gDsJ0UKfKbmpIhQPylIs6ksuG8X5RS+0ne0QzkklTT7IOnViK
         7QtGvSggMV/WH2ziWCLA8Vrkcx2FjGZxGnZ4hbq3oG7yz3LPrt58BzZ8XDaM4MGbzagB
         6Mklg6HvsgA7k9VKPx2YSMarqVufLNd1d6dg5gOJDfMfCfCCRod5CXlHSjy38QLh0c3z
         KSf+AUOu410PzzUFlvpN+5HUDigi3h+J8EnOmCDMhz6ehI5+AISvEg+QLd5QQIKZ1kji
         cqXfvW8728Jhr4jSXeCOYrQ1hkURJUfsqxRXMkatp9DksUysrn23Vr+cxQX9gBlxqfzB
         TsNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PualXVKEXe1W8G36gtbPL5QwSc92Qin2qhk8KmzRblLuDEF6K9Lc
	ERJBmRR24kugGtniVBBWohA=
X-Google-Smtp-Source: APiQypLM1xssEial9TR26QiOQlusYMUHtAQxaigWoaFN0zifSQw/sqJ1STTiWwcWcNJQ9mEplfeSrw==
X-Received: by 2002:a17:902:ac85:: with SMTP id h5mr4355150plr.76.1586951119451;
        Wed, 15 Apr 2020 04:45:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:19d5:: with SMTP id 204ls4842296pfz.3.gmail; Wed, 15 Apr
 2020 04:45:19 -0700 (PDT)
X-Received: by 2002:a63:1c25:: with SMTP id c37mr14559681pgc.320.1586951118993;
        Wed, 15 Apr 2020 04:45:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586951118; cv=none;
        d=google.com; s=arc-20160816;
        b=VkLzioh/eVZ0VbtbX8GXr4acaA1Q2tBzd+LMFg/50DQ3bCKlNhxiUflklUVXgeUzPu
         eDi43UprU8GVCfL8O1AxyysOA6kBFghpj1zj1mq+QZCrU5VvUUxchAg4IyDc/hJEmio4
         +wkJIcE6qGExei+1QV9NMxzO6Lr7SQNyktuc+Nn4AiozL5bYVJbiErUBewzwqFQsAdiC
         H8aRCYQQBCyn39dvPV+vW2f2h1QRHii/jSXvwPVpZFZCJoE10i4zjinM3FHSJtC6QOa1
         6YboBHqYiAeCuM3L6oCABDdC5W/ERTGkudl5uLz9bZ7OZp+KdmsFhf3xci3t0MU0N5i8
         aFcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=OrECa1i7nWUzaaIdjSk5L14b7MZ8Rd2FN439Tp6q5GU=;
        b=OZ6Ra/hVrsZXca2d5LLymuTXtwDe47FsjY/LGqGktrk2UPK10ar6rVHpZtUHWLd2fG
         oOlw2T/2VM9m7oKcqIq2jfLClVqpKEZ0abm5jd9KrVJyBTBfB2Ih8KJnJsd5LEj6m1A6
         OiT8EpaTbelcaYOo0VR1eWiSlVq2t9yZO+SRmbfZCjtE204y/jd4PTA/U3UvDhxxwxTy
         3+OHkDxrOLVRWFl1lIN+GQThkRjZTI2yV762kpp6mNXGa/6YNrzrLlXGABdKayjchJ0/
         OaCKmz1pHRiR0lWjioje1WSiF+xkv8ZPkpWURyjIbW2DRrt5SoQwAi47/v61bGW3w/wt
         +USg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Am9O6RjX;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z185si1040596pgd.4.2020.04.15.04.45.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Apr 2020 04:45:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D47AB21655;
	Wed, 15 Apr 2020 11:45:17 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 32/84] powerpc/maple: Fix declaration made after definition
Date: Wed, 15 Apr 2020 07:43:49 -0400
Message-Id: <20200415114442.14166-32-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415114442.14166-1-sashal@kernel.org>
References: <20200415114442.14166-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Am9O6RjX;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200415114442.14166-32-sashal%40kernel.org.
