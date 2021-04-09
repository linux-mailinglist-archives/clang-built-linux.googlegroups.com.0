Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQVCYOBQMGQEOGTYBNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E13535A8A1
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Apr 2021 00:12:20 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id p14-20020a17090a428eb02900fc9e178ef3sf228601pjg.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Apr 2021 15:12:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618006338; cv=pass;
        d=google.com; s=arc-20160816;
        b=B85QREZH3Qqa/Z3utpstbizWPU2yAoTSs7ydu8M6xx2KhmRC2vu+ArasL8t4YC2bOu
         c7Hd+h5onn6HkDlUNBHd1C8xoSo3CrdmH32fDvJE+OAMkOXAxg1K+Gmewq04BhuR5+IS
         NHU5NRWUIjfMZogALP/rW00AI15x9vqi0fabfUjfj55dTU+wzjKGzqZxhAXOYBp5K7QD
         TomqlnjvLfygJsP4Kvnvq3BMxZt8vfV77Qr2ZfiF/5CGZ5pzay3MyD4cAhUR1QoQV/ja
         2iOSmyCegadoOyRL20LPx+Ih37HdEx3OzI3vdtpQmEXxDNJrDFZyd1+R7MGHvDTKZIgW
         6dUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=WL0gnEwSgLXx7cjDVit0n+e3wsVioFhgfCEyTiBkmjU=;
        b=fKvzQ/Nh/okzzOiZEHR+Gk5fmhxf4fQ11vHZhtrU6wkZyEstZA3fX8/tfnCDEU+O/n
         ddsSWH/B0jBiOnPauUfNtI5jolACLPY+dMFPG0+Na92OT1scPHaVGjcZEWkaQh+Q/RCC
         Icu27/QUBWW+yjIMTVJ8ZeNgQbEaqpR8GyeUE/IH/22+ljm/6xq2KoBdq9FzjB4o0KJD
         HId7Qc8XFRU62xjC63f1QWEJCfAXYz7b9jP5LtmeCRlCis6c7TyFudzGmAUFpaVjGJ5t
         jURNt9euaQf2b0lP6Yl8GXMMIc6ngykDvCSugDP2SCb0cHEOsnkmGliMZCLKumeqbD62
         kRPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=u8y2wdd5;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WL0gnEwSgLXx7cjDVit0n+e3wsVioFhgfCEyTiBkmjU=;
        b=EqAOPxTFhErE8vIb/P+lh5mylAzuQEWeP32j8ZHd+dikiAJepbqxHzm7v9hFig6igk
         oSO+TXK3d9DWHalDVcJ2tjprZGF6SBuNW3bW7RzD1w5Yasb6vggRtSBvyvl8jZLWPMxj
         5Qb8qu4jzbhABzoWe60qGA0Z5noaMzVGwLALVWzex5MTP2K7+PC4/8Zn1m5MsM5Z07Ep
         yhwTFZNQPSPTzTErdNeMTIiBtrFZPDHgEjMHCNSntnocKMtAIqKO2l98N9AtdSQ2Wjrb
         ZUj/yPjufY3U7gI9P8NsKDT3fdTgYoRSmHxSvjv2FofO02lPZddoAdbdPTO43VT60abl
         9Zrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WL0gnEwSgLXx7cjDVit0n+e3wsVioFhgfCEyTiBkmjU=;
        b=dk1Qp5sL+ZJTRfgnewBQqbtRtx6BfsGcGw4TZb1e7pKrdGfp6poMa5STKY9ERs4ddN
         I04hfgNUvgHACWZzk9eac1GKdtoXl9sCtQKwz6dZ/+cafOZ8KpprjABLloymeXnIAybC
         k3GiUpDAprkN5tkgQNj3mZKKuSob14vSGDIgRWChA/3ZfWG+iA143KgCCv30IsBwXPMk
         WVaZF2faPDIcSBgE1X1dwrYl3EBZKLcT+6gitlAVHj/kZGvCZp5NH4ITL1HJ8h1TOwwF
         YY65j+rOvjcoocj2ctAZP6BlRCjaVCtm2sKqDdSFtjEwfZ4vtKQlfR4UFopYdq4VCx6k
         KZKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kzRSwC8dO4soCs3akGlg8BaP29UfrfSqdQ3woojwuV7x3CXzB
	NWhwKjjuzKHdfASqDGYzJiE=
X-Google-Smtp-Source: ABdhPJy6EdbJOmoekY5fftpePfBclhPHfL+daqgvx/DmFNQgCBiaZ1PM9yZzTrfasgTe+L1GuUjflA==
X-Received: by 2002:aa7:850e:0:b029:248:2cfa:2ae2 with SMTP id v14-20020aa7850e0000b02902482cfa2ae2mr2773674pfn.38.1618006338615;
        Fri, 09 Apr 2021 15:12:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8e82:: with SMTP id bg2ls4638582plb.10.gmail; Fri,
 09 Apr 2021 15:12:18 -0700 (PDT)
