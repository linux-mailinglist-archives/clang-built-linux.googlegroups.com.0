Return-Path: <clang-built-linux+bncBD4PP5X5UEBRBW6PW36QKGQEC2SU2NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 0264A2B1027
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 22:23:40 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id 3sf2729679wms.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 13:23:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605216219; cv=pass;
        d=google.com; s=arc-20160816;
        b=S3QPhWs8d+qwmP+jjZuBoCJUz5uk+3Ztyn977Di7HvGfGrHMz9GGJZeuZc5G6ye2kp
         mHvWOdJ2sDiPywNRlnmykRgCgC4BOr8EmoOImtaCCgQFMifUAlHTmoTahyQPCJUXtnVb
         yZYXNnFQGIRqEx183vsAKuzrz5Gxc80wetmn3wVBpNybp7cPopiVt77mHFn+g4zOrf3X
         +jgAndzrGGirlyAY8sqeMRRdr5QtKh3dQwR66mSsudrrnMCEsbiT0Y/AcrT1FyWsB6ar
         Y4K4kvRZKI1Epf2i6y/zuGIAX/8bWGjrtA7yOI7Bezgc1BHjOgAftxZzOnHAlB7OiJvg
         KAVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=08lz4dhbFadY/vbUOhICVk/5GUxUkO5vYaFCwcE0My8=;
        b=o9Q9HnOep+Yjr9oCgyNZ1zAx1YhsXHxtcYDHna3r4oQb9OG+yy9rBG9OI/qzrkAN7z
         m0zoQaMGtXoDc6Fc4NRmd1LnCnqQAiA5X8d+bnn9zTXYCRKIIbZiauxHat3wnyJqxmK3
         ni78ZnBqIFGqFI8/V0SgES5SSDLgnBstxkZmi0/icSQ95/tBwYEPrGqVGAegpYJgHX4B
         AlQ9+15t99DR1FTDWcutC4gM2gKMBHG3kfeO2WhczOsqGX+JLCc55T5vQE4NqZyDxnV8
         K1YLvTbTLTAAkxE+WqvxiBPbSrb2XCyrEtcoLFg3vQ6YjNvoyUmTFXlBi+UQf9e/utjw
         5sDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=08lz4dhbFadY/vbUOhICVk/5GUxUkO5vYaFCwcE0My8=;
        b=OlIxmdpKmWMJXUEY0ZwW/+O/8tXiokXq+0iwRDJpqYpiQ2Jod52/D0iobfbzGXF+TG
         V08Sd32hcq56JPPThmtA2bfq7rr1JjDia436dvFQJNKI7H4PmR1oWDrl338JeH+kHGA3
         WbBK/1GobdzR/cAu1sV8orqk/pRvJhq28NvIEaYbo8sbDbjxvJ4uDzak0KnTTUYF+zoc
         zSISp8z9GxpXVhJcEK+LTQYvD/WXM3luD7fB33/nS1/oO9+DgnCSiXf5HcsJOXYbMOOI
         hCAxKnrY0SPfb4Y/UfHtj17oD2+ufjAm1L8XsxWlpII+S0NRs/HQt7ByXfsYUM+KENhz
         UJyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=08lz4dhbFadY/vbUOhICVk/5GUxUkO5vYaFCwcE0My8=;
        b=rlUh1popQG5Fu+MoqYxiuyaSfS0xAYHKwrzj2ARwAYC1wFLQGiEGosRiu4J5Iao9lI
         4m50kkxqmJAm2Ca2Uhe5BT31inDBsJnRyzgwUy7Ex1YVLvDEsJHBU2zYUpSTFcH5Wx6c
         jXNFi7tbfmg2gYf0eZPBnxtr032/84lziqKRwyKsFDRTxSJYakVKSLJVrTZVjmJ/w/2z
         8Gieda3AJ2moedLokz0iLnd89yG1R2aRS6Iufnu8ylcI8zaY1flJmj0PAu/bzfD2Q411
         acX0J3NloG5seIPGBtYX+vcslMF6LOe4EA3CsNoj9Nr8Gi/xAvN/SXfOPTR3NY3lo4SB
         hwgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kYCjelktpcIR2FfCXpQ6O2kPyzqtBjTx5qu41fPTf3EfKgsAJ
	Ql5hsF/1SD5iSUeEO63BcKY=
