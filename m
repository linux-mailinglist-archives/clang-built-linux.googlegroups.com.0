Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB54K7GCQMGQEWEWKRFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A09839E195
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 18:12:41 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id o5-20020a05620a22c5b02903aa5498b6f8sf7172953qki.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 09:12:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623082360; cv=pass;
        d=google.com; s=arc-20160816;
        b=wloruXRJgiH9Vvqwfk0HS0YO3BhWMgtglT3dDzEQiJtOe1711/gp8rogAzY87vTxDD
         Usc+tjjOw2Zw0+A9Fc0DIf8aSqlpY0Y/DXkdaKm/vu6l8haZPrT8a3XN9zp3oI4TktNk
         3TKxllUWwrMISBmB2Ejccclk6yKIMIxZ2D9qp7IiD9ND2m3TeTFV2BNJrmoNWfl242xH
         99JQJWIofjgqdsKDhk2efL0otAIK82nauJRR7xHo/HnrluSUY3mdNiFWYxSsyB0/1nOj
         LMnJGTReit/hZgRkcniHqLVWY6BPgvV3DyeckQSmui8hePL6Vji7lHdqGfGljioLuiHu
         ndOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ao0xN9HuZC5Tl91baZs5iVMJhMbTATuxQTntFvkUuyQ=;
        b=tPQGhTumJuAV1XvFk+c926PxhZb7T0WOJeZaflcNreAPSvXC7FnCvaGiOy1fNwjsLL
         E01QlnV1eaQ3XRsmunFdI1vIq6Wj8FEMy4QrH16HL97i+8VV91XHbQDaIgCOOLwTiF8X
         vnZaPYatvMCiisjqsRnqiOS7Riorf8xeUHJQIpqYCb/IUHMS78uT2vWG7Yhhr+LX9hjd
         M0UHlvhsJ4FfBlH4Odpq73OeF2SU8sNNfn4LTX1n4dtbAIgDe1KtBG5nciWNeDC9n6Yh
         r/f361UAKGOKoLKkhRjTKHE3LH/yOpZwvoo3kz2sp1Y6pGR+hTxK/khFOmLU134eICyr
         Q0lQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=egYDQ0EE;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ao0xN9HuZC5Tl91baZs5iVMJhMbTATuxQTntFvkUuyQ=;
        b=BfowgfIFH6AKiZH9VBhGIR3JwYeXTse0IcPHUkIKCrg+EtzBSRHHOjS+PGLbw4vhgD
         F2xZw+QM011j0T1NoqYNxYtCZS//yqy92RRF2fg+03Zssz1FlL4jXjh2gKI7ni6EFL0S
         jbcc4swDN7n/DG/fg9RhfQeJd3NZgrSnlQmxCWmmcqMN8IRSNzrfhkZUBnXcvxlaljSL
         Vh/AfKnVtHx9isOpKgmUidKwiRkrnBIIuJMS9i3VYnbUAD9bt2RyENi28LK6keRdU1mg
         /87K2nROdMJk16CihP2u8oqKAj/8MAOqHW8TpPriTVtvT7nG/ucdm48Uh6+GNs552ktU
         fJSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ao0xN9HuZC5Tl91baZs5iVMJhMbTATuxQTntFvkUuyQ=;
        b=ILVQQyGfk0I5pGE54hjQ/0JoJYhBD+9Y3PzaDaHvirFFDE3bk8CgJdkIxMQADZ+/Zx
         qJgcIkcTB29sf2IiQJg5doZqDuzrPiK1AbzHzKlEPjuww/SVkjkguDvvO8XghSogyI3i
         GeVbxgmLbP1okDV+meVnQbIOE8e70ukQtDrOmKyiNuslcVa6Ra9MxMDnq3BtPOmT2Ff9
         /xh6Z968W52JWr+FceJf7DllyGGn2lPn1bGIr1EGo4kGgQercoKe1AQbm0sPMb6VxYjj
         NRL8FJc6GpPYdRg8ktln7i6VtvzF9mcY/3nMkxTvBVgPNqEbKg0T3rl4Vgg9xJHDWX+s
         Fsmw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530cGRR3T5+Rh8nae5b9ZIp3bIqyEp9LHWZiJwGoK/L1CNh5L6Su
	11EfnRHKVwgTviGE0aU3UqU=
X-Google-Smtp-Source: ABdhPJwzUdKpv3+XnBdOYglbNgHYkgHvQyeI2IgqBrLxFs+VWQIUBQsb7qUmId7nN0TCFtju7IE8XQ==
X-Received: by 2002:ac8:647:: with SMTP id e7mr17003675qth.156.1623082359921;
        Mon, 07 Jun 2021 09:12:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:be8d:: with SMTP id n13ls4779287qvi.4.gmail; Mon, 07 Jun
 2021 09:12:39 -0700 (PDT)
X-Received: by 2002:a0c:9a43:: with SMTP id q3mr18936111qvd.30.1623082359462;
        Mon, 07 Jun 2021 09:12:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623082359; cv=none;
        d=google.com; s=arc-20160816;
        b=yH+MPcBGvdlZLzVertXO/Lx1YKl1bnKGq0fdz4EcQ94fCyVWR6RhvKtHTKs0Rx7Fx4
         oRXLPL7agBoJjCtIvmAMlFZrR+lggwN55ha61CFtO+tjUTG99To0/pf6syu7g/AMYCas
         vI51IP4y+FcqBEjWYEmCdO5rV4TnGqzqQ0I7D5pSyfdYaKeDP+fk5AqOWuHmq95UKS9d
         qOAT4wPfJoUqmO4KUnye9NIpaxD7dp9riKrRSLTj3A6iYAIS1t0fas5X6JIZbBhP6oi7
         pQg6ciqK6Qf+WCPxa2dbElffMEZXFtjKlLP5XC1mXm5kyy5K/lkGD7sEFtmFpAGxM4b4
         J8Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BagPSeknGnfdN3dtlke+JSnRZ1iGuwQ9ZWGsfgkRQ6g=;
        b=rgGjpd3VYw9B8B0n/aQa5MeceWfyZR12rh5EFn3ySFi2JtVOLG0lE20D1TgcXT4It+
         1cTMeUK+vdbPLPCVoQnlZzUF2D1hFpnSSYqTtVjYQxboGv7pFPxkLOg0uWtJ2oGc8pKM
         PTxktP7SgB15W8T4lgfaoOgbQ9taObyhBi+XTDI0F9SmiagBfM893mtfqlvslMiqo8xC
         kT7o9xonCOftUFgXg/+etZeQ/ZFTUnf6NNUc7rksadZcgNeTWZwd/1uQN4F43/UQJA3f
         7pzuoKUtA+C9XnJHZkriyP6Mr9GpZtI5YGlEHGtEhvXQclGU2cRjJFJib9bR4Ou1DBU3
         ItRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=egYDQ0EE;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d10si597062qtg.3.2021.06.07.09.12.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 09:12:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C19E0613C7;
	Mon,  7 Jun 2021 16:12:37 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Maciej Falkowski <maciej.falkowski9@gmail.com>,
	Tony Lindgren <tony@atomide.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-omap@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.12 18/49] ARM: OMAP1: Fix use of possibly uninitialized irq variable
Date: Mon,  7 Jun 2021 12:11:44 -0400
Message-Id: <20210607161215.3583176-18-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210607161215.3583176-1-sashal@kernel.org>
References: <20210607161215.3583176-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=egYDQ0EE;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210607161215.3583176-18-sashal%40kernel.org.