X-Received: by 2002:a17:90a:7d05:: with SMTP id g5mr5004629pjl.114.1618006338030;
        Fri, 09 Apr 2021 15:12:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618006338; cv=none;
        d=google.com; s=arc-20160816;
        b=yHlwHltZNwhmMxKOQIj7z2ayLB0xj6SSYNijRlOIB10F95XW2HvTV45hrHRU4amyTE
         tMJN+CMJywWLfCG6ltZyr1NbYSqpydI5DwrTsPao+ZkuA1T2uEBumhWYPC6QluENKM69
         MVhHNWCfbkgkpcXemcVv5fXLu7+A3WtufRFcPVjq+ieRUa8OshowF1aKZzVvTm1oj67H
         5Lvs0LvBYqOE0bL+oEblEiSfc5/lR2d55Yl2IEOcqwWYy71KeI7eyQzC4n7pCux3zJai
         taZGnxUjhlxqov6vVHl/E4JbvFy9OwPf1ggGXedAO0oX2/xMB5CrU7yahYSLISrI5lpy
         6LQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ixGoym9kEcI52xTFPyPcf2MiQm4nOu0wCYD3mdlEmXY=;
        b=hEXIDgzsuSivghIFUoimMIwbd7rmMSJyTkooovH10fQ+ePE4kAJvXjvgmrYytN0KRI
         K7xvjj4ArPT2FTxi5b5lQXH9G5Z/6xzeqq5YJ3Ap1XJOqVVRMTLCD2pe1ABotOat2SBg
         5apTm2oM2ksyLJWG0l1S+6MFaueAWmagDpBqsXYIVBHXwHrIn1TBNeo2kSGr4UjPqHFZ
         ZWH7PrH40+J0AFLO0qkWxT8UOOcuCZhXL9fVK1BnnJcml+5ryDhRJ2VmSEluOOY8f2dd
         LV5x4NNYYoZPbJ5UqLje3fAcisa57uvopsJIR5VoFgAi0CQKQ93u+4JeauMZem9TY8MB
         LP+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=u8y2wdd5;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m9si532615pgr.3.2021.04.09.15.12.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Apr 2021 15:12:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E0ABB610A8;
	Fri,  9 Apr 2021 22:12:14 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>
Cc: Russell King <linux@armlinux.org.uk>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	"Jason A. Donenfeld" <Jason@zx2c4.com>,
	linux-crypto@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	stable@vger.kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Jessica Clarke <jrtc27@jrtc27.com>
Subject: [PATCH] crypto: arm/curve25519 - Move '.fpu' after '.arch'
Date: Fri,  9 Apr 2021 15:11:55 -0700
Message-Id: <20210409221155.1113205-1-nathan@kernel.org>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=u8y2wdd5;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

Debian's clang carries a patch that makes the default FPU mode
'vfp3-d16' instead of 'neon' for 'armv7-a' to avoid generating NEON
instructions on hardware that does not support them:

https://salsa.debian.org/pkg-llvm-team/llvm-toolchain/-/raw/5a61ca6f21b4ad8c6ac4970e5ea5a7b5b4486d22/debian/patches/clang-arm-default-vfp3-on-armv7a.patch
https://bugs.debian.org/841474
https://bugs.debian.org/842142
https://bugs.debian.org/914268

This results in the following build error when clang's integrated
assembler is used because the '.arch' directive overrides the '.fpu'
directive:

arch/arm/crypto/curve25519-core.S:25:2: error: instruction requires: NEON
 vmov.i32 q0, #1
 ^
arch/arm/crypto/curve25519-core.S:26:2: error: instruction requires: NEON
 vshr.u64 q1, q0, #7
 ^
arch/arm/crypto/curve25519-core.S:27:2: error: instruction requires: NEON
 vshr.u64 q0, q0, #8
 ^
arch/arm/crypto/curve25519-core.S:28:2: error: instruction requires: NEON
 vmov.i32 d4, #19
 ^

Shuffle the order of the '.arch' and '.fpu' directives so that the code
builds regardless of the default FPU mode. This has been tested against
both clang with and without Debian's patch and GCC.

Cc: stable@vger.kernel.org
Fixes: d8f1308a025f ("crypto: arm/curve25519 - wire up NEON implementation")
Link: https://github.com/ClangBuiltLinux/continuous-integration2/issues/118
Reported-by: Arnd Bergmann <arnd@arndb.de>
Suggested-by: Arnd Bergmann <arnd@arndb.de>
Suggested-by: Jessica Clarke <jrtc27@jrtc27.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/arm/crypto/curve25519-core.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/crypto/curve25519-core.S b/arch/arm/crypto/curve25519-core.S
index be18af52e7dc..b697fa5d059a 100644
--- a/arch/arm/crypto/curve25519-core.S
+++ b/arch/arm/crypto/curve25519-core.S
@@ -10,8 +10,8 @@
 #include <linux/linkage.h>
 
 .text
-.fpu neon
 .arch armv7-a
+.fpu neon
 .align 4
 
 ENTRY(curve25519_neon)

base-commit: e49d033bddf5b565044e2abe4241353959bc9120
-- 
2.31.1.189.g2e36527f23

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210409221155.1113205-1-nathan%40kernel.org.
