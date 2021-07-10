Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBRXEVCDQMGQE5ZKXW2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1D93C37C2
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Jul 2021 01:50:31 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id j17-20020a63cf110000b0290226eb0c27acsf10721272pgg.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Jul 2021 16:50:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625961030; cv=pass;
        d=google.com; s=arc-20160816;
        b=E9V3h5C6TNvu6VVCP5P6UyHtgy7bTrpj/+mkDP+IhTGXSEp81ABHyX2pZ38H7k1bO3
         JlcuVCDc+NWO4V1qIvtPrmWF5lSuXewgYBgvo9dJ9SrDfe6rPg1TsDbibMc2s419/44l
         pd+fDSjNea0VyTCzwWett6+zhtY2c7y/eO/gcJd1sYIgiRVOQAm3E171NPDZgU/FnlQJ
         gxuFS4UH9lzo5nXIvmxTDwHeio0xMqJRzGrt6m8vnloW2quxNxKBJNRVzhTUnBf56TtC
         YbwVZEgnGQiMc/udveVZaTsFC8h9oHaaTW15CkjEBf3vDMEUmyE9QSIeMYpLOabEGiyZ
         0Fpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9X3YlMsvbxGA84hR79MMzcQs5bBaWoJkUltFUF3YQV8=;
        b=UrdpPt9acHAgLh2K0Czy960ZafaXBtGkAHK5kx8rfBeIxWKw5nusQxmGiDFaG2p/F7
         J6QKtlJy7durIZ6SnmSy/wjQnudlb83p6qffatbhJ1BehnD7vmbIDgfI/lsXQ3deqegV
         DTmrVsou207B9/+U9F+/6SgaUOfB2phWFTO8q6796DTp2pZ6Y6yfX9ZKDs/MahcJ56NZ
         r16rhRoEF/2Z5TBlm+uMzzx/ZE+92zNPuuVrMlAKCk9QO7lhOGIGRhWvhHHCV+6qqHOV
         iHX/NdNRjlqPnX2/t/lp1iFmC9E7v3eJF9AUzkoiUZtLieL0cx0BxmnyA39N5tWr0mKi
         6u6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oOjFMQkn;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9X3YlMsvbxGA84hR79MMzcQs5bBaWoJkUltFUF3YQV8=;
        b=Qg8p8nEkAMhbIkrLlc88adqkbcGDqusuc5coUIgUZc+l9IolYwdZ0bM96+vgvRnk60
         HdulwZYJxQFfWM2wn0pB+8AMSGQGce7/WrR6acehHEGT1BgqyzE383sNq/6ttk8s0EVJ
         PlihgGhDpofWg8w00PxMgxSziHEM2SVZe1pws11X1ESg5XNOrFyBt1zN7uNdVXQ1q27x
         INNqgROwqvC+rx13MHfIUnrYHfJ/jOl3VXZm/MCfaaG1dLui3O+32snmnYvtQmDWdRGp
         u13Bc0NuKl2rbPCZ/iW0hj00huay5v++R6HyIz6W+LpAyyqUBHbnScR2EzG6/DurG+Kz
         2Deg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9X3YlMsvbxGA84hR79MMzcQs5bBaWoJkUltFUF3YQV8=;
        b=F26pRR9vxUs9kzbXpnvpsxs2ub+ELFAjKOq8fG+4k38vEVjbFmqWEtV6gZeNVG3amt
         cn4cfPXuv9fsSinB1OOBTLDrR2Df/K3RP89tKTS5Et5Z+sIL8g2MlRclxCXIHv1kIhRi
         vGHFg5AiIq/KWQtVfEDwB9VK9PSr+BfrJakLk3iaU6mwS0qLxqg+fWC8D2PIJbuFQWlP
         yS/4croYoEtIMsiJUD26Xmssz3+W7AHCC6NOVNOl4DMSXim31ItCdyRfJ8Fhk1fDr6eg
         lNdAX2FGTmmTZo0+2/uJe9IOsTXNdqzD5mAhPN9o+o5fdS7fFdehcLQiIbC7N/64aaFy
         IswA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jThiij0Gj4hni4Oh/uAa8+HyS1cd7eQ9GH0NStUgvUO4KJstw
	5f2orA2cCvHhF1H+TL/iLKs=
X-Google-Smtp-Source: ABdhPJyqQjz51x1GrxBr28PCZeRWH8hedu5lUqpHF8qpapR8c7GtEzOdBPlzm20AfqI8fTI5pgoKuA==
X-Received: by 2002:a17:90a:d588:: with SMTP id v8mr6440504pju.134.1625961030468;
        Sat, 10 Jul 2021 16:50:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c505:: with SMTP id k5ls5761848pjt.1.canary-gmail;
 Sat, 10 Jul 2021 16:50:29 -0700 (PDT)
X-Received: by 2002:a17:902:ac86:b029:129:a880:264e with SMTP id h6-20020a170902ac86b0290129a880264emr23595149plr.54.1625961029898;
        Sat, 10 Jul 2021 16:50:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625961029; cv=none;
        d=google.com; s=arc-20160816;
        b=APYJh4Ly2MFhvEUP2OqCdjLwK5fhxB2msbTOTD0aWn6ngp5V276y43BP9aXEtgdSZx
         16WNbnuhhjx0VLYnAMBqN0Dw4JLvi6BaFoZn3ro3PTZu0kfxncUE9ezY1pKYF73BCo82
         lZlKrIkFNC8LK1i4DzaOe6TV9ACCzcUAJJGR0BazfRwjFhuvXhBWyuEkI5RyLVuHfpa7
         CYgdyx2WzYHZk+Vy2qif49zRKm3JUQl934h+lkC95z7p62Uimi9g+L4VXK7/k4nR+KVV
         KqG80TkQyau7tBb19+RL8TmuhsgbA6wxlqFcviEZJ86E8sO86v+Hfa/4mLsGw/1Z8CsK
         hQlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=083mBPceFLvczIxsrREP/5a7b+JLoEulMr/FMvDN5HM=;
        b=ImcpsoX/Z99rqsa6lIFBKioYqo4UmUNrvIDGmy9qRpx4wfwCEEYofbuV9JT9qkafYb
         wu9Iy6LjNag8tdrXY+uzhqF1qTXsfwngMRtQ/x59OWqxxtOxOkpypkKw+mKRQsuidG+G
         ywAHkv9HtTczypt8TXD84Icd2P0tTjyB3T7kLg5eE/pnwvZQmA60zrnH+9lGp0ERsrBu
         HFOREW9JV16hq2aJbDVqn6Skhvau7gGITyRX03YMMzjBwlGwZA+DLU2xm5cyVKk9OBRn
         KmjMobVwd+cxwseABNlf2X2Aikd/5BcXDKoe2qTMMF6ZlXg0tIEWd2QwM05JjuFCmxJn
         2Hpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oOjFMQkn;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o13si2158315pji.3.2021.07.10.16.50.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Jul 2021 16:50:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C8F2C61362;
	Sat, 10 Jul 2021 23:50:28 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Jian Cai <jiancai@google.com>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.10 10/37] ARM: 9087/1: kprobes: test-thumb: fix for LLVM_IAS=1
Date: Sat, 10 Jul 2021 19:49:48 -0400
Message-Id: <20210710235016.3221124-10-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710235016.3221124-1-sashal@kernel.org>
References: <20210710235016.3221124-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=oOjFMQkn;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210710235016.3221124-10-sashal%40kernel.org.
