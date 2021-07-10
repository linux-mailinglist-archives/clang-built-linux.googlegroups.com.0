Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBF7FVCDQMGQEKNB3FZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id B817C3C3852
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Jul 2021 01:51:52 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id x9-20020a6541490000b0290222fe6234d6sf10763315pgp.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Jul 2021 16:51:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625961111; cv=pass;
        d=google.com; s=arc-20160816;
        b=tSScW4w6/O3dCrEkI4HpZWorp347jyyoRXyRx8WXIXxhz7wNnZzsyyzH3vwJ57kyJg
         cx307nXwy54xVbS5z0m2P4CBOOwnlLoxB4uSI/0y2PREBstAhQqkusZ1om7rQzuiXXXz
         CK8I4Fq0bY0dqye/EPT6eOi7q8M91n6u64VYuM4kmF2rTXSjvHH9kmReNVOmRuBGc90n
         +JwYN5uHVoIlwhoW9uYMdliRgVRtzfQzvy1RCePRjo73Esshq1TC649Jhi+wp64duDqG
         Lkgq4dBP8U4kQJ8u7gTMr8EWrbQKL6RANy9MVwBH5OXqp/z0MIFPHnmSygfRmu03povk
         gflg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=PgvR2Dg0I+YWqStAK3pDa9ziQQlea9dmSNGYM/z535M=;
        b=j5Ht3qGIOMKWT4SKBNRsW0OdKdMYeHOSh0EoJwRFdW5MfwxoWsbj3d8E4t/BIvFF6S
         B05B4IkHoCpKoOTozP5+ZasjLBH+2PFNy4ML23+zw4B4Lrp8Z0dHfSk+9NdGCXu2O1M8
         VHSE6CWMMYuGe5CfvHXUoWet6/QAU8knq2JCe4ji1c4T5aXvUAgTW08FC5Bgvlc5lYxO
         2nxs6Kti9C3PyvgC0qGjd66mddIo34+rOtaS0ARpX0iCaR9H8pKT5sUomLhsYp8EbwCv
         Q8+C4l+Bk1P5xPbIvbPh+prhGaCABibz8HK6qTFUJpzyNJ5miqRwReZn9u+OtE/8ZMQS
         rJjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VZsicI6q;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PgvR2Dg0I+YWqStAK3pDa9ziQQlea9dmSNGYM/z535M=;
        b=VNL0yj6v1ZGhqK2Ps+DRR1qzNZcfd4j/eoihgVrUTtN0i9aUAnLR+R34k4jSnn209t
         ui7nU8Nykua+YAMVDP2nwpzdUnlTMaxrgQeMdYdvibTkn0iONPkCoDM9t8RFuf/lNXoD
         pXRNyhB2KxeEHIa+n7M8RIcNC20ZlkVrY5W4BjOoG7+uuY2XG0slXuekp42HTo8ZXjES
         8tkCv6dr59YJ4ZkV5kr9Hd8wxPsdQhmxjvtdiCOlZrU+L9m/bZPuRW9fIkHrPVksCs4R
         RdO6VKl5Mp+i/al5Cjg+a+8pVWQG4pLrHRUJiahvlz6ES85yFF8srUU2/rm3Y/6gLPYJ
         lSCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PgvR2Dg0I+YWqStAK3pDa9ziQQlea9dmSNGYM/z535M=;
        b=px3M+DMnh9SSIry6EvsVWivzGl8rKGwu0qrlmFsxpyEbyihLXO5iBo+VSvslZM94yP
         +bpHwQJvXtzvxqHfE7YFfkLpjQ35YN1zXq1qyCwW/m6/FA5F6kZIsG3vXbC5wc3ufETY
         qqaLUpZnGcQ16FQvgoJv0UgsNJkzj9mqEzfAtrv8hoCQxhkVzRnq+G5qa+a2E8GM85id
         ndxO6nHSnv8p+Ni46bCNxYvIu9a5wrvmV2zc7BABRTVXmhg0cglMZCChBWwPwRj6gCWy
         zbSSQUjXoQdmNYOvNuEThbyw+Ovvdn0X5ihUl7KAhpVfQ9J0gqzMSXKCesQOdcNPKVG7
         PuGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Iol7UubyBGb5NE9adM1+chSWquOo2q0L780pwxD7R5EUGzHdv
	fPQ3uZ5fH2EnynPDJMmomN4=
X-Google-Smtp-Source: ABdhPJzsjrT+B/vwYexz+R02BBNJ/cl9wFrkm4ReIxTfDH1C2AgYUTqqy3NWIrnsTVAbABSL1CFQRg==
X-Received: by 2002:a62:3813:0:b029:312:936f:1eb6 with SMTP id f19-20020a6238130000b0290312936f1eb6mr45749341pfa.3.1625961111452;
        Sat, 10 Jul 2021 16:51:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:654a:: with SMTP id d10ls268479pln.4.gmail; Sat, 10
 Jul 2021 16:51:51 -0700 (PDT)
X-Received: by 2002:a17:90a:7546:: with SMTP id q64mr6684581pjk.174.1625961110914;
        Sat, 10 Jul 2021 16:51:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625961110; cv=none;
        d=google.com; s=arc-20160816;
        b=Gz2RqVQJrakqzwuSBX5KLVLgcEkNBq1fKSM/G5BecLEZ7p/JMRjUFJI2tCat/6onJ7
         qg9uQqtkyVaiOmrGt6OZbahokgiHS4VQ89+fMryccYoAjcgv/dQQFyKS4VdJCu6jUY1x
         Wuu6r+TwyfNuOgj0jAh4BlfWVs2BzJf9BFPhOde0XAqx7GC6Vp0gh5rRf2M46ptF2U8B
         Lc5snxQ3N8rHCjKya7fP8ZUPFgvHydG2qKsVeYW4GuSSFtCWMiqoEMOyKsXTghtTUEIv
         98j5s3YoXsjg/z5B78W63rihMUoZwIU6X+dfjwNpGBvkSe6JGRNO1Cop7VTTIpPJfu6y
         kovw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=IKDK2gTiTYuU0ijfpzdwYPO6mzENNmaXDnJo6e5jwD4=;
        b=w9xn5XaHuiWKH6e+mvc0FaILqMMX7oEZ+C8GrbOrBwnGy5LwhsKjJLPf6v8+cWj43w
         40lPBRquS3EJcoMUrCbmrVWUSPv+46Giq0sDYrIvlSj5K5L3Qf5rtJ1lwTpiu/Z0sWyo
         4q4K6S8HVGpPyVhdcDSMf0LlGHqQB03wkEY9wwS63eH/9/5oKWoZ8zHml323+xZ1nLfj
         o29crwR02k6CC1n9+zah1dKzaeAZntiOvQqiXSMvokJvI3AADVFfek86oBcP8TVbH+5q
         SnGTPWZSp1J0LdT3bAp+tCXQj3zSg8j3c34XzCFX8UHJBVY0ADuNcSDUlVAbBDm1pt8Z
         E6Og==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VZsicI6q;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p190si1066323pfp.2.2021.07.10.16.51.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Jul 2021 16:51:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C9C7A613D0;
	Sat, 10 Jul 2021 23:51:49 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Jian Cai <jiancai@google.com>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 05/22] ARM: 9087/1: kprobes: test-thumb: fix for LLVM_IAS=1
Date: Sat, 10 Jul 2021 19:51:26 -0400
Message-Id: <20210710235143.3222129-5-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710235143.3222129-1-sashal@kernel.org>
References: <20210710235143.3222129-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=VZsicI6q;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210710235143.3222129-5-sashal%40kernel.org.
