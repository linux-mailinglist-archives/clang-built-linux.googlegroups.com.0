Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB5XEVCDQMGQEGUFPFDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E133C380C
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Jul 2021 01:51:19 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id g3-20020a67fac30000b0290279c2771f64sf3440939vsq.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Jul 2021 16:51:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625961078; cv=pass;
        d=google.com; s=arc-20160816;
        b=gV4Ni2HBUxRRehw2rRAXGBvGAy3qIUdFNQm1oMv/Y27lzhxw5wb03MWsJH0VcgVltx
         wRHl9u+fa/5wgzSZGE4rdEUDMqVLrvUyqNiLJHmlHeP6yWoTyigEovv6PZl4ICrqTos1
         X6xhyPAiUM4TdN4Y4R33Oy4YToxenzOf85iLWkS2cskpHPwx9EIwLq17jgEn19x+F0wS
         TcEgmAiZPDhXN+PkcIK58qEzc9c0mAkWWHCjOtqPBgNPO8g1UX8PTZjMq/HqIT8sgDFU
         italsW6+XMofDzwHCJKe1kyhgZttymDD13B0mtVMTb0TAQbaM1dclNWAB1Wyd5IYGVyh
         1qFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=/MdcqUbmTmzE4yC/GTav+ZQgJGxFte7CiBKFe0d2LkY=;
        b=FXUGB9VJ0FqumjhcPy1BwvIZ44TACbPwQyZOWWhpv67vVLdp/C0NiuviPsV61z/lg+
         DnF+VNpghL5bBqxWzV/gMqvyItkH0RDNIKvpfRAzOpZcuLKIFb+ihXsWIZ117xQdX4Zp
         ZcsRAWuXSiWMgH5RMwq7RucT+XpHjLg6HoCbYYXqn6//nmwD4lCt32tC6mTN1ir/pYY5
         AqAbGo4Lxe99oj9QexB5RT+TLfNWeYo7DWYf3lPgjhjBASftF2qCZBxY0KJ2/Zbo5mwZ
         k7xqRll5wJTfPiVMyGPs/CawmzJ+/XMu/xLo1A0uUAPSnQdgPw4UvgIc0r3Ntif7/ng5
         XRjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=C36lD9hK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/MdcqUbmTmzE4yC/GTav+ZQgJGxFte7CiBKFe0d2LkY=;
        b=XrKc1pSUUyaMuYmU+sqtnyRAItd4MRv8Y9KntBErXQvvG4ZzBlxtsJ885iLagBMMJn
         vAtrATbDDFTN69ecMQzYjiOGzRKUHuYi1+zIxxpAhaOyHAofNyPp/NqtlnVSUu8vZWPM
         fJL0iqhjv9SV/WXP+oB/aJ8DweYIAFPhaf2FRYbXJ0Kz3bmdtVPOm8pisWeJjnVcSkdC
         JNa1kcB3wOyioDwlHuFlL5mtaKDCpBuUzhPFKYplngcJOfHLKI3yPPL+q2NJf7h+HSaH
         MgPvH7XTyfqOsw214VqYEbVkIr/3eSQVlOlqwhZ/4d1CTViqVmkwJ6HfWNAApSRGz4jA
         FzzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/MdcqUbmTmzE4yC/GTav+ZQgJGxFte7CiBKFe0d2LkY=;
        b=EkTtr9OsOF6AtE0hACbRV2RIJLOZUznM5urmEdbJ2FlpM6gBkJ1TxtPxB+IuCgxUHu
         C7sQF0DCvENe0yElHMXqkX/zin7zsBn5KtDTXfRWGt//dTi9z5Y+Zo9vvBLv5RGzaiCw
         /aovuzuYLn3LbW8rGA2bzctf/5ruQveE1WRgjCcrTADJ1MB9xABhzc00y8BjWHgaa6lF
         TcRgZBUn+3vYHukAIYQCmrYswDd5k2tsff1v5WanklG70YExNZ4g5EnW7C6tw7nJZaVv
         9HrxknuWoWhi0dkCDTF45GjLvQdSFIQ54GsvdszEWScNTUdPfXxeEEG5OP7LV82guZun
         Rd1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CbsCblkyiK5DlZlEOLlQFU0rYby0MVynOjkyyO7fkwP+lYJxW
	RpemV3gpHTp09kc2rmsV5jQ=
