Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBZ4MWLUQKGQET7T2LGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id AA27F68D40
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 15:58:00 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id w200sf4004208ybg.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 06:58:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563199079; cv=pass;
        d=google.com; s=arc-20160816;
        b=WamACMhjq++HDXljeketvTkBkrYqxpT0ycKqr9/buIq5FnCwecQejj0Icjb+EeRm5Y
         hXuY4LICgMgJw9IFTpxNM5UCE24KlZRbPvYXg1rpgpUCkVb6alc709e0+LRh19LQQ2VN
         7qU07G4Ro3PSi1pGDjlLqgozdKSAe/OsUxlgdXw28GVOjsc8TnSRpRfiy75mmfWHXoSA
         nwgtv0mOoNKHeWO2+7roxdxoO46JfCByAWUNUhMN1uifc1SVihl/QDaGbszEq+Gv2o3r
         CmkLddBz9f92QxNQqPfGRjCRnoblw2xvTvos6cX5hrCXj3qYFbx8VNzlwfCHAOCOihH+
         jZzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Md9gUqPYVRB3NIYpuc6MJXYrLYe8CSkBT/KyFwj4Xbw=;
        b=hbD+UUoNZz/huDerSAMxqIBN1YI4KW1UQkYT4ByyY28J/cIv34+DT+gcbSp7r0+ZYu
         StUqFJN9QvBF/Ic6ZrSNOnvUdVpOpcacFEJxQY66Hw8ytbgfEErQ3pSjedlYprqVLQJ9
         /eoBHUn+Kav1E6h/UjQvYk2Q07+Z5bbc+x0veHXWFpioXNS6q5nHI+EigoD+OREmgSIT
         oeRR2jkj2nC68aRT65tupAwz1P6P4SiEj3HLQEuTJQU6no+GKBCTRU0R0n6EAYBFxszU
         aTpBFveHPGjVeBbgiiR6XBydpYuvwJRQV8I5lUXEF6IXtXcuGIExuznEc5MOgi69hMf+
         FXAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ziA8+eIp;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Md9gUqPYVRB3NIYpuc6MJXYrLYe8CSkBT/KyFwj4Xbw=;
        b=iFx4FfoegCmz/Iw1TgBD6XT9KrdpMfqj4IYUc0PNJRNKypVulTkT/EkgOk3E9FUaRn
         gDXLX6+lXO8jyfCFbHKYBSLU/3eC5gboZzSd85nuvzZlYNB2cFoYVILO1AcvB4OqVTt/
         4YwJZlHn3WALH+ORsBRX3B2hhrhJhWa5Y4O4jZML+21vJuHiwTAnzOKNR83iBeZnVBk7
         dnTgzGlUYblbv8ADJAN8ttOSAQ5nMam0Ghva4nEAyqlJjmviiTYpYH22zdW4NOTzwdfI
         OzSVZ9XbExnuGJVLq0ecRE7KHrJ5s/weOOY4Brs0Gb4iQUlqWb4AJOUfgb7OiNkvrYey
         HYJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Md9gUqPYVRB3NIYpuc6MJXYrLYe8CSkBT/KyFwj4Xbw=;
        b=M9XN+RcWczya4P9sSyhWofqpMoUbTS2cmUTbegQn66b5S5nwffN32i6Jo25XHG0jK7
         x36RDWcnWBT2aNaOxgchHvC+MHnQLv1pWPR15x+AKOQaYu3mjT+o592k2T+RabB0i/fR
         x95Jwnv9RG5xaYXRnZwTb6snDV8uxf+q9bhhheTQt/0s2/VUPSnTSUuX6+J/mz+aKFgF
         zueOWiBmfveYnuI18wwVf6HceEFjFotbXqE0pPjqshQLRaD5m63oY2OEWuzd8pIfNTxg
         71uWkNTYS067jpq57CpsX+HbSuW+hYwSNzYr7YzqM7uIlcBvjA2hfKDCjLOwV2mJ6VA9
         qxXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW5FJgZMf1gcbVJ6xzeLC+5IThUVTMO4AyeCKlP4Y8/6hahGueB
	hLHPD/+etCRETiQk7fTXcAM=
X-Google-Smtp-Source: APXvYqykEq3CMpIA5EJNMP9N0ND8bTJUwi1MRhU+sBkkCLcXFN4Vgdwjcx8sUTOuKBTqDdcfEaHGvw==
X-Received: by 2002:a81:7a4b:: with SMTP id v72mr14839717ywc.467.1563199079156;
        Mon, 15 Jul 2019 06:57:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:48d3:: with SMTP id v202ls1754374ywa.9.gmail; Mon, 15
 Jul 2019 06:57:58 -0700 (PDT)
X-Received: by 2002:a0d:f9c3:: with SMTP id j186mr1407693ywf.116.1563199078852;
        Mon, 15 Jul 2019 06:57:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563199078; cv=none;
        d=google.com; s=arc-20160816;
        b=DftkurlgAQBbQ57DnvXtEikzgk/sfL39Ay/dsanMX2G6cSeKhRCYmgACCz/5dxV1Id
         CUc7d0ghvP5/Fg8c5Jpc1YAxj/eICmipqkDMeRuyL93lmIaWxVR9w0QqE20eUCXM2FVc
         8GNNWjpELHGFl1STARIKEI8fSwP/fCOgZUE5+8qMXcY2Qy05sAZIdqOH9lTiRWjJvW9t
         PMmsE3GZp9+wzgU7/owAZqMLsSdj+FeFW9EopI4LEXODy7YksnU+zjEYXcrvDCiCtMm5
         NpR0fNWTY3hJwnA/lKJg9ejWVZtblPxiXjdVqfX6P0rq+aLZtrdOsl+lAmvi8TttN5qe
         51/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=4olH6ToB8Ub6x8SMFxFSzDFRkjnWQU8o2XwF/EPTRqg=;
        b=Y2YYRZUV57oqKGJ39JARbJCBmPBOL4B+84BRMQkk2P428VUJF300ZIahlRnaG0oySi
         tesS5Vnqn1nwBnLk82TknO9wYlV9Tz4sRLF/6nY/vwc+neLQlee3Szwia3iGlWnILi+P
         HZQUT9S8+zPJ1TzY+ELig4kmkC2URfquWW8IXHGYcn1xVhCLOMrbUi4K8mc3ghvmuU5H
         ZgPphkFkvMM0N1Lqb/wGODiRvbqCO4Zi6tOq75A3XW+rjO9B8hRFtV7clt6OdSpE1VAh
         +lgCyaROdW+eN59jiz92yNW8CXz5Yt9BmUwi+Ruj40GjaqVBI5VyU7aAzn3HXtTnWggD
         pUrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ziA8+eIp;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d16si983127ywg.5.2019.07.15.06.57.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 06:57:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A9B5621537;
	Mon, 15 Jul 2019 13:57:56 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Eric Biggers <ebiggers@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	linux-crypto@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.2 183/249] crypto: serpent - mark __serpent_setkey_sbox noinline
Date: Mon, 15 Jul 2019 09:45:48 -0400
Message-Id: <20190715134655.4076-183-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715134655.4076-1-sashal@kernel.org>
References: <20190715134655.4076-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ziA8+eIp;       spf=pass
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
index 16f612b6dbca..a9cc0b2aa0d6 100644
--- a/crypto/serpent_generic.c
+++ b/crypto/serpent_generic.c
@@ -225,7 +225,13 @@
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715134655.4076-183-sashal%40kernel.org.
