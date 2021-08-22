Return-Path: <clang-built-linux+bncBDS5JPEL3IIRB26ORCEQMGQESSKL2KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id B977A3F3EF6
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 12:31:08 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id w11-20020a2e998b000000b001c071349c96sf1018692lji.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 03:31:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629628268; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xr7sAGOlu0J8T+5BzTIXZRP4I9DK703x3QRVeUjRYrTKo74O0Xvnsf1uBQ35gS+K01
         9hc28qVkokqWcwoCcj3UbqJcPNFhA0bK/zdmWolJ+soB7L1PaES0C/6VenczNyP5TA3e
         ozin2VmwIoVSHQ5j4POwToLO/XFa49m0VXzXzJOUoA0NzEuyHbqYIy8+E95qjCn7O4Un
         BXpQqK/s6Pff5Mzpxb5ZGcM4AkKgcSLO4dkalb1G1gBuuAlvqOc/PMuu5FQO4E5G6MAB
         TiO2c4ffD4X2CZOhVSceGMVw6SOih4RyBaoFfzV3dcdgC/4ZthC/dOegIM5i9ZgyC+4w
         gO8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=8MGxDmdnPdRrKB6wjewNUG7Oj9Y3a4j8Cr5JrT+Uhao=;
        b=IfXTYl3mUjd83WtWcJBeN9zECEAKK59Ve2Ed6mGD8bGhP4WZmqg+3ui19TAtzA6M69
         +kVIPHy+L17mQu/CRaI2z6cekP7JKMA6YB+jDX+sal6fiiDv0aRQZkAvvA8WqKbBLU7+
         mtYC2GkIcYlYS5bcRJudHW13WdFaLMws0evBu0dyp6vgjMW3xA1MivrlymZikaaQbTKQ
         lYLQq7Qdj4mv1mJO8p4nEeL2MvkWiDOUtJylQxrJEXLaEMBMcJfZtBJ4qkD2gZs5z4PD
         6ArhtY77G4PRyA9TDhx/OVzIr0d/HItJTB2H4WpSCQx7pQpZgAKu26o+STfmMwhxzabt
         Pirw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dzud64Gx;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8MGxDmdnPdRrKB6wjewNUG7Oj9Y3a4j8Cr5JrT+Uhao=;
        b=EVEVXp6WPlsJCZxJNdMMYBYc4e24mGvxEbim/JljSQYu6uooDtiHBQSYY347pkNsw6
         kF8N4CdyO+c1CoNYB4iaTdUu8mlX60SX3cx7osyQ2j2U1uT+okGnmaElhFYHjO+xkh6w
         QwoUdQYiGEnv6Z1w5L9LayCweApAAL9Z219v6PwowC5h3UaMX+61sxwTTzJHlfsl+4MZ
         a8vCgJ8QYwVW+OBedI/o2JL4K0xngQjOsIy2mtI6VJLMWqJphRqW4lZlDAdI4WFvkQtO
         DPuXP8iWLBxQYCQC4kURQOmS9pPR5rSIQ4+P6QmYqW/Dvw2gMR5T7TP9kmuIK30fFu0c
         LNlA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8MGxDmdnPdRrKB6wjewNUG7Oj9Y3a4j8Cr5JrT+Uhao=;
        b=kB0zixej9+a6vM5lcCrZNCmMjWtp0DA2JBcIPYI6ryiBvlfiugGyP6H4viv3xFs0UN
         pdQy/HT7VgbiPdqdgMUz22HRHXGtq5qLh8ot5+2x3RRHgfHKtkinkN8YQ6ACWfskMBVx
         SU8470adYUaEAcTQZgIcFTADKRU24Jpr5cl4G6GL/GSKG3cyTw1J12L4SSqiIS9S0kG9
         ogPn8n5e9XEX7McBAkSML/n0A0ziJbbbRVdqJ/DnworsPq1Vnri9oXKPeWJ2r6AF/J6y
         lLSGxqm4JtkOuUwUmDqTHYUUJrp/J987M4pYc5nWyc9xKdB8Yhwfa5GgYbBaXxMLOu4r
         /qIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8MGxDmdnPdRrKB6wjewNUG7Oj9Y3a4j8Cr5JrT+Uhao=;
        b=jm2IARVYBASIyecfaIVl2HtNIz8WNf2a29NsMiDJtxyQ8R+zeXOwjUAUbtgcHQkjj+
         5hTyAUer85f9FiqRai0OK4w7v+CkZ/HEYL0ZUibWoHdCOnfp++LCrH/Wt590PBB5DO/o
         NfTFj3upCXqXPj2RtUYPMFNG0VytWVAfeIf3YQAY0jQQApLjcMUqLK/B0Dy4BotuMIrv
         jQXT/yD/QjhCtVWjO4jxhc2DIurhFIXX2MWfaMYid4+rnCIdi1Jy8kmhZNZ5PXCz6wN5
         utv9UEqcMeZtxN229toxoDfF6REPhxb0oE2gv5Lps2PUVDIppMc0ZxjKzgZ1FCaxau//
         tnGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307xzyWf7mzOSvwBu5QcHg/j0f/f1MYSSIwq/royosiAubNfOg4
	v7Owj+FIclA+NxBpqnAqcMc=
