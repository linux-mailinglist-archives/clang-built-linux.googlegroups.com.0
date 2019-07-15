Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBVMZWLUQKGQETCURB5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A4E690D1
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 16:25:27 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id i6sf6230618oib.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 07:25:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563200726; cv=pass;
        d=google.com; s=arc-20160816;
        b=m9AW+W1ly/2Xs/EbYF3yJKPnAJ732OKdztAwlFptY41R8gj6qxZtTrh5qS5tPQU4Oq
         N0B3iBQw0kKU48VDchAZLYq0trBCHJ9lv5f1XiGvwTRjV06dGDFKSUqSsppPs3xy1qZu
         shN4xxhIgLQxEtum15H9EbxPOxvS6LzYFQAm3fEDX1s3/LMMPVdDuNuYkqs91f2vsY+U
         i56bmqkt8M6lSA8dm3bPFjfU0OYq3bVkY0nrUwRWI0BqmcMNRANVlIq7nu2U5f+3QvZj
         AkTq+Goxr7/udPwhiNCaTXqQn+aV5xMG3LTD25XuiiUx/RIxnChzrXBO8Bb6C03Df2Yl
         dWNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=2tnvOgXt15bSvdM4oR566SGD6J77XinRcYqquDhHTpg=;
        b=JV3aMLMIHgpqhWDc6vty8gQpRCpykVNGU8F4MgTTiT9fyGOWMCARa87qnfIQymIQRd
         YNymdlDIj/VFie9ruWipHW1sSK7geTdggyoJD/NRL9495EqE/KnsBmyngstesIEVuMs5
         qQxyRDEVt6T47vUcme22dCiZOVfO0DrZcJYpCJlWCxoVCmIZ0A8IHoPysrMoyKaOhfQK
         1tafyBj2r6oDXVKiiP/Oh4mazFSJLqLuN7v7WXnbBy9XanGKDiVxuy08KwJI8SiFbCUf
         DLFYEDLe3zcEFnvSEu5XboSSdteRSNRhcvKAa0SGLNjqCka7X6jrwEwFuZDlMzuEVE+6
         x5Ww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="aAbnN2M/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2tnvOgXt15bSvdM4oR566SGD6J77XinRcYqquDhHTpg=;
        b=PWIBizRVVvso1syvmO3u80jLpOETSg66X8mEMI7pqg6Fj+IypQKsZWak/TUmNF4u0x
         4awtlxrZYnikk5k+j1GLVz48Rm8+GbVK16UZv/lQcva6vfLBe9/s9K/liBya0zitmjmI
         Gvbo0MOkbqDlzdpOXlz/yV1TVgDtvcccXQq0P4YJvznnAmppKTlbttWMhcpMP+F6M7qY
         UQjU330+GKwBXmAkqKFisppdsADle2kXjsZbRyPKLCd9N71Z9q7Oy2t4J8PhDOiOkJAY
         ko/VvKLRdTimaPjJ+pOmct+7Tkr5d86SQPOpiFn5SzB56Gb34MOjOjf3Id4W1iNliYFV
         4T3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2tnvOgXt15bSvdM4oR566SGD6J77XinRcYqquDhHTpg=;
        b=h2z1t0qYsPGHiUcdIJFaTFittD0AQuPuU2MQMsZrXJmJ2eNB6OdIBBXuk62TIj9pqP
         OgypTbNNaeFS3Iue/GzTxnLnGpc0bLwH/eTxH3QMBzjueORhOnS1590O76Se+6Eg3Buf
         uy9DCYMm4wTa1iucVx1zqoyGVZg2bubEHtP9wlY6BlR8Yliq7Cf2G46WzRDZpW/VbB1r
         FnVAkCF0JNSB/M7NGZVri3+xDp7FDQNXuy8+YJJq9ltEQYqgHrHxvNDGmIxtJkLzfuci
         dulO9Q9gCUYeb7kBGSG1CgEIeivY08XlMlDfBQdS+M7mc+Z3Ez036kCvvMjqc28PjW9J
         mAdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAULPhw93Gp0/78NLXyCRQ+IuLFI1ObKUHm3Z76hcLCG7c6FDD7X
	wfsLhZSiBFJgavf9wehITCk=
X-Google-Smtp-Source: APXvYqyLjGCztCrE3jYX9w/Sg7G4zoyqsBYkFKZRlXH8n6TxLv7J6krDqjaFoyKxtQFA2KouLuRHaA==
X-Received: by 2002:aca:4d88:: with SMTP id a130mr13072396oib.167.1563200725957;
        Mon, 15 Jul 2019 07:25:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:5d4:: with SMTP id d20ls2197049oij.14.gmail; Mon,
 15 Jul 2019 07:25:25 -0700 (PDT)
