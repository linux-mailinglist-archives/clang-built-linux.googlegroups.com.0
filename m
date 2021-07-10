Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBZPFVCDQMGQEDRRX5OI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F36C3C38A4
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Jul 2021 01:53:10 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id n13-20020a5ed90d0000b02904f43c8bffc4sf9135596iop.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Jul 2021 16:53:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625961189; cv=pass;
        d=google.com; s=arc-20160816;
        b=WEJajxe0sJL2SQaGF76QBLFXnjcrE5kxKOs1GaoitSWSxwA/ovK9K2AxZcDziFpqjA
         h6gjQfs6QgheTFkRr7DBXnIinE4u1iY0ykjAv27bNEwkWJmAc7Yv3HewBKkCjyGXhdxm
         rDW+Qk+fe/pqFDGXtdbXVefVM2f4OhEb618mX4a4vRQx+kvu2n4b3AVQwRqNS4uLFC0k
         kOnf9W9PkAWwacvOgy8+dWG0gEkXcpJZFi1uoqv6Plx1k0wW9SUpnrW01fTJityuzFW5
         m+DMQryw5+NXvNkAXg6UY53cglQyGz4vQE69VoRkhwG47lObO6c89xPRBgZc/N0ku3V2
         9rBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9Z6j1p9CMA5LjnDtze3zoiGDBNIEMZKZ1L72GO58ycc=;
        b=bBJcLXTFGRItW6esJzNTD/AtRCWZ4J+rpYIYQpsgvbmL+SceXKBR96jPBXrIKJfK+L
         3Z++FF1vxshB88lgJALEU7u8d0lRrPSUnm1GBMR/jfgAn4FCY04Ejd8+y07At1lrzUos
         CvWywJUtmJz7xnS+WxNhTzBVrBX+2XK3Ru1+5U+EfFN8baABTEuGtZdcG0UV5ZKd3hgl
         3BUOAEGZvR3/mB6yVUWETBgTEcAzwq8RpQMSXTyMXAMulmqW08yS3E3kaihPFYpY6ulW
         AhIvFarrQ0adAPaiy7p8tDyhQo+WY64GiAL/9swQFwWDZD4ZFf/RE32+aYDzqyX0/tO/
         wBEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cJoJslqX;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9Z6j1p9CMA5LjnDtze3zoiGDBNIEMZKZ1L72GO58ycc=;
        b=DWYLCi4+FU62u02+QHlYbkMZNRUb9y5KZfJbMg2IdUpron1gh8IaxzDoeMYJ/td6uL
         m5hKO+0INUUlaXfXWmq0OJ34D3YEh4UE9h9jXAos8n1kkuF0tUsW+UxPSPlln8FSa3YO
         35USx1F3OO/WE/tK4M9aEYVq8MQamYjQp4atvZu7h1/vQuQ0u2YpmuH60gowPrjLNPIG
         dwUAn279yv48IPjPGonmVUcsxp5OEEYZdpNWBDpflrIg2NlmASSmdybXfY7eMyMj0TQp
         A8vB2VreeJoP10eZUPK4T29oYy/ekiESOEpTKnyS3fddpTYi2piuiVv4xb95Ig76YdYt
         KPxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9Z6j1p9CMA5LjnDtze3zoiGDBNIEMZKZ1L72GO58ycc=;
        b=Vu83W93wWiOsbBtly7Pnyeqa48/XlEoYbLBMnI5nfpfpcIUnUVWaxzpXYL/N9Orexl
         xn5ZrFSRFIbHsw/Lil3IqGlTvdkUnPNz/MHynv/LPUegsZqoNoHQr5DFxbf5/juj1SKM
         OKoLSUdsiUXG03cgkTRj+binhZmIL3tEHY8z5d+mYqq2IbCp8hDmmbbdBmRzFiYu8Dah
         SDPcBJIBes5VN2p/PaRISaTlFMththmpkWj0TQ/YrjrIQytaQvAquhZ6RyoJmHj/jaFv
         1XCAEYGtyaLJ8W860MjIYZluMFKW+E5WhtoYfKcGqWT16EpGm6h4NBvHOESWokqJ1mo4
         TB4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533V0ahBPUXIhlybrw/CSi+DB2GWpPa9fRZxos4MQEEOakOtdNog
	8N7c0Qj4kJ+BZRp9L0WJ7LQ=
X-Google-Smtp-Source: ABdhPJx8oRxmfnE1VqJItoiuxzNdlB2uSMagWRwg+qPJSH9TO+0P5QXikAnc83lGi2oefOAmC/yHUg==
X-Received: by 2002:a6b:1d5:: with SMTP id 204mr3652157iob.144.1625961189232;
        Sat, 10 Jul 2021 16:53:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d4c6:: with SMTP id o6ls2466944ilm.11.gmail; Sat, 10 Jul
 2021 16:53:09 -0700 (PDT)