X-Google-Smtp-Source: ABdhPJwdMNR89KMrrZEmmsxhHpPx1txKt1ocTh5gLe8AHS20h5B1gn6SHndv9yhRxOx6rbvlNQgf2g==
X-Received: by 2002:a19:ad46:: with SMTP id s6mr1306661lfd.25.1629628268187;
        Sun, 22 Aug 2021 03:31:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1783:: with SMTP id bn3ls2236523ljb.10.gmail; Sun,
 22 Aug 2021 03:31:06 -0700 (PDT)
X-Received: by 2002:a2e:8795:: with SMTP id n21mr23541773lji.474.1629628266823;
        Sun, 22 Aug 2021 03:31:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629628266; cv=none;
        d=google.com; s=arc-20160816;
        b=Erb5+RnI6XNw+AoQW7hFIx3LHSns0jhyGuSllGQ8F36ynRbCHXKmQNlq4WWjNUN0YP
         ErLs57a69RdIdmkgWErrxcqk1yKSQohwj4nvibXVs9pNx7IiTmSkPKrqyukVAHb9XCkQ
         pRAI+kUAl98H2PU/T7UKAnLfFPc8Q1ZVFZJCVR4+taKoJwpFRWFdDfLGsKR+wSzDKANu
         WDHVVTxORdNuNJrE56t8u7g3BQmXwBW0ErdE1wGwyMcm3a7fvp7pLX1T0LHZV2pS0+Ev
         nvZJPUrPNEvUYUoGmoIMo4VrzF7r+1ZefOBe7G0Re/X3GJ3H1BKyiWp1C0/g+sdLSBKb
         fNeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=9X+CpU5/dJXHLe/YiexKZwFlsJapREKfLFd7TDqnCAo=;
        b=q+f/L137PMJq+g1W6teCylxKo5mCtk3nRsCJmoTKWE1BS0uKeDHkxVoT2nzjxuM8Sx
         2ZjREGoWLNw7JhnM/zWQsyk+HM/0oINArHAWOLt9eeb5mtdt9xKpaeojgrd0whgAGCkZ
         LRPZ6/Jawjg0fCLvcQ5zVdUOABjKR0EiDjoXmz8RBLCKpoYxEnp2GpnPCkWYOz/q+5xb
         ktA1RS5mydtnR1zvp9whVg7dLI6aiN0xhdl2Nqo4jNldyZjJvR3MB36EMtn7M2ZwXzxO
         BTobobZt58ayPHAtg6eKsVIBW1iKWgHKbilvS93Yx/+a+hXZpj31RsPjOBTlwIi3zSqC
         o0xA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dzud64Gx;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com. [2a00:1450:4864:20::433])
        by gmr-mx.google.com with ESMTPS id h13si421653lji.2.2021.08.22.03.31.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 03:31:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) client-ip=2a00:1450:4864:20::433;
Received: by mail-wr1-x433.google.com with SMTP id z9so21356338wrh.10
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 03:31:06 -0700 (PDT)
X-Received: by 2002:adf:f40d:: with SMTP id g13mr7992982wro.69.1629628266153;
        Sun, 22 Aug 2021 03:31:06 -0700 (PDT)
Received: from localhost.localdomain (arl-84-90-178-246.netvisao.pt. [84.90.178.246])
        by smtp.gmail.com with ESMTPSA id z5sm15389199wmp.26.2021.08.22.03.31.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 03:31:05 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
	"David S . Miller" <davem@davemloft.net>,
	linux-crypto@vger.kernel.org
Cc: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] crypto: sha512: remove imaginary and mystifying clearing of variables
Date: Sun, 22 Aug 2021 12:31:07 +0200
Message-Id: <20210822103107.28974-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Dzud64Gx;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::433
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

The function sha512_transform() assigns all local variables to 0 before
returning to its caller with the intent to erase sensitive data.

However, make clang-analyzer warns that all these assignments are dead
stores, and as commit 7a4295f6c9d5 ("crypto: lib/sha256 - Don't clear
temporary variables") already points out for sha256_transform():

  The assignments to clear a through h and t1/t2 are optimized out by the
  compiler because they are unused after the assignments.

  Clearing individual scalar variables is unlikely to be useful, as they
  may have been assigned to registers, and even if stack spilling was
  required, there may be compiler-generated temporaries that are
  impossible to clear in any case.

This applies here again as well. Drop meaningless clearing of local
variables and avoid this way that the code suggests that data is erased,
which simply does not happen.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
 crypto/sha512_generic.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/crypto/sha512_generic.c b/crypto/sha512_generic.c
index c72d72ad828e..be70e76d6d86 100644
--- a/crypto/sha512_generic.c
+++ b/crypto/sha512_generic.c
@@ -143,9 +143,6 @@ sha512_transform(u64 *state, const u8 *input)
 
 	state[0] += a; state[1] += b; state[2] += c; state[3] += d;
 	state[4] += e; state[5] += f; state[6] += g; state[7] += h;
-
-	/* erase our data */
-	a = b = c = d = e = f = g = h = t1 = t2 = 0;
 }
 
 static void sha512_generic_block_fn(struct sha512_state *sst, u8 const *src,
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822103107.28974-1-lukas.bulwahn%40gmail.com.
