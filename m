Return-Path: <clang-built-linux+bncBCS7XUWOUULBBT4P5T6AKGQEEAIC3LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C88229F400
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 19:20:05 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id m11sf2270595qvt.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 11:20:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603995599; cv=pass;
        d=google.com; s=arc-20160816;
        b=o2cgI+5DQ5Blc/KdmHN5q3HN+wDxh6JBfIHVtmLUgVX5gz2WW0/EUe/BM9vycRL4c6
         3AmnSyn9S5zqNYSe8OdO+ogUXlBMfmmFj8PIz1X0t1h45gjfvq4JtZsvglba2euDkbNf
         cIK+7X+gAUWvveFP8Sp1oBgPnhdhiuJZg0VzMf+Nak751jS8pkbOnVQv2ORr5FPUcVXS
         vrZQ3Hem29yfKNzrxVVJEDQNxQXfCICq2awZBFgUjoMmfjtsjkFz/p4iNtidbHWgZj5d
         jFqReky9vxpgs0K98eZSBXCAjQjMWWeCU8Yy+yeWlbLHvMUt41eUlpzQJZbncQUPIpzO
         Yuvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=GDWN9FE6biJDNuRYP5UdaFiabbMyyhGoz0qUlbGbosw=;
        b=QvzfjFoEQNp25EErfdzarcTTcGGrAcLBcRPtieNJ9OJl5WFYlvEuG6pm8Eg2cnaXgW
         GFGWM0WhWfuHWhM+O8M0W+tjlA/gg/AWsp/BWDT8y6PDI0M9xR+bet4+ITtfMewIRBE2
         THakNeFLelQZ0KfInNvowduIifBTlqKdKJnTO2NCicHs8URr8Acew4VjHsvE91J9hccU
         QnzFM5lAFpZXMyELNlVjQ6tY8ZjltJfDm9kAeU6huncwr5XjEaI9oUwJQfe8Rq5ZT9lr
         kOeHhYVT7CKILQBGqTFeItxRNpaugQEmSJ8aHfoJL8tGr2nXCIlR3nXeoER1NZgt80Dn
         TNNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OIWq7obb;
       spf=pass (google.com: domain of 3zgebxwckeu01p7z6pdv33v0t.r31r0p2v-q9x08-0x29cv33v0tv63947.r31@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3zgebXwcKEU01p7z6pDv33v0t.r31r0p2v-q9x08-0x29Cv33v0tv63947.r31@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GDWN9FE6biJDNuRYP5UdaFiabbMyyhGoz0qUlbGbosw=;
        b=mW3S7YiirQ9/ExmujogBdr16nHaA2H2FxUudYZkUHvv54MQ75VYHu3F5ktaznnY672
         MPRfcO9t+cybbst/3HmjFcOPXvGy0L1bp4FtzW7UgyZHQfymiLlwxwKAEzPTi7ndpvCl
         mhoUfS6w/kW+pOkHw1/9SD2DjciL6OzgpVlDodd+3qawVk3KErMy2byB3TDNveJpiJwW
         ont+gQcu9ZdEa44vJjMMLof1nO1Lx+MDDfoxN2N9SFokwk42YaFT686DKtI2JA250IfN
         3SwJ+DhQZbqLBdPj7r3vVbGwxInWI3slozGu2NVnDdewtX8Fvj5l7NXKdwZrBB87nMk4
         g47w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GDWN9FE6biJDNuRYP5UdaFiabbMyyhGoz0qUlbGbosw=;
        b=DixOsEsNnKRz/5wEhUNc6q9psY+yCQbIjf26XZRtA1YNw7zSxH+K5CxJOZixUY8KXT
         hmwtOiSwKS8ohtWVW1mF2i3xCD+dRrN5gu4pBXk/EeB/7GbPfJ0Qpt4L9qyIoEvwgh/1
         V10zGASpvITIHTfv0WB20qNB/9bECSPKeligszgKDYJf0owWQKKsLImp88U3mIiOLGvS
         dltgrUT01QwrO3JRLgpPqFPsxJzjDzo1xmBCYQf5KYRLo3LIv9KBEVblnP2xqbuJxOSb
         YKRlRYa79LUBzF6rceYZ3gYNhVjt8lhpbFFzsPjlKDPH3Yv75COgqP1qyqfGqcOiAP5O
         2MMA==
X-Gm-Message-State: AOAM532pubhaocMqUFTO2vPsc82tXf8iHqSE5UZvf6eMvdbbhn6hhMEq
	O/AjHs+J810drLaB/N87iN0=
X-Google-Smtp-Source: ABdhPJyIbhv6Y9+7a15BC/ZZXUOXLymInQqbX7+3c9RfMqkDx+WnF6+EAMfJahdJo4Z0tjMklOTI7A==
X-Received: by 2002:ac8:4d03:: with SMTP id w3mr4975500qtv.360.1603995599405;
        Thu, 29 Oct 2020 11:19:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:234f:: with SMTP id i15ls106591qtc.0.gmail; Thu, 29 Oct
 2020 11:19:59 -0700 (PDT)
X-Received: by 2002:ac8:5bc2:: with SMTP id b2mr4994062qtb.284.1603995598922;
        Thu, 29 Oct 2020 11:19:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603995598; cv=none;
        d=google.com; s=arc-20160816;
        b=LvUCLgu9sNswMh8E1SwqzV4TvRzzN1iXWTz74RB9mA3XiMIpy2i1usPEZW+0b7OXEf
         8vIQ7xvFHIXbOGuNFp8mILF/e+sHVDTFLfE9duRodtzrjyrb6mkgkKk4HyOYrYn7ZyBZ
         D1DaK9QNpI9/PdSTkTj7WdxYLnNjKtYb6J1OdR8ehtw5ImPuZ0E1c1+k817eoL4XbS0m
         i95i6YX/Upi8cpIG7gQKP94LdxDmXGtMIOPWiBxLyL2YQLl46YXCB78XItdeGlTnxNf5
         0/6J7WL/jcXXWmXSPmeYIPD8PiiOpHdOjVo6oNQd5VvmSm/IRggTYWHU17gG+tYSA95V
         /I8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=T3ma1Qme9sfSgFfmbVfimMuKf/8KN6t34PwJQ/OLZR4=;
        b=Dt0KyTSsqBV+0hi8KY6EIql+6rarA+Nhb1PmdUJu3OFoTOXUTCOqWcySCYLf9fBBlg
         zeY1J9ypUwhf20lSR3cv49ANUTCQyX7WnwT9jvyOyWGPQS2dCRxAv064HgiShzBfAG3X
         Q4BII3wMidRZhyBQIR4joXND6bQd+H7mYJQTPGTlPC1iQa8uYEBw8jcuz5l77ZqP0BwD
         YvLcQzW/pGh00La6U8yERIfY1yABcRMLFT1CYTB+ZSr4zLInjnzoRGq7a/QSGI9w0K8i
         IKramzPJDD/KUZhtTewo7vVFm+lnhw8EFU2WescY3vH2GF5QJFQwJGXi5A4L8XoOKaf5
         At+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OIWq7obb;
       spf=pass (google.com: domain of 3zgebxwckeu01p7z6pdv33v0t.r31r0p2v-q9x08-0x29cv33v0tv63947.r31@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3zgebXwcKEU01p7z6pDv33v0t.r31r0p2v-q9x08-0x29Cv33v0tv63947.r31@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id g16si217555qtp.0.2020.10.29.11.19.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 11:19:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3zgebxwckeu01p7z6pdv33v0t.r31r0p2v-q9x08-0x29cv33v0tv63947.r31@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id x9so2617088pll.2
        for <clang-built-linux@googlegroups.com>; Thu, 29 Oct 2020 11:19:58 -0700 (PDT)
Sender: "maskray via sendgmr" <maskray@maskray1.svl.corp.google.com>
X-Received: from maskray1.svl.corp.google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
 (user=maskray job=sendgmr) by 2002:a62:1d10:0:b029:163:deb3:5df2 with SMTP id
 d16-20020a621d100000b0290163deb35df2mr5349788pfd.68.1603995598076; Thu, 29
 Oct 2020 11:19:58 -0700 (PDT)
Date: Thu, 29 Oct 2020 11:19:51 -0700
Message-Id: <20201029181951.1866093-1-maskray@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.1.341.ge80a0c044ae-goog
Subject: [PATCH] arm64: Change .weak to SYM_FUNC_START_WEAK_PI for arch/arm64/lib/mem*.S
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-arm-kernel@lists.infradead.org, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: clang-built-linux@googlegroups.com, Jian Cai <jiancai@google.com>, 
	Fangrui Song <maskray@google.com>, Sami Tolvanen <samitolvanen@google.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OIWq7obb;       spf=pass
 (google.com: domain of 3zgebxwckeu01p7z6pdv33v0t.r31r0p2v-q9x08-0x29cv33v0tv63947.r31@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3zgebXwcKEU01p7z6pDv33v0t.r31r0p2v-q9x08-0x29Cv33v0tv63947.r31@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

Commit 39d114ddc682 ("arm64: add KASAN support") added .weak directives to
arch/arm64/lib/mem*.S instead of changing the existing SYM_FUNC_START_PI
macros. This can lead to the assembly snippet `.weak memcpy ... .globl
memcpy` which will produce a STB_WEAK memcpy with GNU as but STB_GLOBAL
memcpy with LLVM's integrated assembler before LLVM 12. LLVM 12 (since
https://reviews.llvm.org/D90108) will error on such an overridden symbol
binding.

Use the appropriate SYM_FUNC_START_WEAK_PI instead.

Fixes: 39d114ddc682 ("arm64: add KASAN support")
Reported-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Fangrui Song <maskray@google.com>
Cc: <stable@vger.kernel.org>
---
 arch/arm64/lib/memcpy.S  | 3 +--
 arch/arm64/lib/memmove.S | 3 +--
 arch/arm64/lib/memset.S  | 3 +--
 3 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/lib/memcpy.S b/arch/arm64/lib/memcpy.S
index e0bf83d556f2..dc8d2a216a6e 100644
--- a/arch/arm64/lib/memcpy.S
+++ b/arch/arm64/lib/memcpy.S
@@ -56,9 +56,8 @@
 	stp \reg1, \reg2, [\ptr], \val
 	.endm
 
-	.weak memcpy
 SYM_FUNC_START_ALIAS(__memcpy)
-SYM_FUNC_START_PI(memcpy)
+SYM_FUNC_START_WEAK_PI(memcpy)
 #include "copy_template.S"
 	ret
 SYM_FUNC_END_PI(memcpy)
diff --git a/arch/arm64/lib/memmove.S b/arch/arm64/lib/memmove.S
index 02cda2e33bde..1035dce4bdaf 100644
--- a/arch/arm64/lib/memmove.S
+++ b/arch/arm64/lib/memmove.S
@@ -45,9 +45,8 @@ C_h	.req	x12
 D_l	.req	x13
 D_h	.req	x14
 
-	.weak memmove
 SYM_FUNC_START_ALIAS(__memmove)
-SYM_FUNC_START_PI(memmove)
+SYM_FUNC_START_WEAK_PI(memmove)
 	cmp	dstin, src
 	b.lo	__memcpy
 	add	tmp1, src, count
diff --git a/arch/arm64/lib/memset.S b/arch/arm64/lib/memset.S
index 77c3c7ba0084..a9c1c9a01ea9 100644
--- a/arch/arm64/lib/memset.S
+++ b/arch/arm64/lib/memset.S
@@ -42,9 +42,8 @@ dst		.req	x8
 tmp3w		.req	w9
 tmp3		.req	x9
 
-	.weak memset
 SYM_FUNC_START_ALIAS(__memset)
-SYM_FUNC_START_PI(memset)
+SYM_FUNC_START_WEAK_PI(memset)
 	mov	dst, dstin	/* Preserve return value.  */
 	and	A_lw, val, #255
 	orr	A_lw, A_lw, A_lw, lsl #8
-- 
2.29.1.341.ge80a0c044ae-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201029181951.1866093-1-maskray%40google.com.