X-Google-Smtp-Source: ABdhPJwvsrSv4KAbGY0fPqh5lY4StBVGlH6xec8QUBRh0SrOBfX0bPsjHgr6A/beIkuRfZxPK5GleQ==
X-Received: by 2002:a5d:4104:: with SMTP id l4mr1887026wrp.276.1605216219629;
        Thu, 12 Nov 2020 13:23:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:c689:: with SMTP id j9ls2570700wrg.0.gmail; Thu, 12 Nov
 2020 13:23:38 -0800 (PST)
X-Received: by 2002:a5d:6406:: with SMTP id z6mr1749867wru.241.1605216218769;
        Thu, 12 Nov 2020 13:23:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605216218; cv=none;
        d=google.com; s=arc-20160816;
        b=Db1Vo5+EAIufSCwYtbdNz2zc5EMUzkejwgK85xJJEqNaMIjPpEG6GBh5HNSkOTW4zb
         fY9r5SA878KqjUoq6G1PUQAIRGviMP8QjATNq9mXkUNeWV/uwhzQ7Fyn+AtHVv9/t+VA
         VQImY11deMsVrKHRgYjuI5YiTXaG3VzF9u1ApLkpGpdCljpj1QiHynyZNGk5Gsoo6Yti
         AXOrlSxbapNKcxO3RCeewUK6cIYUDfdM9xIKZ1kmWlaDcKBpz3C0Gy52ddK8sFkEtTxF
         5kqQNeNKuoQFKz7s7dT/Mni45ra5TsvdT8IHKmWlJQA9eR+vK/aYFWsOjJh6lWH18y2T
         vbhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=vMvcgy40GL32s46Dq291Ixh7h0LtTGwZzVEMpamMjqI=;
        b=UxS0CnzQb1Jfr9ChsLYvjfwqoylIYcUheSkPozMbjYN3YAUnsiCobjD3yWfdLrSn04
         jCsLrEO+rMpu6wGlInoFA43z3t8JzXdkR8a9RDTdHB1fzFM/xOq0bp+EV4ImbiBhaqbL
         3+g5pzTaMsZ+OfJC4E2SomKuS0gBuuQBkkT9hUCRNmEMMi2xRUDsOo08f7t80RZ7Pxu/
         clmdL1/x5+vTfwkoxsR3JIxHQfjy3BywpIazlRsdr29oe3Pj9whcV/4o0d4GW5ze6mtx
         hzQfKf7QobsC4WNzbIP6YNarCGv0e4d84v90f982TSQIIOiYPgw0RA4MCBycpWHEQO4+
         1TIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id z83si596505wmc.3.2020.11.12.13.23.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 12 Nov 2020 13:23:38 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id 281D11F466C9
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	kernel@collabora.com,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 2/2] arm: lib: xor-neon: move pragma options to makefile
Date: Thu, 12 Nov 2020 23:24:57 +0200
Message-Id: <20201112212457.2042105-3-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201112212457.2042105-1-adrian.ratiu@collabora.com>
References: <20201112212457.2042105-1-adrian.ratiu@collabora.com>
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
index e1e76186ec23..62b493e386c4 100644
--- a/arch/arm/lib/xor-neon.c
+++ b/arch/arm/lib/xor-neon.c
@@ -14,16 +14,6 @@ MODULE_LICENSE("GPL");
 #error You should compile this file with '-march=armv7-a -mfloat-abi=softfp -mfpu=neon'
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
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112212457.2042105-3-adrian.ratiu%40collabora.com.
