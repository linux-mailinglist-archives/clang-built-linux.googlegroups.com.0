Return-Path: <clang-built-linux+bncBDSIRFEA54GRBWWSSWAAMGQESP7VWQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9762F9D40
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 11:56:27 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id a19sf6486533lfd.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 02:56:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610967386; cv=pass;
        d=google.com; s=arc-20160816;
        b=fOqlaV7ClnYnHrdJBHS6Ftp8YEeTowxOt4e3DqSCckKNHvFkJJv3ge6x80SZV9HkBd
         FwTLUv7anlMBUyNtZQYPtqKz8jQncHg/XLkXOUwTma3ILX3RoCz/U57MissFWeZheHAC
         Oeji/gd15NM1vMrXPGHLmeZ11D5GmAUurPFNU+h0xeKiK3x/OpcXylqIeakqJKBmyZD2
         KsD+s0uY3ArgxTXFPbK6CLFMPd4k9INL5wNOMBldSfIPZUfAj2EErH/J2GZcalp4GKK3
         X4+dkNlR/Iy/cdIXGqZXMDEgn/Q9pYTMk8rLb8qbSjgt/tK8j2C3ZMH2IgZsldXIdFgb
         jm9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9cj2L8lFt5qhtySrfmyC2xgxiZzuwkaV5cFbfEjLOkg=;
        b=q2yw/xOaJinZitOoJOOYxuAsWLkayYYuwZXNaDGsOoNWM7CKildOO9KGXG3pKt2KZ6
         x27Q4Jzm8AfXioRT9BoUdGcTlUUCzqB0ScwbqTqCyaOtndrTdMI+rXpE+ArmFhb2DPTf
         SsrsG2PSEKV5nVdKR+SWsvudE+cOiKUIlTKtuQ91ZGUfjSxkWJmcNnlkxwbbnlI/S/TR
         yLGlYpl3eHKg1yHIIcnZSQgecckhv3fw7eiH3XCzTiI7UJc2aoyCDdDcBFBQS9J9e3th
         6TEXAxP9zPB92AiuycoNIyQmz+TXOyhDU+aCcDj7N07rTxuWIMeccUMS9ivPDJZPV8ZW
         yjxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9cj2L8lFt5qhtySrfmyC2xgxiZzuwkaV5cFbfEjLOkg=;
        b=pR3b2X3riQw0J4/geTVq7h2coktOX/zrU9pDQ1cmIdFYJlCXcH2yWLYr8OIQ6KtXhG
         22ORDdM75gDpu4nYIwGjfzxJeOih/YvQ2AjhX+OMono1cH6mFDATtuFhgLnkF5bZdwtk
         P+kzqXHdK1CNANOdCB1wG9o966T1iJb9JYJVxHW3Q8lskJlgJZfZAuvNDtH0O9sh87/T
         MeDe7V7+/XdBwfbVkQutxbDh48tWuqNXtE7Lni9pymw9I4AUb5gsPmM3nO/HTqpgXHsj
         Cj6LHpEAw4Q9EONxi7N1fjBBPyhyqUzFfD9swj5WEuzwfVDdUNNS5+UQ2ovdCgYxxhIk
         q1Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9cj2L8lFt5qhtySrfmyC2xgxiZzuwkaV5cFbfEjLOkg=;
        b=jY4ByY27HExSZD9GfdhefsXAm2KePrDTFlPLvNK3CGM9XXCVqVSx3sPMrWWC/frQ/O
         H07FNuY1+WrdCagyVPlvZtbo0klLgP+z/c0z6P4vT40B0LE9XmX7P2ClvAr6h9Uo/K60
         qwz/ucSyVTQxNTZR8U4FL5cY5Ik60etoosh1ar3KYYxyKTUGFJez01paUWp31QL+6pSV
         vha6hR68wG4Njfv3KOhB2bb4kNOJ7G2Nyivc0WFugcWZmQwANwHRV6HG5w8Y4CSBVEnW
         SnvPqJ+co5ieRgkOOLJfOSpDBzWfHbwce9cWXPpjfvQRMkQ6rLk4fKKAOwffNk87KfHK
         uiwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533w1y5EvnyYEePPtU4kkS+OhjUMatNL504W8Gnxgu0W+eAEYdwX
	Dgq/A9CtDOFUifuqAlQDXHU=
X-Google-Smtp-Source: ABdhPJy2NNOMBayd+moPePavsejJnDdYmJbBoF0FMFWe8F7qEDuRaBEdWtOO+oaMIcAy1nxk1HFi6w==
X-Received: by 2002:a05:6512:242:: with SMTP id b2mr11199083lfo.460.1610967386591;
        Mon, 18 Jan 2021 02:56:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3001:: with SMTP id w1ls2586638ljw.3.gmail; Mon, 18 Jan
 2021 02:56:25 -0800 (PST)
X-Received: by 2002:a2e:9192:: with SMTP id f18mr10605069ljg.487.1610967385326;
        Mon, 18 Jan 2021 02:56:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610967385; cv=none;
        d=google.com; s=arc-20160816;
        b=XTp8wPqrkGF7IdlhlRS2qX79J9lf07oTBAzHfB0kZk1ClZ8ajcY7a4ZkRoZ0RDKtM0
         RrdnENphrXO1SA2IDk5YnJ6yngT63O6qGOcUhmMHi4pfLD8vpsv2MmfKO5JIw/4zZbyT
         hVzk6OHjnGqSEldk0p/brspVh3IgegKat3gR92qn9yWWzxyBsWjptjZO24HvWb33+9u+
         p2lFUeO5WqD74DHhVR4lXiwTgjAa5a17GxCCTwpsC6F7AR7YsgAcZUsJuxEZjfji+NDr
         9pasXDne/rNKYqL0efGa3O2alaLqSyL/STFEcAZoedDrru2jZ9Ub2i5vKJeq/2u3sfaf
         eZYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=c3uZtUbiH9x3eSUMc2oVq0lJMIpkwWlD6NCy+AN5NdQ=;
        b=VFFv2CUDyCIkSxmyjpNyXxZrM2t6+ULBLkiYxClgOIQWBVhmTXauk/mD7CVrm1XhMN
         Nuferev0cclFdlvy2BjVjC2ObcaJGaaStJDlrDs0Qa6mqRxgZdJuZ9o/kIqVq/KZbOp5
         9PwKrvWYv2OsrqrfVzBKrp3jFvLEKiSUFw2PB01bpdMyi9sFOBJYWpF3FV3Leb+mbAHt
         aLBrDGIht8NLkVX1z5bOFZJNxAam07FHcuIlgqv6KDIOG6QpjFqKDdCkPaUhiV1DE/0c
         Sc2ewlj1A/NWyruiKdEeIlvTHor3LEOrpnblT8qEybnNh/nMJtFhkSbyhLij5FpLc3yr
         0HiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id c15si992092ljn.0.2021.01.18.02.56.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 18 Jan 2021 02:56:25 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id 6BB681F44C3B
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
Subject: [PATCH v3 RESEND 2/2] arm: lib: xor-neon: move pragma options to makefile
Date: Mon, 18 Jan 2021 12:55:57 +0200
Message-Id: <20210118105557.186614-3-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210118105557.186614-1-adrian.ratiu@collabora.com>
References: <20210118105557.186614-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-Original-Sender: adrian.ratiu@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227
 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
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
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210118105557.186614-3-adrian.ratiu%40collabora.com.
