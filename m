Return-Path: <clang-built-linux+bncBDOILZ6ZXABBBNXMQGHAMGQENQIY6KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A2447A97F
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 13:25:27 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id z8-20020a056402274800b003f8580bfb99sf2046671edd.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 04:25:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640003126; cv=pass;
        d=google.com; s=arc-20160816;
        b=j90S1fiE+yIApOem3J8Z3O6Q1gln9JU28Saot2e0CljZj9EKUpTyn0AxKFc/76OvSb
         UqxSRhDfQrEycq34CEcWHfBI3kB4FxypYpGKKW3Y4APO4gTYQ3Bl17V0KqvoBHM/RwmN
         VN5G1BLVJqXwUZq7rmstAZwyY+aq17iOGrvkHbv72ibaoVw1UGA9oUlVSCyBMVr20cFz
         ZAJ0YYjS/5Fqq/WZ1rfBiDZAIGCySib6uqwKXFm0RZ4c9bm5K4NZg5qmog+ldBQjQNJi
         GYe/nj+mHZsrq9K1RuX6V/QAXMH6L5EDfZTnQac6zQ8xFOap1yDjsWUAJcMHmVO/GGLb
         MxXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=j10dTC4rHXy+RALUvpVYb4Oxn4VkegMwQbzUVGi1Tco=;
        b=ao7fwKTIHqmJvx0FkRBfjdiHtK5abwF3PA4BMxT8aKcI9K3bz9YiMGytwEQoAo1cqe
         0jKK8OTa4/+iA9lpQWSmBlPRXYJCFQH9Fp2MWkwtOwbFgGF8RTWpl7m2eISDP5TsdNIL
         81Ft7S9Vki2Qx8TSxP5yMVGLkOoKJYqdFyG3B+SL/w02rBY3L+Ko1FBUqrukn7hlxppR
         9s9d5Luf0EJek4qd5M12rPK9aesgNvAN3Lx2tai27xMY8bJM3l5nBc3tFv/tFBZb+Sh1
         Rp2BxQfz7h09ZLABFozHlDc4vgz+cirrV+2yf5c8TCnQcOQjcfbYcvcka6KRP+vFTi+4
         vDEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=MpTcWqSq;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j10dTC4rHXy+RALUvpVYb4Oxn4VkegMwQbzUVGi1Tco=;
        b=EGNv4iXcjQK9jQ5BjfJcvgFDAJIph0NySfbzXwrMKbWIWZrqLNRhzpif29E/k+S+yh
         mak58xRVJ3h0wicML0gFgmQVEGZlEMXhjXothWh3GxoLqtaIjz44O7c9dJ5Gc9HGE8yM
         TTTiXoaq6M6Zj55h/IZEB0wUnxG992idxQYurXrmoj1oVUrIZNpSgtLS+/LsVlsVrwm9
         JtEkePw2KISf3GTAf66/i6+7i6uX2mZ9oB+DQ6jE1cC6kv0IxJDwlDhzgL3PRUK/d3JH
         u4RD39F9e9Djg65N4cV6QeEP0LwKEBqV0iKTGuf8R9iJpbk2YKCn5IB8Ra7d+LxvLHUl
         ZHoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j10dTC4rHXy+RALUvpVYb4Oxn4VkegMwQbzUVGi1Tco=;
        b=yMMZM5x6/JsYUcGhl6hAUu4/n4x0BbdxpyZlNIF59H+kjg9LhsHTvasYcX3+iWeKfS
         uQazjr9JnvxINJCLQDizX9xfn9gYHJx6zpM+JPXATGQGBj4bjj0gXvvWmWjWtuiB2Vmw
         6DOpGVlpbAbqce/0YD9AdUPTrPSpd8bUG6OayhQ5c8tQFLS2qi/+emIPabsByPr8WeP7
         dLi9Vba+wZbEsJNeuibI8/NGllvqIPcblftptInS+aVMYP3Whzmkmgk0wi7niOgRjZo3
         8M2cXNKcwOyEyJGYiUFRf20DnjgGpm/igBnXamzCZpFQPqK+t/bK1CccDmjDs7ukJG2K
         b68g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533EfdtgBn+OxPpqQt7IkERMD0okFLGFpBsTFLBYXeRAq0HNG+KG
	Oi5fDFuxcsOatLUdJ0CbY2g=
X-Google-Smtp-Source: ABdhPJywYFQQnXtPu1vQ3DPjp90Oyg8KwpyhMfz0FEcpAV+/C5PNcNR4/6iuk6HbB13rsyB3+CJwsg==
X-Received: by 2002:a17:906:6c96:: with SMTP id s22mr12842285ejr.756.1640003126680;
        Mon, 20 Dec 2021 04:25:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:3e87:: with SMTP id hs7ls823880ejc.9.gmail; Mon, 20
 Dec 2021 04:25:25 -0800 (PST)
