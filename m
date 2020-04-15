Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBTHI3P2AKGQE555LVGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5F11A9DB2
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 13:47:25 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id c13sf1633427pga.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 04:47:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586951244; cv=pass;
        d=google.com; s=arc-20160816;
        b=nH+bIx8g0/e8beItAxRYetI6vaIMiNmgjNS1Tu+8DrRSNwfAXdI1jfKwwiC/VdoEBw
         8n7Wbf3c2TthzVhmp3QokzbytsFTNyXYectIPLLhZn1gTCXqy58bWCKgK+86FZ5qbQLq
         V0oJm9aGQMOIVgsjmZLsS24xsC1G5RJy5S7cH6/quA8qNs6AWDoQiAe1E1Dp+/tJJ2CA
         uxMTLYqHOVTuczJwoQKm9XAp1/PZIMZ2oAedJ7y1r0GPom+SsbqRrJ0cxJQZHtWC30NK
         qkuYX62zf0iyA1P7uRbLD/I5KRGs1C5N0srTXYuWevPJIyoBOPCkSCoR3/2PO1w6azTC
         cbSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1yjKs7BLl8SuLTBcIvoTFkOdjx9St/2YDoyAxVvCqhs=;
        b=ZL5rHR8TpTL0jvwj4SpaHCxVnX1mL1lo/1TxP7PjrJfzPPy5sMrU4hnRoIjAP11PKx
         MrooC/15rtreLScir0U4arTsUaxwpRcIjmp2Wy5/c6RT93ak3mb0XE5KmXGsBPDA0aL4
         yPXvr1NiYL89H0n77o8wApjv4rj/e5M3M5PaJumVRnKiRikDxMJgmgKN+pFP0oIJgTA6
         S4Y4HuuEPutBLHPiYg3apsvFuRJYYJx+fWn1jS5rBFhf91JlwY4tsFbZ6PODhT9GHkN+
         VaPny4qByFo5t4pTqZJhdftDvlv7SXnqksd/RnmMs7BAgHjLwEpuSi1Vtd4AVpR6DWJb
         IIkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ScxdaAZA;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1yjKs7BLl8SuLTBcIvoTFkOdjx9St/2YDoyAxVvCqhs=;
        b=DYTx1LuyfHDZ/azRR12uOuuBjxOwkCHaUil2r8ZXvCYmFXiQMej98gUEGutqTzLvg7
         o6NxfXJcxr+/D+25OrvZQkqCnqpnHlO/VUarbPrQmW+fYLmiO2hTASmvCdwQArurOeuw
         PZ02JxbJNAjrifZMK1quCFtJrcpdqu6VbSGYk2ZYK6yV415NhS252z7xjOgHpaoI8xfV
         g+heBoL5QAP4VsA647nzyQBzFktfhjbVPShYSVubSerAgYFRoNqKTcCnh8kdxwGS2jNI
         kTRM0floekpZPE5dR3N2VjYhYJYV/C1NOsi5BEJBBk3F7Hr0OIx1qFGwxFtBOXqa5exK
         XQ5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1yjKs7BLl8SuLTBcIvoTFkOdjx9St/2YDoyAxVvCqhs=;
        b=aFwXDt0KMwcOXh7CRJunW+M03cROmfx//g33L7S2vmiyT/PDYd9NzryTmVEyFEC5z7
         shFcr9rY+mouFIeKO9HxIlGag5nNFBxrj78AfuiX8ApaZr+9/dbJopT1JDRF00rGR905
         i/JHR1LwbTKm5dvXUbVA3VVm6gSPAeSeGSgGcwAZxsDBqLipTUHgJ4aZ5c0lpZgG1ZCL
         k+pY6z0Cmp4wISWFGIIei4QQijTa2HRQwHkg0PRbrc4oyWFpOfu+j7XKqxKLSkgdzRVC
         kGNblqpH236MOYhufBMIwXsrfgNM8fFKK47aji+8GLvrO33VS222JjRs7s52gi14AO89
         q4jg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaobQwBR5utc6OPe+N27wI1bUgAKvYvpo2p2V8tBUEy+n1eiAz1
	kysgxKIzKTrGTqzP0Rlk6/8=
X-Google-Smtp-Source: APiQypJrR/1KvbTWLOmRSPJe7ZpBNLzkaXK9Vx0EU45/YqNahArF1FeqKoP8LHzERD66U+QH3Aur2g==
X-Received: by 2002:aa7:9515:: with SMTP id b21mr6315631pfp.226.1586951244184;
        Wed, 15 Apr 2020 04:47:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb93:: with SMTP id m19ls5916251pls.6.gmail; Wed, 15
 Apr 2020 04:47:23 -0700 (PDT)
X-Received: by 2002:a17:90a:d3ca:: with SMTP id d10mr6095483pjw.24.1586951243727;
        Wed, 15 Apr 2020 04:47:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586951243; cv=none;
        d=google.com; s=arc-20160816;
        b=ggRqbJwQgGY9DVoedKiSTHJ1dXM6SoCaE7PKuPzOV4Np/tZ5iVh/+ZlRki1UzpbteQ
         S6RG7QeXt9f6HFOniUT7slYLY8PSGjIO8NIBOr3wk7kwyt9QEa7KLQ88FtrJaFlsXurA
         1Z4FG6HHmjx8erwc5TdEEIy/CYfo2kaesum5FQg4uTJgncOWE20IV6wh8I48k5MR3NU8
         1dyuqi0U4xhOA7BhDkrdDHf3JDrCGGcIZamdcK39P40ZefRRxFojx4UutOqqOM5pq8gT
         kbTEPzW34E5JcwVbY/egi3TFoHQeIxixDwWT4/ZksSYYF0KX8a9xG9dFawuKjtcR3EUh
         XqEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=P8S6rSwRA4R5Y7ZuWSQClyz1hRgZXJhL/MvOxvrB7gY=;
        b=ximAilt07nRdI92y6IdCpzCXa/074ygGE0OevFo/0Uj1RSnB1Pva1DBeRJy1yIb4W1
         3uYBLoYXzoVmrt95cchHkMjAQb6mDp4Xt0IoAj7U/Fi/a2bsbocG9E5DuLgE8N7Lp4oF
         xSIPlu3J15/EGwmMV4EHzTKSobRATdOGSAxNKi3I4xzzcVzqfsPVPtbGR3cQ/VYzYxcV
         BKbrVcpPktr1dikf/VNQo8aDfgiB/2uVjsCW2FhKBpL3FV1NurFpSF+/gdGrL1ejLG3R
         orkGHY+aF4JtM9/Vij3E0QF+ZKBPO2qZ4CRHQOItG0VF/tjyrbFSkAl7N7hx/zjfAqz4
         dz8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ScxdaAZA;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g23si1324698pgi.5.2020.04.15.04.47.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Apr 2020 04:47:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8EA4B20775;
	Wed, 15 Apr 2020 11:47:22 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 10/30] powerpc/maple: Fix declaration made after definition
Date: Wed, 15 Apr 2020 07:46:51 -0400
Message-Id: <20200415114711.15381-10-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415114711.15381-1-sashal@kernel.org>
References: <20200415114711.15381-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ScxdaAZA;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200415114711.15381-10-sashal%40kernel.org.
