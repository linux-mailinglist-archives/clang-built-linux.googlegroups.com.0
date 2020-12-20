Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB34M7P7AKGQEFI7EGFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0F22DF2EA
	for <lists+clang-built-linux@lfdr.de>; Sun, 20 Dec 2020 04:35:12 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id f139sf2930436vke.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 19:35:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608435311; cv=pass;
        d=google.com; s=arc-20160816;
        b=C7ziOmUEnVGd30dyJJjl4+yd7xwYyseQc5NFfxvX3ZW7arXAoINbT8CLZvDGnf5YCo
         RZ+9sf+kxPU2ZKSR4U4sc7NKqehNTT2SGi8r7vRWrD134xJCcSoCaUmEXzCFaXUs2bHW
         IlO6b5xM15aNaysOIg9W5ZLtyx7EqjE0+u45n5X5bjKWp/KxPQfmzZDkoio9vFonOR7V
         /Q5Ch0FdFJ4sMIoYHebPq+Py9I/gkMlppwzEJRXu4dQ0o0QmDrIjx1VtvH98Xm+2T+L0
         +bHua35gcfpB4HT/K5Skx9ymr636Kww5bd2oAm/07BGi8f0kl5UTLwPBGlVPmMHBLBt0
         MKYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4yYPB81X9zrG6/Ev9i2VreW3UBqFP9YeaIOjajGbCm8=;
        b=SNkwnpcACXeJv5bFWg6IfXP5GEc5XT6zGiXlm77T41WJuhR7wct3fJA3LvY2rFW5XO
         Rgq2ZLGm2zni+PnwHBOoxAkEtYd7Y4woomephp20+nQh5Ky4xiWFpEDmqOlkEPUB2V3j
         UN1Ee3Qh9zzsWfuAP503hK09gJKagzv3hJPsrZt+EmBi0D4Qy56fsqm6k5VHjp7WjL9j
         SIK3N4MYgXxkZw0LvTH5wLOSmqB9BKzXjOBahvH0mnrnv2+wTEEZWx85IuLaZgYzKV5U
         yjmiiEKRMxo0Qqao2+gLsAKAV6PY/gbc6AsXtZXMSEqkpOjfYKm9jguTZtxYvqeLkrNg
         mO7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4yYPB81X9zrG6/Ev9i2VreW3UBqFP9YeaIOjajGbCm8=;
        b=SXcfRdAenzyhmLvAkpbwFKaVQMdQgY4k0edndaN5vFFb81GhyVcEO786BuNm6K2yEi
         EB6z2yhxkAJngEzdrSllClmUKf9R61Z7zmENeKPyGGtVqUhEahg8L52KPYjPVZiFYDqW
         5cPJBJqs9tyvutRbNKxjMVLyoBzCre0UdzuSZGWgykbvQgj2KgR5MT1oTAsyM9wSW3oQ
         8yqgDzIDiNyavAVahXcSDqabQMmMYgRDTL97Xveuk6ViOT8j/YCTjoFp7TOMSvSdL3Q+
         LavvHQ1ckFw3pqzeqFlZVtJ+maSQ+530sFdx/FtKY47SIJxzedi2JTN3EcfpBnB1oKUb
         VPUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4yYPB81X9zrG6/Ev9i2VreW3UBqFP9YeaIOjajGbCm8=;
        b=qJSgbldsne1yQzQF+Hhw9LE6CNYXX96p7t5bGEs/DAbKIEFhW+i0LVxzE0CJDrY38Z
         FhEojvZgDxcRiGpa/oyVw2aKNVoltJcUmroQxta9E3T0BejYJqTrTOb8JOIa6+mowXFD
         LtaBA7AG5NUXZtTApn5lNxGwTSe7Rf/aJGGP1BcBb87hkl8qa1CeIK0+6cmfdsvLSwDM
         w789mVPTO8aO8MQFxs96KWnewaRAt+uWhyXNkMfEl0znRYmBU9xs6og3VEWkU/dUGRGC
         5CrXnBtNDewtskA2TcqirpdQm31sRlzZiRFFSj+rqN0LPEuHcrZMair9yMAspA9WGsEg
         CD8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533eEbmvAJWV+tziMORdn3sdSoGi5w3I8JzGZb4MPiGnRbt/XeBA
	dnllRRmLVpyQL2x+5cQrZn4=