X-Google-Smtp-Source: ABdhPJxm5NBJzyU4XlGmSDgj7cvga/r0HynC0RTByPV/SSI9KFwBz3p334mCpWQNVgO5iFXn1zLBWw==
X-Received: by 2002:ab0:c07:: with SMTP id a7mr44059730uak.120.1625961078329;
        Sat, 10 Jul 2021 16:51:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:1527:: with SMTP id o36ls1802874uae.3.gmail; Sat, 10 Jul
 2021 16:51:17 -0700 (PDT)
X-Received: by 2002:ab0:7e41:: with SMTP id e1mr45370241uax.13.1625961077739;
        Sat, 10 Jul 2021 16:51:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625961077; cv=none;
        d=google.com; s=arc-20160816;
        b=YeFpXh+mJmeQtYLUb6RsvHFmHc2x+FMqgH/acj0zFoJb3qJM/h2sbwkkDjDoqEeIom
         UnNwq/PnbjDom7zxVbyFANHcWFpKiUPKDwJ0HOClLlj+zBQAop92IC2yWOIz5C8DT7th
         OuZF/wfMbFg5xOvu2ew+4YZU5a9/TtMXAnitu2wjZnNeZKR5Kbhtrx0hMhUi3s8cyeq3
         ZUHdnXrF7yDijJiCSY/CO+rLAO8livdPBIKZ2hy7KDmuhABknpSX8URKlfERaDDfRklO
         1O1mRtk7dJNC/gHXaNMrkp59CVBOtxpLBbPMlGJ5d6MVRDrsA9B8Sk6Or6JZsuRpKJtv
         9gZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=083mBPceFLvczIxsrREP/5a7b+JLoEulMr/FMvDN5HM=;
        b=eYcTN7N5Jq0Wa1qKRRkXsIpeargcedxrXhDCItA7oPFtnvQfWyTg0XSkQjSMjqASOV
         J9aM7fK4tCdEJzZALMDNOgiqKGAD9OxIvLaej8J4q5rawqdFxJ3hCSObo6Vdsykoqdut
         lWbjokEtXhI0CyIqgw8VOlXoorY8eEgXQGbHyeYM0wV1U3CA5gWJqimc7wJI+O//WFA2
         UhNQ3PIcqhdClSbD2k1jPJIqo/HhRcq9h4mAVgyfIoa0WPwJs/8QxEiQKHTPdAShWfgR
         oTY97F61usKmiNGFJM1wGzMYIOl3MSf3aUMCxVkjqCcLb8tZ0Bz0XtDyLsmJLZraRH20
         WX4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=C36lD9hK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a1si831442uaq.0.2021.07.10.16.51.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Jul 2021 16:51:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C60ED6140F;
	Sat, 10 Jul 2021 23:51:15 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Jian Cai <jiancai@google.com>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 07/28] ARM: 9087/1: kprobes: test-thumb: fix for LLVM_IAS=1
Date: Sat, 10 Jul 2021 19:50:46 -0400
Message-Id: <20210710235107.3221840-7-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710235107.3221840-1-sashal@kernel.org>
References: <20210710235107.3221840-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=C36lD9hK;       spf=pass
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
index 456c181a7bfe..4e11f0b760f8 100644
--- a/arch/arm/probes/kprobes/test-thumb.c
+++ b/arch/arm/probes/kprobes/test-thumb.c
@@ -441,21 +441,21 @@ void kprobe_thumb32_test_cases(void)
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
@@ -468,10 +468,10 @@ void kprobe_thumb32_test_cases(void)
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210710235107.3221840-7-sashal%40kernel.org.
