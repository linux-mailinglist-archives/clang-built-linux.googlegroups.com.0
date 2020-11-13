Return-Path: <clang-built-linux+bncBD4PP5X5UEBRB54HXP6QKGQEQ7P5JVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 3299F2B2297
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 18:35:52 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id c17sf3932532lfh.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 09:35:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605288951; cv=pass;
        d=google.com; s=arc-20160816;
        b=UOQC5KkILBQC8NNAcIhuv4fjJzHcKrcoe7neG3QofrsPOT7PyxekgVrGL2fF3r+2v9
         UGpyS5FTh3n3N5HrOleu8F7UqwwfvNly3SX28eHlk/wH1fKdzF66/VGBd3X9OHrAHTo8
         Md+cZE7Verw0Wfcs5Zif8sNn0XG/46sTo77Jr3QGwejAuhlkdL2rtQHwgktwJr/fhMWO
         94aVJOsJviKb+b99gdk8eLtOCDbw0cj6FRAoLEpK3vDTvCaCZ8wCvX2rCE+gK6xAME/+
         5zCXChNGNvl6BdjeJrfDhaYCHJqe6qBbLKux1awjkmvEfSerjZTqSDQKhAjr/G65KC4Y
         kEdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=AvGshTMoeUWSnq1VzMUac4VsRx+JZFl1wBZq5TPuyAI=;
        b=dSWlfpwM0QXmTPQ5tgWcZAUyMkmWl1OcXih6VXtHL6y8jl6OVtNs5HfBNIOl053YKQ
         +xIIyU44cjUwYAzwqmSXaCjTNCkf3VhU7gIOSuePF8C67W3lMK4llKGAIKhito7X6z6U
         QiqgXKRDbFWQfQgwTNfAhb+t9CXoxCjf20uy17PCHZlb/2c93+pNdo1KDF0JsQToadfM
         bMzNudrCGCzSggSPIZr0X+CmKix5utnmHNrdV4DNej11fjsvoA8LmJEc98ZqElO+gpvL
         tue2jpBqAjRJA5KvOaECKsiXixFrnpsRblBxynZBRd151NmLQdDxu1NqEJgdiRA67IjO
         cdow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AvGshTMoeUWSnq1VzMUac4VsRx+JZFl1wBZq5TPuyAI=;
        b=WrsKXqeXT9wcXLNRmZnYldKG6nsq+qeMDBT8PGzB3qf4MjrdKkoK02AfqmLvjpKKV8
         9NLOiefdW9UgrxIYezoiwaHe4AS2zeyj3dDBVphxMk4DPXy5dbFh69oGbfDYwf6tDOOs
         BtkMJ1Vtcu8Iih0OZAOMFUISyH94y+WjRUdq0M3nNTM57aqTe/GLgjGCmFmZP+SFQLhe
         vRRCkm1uxIVr7r/7MJ6Vml/1kNUHpsdXTrOOkvpbTDzvHGx1Z4DWN7LNSjt6ye9+57/4
         jQrtZv0pRkpW2YjKB4NLPveKfkuZF7kV6FeEYJiqC4M0CHmDwAOAJkintmD/xeMD02wh
         zMNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AvGshTMoeUWSnq1VzMUac4VsRx+JZFl1wBZq5TPuyAI=;
        b=M3l9DzT18KOx9nPViwUvPLqcIIm1PV2YfvJLekYWmEbFBlTwacueKpXxJPzYFDlExy
         mCsvPS/wwrxXsX+jOEQW8raKptElmfuuJzHxQUeCkntJlokfuqOnpdoMICRx2HciAtyv
         JmAn5a09kCjahYOimsumCqAZuslHYJdzxyfPoEkkhgjIUsu0B/jzbgUTy/1/g9A+Qm2I
         XYFHQfEp6tHnsHjHffvQGHmmiT/oFToGO6cw4nyTcxurSUEPeT3mAjYPY6EBF5dEV4xp
         kGOrNLmdJs+fSCZ0j4cjTiW4osAWkJp2IJuvVbaokr9LyPqkov642LUdb7/ISFTslWvP
         1U+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tiB9vKGKH0a3Yg9r0e+7Wl0j5zQikNVZFkhacE/IEgMmSjRg2
	BBydDMrMZ8oXspnSzd6DU1s=
X-Google-Smtp-Source: ABdhPJxpazE29oLVinooOj7/powld0LdZmZPpQ/2daWwpmomruFXOLnAKEglSG6fvCEI9kRDM2tbjA==
X-Received: by 2002:a2e:93cd:: with SMTP id p13mr1529575ljh.313.1605288951766;
        Fri, 13 Nov 2020 09:35:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b0c1:: with SMTP id g1ls955789ljl.5.gmail; Fri, 13 Nov
 2020 09:35:50 -0800 (PST)
X-Received: by 2002:a2e:3604:: with SMTP id d4mr1677445lja.464.1605288950763;
        Fri, 13 Nov 2020 09:35:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605288950; cv=none;
        d=google.com; s=arc-20160816;
        b=LLzA2MQfNWGsz+yi9qc4QirRs+40ewWHkYml+4kEQqh6XpxJxaO1fDyvkOzwXa5O87
         MEJ4KQ9wYHVuE0ON87X3JuHhUyNT9EFdqqfNljDiD8aBhVoGjFckTT2+3NSiY4UGmHvc
         daHQiKniYAyQGXSTEuvMFJkjeUiJ3G2/JAlGzX0ukW05kATg+YWJUdARPM0EgauV0M3V
         BIL9Y9R8qjpMumlfKmhzi1S7Y4ACoqQIxEbiLp0QPgM9aMVmcDdXz1n6S8vXqhjtmsE9
         tiJ1xIOR4c1DAus+OcDSYJudUtd5Gu8FQBIpMXibTTiwsHFDWM2FWOSI+Xgm/+FiqR1y
         lXUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=zUqXwmc7DHIdanJF7lei+LTeTtZZ0JKdZPSsChH/Pck=;
        b=DbWmJbBpPnr8iLDyVi+eCWXAytJlRjRHKMahBXkvai3C64InIKvcokXouLeOxP5bo3
         a/Ry2dWczZRUF8LqsK08X6nd4nmKg+kJloxLmZ6+aLVP3RV33uew2u7DZoNiWho/x3D1
         Q4sMlsdnUY4+MvX3dlQoLlbQtrtCWDZm+JsY4iqhACtkl7JagN4q2c9iKq79dvbnU7NG
         ZBFqLr85FfQPttwbdiX5cKd0i/AT9XghH7YOy51kNAxOkvnUPSNWS03WebenYRkFqsaL
         Q/0ErR8FsEOzN0y/wC5gXrq44BNUjbkSJ+3v4wMlULT0QKG/l+FgdhtAkxKwS0xB9Ctu
         B6IA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id f9si320986lfl.3.2020.11.13.09.35.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Nov 2020 09:35:50 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id 62B781F46B64
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
Subject: [PATCH v3 2/2] arm: lib: xor-neon: move pragma options to makefile
Date: Fri, 13 Nov 2020 19:37:23 +0200
Message-Id: <20201113173723.2078845-3-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201113173723.2078845-1-adrian.ratiu@collabora.com>
References: <20201113173723.2078845-1-adrian.ratiu@collabora.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201113173723.2078845-3-adrian.ratiu%40collabora.com.