X-Received: by 2002:a17:907:7ba8:: with SMTP id ne40mr5055363ejc.329.1640003125433;
        Mon, 20 Dec 2021 04:25:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640003125; cv=none;
        d=google.com; s=arc-20160816;
        b=N2JG8zuwTZLltjpbhpkLbyaONAnjRtdlX2VKZENbqA/gdeQ9BZcXh5hKNdI0VBmCjd
         mKZX8OY1y+2Ex34cz80kGVNH5lbAE074UvxAbh1Yy7dtTZuG4N699kjl90ENJuS6aS/T
         2H13KR/irEp19agrqYUtnjdoep5QAUu/o4BkYgn7vMu96O4ruUAc0bDjcOOTKSK8gxtq
         KwJGhudzhLkYdni4Z74Kf82kVZkRjDkLjlwTz2R1n4Toj0TWxPnGWPDgS0VcCs2bsId6
         AhaQVFTyzgcjQJEAWBaU9YCo6D3ywcFVetNRqA4kk15sThWXXs4GC+1kusOA3IuXz7Un
         60ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=T/8LJRgZvz6xLlkqDCeJ4cjJNm0uXZzaYpYyxO0JE80=;
        b=whn7op3h9Mw/EGtObfnI28wOJGqLOdduj5+L+IACsi0Y40+P3aBUCh6U3mQcC1KPg1
         ZM4Qm4rD4rGEmgzrltpFsEJGZrDpgZ3q8bbgoxz0oBi4KEhZcJxt2vk8e0zUoCTWdtjm
         bC1fO4pMdkJ93Zm08PCaOvpVv0QD7EPWfI5niKbDP9DZf9SJapV7XGAYIco66uivrcbi
         s+T+UE3Hhj3zJUq6uNSZnGjCEGL4HBnoepT6RiFia4POi4wHVfdEYnDeY0aHUTpbjSyT
         rItZouIevL6hQ0kz5VCOiVRJrUXrQc/PdZ3sVczhwmBFAugz9vN8xw1mnVi8Wh27xxZ0
         H1Aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=MpTcWqSq;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com. [2a00:1450:4864:20::534])
        by gmr-mx.google.com with ESMTPS id eb8si885812edb.0.2021.12.20.04.25.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Dec 2021 04:25:25 -0800 (PST)
Received-SPF: pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::534 as permitted sender) client-ip=2a00:1450:4864:20::534;
Received: by mail-ed1-x534.google.com with SMTP id o20so37434642eds.10
        for <clang-built-linux@googlegroups.com>; Mon, 20 Dec 2021 04:25:25 -0800 (PST)
X-Received: by 2002:aa7:cb1a:: with SMTP id s26mr15727768edt.19.1640003125090;
        Mon, 20 Dec 2021 04:25:25 -0800 (PST)
Received: from localhost (c-9b28e555.07-21-73746f28.bbcust.telenor.se. [85.229.40.155])
        by smtp.gmail.com with ESMTPSA id mr38sm4691638ejc.109.2021.12.20.04.25.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Dec 2021 04:25:24 -0800 (PST)
From: Anders Roxell <anders.roxell@linaro.org>
To: stable@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	woojung.huh@microchip.com,
	UNGLinuxDriver@microchip.com,
	davem@davemloft.net,
	netdev@vger.kernel.org,
	linux-usb@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	ulli.kroll@googlemail.com,
	linux@armlinux.org.uk,
	linux-arm-kernel@lists.infradead.org,
	amitkarwar@gmail.com,
	nishants@marvell.com,
	gbhat@marvell.com,
	huxinming820@gmail.com,
	kvalo@codeaurora.org,
	linux-wireless@vger.kernel.org,
	rostedt@goodmis.org,
	mingo@redhat.com,
	dmitry.torokhov@gmail.com,
	ndesaulniers@google.com,
	nathan@kernel.org,
	linux-input@vger.kernel.org,
	Nicolas Pitre <nicolas.pitre@linaro.org>,
	Nicolas Pitre <nico@linaro.org>,
	Stefan Agner <stefan@agner.ch>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Anders Roxell <anders.roxell@linaro.org>
