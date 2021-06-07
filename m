Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBMML7GCQMGQEDZXE5SI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F0939E1A8
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 18:13:38 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id u7-20020a259b470000b02904dca50820c2sf22964789ybo.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 09:13:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623082417; cv=pass;
        d=google.com; s=arc-20160816;
        b=LwcdCAqmbU/wQTrnmhuLPi2cRvufbv31ADPcieg8nb9/siUrGlTUFiGeMOeQ/pDbCX
         gYCK5be1RqP8zFB0cuUP5jzLcl43H/AWk8D8nCddND1bYX4Eom/hBXmB+7j2ovRsrJFC
         sqPdnEKB3/gEeSAmXftaSK31HfLxCdi6Cb+4uoLEVqm0VijU34YQZatf6B7DgJ82v1Oh
         YjC/s2A7GcpssG/2OxTyy4YRIfpfxOqvX7S0979VVUL2OD/xEOtlWc6iejzZwVTa+wB4
         1qduRPUn82pwlvioOi8PKS3EWqXvwgUHt1qCX/tJ0+z/TvdV5gRj51ClSGgN5/cD1kCo
         wpTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=e4WAZby3GrgGK9dDp2Wka8jSIJ66HuUw9wKlYVVnJ7U=;
        b=MTeEjUxGUVVnLp61IZ38x1qBcEbAJI1NOTMdRPMjnqmeY6qeiCN1qOfBE09tK3/hWt
         WmZZct69dq1LRUmmGNVct3y8sKQ6VHJSsPVH3SeavDQzaVK2EK1Nr1m7+tPoUnU3cfEt
         gqG8on9HLPyu0qHixBeP1R/C1EGqgaH6Gu1/KyTpQroHFnhe3GaDUWj1uqAuLsY2ou78
         AfoJUzEIab+NPAEtrMuQJGAzVVeesTKwyZffFssHgcNXOxSTy2toQUUgR3jb/KJ3B065
         4e7qfLsDjCxLi95PQER9LnlvXtZvqiMKeV9Te/dzk9xFFZw9bRpuchYD4XxRUiFme97o
         PwOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=H1i6QAij;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e4WAZby3GrgGK9dDp2Wka8jSIJ66HuUw9wKlYVVnJ7U=;
        b=MYxPNfeGZR0fscKJ6mvL4YDxKej9UvZKYz6bNR6rideG8XVAYQBK0N3MEWP5/rJeZm
         sgm9SiY5mB++dj7MwAXoX5v0UfgAUq05vMd2Kx/Ej1I5se6tLS07ABPVy0OjcB5vYSQg
         Mpaw4h7vkQa+bCHzvbKhLzuM0MezBeqUX7L/swkVsw5v4j97uECVEIlWdOV5JDVB2v4K
         2UX9C1PVhUWjW2WQxBiwPb6qhH5hoYqN0+I5uF+YtWoiIsjlb8HQ2C8yPX7TXKDGptFY
         y08J2E4OiodbQ2/9i9Sj1TThM0WYwPXzfe6rdd/Xnug+TzxkyUNo728V33adecXyQrRn
         GG2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e4WAZby3GrgGK9dDp2Wka8jSIJ66HuUw9wKlYVVnJ7U=;
        b=ABdZTDnLNt2B9iZ7THkQHF5GDLQTYGDuinOhBsdvWxvnEkO1nhLibNi+43/KgWH6uD
         Q4RBAkzie6cIkkFbRlsNQOmAz3KkBxJJZGsXyUb6NRjwqkfM1YbWN4YZ/AKURJ1ttM9u
         0Lj8a6DSfxx01wZaCowUdt92u5GVkHh4PYO9X7tIOjmLSage05ueJBiq5F6v/5AFPRyH
         YIJM3UC449rLIBQfbBewnw0OF79R8F4m6soV4wi+Hz8gE0QvoNGhrHbf9HIsCB1fkPue
         AeUNtYFVlQ+uI9jC86g/mc6HblagMd/w8uYlSuwjWJvMH81AjCNKB3iSHTDhVWaNquSx
         HBUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313dLPLpBcmofN/yvMFNLtGc/Q5xufgZha1/ZHPbJcMh67I/h+F
	7Jaol6a/3w7rNcn69ooLasU=
X-Google-Smtp-Source: ABdhPJyuvokc3frj2z8/IsyKPjbhAX2CJSQ+JCJE250xzXI/2x5LWejitUhUykv+Jc2f14u1mAkUyQ==
X-Received: by 2002:a25:dcc7:: with SMTP id y190mr21449479ybe.12.1623082417318;
        Mon, 07 Jun 2021 09:13:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7bc7:: with SMTP id w190ls597263ybc.2.gmail; Mon, 07 Jun
 2021 09:13:36 -0700 (PDT)