X-Received: by 2002:aca:d415:: with SMTP id l21mr12986770oig.96.1563200725635;
        Mon, 15 Jul 2019 07:25:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563200725; cv=none;
        d=google.com; s=arc-20160816;
        b=bXElBrdOc4SGTioPdswU8eZtrPaR+BoHQ1xCKMtSLb3RuyRU5JiIbLD2k4Ud1FUzHs
         WKcKr5OZeGfrXRqOn3betoencITiGh2xMx7CPQF4y5KPKhTNOcrrSu5m9I5uRr0g57IA
         JZlRskMqilh5g1U8AMraHS3OlBi9DK1x0/6/lRrgqpDuy8nEk3QbW9hQIJElvORtdSTl
         1H25Sl638xGsyZYRS8vkzCz4urtsiucud3XefBcJ2jSlcadsrmP8RHV3bh/SThfZeO17
         zi5TZXf0/kcKOByLc4NNun/5ZS3sOv995zKIMoJrkRr/Qz0Z24R/eSZZUfe30utgGkFC
         5n3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=NEFvpXYxG2yRGnx8F2luaPce0F8u1yFNdYkpcoTxPcQ=;
        b=s0SmUCS+vutkbTuCBNGvlu4kp0sxkhwlWabGyzBhkUz4nWCzgw5fcmFqFfDIlPkIEG
         ngFKvRIOFn6vsOjtLsEpL153AJREJd6kd612DmpYqBrzP0KLaeW65OHINhKMHs9MypCW
         3bz35VIdCRSyAH0DeLjsGrq6eZPFfL/auN3UNCnwo4y/BoDB1NgEUUdsyia1IyhEA1R6
         vzgTv3FV9o+K76HlbnsMnu+zQdaV/cZP859YIYU3FwvYJpvRDCfUZmER18v65HmAe9xm
         YPLkLGNYXG6iiH+j5VLL545IlvIoR3NKN2hlQkDqPhfxsA83zSLg1bGGm1qG+ydNl/Nv
         kQwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="aAbnN2M/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b17si963816oie.4.2019.07.15.07.25.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 07:25:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 54A0B206B8;
	Mon, 15 Jul 2019 14:25:21 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Eric Biggers <ebiggers@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	linux-crypto@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 118/158] crypto: serpent - mark __serpent_setkey_sbox noinline
Date: Mon, 15 Jul 2019 10:17:29 -0400
Message-Id: <20190715141809.8445-118-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715141809.8445-1-sashal@kernel.org>
References: <20190715141809.8445-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="aAbnN2M/";       spf=pass
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

[ Upstream commit 473971187d6727609951858c63bf12b0307ef015 ]

The same bug that gcc hit in the past is apparently now showing
up with clang, which decides to inline __serpent_setkey_sbox:

crypto/serpent_generic.c:268:5: error: stack frame size of 2112 bytes in function '__serpent_setkey' [-Werror,-Wframe-larger-than=]

Marking it 'noinline' reduces the stack usage from 2112 bytes to
192 and 96 bytes, respectively, and seems to generate more
useful object code.

Fixes: c871c10e4ea7 ("crypto: serpent - improve __serpent_setkey with UBSAN")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Eric Biggers <ebiggers@kernel.org>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 crypto/serpent_generic.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/crypto/serpent_generic.c b/crypto/serpent_generic.c
index 7c3382facc82..600bd288881d 100644
--- a/crypto/serpent_generic.c
+++ b/crypto/serpent_generic.c
@@ -229,7 +229,13 @@
 	x4 ^= x2;					\
 	})
 
-static void __serpent_setkey_sbox(u32 r0, u32 r1, u32 r2, u32 r3, u32 r4, u32 *k)
+/*
+ * both gcc and clang have misoptimized this function in the past,
+ * producing horrible object code from spilling temporary variables
+ * on the stack. Forcing this part out of line avoids that.
+ */
+static noinline void __serpent_setkey_sbox(u32 r0, u32 r1, u32 r2,
+					   u32 r3, u32 r4, u32 *k)
 {
 	k += 100;
 	S3(r3, r4, r0, r1, r2); store_and_load_keys(r1, r2, r4, r3, 28, 24);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715141809.8445-118-sashal%40kernel.org.