Subject: [PATCH 4.14 2/6] ARM: 8805/2: remove unneeded naked function usage
Date: Mon, 20 Dec 2021 13:25:02 +0100
Message-Id: <20211220122506.3631672-3-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211220122506.3631672-1-anders.roxell@linaro.org>
References: <20211220122506.3631672-1-anders.roxell@linaro.org>
MIME-Version: 1.0
X-Original-Sender: anders.roxell@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=MpTcWqSq;       spf=pass
 (google.com: domain of anders.roxell@linaro.org designates
 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

From: Nicolas Pitre <nicolas.pitre@linaro.org>

commit b99afae1390140f5b0039e6b37a7380de31ae874 upstream.

The naked attribute is known to confuse some old gcc versions when
function arguments aren't explicitly listed as inline assembly operands
despite the gcc documentation. That resulted in commit 9a40ac86152c
("ARM: 6164/1: Add kto and kfrom to input operands list.").

Yet that commit has problems of its own by having assembly operand
constraints completely wrong. If the generated code has been OK since
then, it is due to luck rather than correctness. So this patch also
provides proper assembly operand constraints, and removes two instances
of redundant register usages in the implementation while at it.

Inspection of the generated code with this patch doesn't show any
obvious quality degradation either, so not relying on __naked at all
will make the code less fragile, and avoid some issues with clang.

The only remaining __naked instances (excluding the kprobes test cases)
are exynos_pm_power_up_setup(), tc2_pm_power_up_setup() and

cci_enable_port_for_self(. But in the first two cases, only the function
address is used by the compiler with no chance of inlining it by
mistake, and the third case is called from assembly code only. And the
fact that no stack is available when the corresponding code is executed
does warrant the __naked usage in those cases.

Signed-off-by: Nicolas Pitre <nico@linaro.org>
Reviewed-by: Stefan Agner <stefan@agner.ch>
Tested-by: Stefan Agner <stefan@agner.ch>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 arch/arm/mm/copypage-fa.c       | 35 ++++++------
 arch/arm/mm/copypage-feroceon.c | 98 ++++++++++++++++-----------------
 arch/arm/mm/copypage-v4mc.c     | 19 +++----
 arch/arm/mm/copypage-v4wb.c     | 41 +++++++-------
 arch/arm/mm/copypage-v4wt.c     | 37 ++++++-------
 arch/arm/mm/copypage-xsc3.c     | 71 +++++++++++-------------
 arch/arm/mm/copypage-xscale.c   | 71 ++++++++++++------------
 7 files changed, 178 insertions(+), 194 deletions(-)

diff --git a/arch/arm/mm/copypage-fa.c b/arch/arm/mm/copypage-fa.c
index d130a5ece5d5..bf24690ec83a 100644
--- a/arch/arm/mm/copypage-fa.c
+++ b/arch/arm/mm/copypage-fa.c
@@ -17,26 +17,25 @@
 /*
  * Faraday optimised copy_user_page
  */
-static void __naked
-fa_copy_user_page(void *kto, const void *kfrom)
+static void fa_copy_user_page(void *kto, const void *kfrom)
 {
-	asm("\
-	stmfd	sp!, {r4, lr}			@ 2\n\
-	mov	r2, %0				@ 1\n\
-1:	ldmia	r1!, {r3, r4, ip, lr}		@ 4\n\
-	stmia	r0, {r3, r4, ip, lr}		@ 4\n\
-	mcr	p15, 0, r0, c7, c14, 1		@ 1   clean and invalidate D line\n\
-	add	r0, r0, #16			@ 1\n\
-	ldmia	r1!, {r3, r4, ip, lr}		@ 4\n\
-	stmia	r0, {r3, r4, ip, lr}		@ 4\n\
-	mcr	p15, 0, r0, c7, c14, 1		@ 1   clean and invalidate D line\n\
-	add	r0, r0, #16			@ 1\n\
-	subs	r2, r2, #1			@ 1\n\
+	int tmp;
+
+	asm volatile ("\
+1:	ldmia	%1!, {r3, r4, ip, lr}		@ 4\n\
+	stmia	%0, {r3, r4, ip, lr}		@ 4\n\
+	mcr	p15, 0, %0, c7, c14, 1		@ 1   clean and invalidate D line\n\
+	add	%0, %0, #16			@ 1\n\
+	ldmia	%1!, {r3, r4, ip, lr}		@ 4\n\
+	stmia	%0, {r3, r4, ip, lr}		@ 4\n\
+	mcr	p15, 0, %0, c7, c14, 1		@ 1   clean and invalidate D line\n\
+	add	%0, %0, #16			@ 1\n\
+	subs	%2, %2, #1			@ 1\n\
 	bne	1b				@ 1\n\
-	mcr	p15, 0, r2, c7, c10, 4		@ 1   drain WB\n\
-	ldmfd	sp!, {r4, pc}			@ 3"
-	:
-	: "I" (PAGE_SIZE / 32));
+	mcr	p15, 0, %2, c7, c10, 4		@ 1   drain WB"
+	: "+&r" (kto), "+&r" (kfrom), "=&r" (tmp)
+	: "2" (PAGE_SIZE / 32)
+	: "r3", "r4", "ip", "lr");
 }
 
 void fa_copy_user_highpage(struct page *to, struct page *from,
diff --git a/arch/arm/mm/copypage-feroceon.c b/arch/arm/mm/copypage-feroceon.c
index 49ee0c1a7209..cc819732d9b8 100644
--- a/arch/arm/mm/copypage-feroceon.c
+++ b/arch/arm/mm/copypage-feroceon.c
@@ -13,58 +13,56 @@
 #include <linux/init.h>
 #include <linux/highmem.h>
 
-static void __naked
-feroceon_copy_user_page(void *kto, const void *kfrom)
+static void feroceon_copy_user_page(void *kto, const void *kfrom)
 {
-	asm("\
-	stmfd	sp!, {r4-r9, lr}		\n\
-	mov	ip, %2				\n\
-1:	mov	lr, r1				\n\
-	ldmia	r1!, {r2 - r9}			\n\
-	pld	[lr, #32]			\n\
-	pld	[lr, #64]			\n\
-	pld	[lr, #96]			\n\
-	pld	[lr, #128]			\n\
-	pld	[lr, #160]			\n\
-	pld	[lr, #192]			\n\
-	pld	[lr, #224]			\n\
-	stmia	r0, {r2 - r9}			\n\
-	ldmia	r1!, {r2 - r9}			\n\
-	mcr	p15, 0, r0, c7, c14, 1		@ clean and invalidate D line\n\
-	add	r0, r0, #32			\n\
-	stmia	r0, {r2 - r9}			\n\
-	ldmia	r1!, {r2 - r9}			\n\
-	mcr	p15, 0, r0, c7, c14, 1		@ clean and invalidate D line\n\
-	add	r0, r0, #32			\n\
-	stmia	r0, {r2 - r9}			\n\
-	ldmia	r1!, {r2 - r9}			\n\
-	mcr	p15, 0, r0, c7, c14, 1		@ clean and invalidate D line\n\
-	add	r0, r0, #32			\n\
-	stmia	r0, {r2 - r9}			\n\
-	ldmia	r1!, {r2 - r9}			\n\
-	mcr	p15, 0, r0, c7, c14, 1		@ clean and invalidate D line\n\
-	add	r0, r0, #32			\n\
-	stmia	r0, {r2 - r9}			\n\
-	ldmia	r1!, {r2 - r9}			\n\
-	mcr	p15, 0, r0, c7, c14, 1		@ clean and invalidate D line\n\
-	add	r0, r0, #32			\n\
-	stmia	r0, {r2 - r9}			\n\
-	ldmia	r1!, {r2 - r9}			\n\
-	mcr	p15, 0, r0, c7, c14, 1		@ clean and invalidate D line\n\
-	add	r0, r0, #32			\n\
-	stmia	r0, {r2 - r9}			\n\
-	ldmia	r1!, {r2 - r9}			\n\
-	mcr	p15, 0, r0, c7, c14, 1		@ clean and invalidate D line\n\
-	add	r0, r0, #32			\n\
-	stmia	r0, {r2 - r9}			\n\
-	subs	ip, ip, #(32 * 8)		\n\
-	mcr	p15, 0, r0, c7, c14, 1		@ clean and invalidate D line\n\
-	add	r0, r0, #32			\n\
+	int tmp;
+
+	asm volatile ("\
+1:	ldmia	%1!, {r2 - r7, ip, lr}		\n\
+	pld	[%1, #0]			\n\
+	pld	[%1, #32]			\n\
+	pld	[%1, #64]			\n\
+	pld	[%1, #96]			\n\
+	pld	[%1, #128]			\n\
+	pld	[%1, #160]			\n\
+	pld	[%1, #192]			\n\
+	stmia	%0, {r2 - r7, ip, lr}		\n\
+	ldmia	%1!, {r2 - r7, ip, lr}		\n\
+	mcr	p15, 0, %0, c7, c14, 1		@ clean and invalidate D line\n\
+	add	%0, %0, #32			\n\
+	stmia	%0, {r2 - r7, ip, lr}		\n\
+	ldmia	%1!, {r2 - r7, ip, lr}		\n\
+	mcr	p15, 0, %0, c7, c14, 1		@ clean and invalidate D line\n\
+	add	%0, %0, #32			\n\
+	stmia	%0, {r2 - r7, ip, lr}		\n\
+	ldmia	%1!, {r2 - r7, ip, lr}		\n\
+	mcr	p15, 0, %0, c7, c14, 1		@ clean and invalidate D line\n\
+	add	%0, %0, #32			\n\
+	stmia	%0, {r2 - r7, ip, lr}		\n\
+	ldmia	%1!, {r2 - r7, ip, lr}		\n\
+	mcr	p15, 0, %0, c7, c14, 1		@ clean and invalidate D line\n\
+	add	%0, %0, #32			\n\
+	stmia	%0, {r2 - r7, ip, lr}		\n\
+	ldmia	%1!, {r2 - r7, ip, lr}		\n\
+	mcr	p15, 0, %0, c7, c14, 1		@ clean and invalidate D line\n\
+	add	%0, %0, #32			\n\
+	stmia	%0, {r2 - r7, ip, lr}		\n\
+	ldmia	%1!, {r2 - r7, ip, lr}		\n\
+	mcr	p15, 0, %0, c7, c14, 1		@ clean and invalidate D line\n\
+	add	%0, %0, #32			\n\
+	stmia	%0, {r2 - r7, ip, lr}		\n\
+	ldmia	%1!, {r2 - r7, ip, lr}		\n\
+	mcr	p15, 0, %0, c7, c14, 1		@ clean and invalidate D line\n\
+	add	%0, %0, #32			\n\
+	stmia	%0, {r2 - r7, ip, lr}		\n\
+	subs	%2, %2, #(32 * 8)		\n\
+	mcr	p15, 0, %0, c7, c14, 1		@ clean and invalidate D line\n\
+	add	%0, %0, #32			\n\
 	bne	1b				\n\
-	mcr	p15, 0, ip, c7, c10, 4		@ drain WB\n\
-	ldmfd	sp!, {r4-r9, pc}"
-	:
-	: "r" (kto), "r" (kfrom), "I" (PAGE_SIZE));
+	mcr	p15, 0, %2, c7, c10, 4		@ drain WB"
+	: "+&r" (kto), "+&r" (kfrom), "=&r" (tmp)
+	: "2" (PAGE_SIZE)
+	: "r2", "r3", "r4", "r5", "r6", "r7", "ip", "lr");
 }
 
 void feroceon_copy_user_highpage(struct page *to, struct page *from,
diff --git a/arch/arm/mm/copypage-v4mc.c b/arch/arm/mm/copypage-v4mc.c
index 1267e64133b9..db624170854a 100644
--- a/arch/arm/mm/copypage-v4mc.c
+++ b/arch/arm/mm/copypage-v4mc.c
@@ -40,12 +40,11 @@ static DEFINE_RAW_SPINLOCK(minicache_lock);
  * instruction.  If your processor does not supply this, you have to write your
  * own copy_user_highpage that does the right thing.
  */
-static void __naked
-mc_copy_user_page(void *from, void *to)
+static void mc_copy_user_page(void *from, void *to)
 {
-	asm volatile(
-	"stmfd	sp!, {r4, lr}			@ 2\n\
-	mov	r4, %2				@ 1\n\
+	int tmp;
+
+	asm volatile ("\
 	ldmia	%0!, {r2, r3, ip, lr}		@ 4\n\
 1:	mcr	p15, 0, %1, c7, c6, 1		@ 1   invalidate D line\n\
 	stmia	%1!, {r2, r3, ip, lr}		@ 4\n\
@@ -55,13 +54,13 @@ mc_copy_user_page(void *from, void *to)
 	mcr	p15, 0, %1, c7, c6, 1		@ 1   invalidate D line\n\
 	stmia	%1!, {r2, r3, ip, lr}		@ 4\n\
 	ldmia	%0!, {r2, r3, ip, lr}		@ 4\n\
-	subs	r4, r4, #1			@ 1\n\
+	subs	%2, %2, #1			@ 1\n\
 	stmia	%1!, {r2, r3, ip, lr}		@ 4\n\
 	ldmneia	%0!, {r2, r3, ip, lr}		@ 4\n\
-	bne	1b				@ 1\n\
-	ldmfd	sp!, {r4, pc}			@ 3"
-	:
-	: "r" (from), "r" (to), "I" (PAGE_SIZE / 64));
+	bne	1b				@ "
+	: "+&r" (from), "+&r" (to), "=&r" (tmp)
+	: "2" (PAGE_SIZE / 64)
+	: "r2", "r3", "ip", "lr");
 }
 
 void v4_mc_copy_user_highpage(struct page *to, struct page *from,
diff --git a/arch/arm/mm/copypage-v4wb.c b/arch/arm/mm/copypage-v4wb.c
index 067d0fdd630c..cd3e165afeed 100644
--- a/arch/arm/mm/copypage-v4wb.c
+++ b/arch/arm/mm/copypage-v4wb.c
@@ -22,29 +22,28 @@
  * instruction.  If your processor does not supply this, you have to write your
  * own copy_user_highpage that does the right thing.
  */
-static void __naked
-v4wb_copy_user_page(void *kto, const void *kfrom)
+static void v4wb_copy_user_page(void *kto, const void *kfrom)
 {
-	asm("\
-	stmfd	sp!, {r4, lr}			@ 2\n\
-	mov	r2, %2				@ 1\n\
-	ldmia	r1!, {r3, r4, ip, lr}		@ 4\n\
-1:	mcr	p15, 0, r0, c7, c6, 1		@ 1   invalidate D line\n\
-	stmia	r0!, {r3, r4, ip, lr}		@ 4\n\
-	ldmia	r1!, {r3, r4, ip, lr}		@ 4+1\n\
-	stmia	r0!, {r3, r4, ip, lr}		@ 4\n\
-	ldmia	r1!, {r3, r4, ip, lr}		@ 4\n\
-	mcr	p15, 0, r0, c7, c6, 1		@ 1   invalidate D line\n\
-	stmia	r0!, {r3, r4, ip, lr}		@ 4\n\
-	ldmia	r1!, {r3, r4, ip, lr}		@ 4\n\
-	subs	r2, r2, #1			@ 1\n\
-	stmia	r0!, {r3, r4, ip, lr}		@ 4\n\
-	ldmneia	r1!, {r3, r4, ip, lr}		@ 4\n\
+	int tmp;
+
+	asm volatile ("\
+	ldmia	%1!, {r3, r4, ip, lr}		@ 4\n\
+1:	mcr	p15, 0, %0, c7, c6, 1		@ 1   invalidate D line\n\
+	stmia	%0!, {r3, r4, ip, lr}		@ 4\n\
+	ldmia	%1!, {r3, r4, ip, lr}		@ 4+1\n\
+	stmia	%0!, {r3, r4, ip, lr}		@ 4\n\
+	ldmia	%1!, {r3, r4, ip, lr}		@ 4\n\
+	mcr	p15, 0, %0, c7, c6, 1		@ 1   invalidate D line\n\
+	stmia	%0!, {r3, r4, ip, lr}		@ 4\n\
+	ldmia	%1!, {r3, r4, ip, lr}		@ 4\n\
+	subs	%2, %2, #1			@ 1\n\
+	stmia	%0!, {r3, r4, ip, lr}		@ 4\n\
+	ldmneia	%1!, {r3, r4, ip, lr}		@ 4\n\
 	bne	1b				@ 1\n\
-	mcr	p15, 0, r1, c7, c10, 4		@ 1   drain WB\n\
-	ldmfd	 sp!, {r4, pc}			@ 3"
-	:
-	: "r" (kto), "r" (kfrom), "I" (PAGE_SIZE / 64));
+	mcr	p15, 0, %1, c7, c10, 4		@ 1   drain WB"
+	: "+&r" (kto), "+&r" (kfrom), "=&r" (tmp)
+	: "2" (PAGE_SIZE / 64)
+	: "r3", "r4", "ip", "lr");
 }
 
 void v4wb_copy_user_highpage(struct page *to, struct page *from,
diff --git a/arch/arm/mm/copypage-v4wt.c b/arch/arm/mm/copypage-v4wt.c
index b85c5da2e510..8614572e1296 100644
--- a/arch/arm/mm/copypage-v4wt.c
+++ b/arch/arm/mm/copypage-v4wt.c
@@ -20,27 +20,26 @@
  * dirty data in the cache.  However, we do have to ensure that
  * subsequent reads are up to date.
  */
-static void __naked
-v4wt_copy_user_page(void *kto, const void *kfrom)
+static void v4wt_copy_user_page(void *kto, const void *kfrom)
 {
-	asm("\
-	stmfd	sp!, {r4, lr}			@ 2\n\
-	mov	r2, %2				@ 1\n\
-	ldmia	r1!, {r3, r4, ip, lr}		@ 4\n\
-1:	stmia	r0!, {r3, r4, ip, lr}		@ 4\n\
-	ldmia	r1!, {r3, r4, ip, lr}		@ 4+1\n\
-	stmia	r0!, {r3, r4, ip, lr}		@ 4\n\
-	ldmia	r1!, {r3, r4, ip, lr}		@ 4\n\
-	stmia	r0!, {r3, r4, ip, lr}		@ 4\n\
-	ldmia	r1!, {r3, r4, ip, lr}		@ 4\n\
-	subs	r2, r2, #1			@ 1\n\
-	stmia	r0!, {r3, r4, ip, lr}		@ 4\n\
-	ldmneia	r1!, {r3, r4, ip, lr}		@ 4\n\
+	int tmp;
+
+	asm volatile ("\
+	ldmia	%1!, {r3, r4, ip, lr}		@ 4\n\
+1:	stmia	%0!, {r3, r4, ip, lr}		@ 4\n\
+	ldmia	%1!, {r3, r4, ip, lr}		@ 4+1\n\
+	stmia	%0!, {r3, r4, ip, lr}		@ 4\n\
+	ldmia	%1!, {r3, r4, ip, lr}		@ 4\n\
+	stmia	%0!, {r3, r4, ip, lr}		@ 4\n\
+	ldmia	%1!, {r3, r4, ip, lr}		@ 4\n\
+	subs	%2, %2, #1			@ 1\n\
+	stmia	%0!, {r3, r4, ip, lr}		@ 4\n\
+	ldmneia	%1!, {r3, r4, ip, lr}		@ 4\n\
 	bne	1b				@ 1\n\
-	mcr	p15, 0, r2, c7, c7, 0		@ flush ID cache\n\
-	ldmfd	sp!, {r4, pc}			@ 3"
-	:
-	: "r" (kto), "r" (kfrom), "I" (PAGE_SIZE / 64));
+	mcr	p15, 0, %2, c7, c7, 0		@ flush ID cache"
+	: "+&r" (kto), "+&r" (kfrom), "=&r" (tmp)
+	: "2" (PAGE_SIZE / 64)
+	: "r3", "r4", "ip", "lr");
 }
 
 void v4wt_copy_user_highpage(struct page *to, struct page *from,
diff --git a/arch/arm/mm/copypage-xsc3.c b/arch/arm/mm/copypage-xsc3.c
index 03a2042aced5..55cbc3a89d85 100644
--- a/arch/arm/mm/copypage-xsc3.c
+++ b/arch/arm/mm/copypage-xsc3.c
@@ -21,53 +21,46 @@
 
 /*
  * XSC3 optimised copy_user_highpage
- *  r0 = destination
- *  r1 = source
  *
  * The source page may have some clean entries in the cache already, but we
  * can safely ignore them - break_cow() will flush them out of the cache
  * if we eventually end up using our copied page.
  *
  */
-static void __naked
-xsc3_mc_copy_user_page(void *kto, const void *kfrom)
+static void xsc3_mc_copy_user_page(void *kto, const void *kfrom)
 {
-	asm("\
-	stmfd	sp!, {r4, r5, lr}		\n\
-	mov	lr, %2				\n\
-						\n\
-	pld	[r1, #0]			\n\
-	pld	[r1, #32]			\n\
-1:	pld	[r1, #64]			\n\
-	pld	[r1, #96]			\n\
+	int tmp;
+
+	asm volatile ("\
+	pld	[%1, #0]			\n\
+	pld	[%1, #32]			\n\
+1:	pld	[%1, #64]			\n\
+	pld	[%1, #96]			\n\
 						\n\
-2:	ldrd	r2, [r1], #8			\n\
-	mov	ip, r0				\n\
-	ldrd	r4, [r1], #8			\n\
-	mcr	p15, 0, ip, c7, c6, 1		@ invalidate\n\
-	strd	r2, [r0], #8			\n\
-	ldrd	r2, [r1], #8			\n\
-	strd	r4, [r0], #8			\n\
-	ldrd	r4, [r1], #8			\n\
-	strd	r2, [r0], #8			\n\
-	strd	r4, [r0], #8			\n\
-	ldrd	r2, [r1], #8			\n\
-	mov	ip, r0				\n\
-	ldrd	r4, [r1], #8			\n\
-	mcr	p15, 0, ip, c7, c6, 1		@ invalidate\n\
-	strd	r2, [r0], #8			\n\
-	ldrd	r2, [r1], #8			\n\
-	subs	lr, lr, #1			\n\
-	strd	r4, [r0], #8			\n\
-	ldrd	r4, [r1], #8			\n\
-	strd	r2, [r0], #8			\n\
-	strd	r4, [r0], #8			\n\
+2:	ldrd	r2, [%1], #8			\n\
+	ldrd	r4, [%1], #8			\n\
+	mcr	p15, 0, %0, c7, c6, 1		@ invalidate\n\
+	strd	r2, [%0], #8			\n\
+	ldrd	r2, [%1], #8			\n\
+	strd	r4, [%0], #8			\n\
+	ldrd	r4, [%1], #8			\n\
+	strd	r2, [%0], #8			\n\
+	strd	r4, [%0], #8			\n\
+	ldrd	r2, [%1], #8			\n\
+	ldrd	r4, [%1], #8			\n\
+	mcr	p15, 0, %0, c7, c6, 1		@ invalidate\n\
+	strd	r2, [%0], #8			\n\
+	ldrd	r2, [%1], #8			\n\
+	subs	%2, %2, #1			\n\
+	strd	r4, [%0], #8			\n\
+	ldrd	r4, [%1], #8			\n\
+	strd	r2, [%0], #8			\n\
+	strd	r4, [%0], #8			\n\
 	bgt	1b				\n\
-	beq	2b				\n\
-						\n\
-	ldmfd	sp!, {r4, r5, pc}"
-	:
-	: "r" (kto), "r" (kfrom), "I" (PAGE_SIZE / 64 - 1));
+	beq	2b				"
+	: "+&r" (kto), "+&r" (kfrom), "=&r" (tmp)
+	: "2" (PAGE_SIZE / 64 - 1)
+	: "r2", "r3", "r4", "r5");
 }
 
 void xsc3_mc_copy_user_highpage(struct page *to, struct page *from,
@@ -85,8 +78,6 @@ void xsc3_mc_copy_user_highpage(struct page *to, struct page *from,
 
 /*
  * XScale optimised clear_user_page
- *  r0 = destination
- *  r1 = virtual user address of ultimate destination page
  */
 void xsc3_mc_clear_user_highpage(struct page *page, unsigned long vaddr)
 {
diff --git a/arch/arm/mm/copypage-xscale.c b/arch/arm/mm/copypage-xscale.c
index 0fb85025344d..c775d4b7adb0 100644
--- a/arch/arm/mm/copypage-xscale.c
+++ b/arch/arm/mm/copypage-xscale.c
@@ -36,52 +36,51 @@ static DEFINE_RAW_SPINLOCK(minicache_lock);
  * Dcache aliasing issue.  The writes will be forwarded to the write buffer,
  * and merged as appropriate.
  */
-static void __naked
-mc_copy_user_page(void *from, void *to)
+static void mc_copy_user_page(void *from, void *to)
 {
+	int tmp;
+
 	/*
 	 * Strangely enough, best performance is achieved
 	 * when prefetching destination as well.  (NP)
 	 */
-	asm volatile(
-	"stmfd	sp!, {r4, r5, lr}		\n\
-	mov	lr, %2				\n\
-	pld	[r0, #0]			\n\
-	pld	[r0, #32]			\n\
-	pld	[r1, #0]			\n\
-	pld	[r1, #32]			\n\
-1:	pld	[r0, #64]			\n\
-	pld	[r0, #96]			\n\
-	pld	[r1, #64]			\n\
-	pld	[r1, #96]			\n\
-2:	ldrd	r2, [r0], #8			\n\
-	ldrd	r4, [r0], #8			\n\
-	mov	ip, r1				\n\
-	strd	r2, [r1], #8			\n\
-	ldrd	r2, [r0], #8			\n\
-	strd	r4, [r1], #8			\n\
-	ldrd	r4, [r0], #8			\n\
-	strd	r2, [r1], #8			\n\
-	strd	r4, [r1], #8			\n\
+	asm volatile ("\
+	pld	[%0, #0]			\n\
+	pld	[%0, #32]			\n\
+	pld	[%1, #0]			\n\
+	pld	[%1, #32]			\n\
+1:	pld	[%0, #64]			\n\
+	pld	[%0, #96]			\n\
+	pld	[%1, #64]			\n\
+	pld	[%1, #96]			\n\
+2:	ldrd	r2, [%0], #8			\n\
+	ldrd	r4, [%0], #8			\n\
+	mov	ip, %1				\n\
+	strd	r2, [%1], #8			\n\
+	ldrd	r2, [%0], #8			\n\
+	strd	r4, [%1], #8			\n\
+	ldrd	r4, [%0], #8			\n\
+	strd	r2, [%1], #8			\n\
+	strd	r4, [%1], #8			\n\
 	mcr	p15, 0, ip, c7, c10, 1		@ clean D line\n\
-	ldrd	r2, [r0], #8			\n\
+	ldrd	r2, [%0], #8			\n\
 	mcr	p15, 0, ip, c7, c6, 1		@ invalidate D line\n\
-	ldrd	r4, [r0], #8			\n\
-	mov	ip, r1				\n\
-	strd	r2, [r1], #8			\n\
-	ldrd	r2, [r0], #8			\n\
-	strd	r4, [r1], #8			\n\
-	ldrd	r4, [r0], #8			\n\
-	strd	r2, [r1], #8			\n\
-	strd	r4, [r1], #8			\n\
+	ldrd	r4, [%0], #8			\n\
+	mov	ip, %1				\n\
+	strd	r2, [%1], #8			\n\
+	ldrd	r2, [%0], #8			\n\
+	strd	r4, [%1], #8			\n\
+	ldrd	r4, [%0], #8			\n\
+	strd	r2, [%1], #8			\n\
+	strd	r4, [%1], #8			\n\
 	mcr	p15, 0, ip, c7, c10, 1		@ clean D line\n\
-	subs	lr, lr, #1			\n\
+	subs	%2, %2, #1			\n\
 	mcr	p15, 0, ip, c7, c6, 1		@ invalidate D line\n\
 	bgt	1b				\n\
-	beq	2b				\n\
-	ldmfd	sp!, {r4, r5, pc}		"
-	:
-	: "r" (from), "r" (to), "I" (PAGE_SIZE / 64 - 1));
+	beq	2b				"
+	: "+&r" (from), "+&r" (to), "=&r" (tmp)
+	: "2" (PAGE_SIZE / 64 - 1)
+	: "r2", "r3", "r4", "r5", "ip");
 }
 
 void xscale_mc_copy_user_highpage(struct page *to, struct page *from,
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211220122506.3631672-3-anders.roxell%40linaro.org.