X-Received: by 2002:a25:7cc2:: with SMTP id x185mr26028128ybc.216.1623082416772;
        Mon, 07 Jun 2021 09:13:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623082416; cv=none;
        d=google.com; s=arc-20160816;
        b=WpFfYiGG57pReWAOgizxV82Ihy0SJi8FVzpqet3o43NNkgXolSx6Z743NArpwEZc3F
         WIjESy2bnWdc4aMsYwz6PnoFyTM9MPvv6FWPC90Txx3ixkMmu0Sni1EaigPgQE9rov63
         AqUiuU8JNmCTjmg6BvoUho+SN+qUEWRXpLZcuBnPUl/6EWS0mEktD4/40Px37X4bi7qX
         YgAsKT5q/kSAhXERS5tAjT690vNA9li4iRuIkagV2Q9EmmxrDUr/jmN8JDTKG2ZLzH45
         CWTRN4dAgEoywmqWAHjTa3K5EyMNMi6GLgpSqR8CP4kUNe5CanOk+JMtu3UYkFAAOqpA
         dmWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BagPSeknGnfdN3dtlke+JSnRZ1iGuwQ9ZWGsfgkRQ6g=;
        b=QYHId3DeBM40kEB3vWWv8tZ7pRqsR+Rpmq3DtAnyzIpQ9F3oZIvQOgbLnCaIaGn9Vp
         RsbNJeDwPzzzNw8OT7yjczrnobiwkosrThuXjaEUjCh6llHGDJw5jRdcl5dsTrO2UHUm
         7wcAaMi2eJnYRduluZtpMKwAvNSXEmhvwmOfXNV2vKVB3SPJ8sou2REpI7qx9BerhTg4
         Yt36tBX2ebuDTtNdCF2o2SEDRTiElGpo7di+NmrL9DvdC1Gxf3xRIZYG0FnvbEyFxlaC
         0n8XYsTPWazp/KQLogacgir+pwzg/VB9w376HCxTwgJ7h/FIuMKR4eFXU+qWHhvSVc0v
         CvQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=H1i6QAij;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q62si1722484ybc.4.2021.06.07.09.13.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 09:13:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 45C4561430;
	Mon,  7 Jun 2021 16:13:35 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Maciej Falkowski <maciej.falkowski9@gmail.com>,
	Tony Lindgren <tony@atomide.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-omap@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.10 13/39] ARM: OMAP1: Fix use of possibly uninitialized irq variable
Date: Mon,  7 Jun 2021 12:12:52 -0400
Message-Id: <20210607161318.3583636-13-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210607161318.3583636-1-sashal@kernel.org>
References: <20210607161318.3583636-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=H1i6QAij;       spf=pass
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

From: Maciej Falkowski <maciej.falkowski9@gmail.com>

[ Upstream commit 3c4e0147c269738a19c7d70cd32395600bcc0714 ]

The current control flow of IRQ number assignment to `irq` variable
allows a request of IRQ of unspecified value,
generating a warning under Clang compilation with omap1_defconfig on
linux-next:

arch/arm/mach-omap1/pm.c:656:11: warning: variable 'irq' is used
uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
        else if (cpu_is_omap16xx())
                 ^~~~~~~~~~~~~~~~~
./arch/arm/mach-omap1/include/mach/soc.h:123:30: note: expanded from macro
'cpu_is_omap16xx'
                                        ^~~~~~~~~~~~~
arch/arm/mach-omap1/pm.c:658:18: note: uninitialized use occurs here
        if (request_irq(irq, omap_wakeup_interrupt, 0, "peripheral wakeup",
                        ^~~
arch/arm/mach-omap1/pm.c:656:7: note: remove the 'if' if its condition is
always true
        else if (cpu_is_omap16xx())
             ^~~~~~~~~~~~~~~~~~~~~~
arch/arm/mach-omap1/pm.c:611:9: note: initialize the variable 'irq' to
silence this warning
        int irq;
               ^
                = 0
1 warning generated.

The patch provides a default value to the `irq` variable
along with a validity check.

Signed-off-by: Maciej Falkowski <maciej.falkowski9@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1324
Signed-off-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/mach-omap1/pm.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-omap1/pm.c b/arch/arm/mach-omap1/pm.c
index 2c1e2b32b9b3..a745d64d4699 100644
--- a/arch/arm/mach-omap1/pm.c
+++ b/arch/arm/mach-omap1/pm.c
@@ -655,9 +655,13 @@ static int __init omap_pm_init(void)
 		irq = INT_7XX_WAKE_UP_REQ;
 	else if (cpu_is_omap16xx())
 		irq = INT_1610_WAKE_UP_REQ;
-	if (request_irq(irq, omap_wakeup_interrupt, 0, "peripheral wakeup",
-			NULL))
-		pr_err("Failed to request irq %d (peripheral wakeup)\n", irq);
+	else
+		irq = -1;
+
+	if (irq >= 0) {
+		if (request_irq(irq, omap_wakeup_interrupt, 0, "peripheral wakeup", NULL))
+			pr_err("Failed to request irq %d (peripheral wakeup)\n", irq);
+	}
 
 	/* Program new power ramp-up time
 	 * (0 for most boards since we don't lower voltage when in deep sleep)
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210607161318.3583636-13-sashal%40kernel.org.