X-Received: by 2002:a05:6e02:120e:: with SMTP id a14mr6969295ilq.88.1625961188960;
        Sat, 10 Jul 2021 16:53:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625961188; cv=none;
        d=google.com; s=arc-20160816;
        b=eVq5ZraJDumZA/SZmnFTLz13Ao4spsQDNlDO6PdTu93qbw6dsn97jKVU6FvMqDjbVB
         FoBlAs6kgd6EcosQcvDZ1P3uQwhatdQCJKH92Qo9EgK5oYuVQbx6aHDkAwVIOkLrjSN1
         dU/Zp1JV4oFVrXqufzHJlWLRFaGCTaqdVzQwCGc3hp9d8MMlKMEviqeToeOgGdoNnPCN
         /2KN/S4xhGb/X1ytmJTspV/a8AGa0R4m2DDQRaVX+Qt1PC4MfSo4zGP2Fp+Pg/49ZCao
         mfwdBtP2ZGYOLjpHp5w1PjKAm4W9uu75a1ofGJwwqWsezn1MPCNxQ0L6kLvNC/2uHR86
         0/ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=IKDK2gTiTYuU0ijfpzdwYPO6mzENNmaXDnJo6e5jwD4=;
        b=B31hsTFSBfT52rAFzbqVCQcy5ciLNP42PPBNbJe+LWoiCUwMDLrvaTIMQGd7nIaqdS
         O4Bci1MLaYCBPKTPTiXuFQXZtXv2K83C3E6U9s16iZZcr6ABl1oF7n1SttVfd2oDg3Uh
         3EARfyyPV8yKOHpWolzXXZP+0SiSw+KuCTDBLLPLhweWeiS2WHOfOo5UIruS7uT+CdGg
         /y6QKanx+YZEmyqmBrNjSdouSh2TlNcfWa4jNtXEXAf3ogWjMdJQyKOlmF/MgroY3DKi
         SQkIFTHKEbRTHpIcwY+KSIXHt58OXDta1KryfvncJik5zkH5lIYsk+gJaVhiCGyKi1YG
         SHkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cJoJslqX;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g14si818718ilf.4.2021.07.10.16.53.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Jul 2021 16:53:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 663C16143B;
	Sat, 10 Jul 2021 23:53:07 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Jian Cai <jiancai@google.com>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 04/12] ARM: 9087/1: kprobes: test-thumb: fix for LLVM_IAS=1
Date: Sat, 10 Jul 2021 19:52:54 -0400
Message-Id: <20210710235302.3222809-4-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710235302.3222809-1-sashal@kernel.org>
References: <20210710235302.3222809-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=cJoJslqX;       spf=pass
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

[ Upstream commit 8b95a7d90ce8160ac5cffd5bace6e2eba01a871e ]

There's a few instructions that GAS infers operands but Clang doesn't;
from what I can tell the Arm ARM doesn't say these are optional.

F5.1.257 TBB, TBH T1 Halfword variant
F5.1.238 STREXD T1 variant
F5.1.84 LDREXD T1 variant

Link: https://github.com/ClangBuiltLinux/linux/issues/1309

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Jian Cai <jiancai@google.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/probes/kprobes/test-thumb.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/probes/kprobes/test-thumb.c b/arch/arm/probes/kprobes/test-thumb.c
index b683b4517458..4254391f3906 100644
--- a/arch/arm/probes/kprobes/test-thumb.c
+++ b/arch/arm/probes/kprobes/test-thumb.c
@@ -444,21 +444,21 @@ void kprobe_thumb32_test_cases(void)
 		"3:	mvn	r0, r0	\n\t"
 		"2:	nop		\n\t")
 
-	TEST_RX("tbh	[pc, r",7, (9f-(1f+4))>>1,"]",
+	TEST_RX("tbh	[pc, r",7, (9f-(1f+4))>>1,", lsl #1]",
 		"9:			\n\t"
 		".short	(2f-1b-4)>>1	\n\t"
 		".short	(3f-1b-4)>>1	\n\t"
 		"3:	mvn	r0, r0	\n\t"
 		"2:	nop		\n\t")
 
-	TEST_RX("tbh	[pc, r",12, ((9f-(1f+4))>>1)+1,"]",
+	TEST_RX("tbh	[pc, r",12, ((9f-(1f+4))>>1)+1,", lsl #1]",
 		"9:			\n\t"
 		".short	(2f-1b-4)>>1	\n\t"
 		".short	(3f-1b-4)>>1	\n\t"
 		"3:	mvn	r0, r0	\n\t"
 		"2:	nop		\n\t")
 
-	TEST_RRX("tbh	[r",1,9f, ", r",14,1,"]",
+	TEST_RRX("tbh	[r",1,9f, ", r",14,1,", lsl #1]",
 		"9:			\n\t"
 		".short	(2f-1b-4)>>1	\n\t"
 		".short	(3f-1b-4)>>1	\n\t"
@@ -471,10 +471,10 @@ void kprobe_thumb32_test_cases(void)
 
 	TEST_UNSUPPORTED("strexb	r0, r1, [r2]")
 	TEST_UNSUPPORTED("strexh	r0, r1, [r2]")
-	TEST_UNSUPPORTED("strexd	r0, r1, [r2]")
+	TEST_UNSUPPORTED("strexd	r0, r1, r2, [r2]")
 	TEST_UNSUPPORTED("ldrexb	r0, [r1]")
 	TEST_UNSUPPORTED("ldrexh	r0, [r1]")
-	TEST_UNSUPPORTED("ldrexd	r0, [r1]")
+	TEST_UNSUPPORTED("ldrexd	r0, r1, [r1]")
 
 	TEST_GROUP("Data-processing (shifted register) and (modified immediate)")
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210710235302.3222809-4-sashal%40kernel.org.
