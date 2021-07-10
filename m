Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBNHFVCDQMGQEIZGMPHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id C31E93C3872
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Jul 2021 01:52:21 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id s14-20020a056a00194eb02903245e1dd027sf9464163pfk.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Jul 2021 16:52:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625961140; cv=pass;
        d=google.com; s=arc-20160816;
        b=pLmI0CxU7dV5vgdGXEu0DtrJ7r0XbiaHLCSox2sKEIFy4CgIc9gC/XRxlNVt2+JlCT
         47tfbb9f+PstqCeuvxj+gQLKm2Dhb6/GxcE5TeMukYiEBVpFIXqiXfyCSWSeLkitiNcg
         Xkq5f2GFocmXU7QIMbGwclZmNeyQZewdM3o9MjPxxepi6GjBAeHzKnTBZrWT/5yosU9P
         TzmR6IkPZJsXoRKl3LDjh5WZDa3dVN8eOd+fBjURzuRSEXeKtWUM5s70tYwS+N5CgqBl
         bsQRKQwmQzIMSl9DuLOu5Bmfik8/+mEB522DNulS3omTjX3ysYjfq2jOBZ2WnULzvfyv
         ey9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QlqxOEAxeWHMASfZvMQZgS3/XosoQezg2GlWJk1d0Fw=;
        b=GN/kPL1aGxUry54HVwcFw4YCjW+Oug8p3nolwk2WyOCykHJf+UdbTfu4eNpeoWKVN9
         hLSQPEOp8eEb0CvQcMi9cwFDQcyPjndWcVGJWYtxgVt5ywpA71ZJZDLo0MgLySq5B3GV
         Gv4kt814Uy6GrfcbujUOidWsrP6YyZluxId/ZX6R917l3dt63jjCZCMzTj9aRdSNAuIi
         iqkyNbSNSfqq1LsrF50MgHqXiYi9AqHqxIGBQtoYBUZfL8EYXFWpEqElKoURoVH2gqqu
         ovElfyYeYBaBnhx8S/eDp5VKkEB/0Ybg2PzawyhgBEVr3NvS7DNpscY7jgnFa+1jg1Bt
         HPog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uK7ZL8dt;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QlqxOEAxeWHMASfZvMQZgS3/XosoQezg2GlWJk1d0Fw=;
        b=NpYqR+H3kKaBwsqquWJrUpJBSnINPYOqo3bk+zI3di2mzrX/li2qm8/cP9uzHlKeLd
         owVRAfYloBl0q44KOqRbTZZqK1mJej3t9XtgOqbSv2Tb3eI4RWDAJPeelYRImwbQFD8r
         KSL16BUBfQyeX9VUxw+Iw7I2/xfaLkOYnXyxQ+lsYosbtstIX2oUeg9mEgLp6AeF1S2F
         VokFdtCFOcKXHOZQZ58MhazSU8ZUiXDM2XcmBEPGtN6s8k8mIvxm1svzFChBs4xjFxz/
         UFciPPQluUKpbBa3cYsAd3S0Yh/vY6kgEdNKLvcKl1vYZED+CW/3FwOVKgRC5zJUkMEm
         RKnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QlqxOEAxeWHMASfZvMQZgS3/XosoQezg2GlWJk1d0Fw=;
        b=X5M2XWeGk9dZ23BsNzeSNnbE7xDMvVmIzqdtbi+3ha2z+GGhO+7Kjui1XP8tIMOXtj
         4DiZuEgHjuOouIUgTRbjCaJBS4z19vxHGz0iM/pnoTn4OqbrcWjN4UqxZfxqzy3NfuVG
         yngt9Lqrr4AjL5VJmOk+nxl/LEg09aRhqT5vH6WPKQGLR25TRcrG7seAk/46KXW3wrfn
         DVtYH80QjyYMfKyncP8NPP9bZkrD37xi/IysTq0ogrM/mGFvs/kCSPVTIGFr1Pk5B9cm
         3KvN3K6KrPi1CeFWnGY6lG51GZGsFQsgbUqzQp5Kh8zEjqYwHF3646UvWbv5w+oxOG05
         KXqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530q9eD0t8cuPp/iqIINGnYrvpSz0S8p/SKhrg8F58MbRrwqxidQ
	NNaHWKUtt9VHzaWxzdHQW0c=
X-Google-Smtp-Source: ABdhPJyZXtU0cdJp25l58xA8hIL/mpAl1KvrWsskYF0LxEDfJUhQ0G7TwNp+Y0eQBN8Q1wCjMSolIA==
X-Received: by 2002:a63:dd0e:: with SMTP id t14mr13271201pgg.357.1625961140397;
        Sat, 10 Jul 2021 16:52:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c7d7:: with SMTP id gf23ls5272591pjb.3.canary-gmail;
 Sat, 10 Jul 2021 16:52:19 -0700 (PDT)
X-Received: by 2002:a17:90a:6f63:: with SMTP id d90mr6618403pjk.120.1625961139885;
        Sat, 10 Jul 2021 16:52:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625961139; cv=none;
        d=google.com; s=arc-20160816;
        b=m9a5jMV10lVDb7qUGJolq4osdGyV1idD1AzGHjbJkZ+2IZD6W+0eXH9Z8TzOTwMxuW
         dfm1j9l4NC6BYcHzENSkMtBe0IGpbIxISLwJDtOhKwVyenhzQC6nvQ2EMBxnVtlmD/kQ
         G2JqwFvpQeCQUDNHsq/iOrbYwe5bA1oNZuVjHTA2sCfC4NNbvJfeIjub9hfGmAdCXlsN
         bbAqHNkfhW8oSvVu5cZYpbJJUvCs/qwkvQB9/VDcOg2q9x0d3QCsUl1vXN9QfX7t2iv6
         slqGY/8LnQKU1lRyTKK0vTvl5fvLUUtO2OCuo8kfmLDm65uPRwBKLWo2LtXi0ms7sKA/
         AXgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=IKDK2gTiTYuU0ijfpzdwYPO6mzENNmaXDnJo6e5jwD4=;
        b=vYcCRAacszXrhmrRnIOKIdtKbhZpHA3iEWmi9NYI5dWb4v1e9NUQig0AZTLl3hLwNm
         T9Q4Rpy5azk006/xQmu92DUkJ5eQTeKsFJ185LO+lOQNzPf+vQRoJfWaHOQBk1s1apoR
         NwRQI0gIWjB7uH0o/iSZp6AmgJatAM80lxvTdRgH+qh8Ak2ixsl5M7eVeP0/WHIBEoSo
         Oa7nTqKbwx75nlg+FHPe1IcPjLNOzNzcAdImXh5niBw4NEiBNrqeSV609y30EwdBhZ7B
         Ddb7UJZe3C4o3dbmlMk2OakeIJOVUqrKAGMkcWscEIyiyEy7RQVE/9DP/pMH1fm0AG9C
         xCBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uK7ZL8dt;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b15si1047528pfl.6.2021.07.10.16.52.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Jul 2021 16:52:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D422B613F7;
	Sat, 10 Jul 2021 23:52:18 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Jian Cai <jiancai@google.com>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 05/21] ARM: 9087/1: kprobes: test-thumb: fix for LLVM_IAS=1
Date: Sat, 10 Jul 2021 19:51:56 -0400
Message-Id: <20210710235212.3222375-5-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710235212.3222375-1-sashal@kernel.org>
References: <20210710235212.3222375-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=uK7ZL8dt;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210710235212.3222375-5-sashal%40kernel.org.
