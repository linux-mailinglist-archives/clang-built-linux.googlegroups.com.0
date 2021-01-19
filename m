Return-Path: <clang-built-linux+bncBDSIRFEA54GRB3VXTOAAMGQEDDQ42GQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 6145E2FB648
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 14:17:34 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id w4sf5621906edu.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 05:17:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611062254; cv=pass;
        d=google.com; s=arc-20160816;
        b=q1MI8EJpV4gg/YifbDHPVECNGIa+WNfpY3GRCVt0Asz8jN4K0wh1T0bjBzd74dLnel
         Qw1PhcGKI+wubIC7sbjZLmp57H7/NBcsflMdRmyYrGfLRXEQdkdRjwRj1tXYZLoxANxy
         aDqfWgUyAwQ+J9x65FwIBmqgz1Asi6oOfdG9LyCixVyEGpCrP5inFUNFe44WLZHhVZBv
         ultSrOuaDkAerlQPEf99EGFId7c9t+AK+Vehnn+yKBTAKPv0N+Jb9iAmjPwdfuuTxcEm
         fJbhNFdDq/AKca5N4M5egiPSxfAsegd7Ia9RcE6BFAVcvmD5oRmXeBni79bYtwTt1cfA
         n+0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=gRbmotfC9s1eM0Q5wAtIpL7XBPr+tAIO9/5prWBBa6A=;
        b=0luIrKFCbfGXvS9YwXOBsbHobnxnKS9BpiZzi2gz6PZe4czJzuV/QcAUlMsoV/mvyH
         W6ya+wryg3Blf0bvTcGcypjZbZeGp0RaS3soQhA7dfH6TgyWBhEhmlalSt3oDRn2nQnL
         EFZmEcMU+82Q6GyO1jxXAiSv0fnWEOJ37OvyeT+u+ij7zPQz37XsXXXA4fn4CtCkiYN/
         XBCybh3qq245xV6wtlXfNVep9S3ZzGJXrWOn7624AgSkFdeX8iOk1I7mH5ePQPJMw+gE
         UYmrSpCVxFAweTlLZTQSwS7zzqqVnNJMpqiSC5p0WL3QlqM/x/YlT276wlakYJKhLkGN
         Jg3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gRbmotfC9s1eM0Q5wAtIpL7XBPr+tAIO9/5prWBBa6A=;
        b=HXlBqw0F3RyoehKh1nFBqUN64x0R1d1YLkoZh9zNrnSppUep3Tg2yGmdB71BNSi2fJ
         0cwwNvd8KU6FJ0Ljx97tVbK5OIQbxaR1O/Tio+CugQPJvWJzxHe/WdbgSKWYcd9KVtM6
         QXLpkrxAT6lSkayMAbQ+EdG9na2quooXgLnz+C+zlV/mhllc+cI38mHcBB9rSn3g3evy
         2mubaks/MGxG+cXFLgdgkwNtD5+wk2WS5uylQmMbAQ5SJ93+SxRUSpnbiDW300XECLYB
         4OYgJzR8RJ/LT2me7oN5rUmpbZhNE2tpQ65TT/Hf5BBS/LIWZGcYe2TmAKwEMRedKT6r
         m+Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gRbmotfC9s1eM0Q5wAtIpL7XBPr+tAIO9/5prWBBa6A=;
        b=TJHBiUutx/ktyZ4E/r/U+WN08kqPLURStc6/CM07rBEQL7kHd2XekkI+jZxCuAHFts
         CQwoGpr9/G0G0ujQjMsjXdUO0G/z4NA5FqP935hNRQBdV3im0mNM/7OGBuJI9n4MfbUq
         larRGaKxvIULMyRbLoP/wAuCGQqn4Wi5TM5Dp4jLlnfwxC+bT0tI6myR4tvHbvpbvzpD
         CtQxoCsOwU8HyoZdwTAIobmU6v82zSe+ilr5/6FD981qJZE/obRffNd+wKw2PMAL7i07
         Cgeex5gnHL7jXGC27eHo4Fa9gSRZ6U8EvQhUVor95rDexCnCFQxFtpvDK+bTotv9PsIK
         eLLQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ENaqZQ+f2GsGvU9uBhhWx19ZUsPsqP/gKjiTQQhz9a5hcm8sa
	U5NXX+tzkkzUmOlJM7H9kWc=
X-Google-Smtp-Source: ABdhPJzn/4ytHD+9fXH4QZg7nLz8jRhflGrBCdoH+mzRmeHMzQuTKCa9HCuIJcrObOtPmF9Og9KQAg==
X-Received: by 2002:a50:8741:: with SMTP id 1mr3384423edv.349.1611062254148;
        Tue, 19 Jan 2021 05:17:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:220e:: with SMTP id cq14ls2993916edb.2.gmail; Tue,
 19 Jan 2021 05:17:33 -0800 (PST)
