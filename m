Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBUE5WLUQKGQE3EHLKXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF42691D9
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 16:33:52 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id w6sf14385707ybo.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 07:33:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563201232; cv=pass;
        d=google.com; s=arc-20160816;
        b=aiclJMO6LuHSdYOPPl74abGCzdbVQsclcpsfFoDV4Y5YQtfPzcPnqyTWf0NPfEqR1w
         scU0j4fp353p9HdFhbft4XtrCi0JCy1suoB0hdIFHwiedTy5TSPISnDwchc9xmzmbQ12
         ejmCrs1HzCM30oocW68UZTDSDodRJUp6u9j45okXNXECqLwrz0RFxfe4ItgzigNHMjPg
         BaGtWIdpaxKp7YRU0NOJly5KuzETvrgw8XZDPCqx04MjZvFPoQIAs/0xkZc1t90ST1uN
         XIYnJzu37vDjNCWVfhrAoVh+rh/h0tivD+4bJ3e4vZFE461tCn1unKP3/dfwangN71Ui
         pQ1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=zl0P40p4UO5NYNj4VmsKXV6yIs13BFiN8x1fbt3ysgs=;
        b=CY9Cx445Pk+4gQYf1fpy3UW0jM43i3wunIfJZpEgpGWVnTTJN70+HD2clVgs8k7kj4
         k4B/uFNajNjRI7ffFfsnDodg6hGe6ldYHXBXzTMM3kQkNWlrldZ4aewDk7IXgaD6dnuF
         wHIJfjwmji2ZPHdvGiwj/8Sv69XS/0dW4kIJDFiQCMZmPirPQqeTlsQhbCJlvzgDBeJc
         0OEv9XtqAvcQxbmcomhgI203ouEq77bfR75meptEh3Xo/aM+z+7wRnJQzNbeSmavYulx
         0B9u0MWQJndK4zGnYT6CikBcJhlVzhraVI1NBQI8J0182OxR71xvM6SfirDAviRZmy98
         wWUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=U9CJUwUp;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zl0P40p4UO5NYNj4VmsKXV6yIs13BFiN8x1fbt3ysgs=;
        b=I3yl7sHJAl04KDk4SlygEMPrjWLGpu00JOxc7FXgC7JZ5Ag+HOqFELTrUGBmzP5tZD
         KYRu+Wll4aZ3nMGoNWK2gwsVVWmKclypxBf2IY0tB9BhnmuuHdoKqn18z+Uy46B0wrM8
         I6pVrmUCxiv46kcjc/G2DxnQI7tY3GoaxkV3ejmFvg1vMg7O1TFDx/TtAXcdRInjJrQ3
         0IF8VJV4XVn2ADsEqMCm0IlQKBu+vGGe7D4Y6jpVldFGVjhfNU3eOHjQi++RMgBENI5w
         BpsdD0ZZQlg+jM/jXspFj0BnOWrZPC4kALkHlwuZOg8c/uVDikximTlRdPACU6f6x239
         ONGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zl0P40p4UO5NYNj4VmsKXV6yIs13BFiN8x1fbt3ysgs=;
        b=b9aLPWXhYtXA731qV21F/6dYLKfKN38PzBQn6iypanI3FwFbLZ6PC2XMXbVULQ1vdJ
         ctbJljAwvsYMkma867gTJ7kb7zo8YdX51AVvBr5xRlLmLUyQ2Of8/thS8XprZjw3qooJ
         ifxUg2F2ulfkGXsQcNvh8KfSy4YBATuvpwsASRvsShSUhsQ7kEOX5Kf3OGFN7gDsDKW3
         SGbHF0/FuAiwh0+lh3gY/5NmRwQOTh0imst6g9q8xcQ/4f7hG5ACMOGQzne/Rv3QcnFP
         kXfZKZTqMuseHrmvUvGoOhrpssz6DFycnvUo/pIIP4rSpz4/hbzOg3iFYUVFi9ebLE+j
         z2Xg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXM6hTBwxB7fRj8tClRaYRooPD9c6D9NhpcMygNW0nxmWku1YLt
	0jDRtneR9UWsayGFkBtq7xU=
X-Google-Smtp-Source: APXvYqwJFqwHfnvAA6NIJznP73ICEbhW7zzD1KTidbl6JuA47C3v1HpxqYySkib5yfpqk+VR6R4Z1g==
X-Received: by 2002:a25:b98f:: with SMTP id r15mr16540567ybg.284.1563201232047;
        Mon, 15 Jul 2019 07:33:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9d12:: with SMTP id i18ls2287596ybp.8.gmail; Mon, 15 Jul
 2019 07:33:51 -0700 (PDT)
X-Received: by 2002:a25:d658:: with SMTP id n85mr17148076ybg.172.1563201231833;
        Mon, 15 Jul 2019 07:33:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563201231; cv=none;
        d=google.com; s=arc-20160816;
        b=ndp/bO2Bvp4Y1h7MHwGOCfc1oOzEUJ0e0g9o4j3CDcRsLhTkaUTavpQTk56Jn0isPc
         vn9tbRO26SXRKOBqadcdJ5sBRH+7Ab8BQdZD4H5NSGK9krfzKEmSoEN4z1egmgZFx6M/
         cxJc9kcVjkwsf/XcR4WcT7v2DYYUC7kyBjGUYfY+qy/cvPcVDhZQ8jUpOOnOYYcH11OP
         QHt2XOOuYCsdwqC6fMPi4cVAb7SbR82K2MxlaBb+lM3aTsn8i4Wx0IGXL5AetMawpO3C
         6e7rg5n0Dxwo8RBsjGnyd8swKte9p7VLb27UJ4B2PJPA4BfRB6mGUuP+694iL7JdgYEG
         Z4ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=NEFvpXYxG2yRGnx8F2luaPce0F8u1yFNdYkpcoTxPcQ=;
        b=Oj7fBVEJyW4XaWWgfU3PFcw+p4Wnu+ZKfeUJktpDFOprb8f5dQJqX//F9qig8Ivi+S
         AWO9ElI6bsPqJa7XqlSih8qESPWBa0752gPKVJKec+6VuLD71eSzPx78V7mXOgGXlEF+
         VLBnewXFmxiT7KQG+HLHdOzvm8rohHxcm8VxSHhmxQ5NjfjpIuY5bE+YanQuJN/sqCZz
         TRbDtw9ummQqUMFAtPA5POe7ok+AblgOWWDkAThGCwd5g0t7TpdqMJTuIafR2z4WvHm/
         R1/tfhV+A36I/kgx3WzkNMUL1m3ZYDsG+WTie+7Bgk7SaKYjxnc41GrZnM23/f7AB6XK
         EMVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=U9CJUwUp;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g15si866544ybq.0.2019.07.15.07.33.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 07:33:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F033721530;
	Mon, 15 Jul 2019 14:33:48 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Eric Biggers <ebiggers@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	linux-crypto@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 084/105] crypto: serpent - mark __serpent_setkey_sbox noinline
Date: Mon, 15 Jul 2019 10:28:18 -0400
Message-Id: <20190715142839.9896-84-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715142839.9896-1-sashal@kernel.org>
References: <20190715142839.9896-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=U9CJUwUp;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715142839.9896-84-sashal%40kernel.org.
