Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBT7FVCDQMGQERXXGDAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 705E03C388D
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Jul 2021 01:52:48 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id s18-20020a6564520000b0290223167334a7sf2872133pgv.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Jul 2021 16:52:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625961167; cv=pass;
        d=google.com; s=arc-20160816;
        b=ykx8a7QcDPf7Pq+xeHbwmpgEOxQonr1aJCxbbRQOtPnRtnmmVJ7UaTlsEjLxbwOl30
         9B9dUiDNNcBTVsR3Tjtb21lS44XRLtKuAHZIafvxpM981F1ayBJP0+JldHXP5VDMWu6s
         9iOWW0PP0U/ptLeOIvK4Icbd1bYih0rf5GXr8tkoNgZGp4T5SBH0eF4GcnB6ES3ehzTV
         PID4xGKVDGiM7I8bG/uKCAh+piNjjx/mulQDdxlNF33VkmWI9W6a1ws5OHSOQD9aiq4U
         hVtqp7gUim0FeC9c/NWVih0iegC3cKodJK+yyuoq3geaAxpgZexSnTPUXlMAfkpdPxwB
         1XuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=kMc6MNtAAaMalRO34dIkcJnI2k/BmlQA4uHsDy8AMmg=;
        b=j0uUYmX2zGVArJ07V45I7BlDhwcTSC6uQfPgi9gbKHEG+dbVHEo78wGwkLJqLJ+YOB
         Kq7LnZTxgK819IN7TsskuN0BzugOX5zufUhQNBf14DiOor0G/8sDsEq3ZmY0NAfIjljP
         dIlEpePvFaVp+yZdK81t6rlFLE/E3gGnc5Hs0XIde+gYnraOn4GHq0QXC7kcsXSlTsNy
         chvZqIbb8hikJunChziIUZj3HVOMtgVjGniPyLWxE39lH3B4ck9LSDQmNxn4Trr4WX2W
         QFmeGetW4fE6N8a0aDWnqPIZfrKx8jFlVBKbby2gCORaojpAQOU8iK3WvG58GLDSy5+W
         HChQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Kx/2SHXl";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kMc6MNtAAaMalRO34dIkcJnI2k/BmlQA4uHsDy8AMmg=;
        b=E2fZtURjabEbzpJjgnot5Y18TEZ8n5l0YhO07/Pa12bfi9ao6f6kgnJTcqH/URuyvx
         /tLSeQqlAI6p0XBOBRWgGr6uARqlw8xUfWVfgMbMa6JD3V6aAAb/LtBJcd5QvLWv5B1X
         11MABlGmAoRMphWfPGk0GHV/wS1J0jsGZ/E3WwnSGt+9CDzPAkXQcRoI/60zSXNX0nT4
         lH2IYzVw4aynDRxwAZmTvzmQy/zcCnmXLqCGFW4wJ/pxT2krD7cMSSgV3vnjmNJcIq+j
         Be6+netPQMUH4PmS7xWktBXfr0U75QZKqAwtgMSKOh29DoHK33G92QbGt0RpxVSf9OsL
         Rtog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kMc6MNtAAaMalRO34dIkcJnI2k/BmlQA4uHsDy8AMmg=;
        b=O0FavTpOPkYp1Msh+TmZ4608n1DeIhi0Wu4biZsXvfSP9UY6uXq/HuACfVPiJrcY42
         j2CH+8ujjTfI/FI53wTn+suhHoTNIgEQD6qrAkFSK+4WJOvsC9kCyaP2L7fFzoc1emEy
         Q5Oa4dAbvOv9qQeFtk4W0W9iltAE5vbeOOKQtcuEKyI9D+BodRkrc58iVfhMws4uGebM
         CLpulA8K+OEGSwqvErCy/laYKJYHMnQxjtbVBLIEANPqUlzA97HsA92m76qRawf47uiO
         d3DddOeQhVMdJOaYTsc+uuZvhXGLM1tRSo9wJFRam2fZg7Zrfls4zE9+OT3jcBXhKiV8
         aVJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331A15WKZZ0suZwNsqBDLihPufx+aIUXN4ylhNmYDbxrLUoV7sw
	lcadk6IQzYmyW6Jj4XYfCpc=
X-Google-Smtp-Source: ABdhPJzVJMA0N58XKtCsyeTAvXx/rxO3vXD9pK1xzucZ1RQpxcw2SXagYSh/r288z7PPe2V4DJgFXA==
X-Received: by 2002:a17:90a:7e81:: with SMTP id j1mr13018787pjl.26.1625961167235;
        Sat, 10 Jul 2021 16:52:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:471e:: with SMTP id u30ls4935058pga.3.gmail; Sat, 10 Jul
 2021 16:52:46 -0700 (PDT)
X-Received: by 2002:a05:6a00:22c4:b029:323:4955:a5d3 with SMTP id f4-20020a056a0022c4b02903234955a5d3mr28579375pfj.31.1625961166713;
        Sat, 10 Jul 2021 16:52:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625961166; cv=none;
        d=google.com; s=arc-20160816;
        b=WL1X8NyfFFyJ+BlfLoHEhl3xmK89MkFCxlyuVdPFJ2URnWpCSji57ok0japa6oUMtP
         pkagXPRBiXEPdquO3OtwgEDPb1TPZuaWd3OHBoC6NKlJa9CgVBS1wfJfGxXZpt9+0Ss7
         DCvU7C1ql8MipHfljJHs5grCXEljOEsNT3mIj2Av3yVZWaNzk0628dfQ5GENoXAsHDn+
         mTdczYhcywJCJxZkvm3MbF8PNopkrENdzQyZs90PJPN04/fVz6MR8ulMAeAJIqjiYRsH
         P2cXeCP8pMs/eG7P9JpEmz7cL+f7e/yhSN59N/bzfSHYgKv0GoY37sCQejDV/BBpmbV8
         x7JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=IKDK2gTiTYuU0ijfpzdwYPO6mzENNmaXDnJo6e5jwD4=;
        b=rpExIWhyHEtFmuRcn9fQG+c9hbklOeCkF1gpkA5tG5uihSTr7x2hvuq5UUJShY5z9S
         TgYfZxmEJZiz4X1x8GQKIltDSTWv8lxF27nW264qn2Yz62mMqn06uCiVaYwdiQJmgrKP
         +hE7d3y+muDQg3roGcQEQAow/p+SdV9KxJI16dxBnFPfeiDeSF16xZUADJmfiwQICxSs
         Um4TrBavcAjNHGBJLeRbYekKHG5eW2Oss0pqTXd9zAr1kKLD0ve0ZEyf9atPvm6eyfjJ
         4ioVj87DsnntBUYTEJ/frhOmF2NC4gW3/BurDN1NLum4Ye9R2ny6+yCZuL6MK58nHpSB
         PlLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Kx/2SHXl";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id dw12si591804pjb.3.2021.07.10.16.52.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Jul 2021 16:52:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8992B61362;
	Sat, 10 Jul 2021 23:52:45 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Jian Cai <jiancai@google.com>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 04/16] ARM: 9087/1: kprobes: test-thumb: fix for LLVM_IAS=1
Date: Sat, 10 Jul 2021 19:52:28 -0400
Message-Id: <20210710235240.3222618-4-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710235240.3222618-1-sashal@kernel.org>
References: <20210710235240.3222618-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="Kx/2SHXl";       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210710235240.3222618-4-sashal%40kernel.org.