X-Received: by 2002:a50:8741:: with SMTP id 1mr3384377edv.349.1611062253296;
        Tue, 19 Jan 2021 05:17:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611062253; cv=none;
        d=google.com; s=arc-20160816;
        b=OjroLKEmA1/g5JrtZIRRZkJ0d+jKj7SbDvmoShuqug9GsLi5oViMScRZl/TJC0kR6O
         s9pnj4BVR0u0XsJ3Eo5ySVbGJmUsCkRNXRkRbDHF1a3ZsnXiZiFJNzpUXO3VMYKVLgcj
         g0dp1cGKxoSE7OTYEOIj0eApamH/VgZy1QycOuAX7q53lb9yHu6GRLzSKnY80dVHJ8tq
         fP9HeWQZqt5lYMuS3dPl+D2Nuryk8xl/6N+5F0OaAG5Hay38Sead/zKzWaywTIUM2f2o
         4YLI6fHbonDx0A4NSrPpbeLKQwja3Lxmo9LtVh4JWfFerTY4vUyQprJxcBRiyORT+5/j
         qSXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=RI2VKPJGwl6xl9G5NX50pXLus2Qtocpv10YGrxU4qdI=;
        b=uOntVnYiCCYcxNYDeJ5hqkezfNdEbruZaH+dh5GhQUfWwdH3t4UGBFdVp2KfI32Xfx
         0iIcA9f8t1T8erWy9/iCbB/zyfeqVSI36Ils4NmvjFb4AgyVh8sqe9WX86t2QcFlGCxW
         PDmsowzT+N93meyG5m4FxoMabD5kPD0k+HRrfotC6Xxl5HsNxCVqI8o47tOj3ZjxknPe
         a7a0AfBu9wN4NAG+2VdgfQ7eRKIUr2rQ7CYYMfyKfiNi4RHnBNjRTKaBtkwItNTzILUv
         t3UupC5EbvXYfdL5R8XzRc3pKZJsh6Y02f9u1Xb2I9vIaGwWBN94ZORQ1nIBWC6ELEiy
         oXvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id f4si200855edr.2.2021.01.19.05.17.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 Jan 2021 05:17:33 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id 629A41F451BC
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kernel@collabora.com,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 2/2] arm: lib: xor-neon: move pragma options to makefile
Date: Tue, 19 Jan 2021 15:17:24 +0200
Message-Id: <20210119131724.308884-3-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210119131724.308884-1-adrian.ratiu@collabora.com>
References: <20210119131724.308884-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-Original-Sender: adrian.ratiu@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.ratiu@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

Using a pragma like GCC optimize is a bad idea because it tags
all functions with an __attribute__((optimize)) which replaces
optimization options rather than appending so could result in
dropping important flags. Not recommended for production use.

Because these options should always be enabled for this file,
it's better to set them via command line. tree-vectorize is on
by default in Clang, but it doesn't hurt to make it explicit.

Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 arch/arm/lib/Makefile   |  2 +-
 arch/arm/lib/xor-neon.c | 10 ----------
 2 files changed, 1 insertion(+), 11 deletions(-)

diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index 6d2ba454f25b..12d31d1a7630 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -45,6 +45,6 @@ $(obj)/csumpartialcopyuser.o:	$(obj)/csumpartialcopygeneric.S
 
 ifeq ($(CONFIG_KERNEL_MODE_NEON),y)
   NEON_FLAGS			:= -march=armv7-a -mfloat-abi=softfp -mfpu=neon
-  CFLAGS_xor-neon.o		+= $(NEON_FLAGS)
+  CFLAGS_xor-neon.o		+= $(NEON_FLAGS) -ftree-vectorize -Wno-unused-variable
   obj-$(CONFIG_XOR_BLOCKS)	+= xor-neon.o
 endif
diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
index f9f3601cc2d1..65125ce69044 100644
--- a/arch/arm/lib/xor-neon.c
+++ b/arch/arm/lib/xor-neon.c
@@ -23,16 +23,6 @@ MODULE_LICENSE("GPL");
 #warning Clang does not vectorize code in this file.
 #endif
 
-/*
- * Pull in the reference implementations while instructing GCC (through
- * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
- * NEON instructions.
- */
-#ifdef CONFIG_CC_IS_GCC
-#pragma GCC optimize "tree-vectorize"
-#endif
-
-#pragma GCC diagnostic ignored "-Wunused-variable"
 #include <asm-generic/xor.h>
 
 struct xor_block_template const xor_block_neon_inner = {
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210119131724.308884-3-adrian.ratiu%40collabora.com.
