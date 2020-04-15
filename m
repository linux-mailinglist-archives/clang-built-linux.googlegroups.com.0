Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBG7I3P2AKGQEGWTYF7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E931A9D78
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 13:46:37 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id w70sf2540033pgw.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 04:46:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586951196; cv=pass;
        d=google.com; s=arc-20160816;
        b=kmRO0dp3kuzAEAuejV+3REM7z4ElFWirhDQEDqfFF3IonlJ5LsKqQIpckhFOX1JxIu
         CEU2lbWSjK6pTDJLzHSLQx72D3wbcReKJ5/Abittz95rk47VxdvRVuiGWRIXVoxbxrXX
         2D87LiRK7/OWaI7sVEWpi6xm1138PhofenFEGARfd1xZjrwYW3ZSVfO7tltaAp0T6K3o
         H++lTADzC1KhXHx1L5tDv1PZ5UulXnpgBrH8G33rrPD0egkzb6TFi95hzHejmzES7gsx
         ay6d3aeXLCKpXV8mPWgOxFzAv4RFS47opUvHzO9WNxMX3KVOvxBapiF3E5SQKu64+BDq
         BnkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=11rJz7VNHNm7CmjflpXnDUJqCCg1mEMq5TJXwc70bZY=;
        b=LT2XKf8z+AMmOMKkBE1TDWgr93vwYMvAlyCRxU8Fuc5oQp34cWTzgiLVYYaiU9X+hm
         gdS5uVVYp4JJbPOP4VfbrHV3PiuYOtKvtqP7pL4rziY4Lmt7vW/QmWU+o3p+XSexWDja
         cwT1KXHpq4ka6aRsuVd0LlgqcYuiKJ6WCJKFoyDx5nJhJON9m2/hW5BK22D6wFaS/oQX
         qUEUXTr2P2SG3RQULN20u/3oF2CnkUC1BozXlDc6QZ3gYTOfkyBL0hEj0OAZCQpvJ4Wu
         Tv4nzIAFFeZhOHtixzeQtgK2qM+VfOhOdzInynpWxChOeDbPl1g1obfYPE9L0sSOQfDe
         TRaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=acciYqTn;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=11rJz7VNHNm7CmjflpXnDUJqCCg1mEMq5TJXwc70bZY=;
        b=tCdd+sLR2t7XFh6DDVnucddRrSht2jYWMTasW5/N0FP5pAoWV97Q74w8vy8LdIWaXH
         ss2EgDsRduLGGzRcEfgEyiJMGVtfCG5edDJ39VXKLWslj61o1XXgd+ppaDzmcvQf8ZSO
         CXeMkeVqIOYPM9HSmd03oz8psJI9Se39Bckld4P6EYyFLsGac3lxnU/GHDLS7nWdFYS8
         5nvMBnOdugGcf1WWuZUmWkS3kCy6vk3OXvIj0AKcHO6qfAHmJb8KfdoCVOxMoqYfNRr3
         6j0eBpvsnqGZm3ZG95qNbsEc7u3rRzM3sE9G+bAhU6s0EayQzNO+gxiWqxOn5fjZcOgw
         pK2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=11rJz7VNHNm7CmjflpXnDUJqCCg1mEMq5TJXwc70bZY=;
        b=UwvFvmeyZxfPM5RD2yeP5C49eZlV2ZqsRyvIUMnvrqdcVm09dZV9gN+GpMZ7UCEbT0
         IjXO2Mbyoxa+gR+o9utt14BVG3XEX3m8DZDHGyMUxpxe7uJB2xlh4A28CK6bVMgs98Xb
         iGkn6oiJzl150C+3MSee4GQQy6tHdt+QSBETXShFg1f+b6Kan/7qw0pqveKEYB6yfmoZ
         PguBt8ts0OSlPH+dX/VflUT+PTc/nbbB1UAVVS6zvUXOxCv5gboTr7e77hpj7YQL77cu
         gJZu3AQ+orO0JuyVEFfLIO418DZJuXdjErZs3ASIYpgYW+FQI3SeiGBsnVD41yPkTlde
         j+XA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuafqYxImOd0d8trPjyFHJXjU6iBToJLifGYdFm6eRgJZtaV5D5w
	VO799FJudngy9XmSV/6FxAk=
X-Google-Smtp-Source: APiQypKOZSCdrw+DlqpR6rpF24fAe/9ACv1W4ZSyMKfR7FVkd1nkiGl0F6YY4OVuALtcDQCwsTZ/zw==
X-Received: by 2002:a17:90a:94cb:: with SMTP id j11mr6090694pjw.160.1586951195990;
        Wed, 15 Apr 2020 04:46:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3e4e:: with SMTP id t14ls6486941pjm.2.canary-gmail;
 Wed, 15 Apr 2020 04:46:35 -0700 (PDT)
X-Received: by 2002:a17:902:61:: with SMTP id 88mr4725212pla.30.1586951195568;
        Wed, 15 Apr 2020 04:46:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586951195; cv=none;
        d=google.com; s=arc-20160816;
        b=Ffo8lOLFQGjIfCexkWAnarXXBtS3SH9144zHCterWaRHheHVdgotUhUHnwFzcSAtk8
         0+PBl9qXXF1KneEU91daZrlH5Kc57fEQyjyp1f32dyuVwOBlvn2CkLheiV7n2wRQi8d2
         FZd9KMIkBns0bHIO5FXa8A56+q8PvNlTVxHD0GOvjxFsuIRzYkAihZ+IXDXz71KT4C0A
         bUmP3ctg9hMtWrURStlJfCfi0CCcVuoqR73G70SDAh0SacjB9HC8vCk7W+jKNpBE+O9i
         BIlJKea5n2Wl/mQvdPImA2bCmQ9RP0hCfco6c+xR1W810fLbhsClBgnVBx9CPjrlm5uo
         YTuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=P8S6rSwRA4R5Y7ZuWSQClyz1hRgZXJhL/MvOxvrB7gY=;
        b=JETTIAngRqF9wz16FmraJ5g9PHCtwjAH7hxRobDFbgI67hope/QwIa2EUoqpi13RQJ
         eW5LCpGv0bU+oecvZZ3nlJ6R0vn6Ymbhqm5C44Z8bP+YEsrAKq2fFF/1k8J+zgF4GbA6
         HdReexIz8f+uoQ76AN8mI9Dl/CINe3ADh7xUqDr6k26LOAVCq2irMeU86F96BqS57Etw
         ttUG/Vg7ggoVJzm9Eb3a4e4bYGF/TjM+cwJSTjkPZzC4M+3S6l5UfyBJ72rV0SQFZkSN
         4CZKb5JWdMXQCTLw/A6uaDODku4s9KC0GoYcHd8Nmh7sdNoI6mmve5zkSos8wtoFyaja
         xU9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=acciYqTn;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x3si120552pjt.1.2020.04.15.04.46.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Apr 2020 04:46:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6E8022173E;
	Wed, 15 Apr 2020 11:46:34 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 10/40] powerpc/maple: Fix declaration made after definition
Date: Wed, 15 Apr 2020 07:45:53 -0400
Message-Id: <20200415114623.14972-10-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415114623.14972-1-sashal@kernel.org>
References: <20200415114623.14972-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=acciYqTn;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200415114623.14972-10-sashal%40kernel.org.