X-Google-Smtp-Source: ABdhPJyWR/J5cgQbnWfbGefeJO1uUDa1BFRNbKCiw1oR+SWh77FoDObXmXNxAn81+xEWVewLc0UHxQ==
X-Received: by 2002:a67:6487:: with SMTP id y129mr9142616vsb.28.1608435311071;
        Sat, 19 Dec 2020 19:35:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2743:: with SMTP id c3ls2626728uap.4.gmail; Sat, 19 Dec
 2020 19:35:10 -0800 (PST)
X-Received: by 2002:ab0:127:: with SMTP id 36mr9887954uak.118.1608435310757;
        Sat, 19 Dec 2020 19:35:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608435310; cv=none;
        d=google.com; s=arc-20160816;
        b=CibZYugauDNR3Iq0GkBCht2El2Nr5Z9f8/gu/OuGHsYjyWOUSij4fGyoM4IshFkG7l
         3X365S0hisrs3KTH6W4eMda5EdSY4W914XJtRORjr/obRxEVJA8C3QRGB3vnfj3VBZzj
         YdHoAQvRR89EcGCbvoHLOaThgwgJc/s3gp/h1B626HB6xWU4BkrXESzjJXVCxijydX7q
         m8vmK8D238Riz4Q/jzSV/ukcAXE0HkEpRyXlJJrdmkQzbec3HlIPV8h0h2ijhiLcqiAh
         DqYinhEORfnbT3NzOaKgCqfQMlNZWjfdqMBNlhuxRua/b6+hnwl1Sn6tq1j/QoWlvpjt
         aD+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=vxS8O3NRed93bm4Zdbwt5skpBJIuMlHrg7nMemtyeJU=;
        b=tc3pkcJZnXy5EMnFy2cIVi3hWSSTvNOQDnA6HOL8vftr4JcnXFxwJYCISLO+hFCzhp
         Po8248gtrlP56erRXXP1+22OaMjYByrAiRFfdwx4oysTbj4CljAL+odpG9+Dp+V5/8h9
         SOVhVDTq6v/2zKzbcoovHmlBKTyfuxh9la7pRwhc1kCjWubaj4TS/FPk9bNC3lL3O5bQ
         4wWpmsEjv89fZSbyggME8RHanAq7KRncC91ma4VNXZSQB9xGqtuMbeQ+hbfwojW6caoy
         dJyX0vaOKu/LTWoqLVgakTNdyh9yokWVWcguk5MSAXUhfR0Th96lFN2zHXZn7/C/93FT
         e4mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y127si874454vsc.0.2020.12.19.19.35.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Dec 2020 19:35:10 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Barret Rhoden <brho@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 09/10] initramfs: fix clang build failure
Date: Sat, 19 Dec 2020 22:34:56 -0500
Message-Id: <20201220033457.2728519-9-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201220033457.2728519-1-sashal@kernel.org>
References: <20201220033457.2728519-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 55d5b7dd6451b58489ce384282ca5a4a289eb8d5 ]

There is only one function in init/initramfs.c that is in the .text
section, and it is marked __weak.  When building with clang-12 and the
integrated assembler, this leads to a bug with recordmcount:

  ./scripts/recordmcount  "init/initramfs.o"
  Cannot find symbol for section 2: .text.
  init/initramfs.o: failed

I'm not quite sure what exactly goes wrong, but I notice that this
function is only ever called from an __init function, and normally
inlined.  Marking it __init as well is clearly correct and it leads to
recordmcount no longer complaining.

Link: https://lkml.kernel.org/r/20201204165742.3815221-1-arnd@kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Barret Rhoden <brho@google.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 init/initramfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/init/initramfs.c b/init/initramfs.c
index 5feee4f616d55..00a32799a38b0 100644
--- a/init/initramfs.c
+++ b/init/initramfs.c
@@ -527,7 +527,7 @@ extern unsigned long __initramfs_size;
 #include <linux/initrd.h>
 #include <linux/kexec.h>
 
-void __weak free_initrd_mem(unsigned long start, unsigned long end)
+void __weak __init free_initrd_mem(unsigned long start, unsigned long end)
 {
 	free_reserved_area((void *)start, (void *)end, POISON_FREE_INITMEM,
 			"initrd");
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201220033457.2728519-9-sashal%40kernel.org.
