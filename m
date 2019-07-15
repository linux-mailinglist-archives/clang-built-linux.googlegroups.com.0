Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBEUUWLUQKGQESIUN2VI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E7568F43
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 16:13:39 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id w17sf19926356iom.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 07:13:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563200018; cv=pass;
        d=google.com; s=arc-20160816;
        b=e+7CoFfgRsIjnEg4FFwV83uNHjrKtJp78jUQl5qpi5WUdZljU/28dMtwvU9/paYHW/
         bVQcm0OGPuDIYi3LXbfWf46buR/5JrkM8jwuwBECIEDeHAAqHd2aKIHsz910xtcLTOQg
         0qz2WhJhc+jQ/I8E20O2QwUcKCxtOBaYFZW9FRun64gA/i1wffF82Lim3mwb8bf3okTd
         bBnyWL5n4jhDVvcjU1cwZ/FKU7EYEEF4UQ/6jb47h2Br/wNf5lKihL+V84C7l9Ecc4LD
         hwq39jARvR/FhXJ6ZehC1+M03GN/5Nb5mAgJGqLjIDlAvGoySV0OK+g4TDq+j7RtEHxY
         af1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=WORE2MDItnB3Fx60aGylMmSbwcUUhQTyEiL49EzBQhI=;
        b=M6v3TBIZMxFVTci/f7sIqbs52qEbEIiG59RtNqFF5O0mxWnz9ZbacakH66WCHPN/Ds
         /NfayD3gdu9FHfQQfTmBfWKrshASpeBsUPAYOzNwGnLIOAjcifagjdjg0VzinMHTCjTs
         /Qu5w4ZB0aclkggPGZ1FL3pNcGn+xj1jwvNB5QlzdUybUFd65JtfEdLbs+zNJS89tqLZ
         sT0wpPRnB177wVYAlojQeiq4l6liYapodKSU43Y2rCE95MWL6hBhFB00r6X3WWftbaVc
         0jG+jLTytqvnyW+i5a9JOXC/8JFimkYmKNJuC81YQLKSzsHCys52+W1w7T9ePUB4b9Bp
         CaAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HfIU4YQB;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WORE2MDItnB3Fx60aGylMmSbwcUUhQTyEiL49EzBQhI=;
        b=bfoA51d/XxX/8R/LVn2hbSuZWxz4C79IR/ojeSsN4kX3u+O/HT8+o73XLCZ3jYsXG6
         5WQaQZVgvMXNefUedB7GcFlseNsKdW3o2ca59mJA1ilYhZiLHYDyGbFRtgSXOqddKrHa
         bk5cOKqzRfStbSCtiVYDBp63eUVJTJv5qJbta/cNBXLN2lVYxyfMB5iP4SlTL6O7FEuZ
         FlQEQDPIyO+9nCd1p0yfqJXaG02I0XHngTxbZW0QsP+Z4cIk0dKiPY3Hx3cSjy+uu9+4
         GSItwh5hlr1YT2bz3qA542Z1++VsrwWG1SnahO7LMOxyW6pByZDzukUGJSyYDeuKFIdw
         vkSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WORE2MDItnB3Fx60aGylMmSbwcUUhQTyEiL49EzBQhI=;
        b=DzMyn5uSU9LCCgqYCkXMnEraElG//8zkL2HslnveYi3AlEagoBIgu8ZCJCzFT1h8Y7
         jwjzg830U/0WWikVpkFqEPCAmCi26xBbFtP/QRn1idd4E/3p+mDJb2PVgQZaLgMVP9BJ
         bqPZ+K0KoRwS4SBcW+tiDNrp/mW0PSBrEPgNrWxC5YHy0i6qd+9BJMevqGKbxawUQCxn
         ZH+DaNpetHShV9R38KOWGGsKy6CX6YUE35oTp2tfjEuIEbAM48YdnRL1wBWwwFc7Rmmc
         vAxoMYyxC/7taqHzNiekvNTm39HmauQWXmZt5WWh5W9ruJbKI0pOc4LbdAtFNGEXyHMI
         667Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUcbIxFOozBGpb2vkko2PbFqL9MTcFz9fQvZwUF1zEAXta7vA+j
	oT8KapobWTWzI79bDV+HAeo=
X-Google-Smtp-Source: APXvYqw89H/1FAn1+1/xj5FT4bwh+y4bNEv41IxEBTSCAImoUfuJwIyZoB8AFtnk/X81oMSZFXNbag==
X-Received: by 2002:a5d:9e48:: with SMTP id i8mr23569681ioi.51.1563200018703;
        Mon, 15 Jul 2019 07:13:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:294b:: with SMTP id p72ls2594088jap.6.gmail; Mon, 15 Jul
 2019 07:13:37 -0700 (PDT)
X-Received: by 2002:a05:6638:191:: with SMTP id a17mr20076406jaq.101.1563200017311;
        Mon, 15 Jul 2019 07:13:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563200017; cv=none;
        d=google.com; s=arc-20160816;
        b=T7xbwBNj8h39mmOFtrdJAqKW3mYUTYmtuox0jysFG7TuzbrZjrGbqpv0jh7PVWkmEn
         8sqhMf20IOXuTJdA1Lutftg2jTLKGh8iiBY7IixtjN9/nSKUVPT8moQE2idZ3X6Jv/DI
         yldmBEdye3rfXARMpNJYe4fXhJ4GRQ9Jxhsa8i/T56jX3CiTwbiqfHrEp1FaDiLMNMxU
         /CaosifprNLiVxt+ochOKLV8kM/BMDziZp+UCXzuEqMlLlaVVEE2umWyLZJGZ3vIbHYm
         Jygs+GAFAnccbN7kktRrpwY9twen8tZwx9wqMeOfjHL0F/8lbhEFM3QwTiTH4yb3jKYE
         J8xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=NEFvpXYxG2yRGnx8F2luaPce0F8u1yFNdYkpcoTxPcQ=;
        b=y6/Fra7Dxzwi2PaxIhERYC5lL0mQ3zlwAIzU59qbY3VVxTxrXE8tr4rU+dLcLs/JV/
         ucgqqCkpIP2vdaGSOxnEk3jcaQbmbAIck8BqrZfm3BAONn8VRWsd6v1iCU4OxAdBOdhV
         fRoonho1ofeYxIONq8BMYyLugxJOijAik0rFa30F6yLDm2F14y/s56dglBkPE47kj50Y
         mUIAKRADNroJbbjF3/SaiMJS+QEiXrQfy5SPuaBrML9Tm9ZFVQ69u8Zig5+zQ0Io8XFX
         TcHK4Ncx9EDuKtUy1QrexrRbtboVXSVE823em9KFDIkBCK4I+xDXVPkig34QLgMG958M
         In2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HfIU4YQB;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y15si762335iof.5.2019.07.15.07.13.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 07:13:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B7FD6206B8;
	Mon, 15 Jul 2019 14:13:34 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Eric Biggers <ebiggers@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	linux-crypto@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.1 161/219] crypto: serpent - mark __serpent_setkey_sbox noinline
Date: Mon, 15 Jul 2019 10:02:42 -0400
Message-Id: <20190715140341.6443-161-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715140341.6443-1-sashal@kernel.org>
References: <20190715140341.6443-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=HfIU4YQB;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715140341.6443-161-sashal%40kernel.org.
