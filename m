Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBFPD3P2AKGQENYIJ7TY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 746751A9C75
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 13:35:50 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id i15sf18571652iol.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 04:35:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586950549; cv=pass;
        d=google.com; s=arc-20160816;
        b=eIt1IAJriTPvRkEssfJyBaDcWqaKF5hf0/aXizpdQNJRCZRRUzHBg1d53JNIptZj4i
         C+6EAx8gyGPXJt0fF7KkmboxcWN7foC/bGe3D1c6XgtnOOg36d4637BC/SJ0C6r/CVUj
         wI51GT0Q202SBol2tiSuvchmT93FjupZzbTrwLX9kGaUGT4CCXgX+UhONAQqTdaJa1ef
         cEGV6FXOzkO1mDMX97qJ5Dqia72q8FLYGhegbvmWLzABFSxpjnsVeV+RPdRWg73BriJH
         RjktXfJElbkKCjSK9VRDVEuuwiHpDIX6yaQhT0uVx40H4ZFvugOui1hVzgR5Ymme2Be5
         d4lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=VsEgy/xqkUuq7h8g0j8UZ213G0v0qr8bodEiKZyopbA=;
        b=ivnfVF8O5Sm6NkW0UJ9ZsyQh/AyOoDWVai2mM90Fo/aaTwQrWPkQlrx5ksXSrEmBns
         Rb+CPW3ly/KwwYy+9xkXUB9Y9b+BwBMAYhooYGH0Rr/fvU80Ikc/2kvAIfUeg9OkqH6/
         WEqq+B18qWhsf8ytgZ8qRgTLuCH+m1o4R4fMl2O5PkYujaZ6Oh4+ZkxLaAnfiEv8TJDF
         DwNuikTB2il3k6lPcIiVyOB2VhTl+ha0EyNVZutHlqIqXYI35P9Np+QQTMsU6PcNHO8J
         SZvU8A0y/wpQSIGroEI2nPOqAKqa86EG/dobxur7/Hocp69H4xeSBTj/epELXMIrjEcP
         YL6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UYFODH4S;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VsEgy/xqkUuq7h8g0j8UZ213G0v0qr8bodEiKZyopbA=;
        b=nq3cOVC9OArbLimqIPRynwGJr224+tq4ucCs+tEdmut0H9lbphn76VZGVCrQrS/1RT
         IrnnC1bsLmsZxp7Fr6Gs672jOa/cFqLPdPj55OfTefLJCTe18ABLSHqtJS5KY8Xqi6cT
         yJihHq52MfEolAyfmSRiXnItsiov2gPixH0XOMbPJuTcTD1NRy/uEBfUTSNC2h3fruXy
         /OAGnAOy0Ynx/f+tZiyyjx33yfUIPuZSQZkeTq0KzWKs2v4tqaK+nhFPOj7g3DsWjBOO
         aCCMJzlmK0yjFhLOJUxysv/igXx15HeasETkruo5kpNyx7cMh2Lm4KPUOrJb9UaIbCN6
         wZWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VsEgy/xqkUuq7h8g0j8UZ213G0v0qr8bodEiKZyopbA=;
        b=Mfyjz1Gz1nsiqu3IDVo++pA825DUmp/qBS5sl+S6CVAbHY6KuL2RC0I2+pds1JAv9K
         XVCwv1WC8oEEXOua479IMtkpfHgJeQUqIWCu0kE6rnw08Bpq3iZpXIsZPFN/Vhpe5Jy7
         cj4ua4/K2XPEq4ivJlvn+kOi6mSUkfDRfEiBNUc/xQ86WCVugPvYL2g1LaF/meM3ZZcF
         Snfji7vxFS57Ia8twx3KATa1+sXA3O1mm4PujtkbbNdzu+GheIowQjT2FRH9c6dUuZ4X
         jgpRUkMCN9uM47ZgxPT6zVYCowIYy+lJBPhZvugGMWgajRb+MxL8jTt8g4t9v+gZG0Ma
         CMOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubwzG0VlRo7a4abTdOBMeo8Us7VuWCoSwBEDOU3+UvuUVzXH6nH
	b0ucnevFQ2yn3+w10ks5iBU=
X-Google-Smtp-Source: APiQypJcNJ1/RVBQwwGa+Wpj7CjeY1xvKg56NWDQdZqeGvB9XKeY7fIExpr0RlFJ0txMEoOd11XNCA==
X-Received: by 2002:a5e:870f:: with SMTP id y15mr22146831ioj.88.1586950549244;
        Wed, 15 Apr 2020 04:35:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:3e83:: with SMTP id l125ls1938314ioa.9.gmail; Wed, 15
 Apr 2020 04:35:48 -0700 (PDT)
X-Received: by 2002:a5d:970e:: with SMTP id h14mr25118877iol.133.1586950548872;
        Wed, 15 Apr 2020 04:35:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586950548; cv=none;
        d=google.com; s=arc-20160816;
        b=CFc3z4NdIT/qMz6FfhqnEBGy22TkwfbDgkVmddqS0FQVKoluUGbbhC42joXzHprXrf
         HILznsLS+SbScWva6CTp0VR7flDBGC33pCeR3DafEaXjCTXcSQ+Kc0nFMGl+jy2vScie
         5rOfcioJrRKoC1Dzwkus622/+8xpJ9xhBqAcBxRDlXTQokNtMQ7tUpWpF4tegC44h+w4
         5kjbkNaZNZOZCH2eOxM6N/WLFQf3u+Q2WPGd8oCP/eCUWjfVHedWHEhoujRyFZ9j5JbG
         dnd6P0B4fMkmBdlKT8wiAvc4Aj1TIV535/fE0rgajjFhjRzLjzUcb5Y+au1KZjCypOWv
         dt5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=4C9hNqC1A4s4Fuuk9wbLSZG6Aw+XS8glnYns4UIqsLw=;
        b=qfXN5M1qD9y4hwoeQZ33zRMctx0GEwKQmupZvfOI3ZIEJBDk2peT87KuATkcvF+FTn
         f4RPPWDRcfVGFt5cuuEzurdZ/gobr0SnyCDwlDuwsPS/aiJlLSqtDLRWDEXVkSgY6SXR
         uXZZFQubl9aq8qhsOUAOId6cy0robC2HqSRyfYXFBDXxDfMwabBSW+iO8biKfz1GhAvH
         yszcNMJXhJOel9xXB9/kBWkRsN2GfjL2fW2WFyzyk5WmLDGfAzId6bxhQpmN0+vK6mh+
         iAyVJVfpKzEMKXSSsvAo2CMp2YzDkp4q2ON+4ijOlOYjSta/CbBk3WQT/SPU4eISU2BR
         Ei1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UYFODH4S;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s201si1174687ilc.0.2020.04.15.04.35.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Apr 2020 04:35:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4280B2168B;
	Wed, 15 Apr 2020 11:35:47 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.6 054/129] powerpc/maple: Fix declaration made after definition
Date: Wed, 15 Apr 2020 07:33:29 -0400
Message-Id: <20200415113445.11881-54-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415113445.11881-1-sashal@kernel.org>
References: <20200415113445.11881-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=UYFODH4S;       spf=pass
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
index 6f019df37916f..15b2c6eb506d0 100644
--- a/arch/powerpc/platforms/maple/setup.c
+++ b/arch/powerpc/platforms/maple/setup.c
@@ -291,23 +291,6 @@ static int __init maple_probe(void)
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
@@ -364,3 +347,20 @@ static int __init maple_cpc925_edac_setup(void)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200415113445.11881-54-sashal%40kernel.org.
